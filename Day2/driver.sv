class driver;
  mailbox mbox;
  virtual inter vif;
  task run();
    forever 
      begin
      bit [2:0]temp;
      bit a,b,c;
      mbox.get(temp);
      a=temp[2];
      b=temp[1];
      c=temp[0];
      vif.a=a;
      vif.b=b;
      vif.c=c;
        #1;
      $display("Drived values are a=%b,b=%b,c=%b => DUT output Sum=%b,carry=%b",a,b,c,vif.sum,vif.carry);
    end
  endtask
endclass
