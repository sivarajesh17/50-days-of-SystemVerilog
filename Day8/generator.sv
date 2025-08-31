class generator;
  mailbox mb;
  logic [3:0]a,b;
  task run();
    for(int i=0;i<4;i++)begin
      a=$random();
      b=$random();
      mb.put({a,b});
      $display("Generated values are a=%0b,b=%0b",a,b);
    end
  endtask
endclass
