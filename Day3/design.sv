module rca(
  input  logic [3:0] a, b,
  input  logic       c,
  output logic [3:0] sum,
  output logic       carry);
  assign {carry,sum} = a + b + c;
endmodule
