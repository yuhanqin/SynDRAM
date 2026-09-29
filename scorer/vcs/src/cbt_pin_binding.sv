// Input-only CA capture. enabled is reconstructed CBT state, never DUT output.
// Packet phase follows the common trace contract: first CK rising edge is R1.
module syndram_cbt_pin_binding(
  input logic [1:0] ck, wck, cs, enabled,
  input logic [1:0][3:0] ca,
  input logic [1:0][11:0] dq
);
  `include "cbt_events.svh"
  bit second_cycle[2];
  bit rising_seen[2];
  bit dq9_high[2];
  logic qualified[2];
  logic [15:0] packet[2];
  initial $display("SYNDRAM_TRACE_MONITOR cbt");
  final $display("SYNDRAM_TRACE_END cbt");
  initial for(int sc=0;sc<2;sc++) begin
    second_cycle[sc]=0; rising_seen[sc]=0; dq9_high[sc]=0; qualified[sc]=0;
    packet[sc]='x; hits_match[sc]=0; event_disarm(sc);
  end
  for(genvar sc=0;sc<2;sc++) begin : capture
    always @(hits_match[sc])
      if(hits_match[sc]>0) $display("SYNDRAM_TRACE_HIT cbt %0d 0 1",sc);
    always @(negedge enabled[sc]) begin
      event_disarm(sc); dq9_high[sc]=0; qualified[sc]=0;
    end
    always @(posedge wck[sc]) begin
      if(enabled[sc] === 1'b1) begin
        if(dq[sc][9] === 1'b1) dq9_high[sc]=1;
        else if(dq[sc][9] === 1'b0 && dq9_high[sc]) begin
          event_reset_lfsr(sc); dq9_high[sc]=0;
        end
      end else dq9_high[sc]=0;
    end
    always @(posedge ck[sc]) begin
      rising_seen[sc]=1;
      if(!second_cycle[sc]) begin
        qualified[sc]=(enabled[sc] === 1'b1 && cs[sc] === 1'b1);
        packet[sc][3:0]=ca[sc];
      end else packet[sc][11:8]=ca[sc];
    end
    always @(negedge ck[sc]) begin
      if(rising_seen[sc]) begin
      if(!second_cycle[sc]) packet[sc][7:4]=ca[sc];
      else begin
        packet[sc][15:12]=ca[sc];
        if(qualified[sc] && enabled[sc] === 1'b1 && !$isunknown(packet[sc]))
          event_packet(sc,packet[sc]);
        qualified[sc]=0;
      end
      second_cycle[sc]=!second_cycle[sc];
      rising_seen[sc]=0;
      end
    end
  end
endmodule
