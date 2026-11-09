module dff_tb;
  
  reg D, clk, rst;
  wire Q, Qn;

  dff test (D, clk, rst, Q, Qn);

  always #1 clk = ~clk;

  initial begin
    clk = 0; rst = 1; D = 0;

    #2 rst = 0;

    #2 D = 1;
    #2 D = 0;

    #2 $finish;
  end

  initial begin
    $monitor("t=%0t, clk=%b, rst=%b, D=%b, Q=%b, Qn=%b", $time, clk, rst, D, Q, Qn);
    $dumpfile("dff.vcd");
    $dumpvars();
  end

endmodule