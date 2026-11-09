module encoder(
  input wire [3:0] D,
  output reg A,
  output reg B
);
  always @(*) begin
    case (D)
      4'b0001: begin A = 0; B = 0; end
      4'b0010: begin A = 0; B = 1; end
      4'b0100: begin A = 1; B = 0; end
      4'b1000: begin A = 1; B = 1; end
      default: begin A = 1'bx; B = 1'bx; end
    endcase
  end
endmodule