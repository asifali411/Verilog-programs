module srff_tb;

  reg S, R, clk, rst;
  wire Q, Qn;

  srff test (S, R, clk, rst, Q, Qn);

  always #1 clk = ~clk;

  initial begin
    clk = 0; rst = 1; S = 0; R = 0;

    #2 rst = 0;

    #2 S = 0; R = 0;
    #2 S = 0; R = 1;
    #2 S = 1; R = 0;
    #2 S = 1; R = 1;

    #2 $finish;
  end

  initial begin
    $monitor("t=%0t, clk=%b, rst=%b, S=%b, R=%b, Q=%b, Qn=%b", $time, clk, rst, S, R, Q, Qn);
    $dumpfile("srff.vcd");
    $dumpvars();
  end

endmodule