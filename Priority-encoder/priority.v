module priority(
  input wire [9:0] I,
  output reg [3:0] Y,
  output reg valid
);
  always @(*) begin
    valid = 1'b1;

    casex(I)
      10'b0000000001: Y = 4'b0000;
      10'b000000001x: Y = 4'b0001;
      10'b00000001xx: Y = 4'b0010;
      10'b0000001xxx: Y = 4'b0011;
      10'b000001xxxx: Y = 4'b0100;
      10'b00001xxxxx: Y = 4'b0101;
      10'b0001xxxxxx: Y = 4'b0110;
      10'b001xxxxxxx: Y = 4'b0111;
      10'b01xxxxxxxx: Y = 4'b1000;
      10'b1xxxxxxxxx: Y = 4'b1001;

      default: begin
        Y = 4'b0000;
        valid = 1'b0;
      end
    endcase
  end

endmodule