module tff(
  input wire clk, rst, T,
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

module counter(
  input wire clk, rst,
  output wire [2:0] count
);
  wire Qa, Qb, Qc;
  wire Qna, Qnb, Qnc;

  tff TA (clk, rst, 1'b1, Qa, Qna);
  tff TB (Qna, rst, 1'b1, Qb, Qnb);
  tff TC (Qnb, rst, 1'b1, Qc, Qnc);

  assign count = {Qc, Qb, Qa};
endmodule