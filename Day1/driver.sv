class driver;
  mailbox mbox;
  virtual inter vif;
  task run();
    forever begin
      bit[1:0]temp;
      bit a,b;
      mbox.get(temp);
      a=temp[1];
      b=temp[0];
      vif.a=a;
      vif.b=b;
      #10;
      $display("Drived test cases a=%0b,b=%0b dut sum=%0b carry=%0b",a,b,vif.sum,vif.carry);
    end 
  endtask
endclass

