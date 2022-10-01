module Sort3ip();
input [4:0] A,B,C;
output [4:0] G,M,L;
wire [4:0] G1,L1,G2,L2;
Sort_2ip s1(A,B,G1,L1);
Sort_2ip s2(G1,C,G2,L2);
assign G = G1;
assign M = G2;
assign L = L2;
endmodule
