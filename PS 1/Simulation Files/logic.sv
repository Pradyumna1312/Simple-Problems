module logic_verify(input clk, Y, A, B, input [3:0] Sel);

always@(negedge clk)
	begin
		if(Sel == 4'b0001) 
			begin
			assert(Y === (~(A*B))); 
			end
		else if(Sel == 4'b0010) 
			begin
			assert(Y === (~(A+B))); 
			end
		else if(Sel == 4'b0100) 
			begin
			assert(Y === (A^B)); 
			end
		else assert(Y === (~(A^B)));
	end
endmodule