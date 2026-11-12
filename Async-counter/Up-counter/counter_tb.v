module counter_tb;

  reg clk, rst;
  wire [2:0] count;
  integer i;

  counter test (clk, rst, count);

  always #1 clk = ~clk;

  initial begin
    clk = 0; rst = 1;
    #2 rst = 0;

    for(i = 0; i < 8; i = i + 1) begin
      #2;
    end

    #2 $finish;
  end

  initial begin
    $monitor("t=%0t, clk=%b, rst=%b, count=%b", $time, clk, rst, count);
    $dumpfile("counter.vcd");
    $dumpvars();
  end 

endmodule