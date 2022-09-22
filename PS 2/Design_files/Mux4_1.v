module Mux4_1(input A , B, C, D, input [0:1] Sel, output Y);
wire Y1,Y2;
Mux2_1 m1(Sel[0],A,B,Y1);
Mux2_1 m2(Sel[0],C,D,Y2);
Mux2_1 main(Sel[1],Y1,Y2,Y);
endmodule
