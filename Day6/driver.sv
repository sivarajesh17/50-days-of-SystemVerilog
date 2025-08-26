class driver;
  mailbox mbx;
  virtual inter vif;
  task run();
    forever begin
      logic [7:0]d;
      mbx.get(d);
      vif.d=d;
      #10;
      $display("Drived values d=%b, DUT OUTPUT ==> %b",vif.d,vif.q);
    end
  endtask
endclass

