module Mux2_1(input A, B, sel, output reg Y);
always@(sel)
case(sel)
			1'b0: Y=A;
			1'b1: Y=B;
			default:Y=1'bX;
		endcase 
endmodule
module Mux4_1(input wire A, B, C, D, input [1:0] sel, output reg Y);
always@(sel)
	begin 
		case(sel)
			2'b00: Y=A;
			2'b01: Y=B;
			2'b10: Y=C;
			2'b11: Y=D;
			default:Y=1'bX;
		endcase 
	end
endmodule