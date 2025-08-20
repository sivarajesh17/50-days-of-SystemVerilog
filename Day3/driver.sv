class driver;
  mailbox mbox;
  virtual inter vif;
  task run();
    logic [8:0]temp;
    logic [3:0]a,b;
    logic [3:0]sum;
    logic c;
    logic carry;
    forever
      begin
        mbox.get(temp);
        {a,b,c}=temp;
        vif.a=a;
        vif.b=b;
        vif.c=c;
        #1;
        $display("Drived values a=%b,b=%b,c=%b => DUT Output sum=%b,Carry=%b",vif.a,vif.b,vif.c,vif.sum,vif.carry);
      end
  endtask
endclass
