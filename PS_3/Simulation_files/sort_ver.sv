module sort_ver;
reg [4:0] A = 5'd8,B=5'd7, C=5'd6;
wire [4:0] G,L;
real i;
wire Z,Y;
Sort_2ip s1(A,B,G,L);

initial
for(i=0; i<10; i=i+1)
begin
#10 A=C; B = ~C;
C = C+$random;
end

initial
begin
$dumpfile("test.vcd");
$dumpvars(0,sort_ver);
end

/*sequence GL;
G > L;
endsequence
*/
/*sequence check;
Z = (A>B) ;
Y = (G>L);
endsequence;

property check1;
Z == Y;

endproperty;
assert property(check1);*/
//else $error("error");

initial
$monitor("At time %t, value = %h (%h), value = %h (%h)", $time, A, B, G, L);     

endmodule

