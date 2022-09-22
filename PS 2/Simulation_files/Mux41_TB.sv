module Mux41_TB();
wire Y;
int i;
reg [1:0] sel;
reg A,B,C,D;
Mux4_1 m1(A,B,C,D,sel,Y);
initial
begin
sel = 2'b00; A=1'b1; B=1'bx; C=1'bz; D=1'b1; 
for(i=0;i<4;i++)
	begin
		#10 sel = sel+1;
$display("%0d",Y);
	end
end
wire Z;
sequence check;
Z <= !sel&A || !sel[1]&sel[0]&B || !sel[0]&sel[1]&B || sel[1]&sel[0]&D ;
endsequence;

property check1;
@(sel) Z == Y;

endproperty;
assert property(check1);

endmodule