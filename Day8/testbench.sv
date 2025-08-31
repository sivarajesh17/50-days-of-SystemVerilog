module tb;
  inter sif();
  comp_4bit u1(.a(sif.a),.b(sif.b),.a_gt_b(sif.a_gt_b),.a_lt_b(sif.a_lt_b),.a_eq_b(sif.a_eq_b));
  generator gen;
  driver div;
  mailbox mb;
  initial begin
    gen=new();
    div=new();
    mb=new();
    gen.mb=mb;
    div.mb=mb;
    div.vif=sif;
    fork
      gen.run();
      div.run();
    join
  end
endmodule
