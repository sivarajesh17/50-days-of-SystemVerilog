class generator;
  logic a,b;
  mailbox mb;
  task run();
    for (int i=0; i<4; i++) begin
      a = i[1];
      b = i[0];
      mb.put({a,b});
      $display("Generated values a=%b, b=%0b", a, b);
    end
  endtask
endclass
