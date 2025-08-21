module tb;
  inter inf();
  mux4to1 uut(.i(inf.i),.s(inf.s),.y(inf.y));
  generator gen;
  driver driv;
  mailbox mbox;
  initial 
    begin
      gen=new();
      driv=new();
      mbox=new();
      gen.mbox=mbox;
      driv.mbox=gen.mbox;
      driv.vif=inf;
      fork
        gen.run();
        driv.run();
      join
    end
endmodule
