`include "syndram_sliding_window.sv"
`include "syndram_credit_accumulator.sv"
// Event-time observer driven only by pin-decoded commands.
module syndram_window_monitor(syndram_if vif);
  timeunit 1ps; timeprecision 1ps;
  import syndram_sample_pkg::*;
  `include "window_parameters.svh"
  `include "credit_parameters.svh"
  typedef struct packed {longint at_ps; int kind; int weight; int bg; int dbg; int ba;} observation_t;
  initial $display("SYNDRAM_TRACE_MONITOR refresh_window");
  initial $display("SYNDRAM_TRACE_MONITOR refresh_credit");
  initial $display("SYNDRAM_TRACE_MONITOR refresh_gap");
  final $display("SYNDRAM_TRACE_END refresh_window");
  final $display("SYNDRAM_TRACE_END refresh_credit");
  final $display("SYNDRAM_TRACE_END refresh_gap");
  for(genvar target=0;target<2;target++) begin : array_window
    observation_t observations[$];
    `include "window_refdb_tasks.svh"
    `include "logical_gap_events.svh"
    syndram_sliding_window #(.WIDTH_PS(WINDOW_PS),.MINIMUM(WINDOW_MINIMUM)) counter();
    syndram_credit_accumulator #(.PERIOD(CREDIT_PERIOD),.DRAIN(CREDIT_DRAIN),
      .CEILING(CREDIT_CEILING),.DEBT_LIMIT(CREDIT_DEBT_LIMIT),
      .BURST_WIDTH(CREDIT_BURST_WIDTH),.BURST_LIMIT(CREDIT_BURST_LIMIT)) credit();
    longint suspended_ps=0,pause_start=0;
    initial begin counter.initialize(0);credit.initialize();event_synchronize(target);end
    task automatic record_event(input longint at_ps,input int kind,input int weight,input int bg,input int dbg,input int ba);
      observation_t value;
      int index;
      value.at_ps=at_ps;value.kind=kind;value.weight=weight;
      value.bg=bg;value.dbg=dbg;value.ba=ba;index=0;
      // Different physical clocks may decode in a different order from R2.
      while(index<observations.size()) begin
        if(observations[index].at_ps>at_ps) break;
        index++;
      end
      observations.insert(index,value);
    endtask
    for(genvar source_sc=0;source_sc<2;source_sc++) begin
      always @(vif.command_sampled[source_sc]) begin
        syndram_cmd_event_t ev;
        int actual_target;
        longint at_ps;
        ev=vif.sampled_cmd_event[source_sc];
        actual_target=ev.efficiency_mode ? int'(ev.protocol_field_sc):source_sc;
        if(vif.RESET_n && ev.valid && actual_target==target &&
           (!ev.efficiency_mode || source_sc==0) && !vif.is_dft[source_sc] && !vif.is_cbt[source_sc]) begin
          at_ps=ypu_time_fs(ev.raw.r2_time)/1000;
          if(ev.cmd_type==CMD_REFRESH && !ev.rfm)
            record_event(at_ps,ev.ab ? 1:4,ev.ab ? REFAB_WEIGHT:REFDB_WEIGHT,int'(ev.bg),int'(ev.dbg),int'(ev.ba));
          else if(!ev.efficiency_mode && ev.cmd_type==CMD_SRE && !ev.pd)
            record_event(at_ps,2,0,0,0,0);
          else if(!ev.efficiency_mode && ev.cmd_type==CMD_SRX)
            record_event(at_ps,3,0,0,0,0);
        end
      end
    end
    task automatic finish_observations(input longint end_ps);
      observation_t value;
      longint at_ps;
      int weight,previous_groups;
      bit enter_sr,exit_sr,equivalent_refresh;
      while(observations.size()>0) begin
        at_ps=observations[0].at_ps;
        if(at_ps>end_ps) break;
        weight=0;enter_sr=0;exit_sr=0;equivalent_refresh=0;
        while(observations.size()>0) begin
          if(observations[0].at_ps!=at_ps) break;
          value=observations.pop_front();
          if(value.kind==1 && counter.active) begin
            event_synchronize(target);weight+=value.weight;equivalent_refresh=1;
          end
          if(value.kind==4 && counter.active) begin
            previous_groups=hits_complete[target];
            event_refdb(target,value.bg,value.dbg,value.ba);
            if(!mem_history_unknown[target])weight+=value.weight;
            if(hits_complete[target]>previous_groups)equivalent_refresh=1;
          end
          if(value.kind==2)enter_sr=1;
          if(value.kind==3)exit_sr=1;
        end
        if(counter.active) begin
          if(equivalent_refresh)dispatch_logical_equivalent_refresh(target,at_ps);
          else flush_logical_gap(target,at_ps);
          credit.submit(at_ps-suspended_ps,weight);
          counter.submit(at_ps,weight);
          if(enter_sr) begin
            // Already advanced through this timestamp, including the complete
            // window ending at SR entry. Do not touch any external debt ledger.
            counter.leave_segment(at_ps);
            pause_start=at_ps;
            dispatch_logical_pause_gap(target,at_ps);
          end
        end else begin
          counter.submit(at_ps,0);
          if(exit_sr) begin
            suspended_ps+=at_ps-pause_start;
            counter.enter_segment(at_ps);event_synchronize(target);
            dispatch_logical_resume_gap(target,at_ps);
          end
        end
      end
      if(end_ps>counter.last_time)counter.submit(end_ps,0);
      flush_logical_gap(target,end_ps);
      if(hits_completed[target]>0)$display("SYNDRAM_TRACE_HIT refresh_gap %0d 0 1",target);
      if(hits_expired[target]>0)$display("SYNDRAM_TRACE_HIT refresh_gap %0d 0 0",target);
      $display("GAP_FINAL %0d %0d %0d",target,hits_completed[target],hits_expired[target]);
      if(counter.active && end_ps-suspended_ps>credit.last_time)credit.submit(end_ps-suspended_ps,0);
      if(credit.legal_seen)$display("SYNDRAM_TRACE_HIT refresh_credit %0d 0 1",target);
      if(credit.illegal_seen)$display("SYNDRAM_TRACE_HIT refresh_credit %0d 0 0",target);
      if(credit.credited>0)$display("SYNDRAM_TRACE_HIT refresh_credit %0d 1 1",target);
      $display("CREDIT_FINAL %0d %0d %0d %0d",target,credit.balance,credit.credited,credit.extra);
      if(counter.legal_seen)$display("SYNDRAM_TRACE_HIT refresh_window %0d 0 1",target);
      if(counter.illegal_seen)$display("SYNDRAM_TRACE_HIT refresh_window %0d 0 0",target);
      $display("WINDOW_FINAL %0d %0d %0d %0d",target,end_ps,counter.count,counter.checks);
    endtask
  end
  task automatic finish_observations(input longint end_ps);
    array_window[0].finish_observations(end_ps);
    array_window[1].finish_observations(end_ps);
  endtask
endmodule
