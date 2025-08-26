class generator;
  logic [7:0]d;
  mailbox mbx;
  task run();
    for(int i=0;i<9;i++)begin
      d=8'b1<<i;
      mbx.put(d);
      $display("generated input d=%b",d);
    end
  endtask
endclass
