module tff(
  input wire T, clk, rst,
  output reg Q,
  output wire Qn
);

  assign Qn = ~Q;

  always @(posedge clk or posedge rst) begin
    if (rst)
      Q <= 1'b0;
    else begin
      if (T)
        Q <= ~Q;
      else
        Q <= Q;
    end
  end 

endmodule