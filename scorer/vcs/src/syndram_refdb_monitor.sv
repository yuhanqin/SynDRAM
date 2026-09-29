`timescale 1ns/1ps
// Pin-to-Event adapter only. All bank/history updates are generated from YAML.
module syndram_refdb_monitor(syndram_if vif);
  import syndram_sample_pkg::*;
  `include "ordered_refdb_tasks.svh"
  wire [31:0] legal_hits[2],illegal_hits[2],count[2];
  initial $display("SYNDRAM_TRACE_MONITOR refdb");
  final $display("SYNDRAM_TRACE_END refdb");
  for(genvar sc=0;sc<2;sc++) begin
    assign legal_hits[sc]=hits_complete[sc];
    assign illegal_hits[sc]=hits_duplicate[sc];
    assign count[sc]=mem_group_count[sc];
    always @(negedge vif.RESET_n) begin
      event_synchronize(sc);hits_complete[sc]=0;hits_duplicate[sc]=0;
    end
    always @(vif.command_sampled[sc]) begin
      syndram_cmd_event_t ev;
      int target_sc;
      int before_legal,before_illegal;
      ev=vif.sampled_cmd_event[sc];
      target_sc=ev.efficiency_mode ? int'(ev.protocol_field_sc):sc;
      if(vif.RESET_n && ev.valid && (!ev.efficiency_mode || sc==0) &&
         !vif.is_dft[sc] && !vif.is_cbt[sc]) begin
        if(!ev.efficiency_mode && ev.cmd_type==CMD_SRX) event_synchronize(sc);
        else if(ev.cmd_type==CMD_REFRESH && !ev.rfm && ev.ab) event_synchronize(target_sc);
        else if(ev.cmd_type==CMD_REFRESH && !ev.rfm) begin
          before_legal=hits_complete[target_sc];before_illegal=hits_duplicate[target_sc];
          event_refdb(target_sc,int'(ev.bg),int'(ev.dbg),int'(ev.ba));
          if(hits_complete[target_sc]!=before_legal)
            $display("SYNDRAM_TRACE_HIT refdb %0d 0 1",target_sc);
          if(hits_duplicate[target_sc]!=before_illegal)
            $display("SYNDRAM_TRACE_HIT refdb %0d 0 0",target_sc);
        end
      end
    end
  end
endmodule
