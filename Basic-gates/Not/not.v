module not_gl(
  input wire A,
  output wire Y
);
  not(Y, A);
endmodule

module not_df(
  input wire A,
  output wire Y
);
  assign Y = ~A;
endmodule

module not_bh(
  input wire A,
  output reg Y
);
  always @(A) begin
    if (A == 1)
      Y = 0;
    else
      Y = 1;
  end
endmodule