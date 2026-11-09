module dff(
  input wire D, clk, rst,
  output reg Q,
  output wire Qn
);
  assign Qn = ~Q;

  always @(posedge clk or posedge rst) begin
    if (rst)
      Q <= 1'b0;
    else
      Q <= D;
  end

endmodule