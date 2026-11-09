module demux_tb;

  reg I;
  reg [1:0] S;
  wire [3:0] Y;

  demux test (I, S, Y);

  initial begin
    I = 1; S = 2'b00;

    #1 S = 2'b01;
    #1 S = 2'b10;
    #1 S = 2'b11;
    #1 $finish;
  end

  initial begin
    $monitor("t=%0t, I=%b, S=%b, Y=%b", $time, I, S, Y);
    $dumpfile("demux.vcd");
    $dumpvars();
  end

endmodule