module priority_tb;

  reg [9:0] I;
  wire [3:0] Y;
  wire valid;

  priority test (I, Y, valid);

  initial begin
    for(I = 10'b0000000000; I < 10'b1111111111; I = I + 10'b0000000001) begin
      #1;
    end
  end

  initial begin
    $monitor("t=%0t, I=%b, Y=%b, valid=%b", $time, I, Y, valid);
    $dumpfile("priority.vcd");
    $dumpvars();
  end

endmodule