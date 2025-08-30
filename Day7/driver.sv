class driver;
  mailbox mb;
  virtual inter vif;
  task run();
    forever begin
      logic [1:0] temp;
      mb.get(temp);
      vif.a = temp[1];
      vif.b = temp[0];
      #5;
      $display("Drived values are  a=%0b, b=%0b,  DUT OUTPUT ==> y=%b", vif.a, vif.b, vif.y);
    end
  endtask
endclass

