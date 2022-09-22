module cntrlU(input clk, input wire [3:0] SelType, output wire [1:0] cntrlSig );
wire [3:0] sel = SelType;
reg [1:0] Sig;
always@(clk)
case(sel)
	4'b0001:Sig=2'b00;
	4'b0010:Sig=2'b01;
	4'b0100:Sig=2'b10;
	4'b1000:Sig=2'b11;
	default:Sig=2'bXX;
endcase
assign cntrlSig = Sig;
endmodule