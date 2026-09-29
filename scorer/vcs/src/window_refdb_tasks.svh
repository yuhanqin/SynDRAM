bit [15:0] mem_visited[2];
bit mem_history_unknown[2];
int mem_group_count[2];
int hits_duplicate[2];
int hits_complete[2];
task automatic event_synchronize(input int scope);
  bit [15:0] visited;
  bit [15:0] pre_visited;
  bit history_unknown;
  bit pre_history_unknown;
  int group_count;
  int pre_group_count;
  bit hit_duplicate;
  bit hit_complete;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  visited=mem_visited[scope]; pre_visited=visited;
  history_unknown=mem_history_unknown[scope]; pre_history_unknown=history_unknown;
  group_count=mem_group_count[scope]; pre_group_count=group_count;
  hit_duplicate=0;
  hit_complete=0;
  if(1'b1) begin
    visited='0;
  end
  if(1'b1) begin
    group_count=0;
  end
  if(1'b1) begin
    history_unknown=0;
  end
  mem_visited[scope]=visited;
  mem_history_unknown[scope]=history_unknown;
  mem_group_count[scope]=group_count;
  if(hit_duplicate) begin hits_duplicate[scope]++; $display("ORDERED_RULE_HIT rule-trace-table299-refdb-distinct-bank-pairs %0d illegal",scope); end
  if(hit_complete) begin hits_complete[scope]++; $display("ORDERED_RULE_HIT rule-trace-table299-refdb-distinct-bank-pairs %0d legal",scope); end
endtask
task automatic event_refdb(input int scope, input int bg, input int dbg, input int ba);
  bit [15:0] visited;
  bit [15:0] pre_visited;
  bit history_unknown;
  bit pre_history_unknown;
  int group_count;
  int pre_group_count;
  bit hit_duplicate;
  bit hit_complete;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  if(bg<0 || bg>3) $fatal(1,"invalid primitive field");
  if(dbg<0 || dbg>3) $fatal(1,"invalid primitive field");
  if(ba<0 || ba>3) $fatal(1,"invalid primitive field");
  visited=mem_visited[scope]; pre_visited=visited;
  history_unknown=mem_history_unknown[scope]; pre_history_unknown=history_unknown;
  group_count=mem_group_count[scope]; pre_group_count=group_count;
  hit_duplicate=0;
  hit_complete=0;
  if(1'b1) begin
    hit_duplicate=((bg == dbg) || ((!pre_history_unknown) && (pre_visited[((bg << 2) | ba)] || pre_visited[((dbg << 2) | ba)])));
  end
  if(hit_duplicate) begin
    history_unknown=1'b1;
  end
  if((!history_unknown)) begin
    if((((bg << 2) | ba))<0 || (((bg << 2) | ba))>=16) $fatal(1,"primitive index");
    visited[((bg << 2) | ba)]=1'b1;
  end
  if((!history_unknown)) begin
    if((((dbg << 2) | ba))<0 || (((dbg << 2) | ba))>=16) $fatal(1,"primitive index");
    visited[((dbg << 2) | ba)]=1'b1;
  end
  if((!history_unknown)) begin
    if(((group_count + 1))<0 || ((group_count + 1))>8) $fatal(1,"primitive counter overflow");
    group_count=(group_count + 1);
  end
  if(1'b1) begin
    hit_complete=((!history_unknown) && (group_count == 8) && (&visited));
  end
  if(hit_complete) begin
    visited='0;
  end
  if(hit_complete) begin
    group_count=0;
  end
  mem_visited[scope]=visited;
  mem_history_unknown[scope]=history_unknown;
  mem_group_count[scope]=group_count;
  if(hit_duplicate) begin hits_duplicate[scope]++; $display("ORDERED_RULE_HIT rule-trace-table299-refdb-distinct-bank-pairs %0d illegal",scope); end
  if(hit_complete) begin hits_complete[scope]++; $display("ORDERED_RULE_HIT rule-trace-table299-refdb-distinct-bank-pairs %0d legal",scope); end
endtask
