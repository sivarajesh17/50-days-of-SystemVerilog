module decoder2to4(
  input a,b,
  output reg [3:0]y);
  always@(*)begin
    case({a,b})
        2'b00:y=4'b1000;
        2'b01:y=4'b0100;
        2'b10:y=4'b0010;
        2'b11:y=4'b0001;
    endcase
  end
endmodule
