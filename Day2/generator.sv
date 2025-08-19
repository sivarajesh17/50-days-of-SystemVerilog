class generator;
  mailbox mbox;
  bit a,b,c;
  task run();
    for(int i=0;i<8;i++)begin
      a=i[2];
      b=i[1];
      c=i[0];
      mbox.put({a,b,c});
      $display("Generated test cases a=%0b,b=%0b,c=%0b",a,b,c);
    end
  endtask
endclass
