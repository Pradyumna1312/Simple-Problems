module Mux2_1(input Sel, A, B, output Y);
assign Y = Sel?A:B;
endmodule