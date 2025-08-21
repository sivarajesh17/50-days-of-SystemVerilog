class driver;
  mailbox mbox;
  virtual inter vif;
  task run();
    forever
      begin
        logic [3:0]i;
        logic [1:0]s;
        logic [5:0]temp;
        mbox.get(temp);
        i=temp[5:2];
        s=temp[1:0];
        vif.i=i;
        vif.s=s;
        #1
        $display("Drived values Data=%b,SelectLines=%b => DUT OUTPUT y=%b",vif.i,vif.s,vif.y);
        end
  endtask
endclass
