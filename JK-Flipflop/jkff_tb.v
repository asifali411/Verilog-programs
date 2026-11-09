module jkff_tb;

  reg J, K, clk, rst;
  wire Q, Qn;

  jkff test (J, K, clk, rst, Q, Qn);

  always #1 clk = ~clk;

  initial begin
    clk = 0; rst = 1; J = 0; K = 0;

    #2 rst = 0;

    #2 J = 0; K = 0;
    #2 J = 0; K = 1;
    #2 J = 1; K = 0;
    #2 J = 1; K = 1;

    #2 $finish;
  end

  initial begin
    $monitor("t=%0t, clk=%b, rst=%b, J=%b, K=%b, Q=%b, Qn=%b", $time, clk, rst, J, K, Q, Qn);
    $dumpfile("jkff.vcd");
    $dumpvars();
  end

endmodule