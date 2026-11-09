module sevenseg_tb;

  reg [3:0] I;
  wire a,b,c,d,e,f,g;

  sevenseg test (I, a,b,c,d,e,f,g);

  initial begin
    for(I = 4'b0000; I < 4'b1111; I = I + 4'b0001) begin
      #1;
    end

    #1 $finish;
  end

  initial begin
    $monitor("t=%0t, I=%b, a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b", $time, I, a,b,c,d,e,f,g);
    $dumpfile("sevenseg.vcd");
    $dumpvars();
  end

endmodule