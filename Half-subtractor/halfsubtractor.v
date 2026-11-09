module halfsubtractor(
  input wire A, B,
  output wire Diff,
  output wire Borrow
);

  assign Diff = A ^ B;
  assign Borrow = ~A & B;

endmodule