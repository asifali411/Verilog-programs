module xor_gl(
  input wire A, B,
  output wire Y
);
  xor(Y, A, B);
endmodule

module xor_df(
  input wire A, B,
  output wire Y
);
  assign Y = A ^ B;
endmodule

module xor_bh(
  input wire A, B,
  output reg Y
);
  always @(A or B) begin
    if (A != B)
      Y = 1;
    else
      Y = 0;
  end
endmodule