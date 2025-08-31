class driver;
  virtual inter vif;
  mailbox mb;
  logic[7:0]temp;
  logic[3:0]a,b;
  task run();
    forever begin
    mb.get(temp);
    {a,b}=temp;
    vif.a=a;
    vif.b=b;
    #10;
    $display("Drived values are a=%0b,b=%0b DUT OUTPUT => a_gt_b=%0b,a_lt_b=%0b,a_eq_b=%0b",vif.a,vif.b,vif.a_gt_b,vif.a_lt_b,vif.a_eq_b);
    end
  endtask
endclass

