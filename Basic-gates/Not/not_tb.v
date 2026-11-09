module not_tb;

  reg A;
  wire Ygl, Ydf, Ybh;

  not_gl testA (A, Ygl);
  not_df testB (A, Ydf);
  not_bh testC (A, Ybh);

  initial begin
    A = 0;
    #1 A = 1;

    #1 $finish;
  end

  initial begin
    $monitor("t=%0t, A=%b, Ygl=%b, Ydf=%b, Ybh=%b", $time, A, Ygl, Ydf, Ybh);
    $dumpfile("not.vcd");
    $dumpvars();
  end

endmodule