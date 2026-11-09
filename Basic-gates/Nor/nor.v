module nor_gl(
  input wire A, B,
  output wire Y
);
  nor(Y, A, B);
endmodule

module nor_df(
  input wire A, B,
  output wire Y
);
  assign Y = ~(A | B);
endmodule

module nor_bh(
  input wire A, B,
  output reg Y
);
  always @(A or B) begin
    if (A == 1 || B == 1)
      Y = 0;
    else
      Y = 1;
  end
endmodule