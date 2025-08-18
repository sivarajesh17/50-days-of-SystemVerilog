module tb;
  inter half();
  halfadder dut (.a(half.a),.b(half.b),.s(half.sum),.c(half.carry));
  generator gen;
  driver  driv;
  mailbox mbox;
  initial 
    begin
      gen=new();
      driv=new();
      mbox=new();
      driv.vif=half;
      gen.mbox=mbox;
      driv.mbox=mbox;
      fork
        gen.run();
        driv.run();
      join
    end
endmodule

