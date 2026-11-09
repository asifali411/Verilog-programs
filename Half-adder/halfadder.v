module halfadder(
  input wire A, B,
  output wire Sum,
  output wire Carry
);

  assign Sum = A ^ B;
  assign Carry = A & B;

endmodule