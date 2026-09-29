// Generic offline active-time credit accumulator; no protocol constants.
module syndram_credit_accumulator #(
  parameter longint PERIOD=10,DRAIN=1,CEILING=2,DEBT_LIMIT=2,
  parameter longint BURST_WIDTH=20,BURST_LIMIT=4
);
  longint balance,due,last_time,credited,extra;
  longint queue_time[$],queue_weight[$];
  bit legal_seen,illegal_seen;
  task automatic initialize();
    if(PERIOD<=0 || DRAIN<=0 || CEILING<=0 || DEBT_LIMIT<=0 || BURST_WIDTH<=0 || BURST_LIMIT<=0)
      $fatal(1,"invalid credit parameters");
    balance=0;due=0;last_time=-1;credited=0;extra=0;legal_seen=0;illegal_seen=0;
    queue_time.delete();queue_weight.delete();
  endtask
  task automatic submit(input longint now_ps,input longint weight);
    longint before_due,new_due,used,credit,discarded;
    if(now_ps<0 || now_ps<=last_time || weight<0)$fatal(1,"invalid credit event");
    before_due=now_ps==0 ? 0:(now_ps-1)/PERIOD;
    if(balance-DRAIN*(before_due>due ? before_due-due:0)<-DEBT_LIMIT)illegal_seen=1;
    new_due=now_ps/PERIOD;balance-=DRAIN*(new_due-due);due=new_due;
    while(queue_time.size()>0)begin
      if(queue_time[0]>=now_ps-BURST_WIDTH)break;
      discarded=queue_time.pop_front();discarded=queue_weight.pop_front();
    end
    used=0;foreach(queue_weight[i])used+=queue_weight[i];
    credit=weight;
    if(credit>CEILING-balance)credit=CEILING-balance;
    if(credit>BURST_LIMIT-used)credit=BURST_LIMIT-used;
    if(credit<0)credit=0;
    balance+=credit;credited+=credit;extra+=weight-credit;
    if(credit>0)begin queue_time.push_back(now_ps);queue_weight.push_back(credit);end
    if(balance<-DEBT_LIMIT)illegal_seen=1;else if(weight>0)legal_seen=1;
    last_time=now_ps;
  endtask
endmodule
