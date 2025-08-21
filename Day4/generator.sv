class generator;
  mailbox mbox;
  logic [3:0]i;
  logic [1:0]s;
  task run();
    i=$urandom();
    for(int in=0;in<4;in++)
      begin
        s=in;
        mbox.put({i,s});
        $display("Generated values Data=%b,SelectLines=%b",i,s);
      end
  endtask
endclass
