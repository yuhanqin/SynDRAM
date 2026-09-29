`timescale 1ns/1ps
// Pin-derived clock discontinuity and ODT completion monitor.
// Completion is checked at the start of a changed/missing CK half cycle, not
// at the later time at which that discontinuity becomes observable.
module syndram_clock_odt_monitor(syndram_if vif);
  import syndram_sample_pkg::*;
  localparam int WRITE_OFF=0, READ_DQ=1, READ_RDQS=2;
  bit pending[2][3];
  realtime deadline[2][3],anchor[2][3],delay_ns[2][3];
  int legal_hits[2][3],illegal_hits[2][3],invalid_snapshots[2];
  realtime last_edge[2],expected_half[2];
  bit edge_valid[2],discontinuity_seen[2];
  int epoch[2]='{default:0};
  realtime last_boundary[2];
  event completion_sampled[2];
  initial $display("SYNDRAM_TRACE_MONITOR clock_odt");
  final $display("SYNDRAM_TRACE_END clock_odt");

  task automatic capture(input int sc,kind,input syndram_cmd_event_t ev,
                         input ypu_syndram_realtime_result_t latency);
    realtime total,until_time;
    if(latency.valid && vif.nCK_valid[sc]) begin
      total=latency.value+4*vif.nCK[sc];
      until_time=ev.raw.r2_time+total;
      // An overlapping short burst must not erase a later prior completion.
      if(!pending[sc][kind] || until_time>=deadline[sc][kind]) begin
        deadline[sc][kind]=until_time;
        anchor[sc][kind]=ev.raw.r2_time;
        delay_ns[sc][kind]=total;
      end
      pending[sc][kind]=1;
    end else begin
      invalid_snapshots[sc]++;
      $display("SYNDRAM_TRACE_ERROR clock_odt %0d",sc);
    end
  endtask

  task automatic check_boundary(input int sc,input realtime boundary);
    if(!discontinuity_seen[sc]) begin
      last_boundary[sc]=boundary;
      for(int k=0;k<3;k++) begin
        if(pending[sc][k]) begin
          if(ypu_time_fs(boundary)>=ypu_time_fs(deadline[sc][k])) legal_hits[sc][k]++;
          else illegal_hits[sc][k]++;
          $display("SYNDRAM_TRACE_HIT clock_odt %0d %0d %0d",sc,k,
                   ypu_time_fs(boundary)>=ypu_time_fs(deadline[sc][k]));
          $display("CLOCK_ODT_SAMPLE sc=%0d kind=%0d anchor=%0f boundary=%0f expected=%0f pass=%0d",
                   sc,k,anchor[sc][k],boundary,delay_ns[sc][k],ypu_time_fs(boundary)>=ypu_time_fs(deadline[sc][k]));
          // Keep the frozen deadline: a later stop/change must still obey it.
        end
      end
      -> completion_sampled[sc];
      discontinuity_seen[sc]=1;
    end
  endtask

  task automatic watch_missing_edge(input int sc,input int ticket,
                                   input realtime origin,half_period);
    // 1ps is the trace time precision, not an added protocol timing value.
    #(half_period+0.001);
    if(vif.RESET_n && epoch[sc]==ticket) check_boundary(sc,origin);
  endtask

  for(genvar g=0;g<2;g++) begin
    always @(negedge vif.RESET_n) begin
      epoch[g]++;
      edge_valid[g]=0;discontinuity_seen[g]=0;
      last_edge[g]=0;expected_half[g]=0;last_boundary[g]=0;
      invalid_snapshots[g]=0;
      for(int k=0;k<3;k++) begin
        pending[g][k]=0;deadline[g][k]=0;anchor[g][k]=0;delay_ns[g][k]=0;
        legal_hits[g][k]=0;illegal_hits[g][k]=0;
      end
    end
    always @(vif.command_sampled[g]) begin
      syndram_cmd_event_t ev;
      ypu_syndram_realtime_result_t result;
      ev=vif.sampled_cmd_event[g];
      if(vif.RESET_n && ev.valid && !vif.is_dft[g] && !vif.is_cbt[g]) begin
        if((ev.cmd_type==CMD_WR_S || ev.cmd_type==CMD_WR_L) &&
           (vif.state_state_v1_dq_odt_enabled[g].active || vif.state_state_v1_nt_odt_enabled[g].active)) begin
          result=vif.calc_timing_ODTLoff(ev,ev);
          capture(g,WRITE_OFF,ev,result);
        end
        if((ev.cmd_type==CMD_RD_S || ev.cmd_type==CMD_RD_L || ev.cmd_type==CMD_MRR) &&
           vif.state_state_v1_nt_odt_enabled[g].active) begin
          result=vif.calc_timing_ODTLon_RD_DQ(ev,ev);
          capture(g,READ_DQ,ev,result);
          if(vif.mr_storage[g][22][1:0]!=2'b00) begin
            result=vif.calc_timing_ODTLon_RD_RDQS(ev,ev);
            capture(g,READ_RDQS,ev,result);
          end
        end
      end
    end
    always @(posedge vif.CK_t[g] or negedge vif.CK_t[g]) begin
      realtime span;
      if(vif.RESET_n && vif.nCK_valid[g] && vif.ck_period[g]>0) begin
        epoch[g]++;
        if(edge_valid[g]) begin
          span=$realtime-last_edge[g];
          if(span>expected_half[g]+0.001 || span<expected_half[g]-0.001)
            check_boundary(g,last_edge[g]);
          else discontinuity_seen[g]=0;
        end
        last_edge[g]=$realtime;
        expected_half[g]=vif.ck_period[g]/2;
        edge_valid[g]=1;
        fork
          watch_missing_edge(g,epoch[g],last_edge[g],expected_half[g]);
        join_none
      end
    end
  end
endmodule
