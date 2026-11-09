module fullsubtractor_tb;

  reg A, B, C;
  wire Diff, Borrow;

  fullsubtractor test (A, B, C, Diff, Borrow);

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
    $monitor("t=%0t, A=%b, B=%b, C=%b, Diff=%b, Borrow=%b", $time, A, B, C, Diff, Borrow);
    $dumpfile("fullsubtractor.vcd");
    $dumpvars();
  end

endmodule