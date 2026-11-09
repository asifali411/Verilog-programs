module decoder(
  input wire A,
  input wire B,
  output wire [3:0] D
);
  assign D[0] = ~A & ~B;
  assign D[1] = ~A &  B;
  assign D[2] =  A & ~B;
  assign D[3] =  A &  B;
endmodule