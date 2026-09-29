bit mem_gap_active[2];
int hits_completed[2];
int hits_expired[2];
task automatic event_begin_gap(input int scope);
  bit gap_active;
  bit pre_gap_active;
  bit hit_completed;
  bit hit_expired;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  gap_active=mem_gap_active[scope]; pre_gap_active=gap_active;
  hit_completed=0;
  hit_expired=0;
  if(1'b1) begin
    gap_active=1'b1;
  end
  mem_gap_active[scope]=gap_active;
  if(hit_completed) begin hits_completed[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d legal",scope); end
  if(hit_expired) begin hits_expired[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d illegal",scope); end
endtask
task automatic event_equivalent_refresh(input int scope);
  bit gap_active;
  bit pre_gap_active;
  bit hit_completed;
  bit hit_expired;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  gap_active=mem_gap_active[scope]; pre_gap_active=gap_active;
  hit_completed=0;
  hit_expired=0;
  if(1'b1) begin
    hit_completed=pre_gap_active;
  end
  if(1'b1) begin
    gap_active=1'b1;
  end
  mem_gap_active[scope]=gap_active;
  if(hit_completed) begin hits_completed[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d legal",scope); end
  if(hit_expired) begin hits_expired[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d illegal",scope); end
endtask
task automatic event_gap_timeout(input int scope);
  bit gap_active;
  bit pre_gap_active;
  bit hit_completed;
  bit hit_expired;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  gap_active=mem_gap_active[scope]; pre_gap_active=gap_active;
  hit_completed=0;
  hit_expired=0;
  if(1'b1) begin
    hit_expired=pre_gap_active;
  end
  if(1'b1) begin
    gap_active=1'b0;
  end
  mem_gap_active[scope]=gap_active;
  if(hit_completed) begin hits_completed[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d legal",scope); end
  if(hit_expired) begin hits_expired[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d illegal",scope); end
endtask
task automatic event_stop(input int scope);
  bit gap_active;
  bit pre_gap_active;
  bit hit_completed;
  bit hit_expired;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  gap_active=mem_gap_active[scope]; pre_gap_active=gap_active;
  hit_completed=0;
  hit_expired=0;
  if(1'b1) begin
    gap_active=0;
  end
  mem_gap_active[scope]=gap_active;
  if(hit_completed) begin hits_completed[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d legal",scope); end
  if(hit_expired) begin hits_expired[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d illegal",scope); end
endtask
task automatic event_pause_gap(input int scope);
  bit gap_active;
  bit pre_gap_active;
  bit hit_completed;
  bit hit_expired;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  gap_active=mem_gap_active[scope]; pre_gap_active=gap_active;
  hit_completed=0;
  hit_expired=0;
  mem_gap_active[scope]=gap_active;
  if(hit_completed) begin hits_completed[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d legal",scope); end
  if(hit_expired) begin hits_expired[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d illegal",scope); end
endtask
task automatic event_resume_gap(input int scope);
  bit gap_active;
  bit pre_gap_active;
  bit hit_completed;
  bit hit_expired;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  gap_active=mem_gap_active[scope]; pre_gap_active=gap_active;
  hit_completed=0;
  hit_expired=0;
  mem_gap_active[scope]=gap_active;
  if(hit_completed) begin hits_completed[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d legal",scope); end
  if(hit_expired) begin hits_expired[scope]++; $display("ORDERED_RULE_HIT rule-trace-table301-refresh-surrounding-max-gap %0d illegal",scope); end
endtask

longint logical_gap_deadline[2],logical_gap_remaining[2],logical_gap_last[2];
bit logical_gap_active[2],logical_gap_paused[2];
task automatic flush_logical_gap(input int scope,input longint at_ps);
  if(scope<0 || scope>=2 || at_ps<0)$fatal(1,"invalid logical scope/time");
  if(at_ps<logical_gap_last[scope])$fatal(1,"unordered logical event");
  if(logical_gap_active[scope] && !logical_gap_paused[scope] && at_ps>logical_gap_deadline[scope])begin
    event_gap_timeout(scope);logical_gap_active[scope]=0;
  end
  logical_gap_last[scope]=at_ps;
endtask
task automatic dispatch_logical_begin_gap(input int scope, input longint at_ps);
  flush_logical_gap(scope,at_ps);
  event_begin_gap(scope);
  logical_gap_deadline[scope]=at_ps+64'd35154000;
  logical_gap_active[scope]=1;logical_gap_paused[scope]=0;
endtask
task automatic dispatch_logical_equivalent_refresh(input int scope, input longint at_ps);
  flush_logical_gap(scope,at_ps);
  event_equivalent_refresh(scope);
  logical_gap_deadline[scope]=at_ps+64'd35154000;
  logical_gap_active[scope]=1;logical_gap_paused[scope]=0;
endtask
task automatic dispatch_logical_stop(input int scope, input longint at_ps);
  flush_logical_gap(scope,at_ps);
  event_stop(scope);
  logical_gap_active[scope]=0;logical_gap_paused[scope]=0;
endtask
task automatic dispatch_logical_pause_gap(input int scope, input longint at_ps);
  flush_logical_gap(scope,at_ps);
  event_pause_gap(scope);
  if(logical_gap_active[scope] && !logical_gap_paused[scope])begin
    logical_gap_remaining[scope]=logical_gap_deadline[scope]-at_ps;
    logical_gap_paused[scope]=1;
  end
endtask
task automatic dispatch_logical_resume_gap(input int scope, input longint at_ps);
  flush_logical_gap(scope,at_ps);
  event_resume_gap(scope);
  if(logical_gap_active[scope] && logical_gap_paused[scope])begin
    logical_gap_deadline[scope]=at_ps+logical_gap_remaining[scope];
    logical_gap_paused[scope]=0;
  end
endtask
