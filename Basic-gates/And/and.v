module and_gl(
  input wire A, B,
  output wire Y
);
  and(Y, A, B);
endmodule

module and_df(
  input wire A, B,
  output wire Y
);
  assign Y = A & B;
endmodule

module and_bh(
  input wire A, B,
  output reg Y
);
  always @(A or B) begin
    if (A == 1 && B == 1)
      Y = 1;
    else
      Y = 0;
  end
endmodule