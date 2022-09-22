module top(input A, B, input [3:0] Sel, output Y);
wire Y1, Y2;
wire [1:0] co;reg clk=0;
//initial 
//begin
//forever #10 clk = ~clk;
//end

cntrlU u(clk,Sel,co);
Mux4_1 m1(1,~B,B,~B,co,Y1);
Mux4_1 m2(~B,0,~B,B,co,Y2);
Mux2_1 m(Y1,Y2,A,Y);
endmodule
