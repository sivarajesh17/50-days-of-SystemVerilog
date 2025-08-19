module tb;
  inter full();
  fulladder uut(.a(full.a),.b(full.b),.c(full.c),.sum(full.sum),.carry(full.carry));
  generator gen;
  driver driv;
  mailbox mbox;
  initial 
    begin
      gen=new();
      driv=new();
      mbox=new();
      driv.vif=full;
      gen.mbox=mbox;
      driv.mbox=mbox;
      fork
        gen.run();
        driv.run();
      join
    end
endmodule
