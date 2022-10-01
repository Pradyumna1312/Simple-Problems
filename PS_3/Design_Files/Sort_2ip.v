module Sort_2ip(input [4:0] A,B, output reg [4:0]G,L);
always@*
begin
if(A>B)
begin
G <= A;
L <= B;
end
else
begin
G <= B;
L <= A;
end
end
endmodule

