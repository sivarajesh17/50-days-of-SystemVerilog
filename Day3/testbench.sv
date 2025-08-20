module tb;
  inter inf();
  rca uut(.a(inf.a),.b(inf.b),.c(inf.c),.sum(inf.sum),.carry(inf.carry));
  mailbox mbox;
  generator gen;
  driver driv;
  initial
    begin
      gen=new();
      driv=new();
      mbox=new();
      gen.mbox=mbox;
      driv.mbox=mbox;
      driv.vif=inf;
      fork
        gen.run();
        driv.run();
      join
    end
endmodule
