module siso_tb;
  
  reg clk, rst, din;
  wire dout;

  siso test (clk, rst, din, dout);

  always #1 clk = ~clk;

  initial begin
    clk = 0; rst = 1; din = 0;

    #2 rst = 0;

    // 1011
    #2 din = 1;
    #2 din = 0;
    #2 din = 1;
    #2 din = 1;

    #2;
    #2;
    #2;
    #2;

    #2 $finish;
  end

  initial begin
    $monitor("t=%0t, clk=%b, rst=%b, din=%b, dout=%b", $time, clk, rst, din, dout);
    $dumpfile("siso.vcd");
    $dumpvars();
  end

endmodule