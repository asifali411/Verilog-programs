module tff(
  input wire clk, rst, T,
  output reg Q,
  output wire Qn
);

  assign Qn = ~Q;

  always @(posedge clk or posedge rst) begin
    if (rst)
      Q <= 1'b0;
    else
      if (T)
        Q <= ~Q;
      else
        Q <= Q;
  end
endmodule

module counter(
  input wire clk, rst,
  output wire [2:0] count
);

  wire Qa, Qb, Qc;
  wire Qna, Qnb, Qnc;

  tff TA (clk, rst, 1'b1, Qa, Qna);
  tff TB (Qa, rst, 1'b1, Qb, Qnb);
  tff TC (Qb, rst, 1'b1, Qc, Qnc);

  assign count = {Qc, Qb, Qa};

endmodule