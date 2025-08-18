class generator;
  mailbox mbox;
  task run();
    for (int i=0;i<4;i++)begin
      bit a=i[1];
      bit b=i[0];
      mbx.put({a,b});
      $display("Generated test cases a=%0b,b=%0b",a,b);
    end
  endtask
endclass
