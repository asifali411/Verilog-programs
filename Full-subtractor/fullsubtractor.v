module fullsubtractor(
  input wire A, B, C,
  output wire Diff, Borrow
);

  assign Diff = (A ^ B) ^ C;
  assign Borrow = ~A & ( B | C) | (B & C);

endmodule