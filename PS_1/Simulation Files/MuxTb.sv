module MuxTb();
reg[1:0] en;
reg A, B, C, D, Y;
reg clk=0;
Mux4_1 m(A,B,C,D,en,Y);

initial begin 
	A=1; B=0; C=1; D=1'bX;
	forever #10 clk=~clk;
	end
// Creating a array for Values of A, B, C, D
reg val[0:3] = {1'b1, 1'b0, 1'b1, 1'bX};
always@(posedge clk) begin 
 en = $random;
end

always@(negedge clk) begin
$display("%0b %0b", A, B);
assert(Y === val[en]);
end
	
endmodule