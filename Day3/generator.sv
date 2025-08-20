class generator;
  mailbox mbox;
  logic [3:0]a,b;
  logic c;
  task run();
    for(int i=0;i<15;i++)
      begin
        a=$urandom();
        b=$urandom();
        c=$urandom();
        mbox.put({a,b,c});
        $display("Genrated values a=%b,b=%b,c=%b",a,b,c);
      end
  endtask
endclass
