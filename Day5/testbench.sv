module tb;
  inter inf();
  demux_1to4 uut(.din(inf.din),.sel(inf.sel),.y(inf.y));
  generator gen;
  driver driv;
  mailbox mbox;
  initial 
    begin
      gen=new();
      driv=new();
      mbox=new();
      driv.vif=inf;
      gen.mbox=mbox;
      driv.mbox=mbox;
      fork
        gen.run();
        driv.run();
      join
    end
endmodule
      
