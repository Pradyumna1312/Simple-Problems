module Model_TB();
wire[3:0] op[0:3] = {4'b0001,4'b0010,4'b0100,4'b1000};
reg A=1'b0, B=1'b0, clk=1'b1;reg [0:3] Sel;
string s;reg Y;
reg [1:0] i, co;
top t(.A(A), .co(co),.clk(clk), .B(B), .Sel(Sel), .Y(Y));
initial begin forever #10 clk = ~clk; end
logic_verify lo_vry(clk, Y, A, B, Sel);

always@(posedge clk)
begin 
	A=$random;
	B=$random;
	i=$random;
	Sel = op[i];
	//$sformatf(s, "%0b %0b %0b %0b", A, B, i, Y);
	$display("%0b %0b %0b %0b %0b %0b", A, B, i, Sel,co, Y);
end
//always@(negedge clk)
	//begin
		//if(Sel == 4'b0001) 
			//begin
			//assert(Y === (~(A*B))); 
			//end
		//else if(Sel == 4'b0010) 
			//begin
			//assert(Y === (~(A+B))); 
			//end
		//else if(Sel == 4'b0100) 
			//begin
			//assert(Y === (A^B)); 
			//end
		//else assert(Y === (~(A^B)));
	//end
endmodule