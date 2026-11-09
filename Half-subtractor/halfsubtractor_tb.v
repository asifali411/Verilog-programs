module halfsubtractor_tb;

  reg A, B;
  wire Diff, Borrow;

  halfsubtractor test (A, B, Diff, Borrow);

  initial begin
    A = 0; B = 0;
    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;
    #1 $finish;
  end

  initial begin
    $monitor("t=%0t, A=%b, B=%b, Diff=%b, Borrow=%b", $time, A, B, Diff, Borrow);
    $dumpfile("halfsubtractor.vcd");
    $dumpvars();
  end

endmodule