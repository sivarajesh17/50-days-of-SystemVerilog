module demux_1to4(
    input wire din,
    input wire [1:0] sel,
  output wire [3:0]y
);
  assign y[0] = (~sel[1] & ~sel[0]) & din;
  assign y[1] = (~sel[1] &  sel[0]) & din;
  assign y[2] = ( sel[1] & ~sel[0]) & din;
  assign y[3] = ( sel[1] &  sel[0]) & din;
endmodule

