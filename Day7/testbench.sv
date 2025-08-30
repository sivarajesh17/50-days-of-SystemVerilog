module tb;
  inter sif();
  decoder2to4 u1(.a(sif.a), .b(sif.b), .y(sif.y));
  driver div;
  generator gen;
  mailbox mb;
  initial begin
    gen = new();
    div = new();
    mb  = new();
    gen.mb = mb;
    div.mb = mb;
    div.vif = sif;
    fork
      gen.run();
      div.run();
    join
    #50 
    $finish;
  end
endmodule
