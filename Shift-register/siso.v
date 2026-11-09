module siso(
  input wire clk, rst, din,
  output wire dout
);

  reg [3:0] stored;

  always @(posedge clk or posedge rst) begin
    if (rst)
      stored <= 4'b0000;
    else
      stored <= {stored[2:0], din};
  end

  assign dout = stored[3];

endmodule