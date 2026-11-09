module decoder_tb;

  reg A;
  reg B;
  wire [3:0] D;

  decoder test (A, B, D);

  initial begin
    A = 0; B = 0;

    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;
    #1 $finish;
  end

  initial begin
    $monitor("t=%0t, A=%b, B=%b, D=%b", $time, A, B, D);
    $dumpfile("decoder.vcd");
    $dumpvars();
  end

endmodule