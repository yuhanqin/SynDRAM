bit mem_armed[2];
int mem_lfsr[2];
int hits_match[2];
task automatic event_disarm(input int scope);
  bit armed;
  bit pre_armed;
  int lfsr;
  int pre_lfsr;
  bit hit_match;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  armed=mem_armed[scope]; pre_armed=armed;
  lfsr=mem_lfsr[scope]; pre_lfsr=lfsr;
  hit_match=0;
  if(1'b1) begin
    armed=0;
  end
  if(1'b1) begin
    lfsr=17425;
  end
  mem_armed[scope]=armed;
  mem_lfsr[scope]=lfsr;
  if(hit_match) begin hits_match[scope]++; $display("ORDERED_RULE_HIT rule-trace-table28-cbt-prbs16-input-sequence %0d legal",scope); end
endtask
task automatic event_reset_lfsr(input int scope);
  bit armed;
  bit pre_armed;
  int lfsr;
  int pre_lfsr;
  bit hit_match;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  armed=mem_armed[scope]; pre_armed=armed;
  lfsr=mem_lfsr[scope]; pre_lfsr=lfsr;
  hit_match=0;
  if(1'b1) begin
    lfsr=17425;
  end
  if(1'b1) begin
    armed=1'b1;
  end
  mem_armed[scope]=armed;
  mem_lfsr[scope]=lfsr;
  if(hit_match) begin hits_match[scope]++; $display("ORDERED_RULE_HIT rule-trace-table28-cbt-prbs16-input-sequence %0d legal",scope); end
endtask
task automatic event_packet(input int scope, input int packet);
  bit armed;
  bit pre_armed;
  int lfsr;
  int pre_lfsr;
  bit hit_match;
  if(scope<0 || scope>=2) $fatal(1,"invalid primitive scope");
  if(packet<0 || packet>65535) $fatal(1,"invalid primitive field");
  armed=mem_armed[scope]; pre_armed=armed;
  lfsr=mem_lfsr[scope]; pre_lfsr=lfsr;
  hit_match=0;
  if((armed && ((pre_lfsr & 1) == 1))) begin
    if((((pre_lfsr >> 1) ^ 41224))<0 || (((pre_lfsr >> 1) ^ 41224))>65535) $fatal(1,"primitive counter overflow");
    lfsr=((pre_lfsr >> 1) ^ 41224);
  end
  if((armed && ((pre_lfsr & 1) == 0))) begin
    if(((pre_lfsr >> 1))<0 || ((pre_lfsr >> 1))>65535) $fatal(1,"primitive counter overflow");
    lfsr=(pre_lfsr >> 1);
  end
  if(1'b1) begin
    hit_match=(armed && (packet == lfsr));
  end
  mem_armed[scope]=armed;
  mem_lfsr[scope]=lfsr;
  if(hit_match) begin hits_match[scope]++; $display("ORDERED_RULE_HIT rule-trace-table28-cbt-prbs16-input-sequence %0d legal",scope); end
endtask
