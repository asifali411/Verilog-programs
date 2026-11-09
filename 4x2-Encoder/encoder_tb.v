module encoder_tb;

  reg [3:0] D;
  wire A;
  wire B;

  encoder test (D, A, B);

  initial begin
    D = 4'b0001;
    #1 D = 4'b0010;
    #1 D = 4'b0100;
    #1 D = 4'b1000;

    #1 D = 4'b0000;
    #1 $finish;
  end

  initial begin
    $monitor("t=%0t, D=%b, A=%b, B=%b", $time, D, A, B);
    $dumpfile("encoder.vcd");
    $dumpvars();
  end

endmodule