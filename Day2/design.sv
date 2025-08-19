module fulladder(input a,b,c,
                 output sum,carry);
  assign {carry,sum}=a+b+c;
endmodule
