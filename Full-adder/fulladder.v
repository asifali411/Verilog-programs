module fulladder(
  input wire A, B, C,
  output wire Sum, Carry
);

  assign Sum = (A ^ B) ^ C;
  assign Carry = A & ( B | C) | (B & C);

endmodule