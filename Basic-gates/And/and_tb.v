module and_tb;

  reg A, B;
  wire Ygl, Ydf, Ybh;

  and_gl testA (A, B, Ygl);
  and_df testB (A, B, Ydf);
  and_bh testC (A, B, Ybh);

  initial begin
    A = 0; B = 0;
    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;

    #1 $finish;
  end

  initial begin
    $monitor("t=%0t, A=%b, B=%b, Ygl=%b, Ydf=%b, Ybh=%b", $time, A, B, Ygl, Ydf, Ybh);
    $dumpfile("and.vcd");
    $dumpvars();
  end

endmodule