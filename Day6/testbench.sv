module tb();
  inter eif();
  encoder8to3 uut(.d(eif.d),.q(eif.q));
  generator gen;
  driver driv;
  mailbox mbx;
  initial begin
    gen=new();
    driv=new();
    mbx=new();
    driv.vif=eif;

    gen.mbx=mbx;
    driv.mbx=mbx;
    fork
      gen.run();
      driv.run();
    join
  end 
endmodule

