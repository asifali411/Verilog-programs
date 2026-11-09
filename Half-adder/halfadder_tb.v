module halfadder_tb;

  reg A, B;
  wire Sum, Carry;

  halfadder test (A, B, Sum, Carry);

  initial begin
    A = 0; B = 0;
    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;
    #1 $finish;
  end

  initial begin
    $monitor("t=%0t, A=%b, B=%b, Sum=%b, Carry=%b", $time, A, B, Sum, Carry);
    $dumpfile("halfadder.vcd");
    $dumpvars();
  end

endmodule