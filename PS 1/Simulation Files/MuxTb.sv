module MuxTb();
reg en, A, B, Y;
Mux2_1 m(A,B,en,Y);
initial begin
en=0; A=1; B=0;
#10 en=1;
#20 en=0;
end
	
endmodule