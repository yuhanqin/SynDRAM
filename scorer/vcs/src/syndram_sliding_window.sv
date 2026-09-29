// Generic offline trace observer. flush/submit must include the trace endpoint;
// intermediate expiry is replayed even when no further refresh event occurs.
module syndram_sliding_window #(
  parameter longint WIDTH_PS=10,
  parameter longint MINIMUM=1
);
  longint entry_time[$],entry_weight[$];
  longint origin,last_time,count,checks;
  bit active,legal_seen,illegal_seen;
  task automatic initialize(input longint start_ps);
    if(WIDTH_PS<=0 || MINIMUM<=0 || start_ps<0) $fatal(1,"window parameters");
    entry_time.delete();entry_weight.delete();origin=start_ps;last_time=start_ps-1;
    count=0;checks=0;active=1;legal_seen=0;illegal_seen=0;
  endtask
  task automatic expire(input longint now_ps);
    longint discarded;
    while(entry_time.size()>0) begin
      if(entry_time[0]+WIDTH_PS>now_ps) break;
      discarded=entry_time.pop_front();discarded=entry_weight.pop_front();
      count-=discarded;
    end
  endtask
  task automatic sample_point(input longint now_ps);
    if(active && now_ps>=origin+WIDTH_PS) begin
      checks++;
      if(count>=MINIMUM) legal_seen=1; else illegal_seen=1;
    end
  endtask
  task automatic submit(input longint now_ps,input longint weight);
    longint due;
    if(now_ps<=last_time || now_ps<0 || weight<0 || (!active && weight!=0))
      $fatal(1,"invalid window event; batch tied timestamps");
    if(active) begin
      while(1) begin
        due=-1;
        if(last_time<origin+WIDTH_PS && origin+WIDTH_PS<now_ps) due=origin+WIDTH_PS;
        if(entry_time.size()>0 && entry_time[0]+WIDTH_PS<now_ps)
          if(due<0 || entry_time[0]+WIDTH_PS<due) due=entry_time[0]+WIDTH_PS;
        if(due<0) break;
        expire(due);sample_point(due);last_time=due;
      end
      expire(now_ps);
      if(weight>0) begin entry_time.push_back(now_ps);entry_weight.push_back(weight);count+=weight;end
      sample_point(now_ps);
    end
    last_time=now_ps;
  endtask
  task automatic leave_segment(input longint now_ps);
    if(!active) $fatal(1,"duplicate window leave");
    if(now_ps!=last_time)submit(now_ps,0);
    active=0;entry_time.delete();entry_weight.delete();count=0;
  endtask
  task automatic enter_segment(input longint now_ps);
    if(active) $fatal(1,"duplicate window enter");
    if(now_ps!=last_time)submit(now_ps,0);
    active=1;origin=now_ps;
  endtask
endmodule
