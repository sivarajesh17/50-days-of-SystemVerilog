class generator;
  mailbox mbox;
  logic [1:0]sel;
  logic din;
  task run();
    for (int i=0;i<4;i++)
      begin
        din=$urandom();
        sel=i;
        $display("Generated values sel=%b,din=%b",sel,din);
        mbox.put({din,sel});
      end 
  endtask
endclass
