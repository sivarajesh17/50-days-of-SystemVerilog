class driver;
  mailbox mbox;
  logic [2:0]temp;
  virtual inter vif;
  task run();
    forever
      begin
        logic [1:0]sel;
        logic din;
        mbox.get(temp);
        {din,sel[1:0]}=temp;
        vif.din=din;
        vif.sel=sel;
        #10;
        $display("Drived values din=%b,sel=%b => DUT OUTPUT y=%b",vif.din,vif.sel,vif.y);
      end
  endtask
endclass
