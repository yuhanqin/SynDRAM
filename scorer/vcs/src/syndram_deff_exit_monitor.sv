`timescale 1ns/1ps
// Pin-derived dynamic-efficiency exit monitor.
module syndram_deff_exit_monitor(syndram_if vif);
  import syndram_sample_pkg::*;
  bit awaiting_nop=0,sync_pending=0;
  realtime exit_time,nop_time,exit_delay,sync_delay;
  int legal_hits[3]='{default:0},illegal_hits[3]='{default:0};
  // 0 exit->NOP minimum; 1 NOP->valid minimum; 2 command without NOP.
  int instrumentation_errors=0;
  initial $display("SYNDRAM_TRACE_MONITOR deff_exit");
  final $display("SYNDRAM_TRACE_END deff_exit");
  always @(negedge vif.RESET_n) begin
    awaiting_nop=0;sync_pending=0;
    for(int k=0;k<3;k++) begin legal_hits[k]=0;illegal_hits[k]=0;end
    instrumentation_errors=0;
  end
  always @(vif.command_sampled[0]) begin
    syndram_cmd_event_t ev;
    ev=vif.sampled_cmd_event[0];
    if(vif.RESET_n && ev.valid && ev.cmd_type==CMD_MRW_2 && ev.ma==1 &&
       vif.last_mr_write_old_value_valid[0]) begin
      if(!ev.efficiency_mode && ev.op[6] && vif.mr_storage[0][1][6]) begin
        awaiting_nop=0;sync_pending=0;
      end
      if(ev.efficiency_mode && !ev.op[6] && !vif.mr_storage[0][1][6]) begin
        exit_time=ev.timestamp;awaiting_nop=1;sync_pending=0;
        // tXP source retained Power-Down AC row: Max(7ns,4nCK).
        if(!vif.tMRD_valid[0] || !vif.nCK_valid[0]) begin
          instrumentation_errors++;
          $display("SYNDRAM_TRACE_ERROR deff_exit 0");
        end
        exit_delay=vif.tMRD[0]+((4*vif.nCK[0]>7.0) ? 4*vif.nCK[0]:7.0);
      end
    end
  end
  always @(vif.command_sampled[1]) begin
    syndram_cmd_event_t ev;
    bit pass;
    ev=vif.sampled_cmd_event[1];
    if(vif.RESET_n && ev.valid && !ev.efficiency_mode && ev.cmd_type!=CMD_DESELECT) begin
      if(awaiting_nop) begin
        if(ev.cmd_type==CMD_NOP) begin
          pass=ypu_time_fs(ypu_time_delta(ev.timestamp,exit_time))>=ypu_time_fs(exit_delay);
          if(pass) legal_hits[0]++;else illegal_hits[0]++;
          $display("SYNDRAM_TRACE_HIT deff_exit 1 0 %0d",pass);
          nop_time=ev.timestamp;awaiting_nop=0;sync_pending=1;
          if(!vif.tCKSNC_valid[1]) begin
            instrumentation_errors++;
            $display("SYNDRAM_TRACE_ERROR deff_exit 1");
          end
          sync_delay=vif.tCKSNC[1];
        end else begin
          illegal_hits[2]++;
          $display("SYNDRAM_TRACE_HIT deff_exit 1 2 0");
        end
      end else if(sync_pending) begin
        pass=ypu_time_fs(ypu_time_delta(ev.timestamp,nop_time))>=ypu_time_fs(sync_delay);
        if(pass) begin
          legal_hits[1]++;
          legal_hits[2]++;
          sync_pending=0;
          $display("SYNDRAM_TRACE_HIT deff_exit 1 2 1");
        end
        else illegal_hits[1]++;
        $display("SYNDRAM_TRACE_HIT deff_exit 1 1 %0d",pass);
      end
    end
  end
endmodule
