module counter_tb;

  reg clk, rst;
  wire [3:0] count;

  counter test (clk, rst, count);

  always #1 clk = ~clk;

  initial begin
    clk = 0; rst = 1;

    #2 rst = 0;

    // count as much as required
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;
    #2;

    #2 $finish;
  end

  initial begin
    $monitor("t=%0t, clk=%b, rst=%b, count=%b", $time, clk, rst, count);
    $dumpfile("counter.vcd");
    $dumpvars();
  end

endmodule