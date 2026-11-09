module tff_tb;

  reg T, clk, rst;
  wire Q, Qn;

  tff test (T, clk, rst, Q, Qn);

  always #1 clk = ~clk;

  initial begin
    clk = 0; rst = 1; T = 0;

    #2 rst = 0; T = 1;

    // toggle the value as many times
    #2;
    #2;
    #2;
    #2;

    #2 $finish;
  end

  initial begin
    $monitor("t=%0t, clk=%b, rst=%b, T=%b, Q=%b, Qn=%b", $time, clk, rst, T, Q, Qn);
    $dumpfile("tff.vcd");
    $dumpvars();
  end

endmodule