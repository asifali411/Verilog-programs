module or_gl(
  input wire A, B,
  output wire Y
);
  or(Y, A, B);
endmodule

module or_df(
  input wire A, B,
  output wire Y
);
  assign Y = A | B;
endmodule

module or_bh(
  input wire A, B,
  output reg Y
);
  always @(A or B) begin
    if (A == 1 || B == 1)
      Y = 1;
    else
      Y = 0;
  end
endmodule