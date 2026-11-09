// SEQUENCE: 101

module fsm(
  input wire clk, rst, din,
  output reg dout
);

  reg [1:0] state, next_state;

  always @(posedge clk or posedge rst) begin
    if (rst)
      state <= 2'b00;
    else
      state <= next_state;
  end

  always @(*) begin
    next_state = state;

    case(state)
      2'b00:
        next_state = (din == 1'b0) ? state : 2'b01;
      2'b01:
        next_state = (din == 1'b0) ? 2'b10 : state;
      2'b10:
        next_state = (din == 1'b0) ? 2'b00 : 2'b11;
      2'b11:
        next_state = (din == 1'b0) ? 2'b10 : 2'b01;
    endcase
  end

  always @(*) begin
    if (state == 2'b11)
      dout = 1'b1;
    else
      dout = 1'b0;
  end

endmodule