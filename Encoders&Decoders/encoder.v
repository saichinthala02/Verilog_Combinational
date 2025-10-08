//-->Implementation of Encoder 4:2

module encoder42(i,y);
	input [3:0]i;
	output reg [1:0]y;

	always@(*)begin
		case(i)
			4'b0001 : y=2'b00;
			4'b0010 : y=2'b01;
			4'b0100 : y=2'b10;
			4'b1000 : y=2'b11;
			default y=2'bxx;
		endcase
	end
endmodule



