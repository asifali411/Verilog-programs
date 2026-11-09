module fulladder_tb;

  reg A, B, C;
  wire Sum, Carry;

  fulladder test (A, B, C, Sum, Carry);

  initial begin
    A = 0; B = 0; C = 0;
    #1 A = 0; B = 0; C = 1;
    #1 A = 0; B = 1; C = 0;
    #1 A = 0; B = 1; C = 1;
    #1 A = 1; B = 0; C = 0;
    #1 A = 1; B = 0; C = 1;
    #1 A = 1; B = 1; C = 0;
    #1 A = 1; B = 1; C = 1;

    #1 $finish;
  end

  initial begin
    $monitor("t=%0t, A=%b, B=%b, C=%b, Sum=%b, Carry=%b", $time, A, B, C, Sum, Carry);
    $dumpfile("fulladder.vcd");
    $dumpvars();
  end

endmodule