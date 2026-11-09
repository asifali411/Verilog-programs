module nand_gl(
  input wire A, B,
  output wire Y
);
  nand(Y, A, B);
endmodule

module nand_df(
  input wire A, B,
  output wire Y
);
  assign Y = ~(A & B);
endmodule

module nand_bh(
  input wire A, B,
  output reg Y
);
  always @(A or B) begin
    if (A == 1 && B == 1)
      Y = 0;
    else
      Y = 1;
  end
endmodule