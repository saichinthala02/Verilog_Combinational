//--> Implementation of 16x1 using 4x1
module mux41(i0,i1,i2,i3,s0,s1,y);
	input i0,i1,i2,i3,s0,s1;
	output reg  y;

	//assign y = ~s1&~s0&i0|~s1&s0&i1|s1&~s0&i2|s1&s0&i3;

	always@(*) begin
	case({s0,s1})
	2'b00 : y=i0;
	2'b01 : y=i1;
	2'b10 : y=i2;
	2'b11 : y=i3;
	endcase
	end
endmodule

module mux16x1(i,s,y);
	input [15:0]i;
	input [3:0]s;
	output y;
	mux41 m1(i[0],i[1],i[2],i[3],s[1],s[0],w1);
	mux41 m2(i[4],i[5],i[6],i[7],s[1],s[0],w2);
	mux41 m3(i[8],i[9],i[10],i[11],s[1],s[0],w3);
	mux41 m4(i[12],i[13],i[14],i[15],s[1],s[0],w4);
	mux41 m5(w1,w2,w3,w4,s[3],s[2],y);
endmodule


//--> Testbench
module top;
	reg [15:0]i;
	reg [3:0]s;
	wire y;
	mux16x1 dut(i,s,y);

	initial begin
	$display("--------------------------");
	$display("       i           s     y");
	$display("--------------------------");
		repeat(15)begin
		{i,s}=$random;
		#2 $display("%b %b    %b",i,s,y);
		end
	$display("--------------------------");
	end
endmodule

/* Output:-
# Start time: 11:18:27 on Oct 04,2025
# Loading work.top
# Loading work.mux16x1
# Loading work.mux41
# --------------------------
#        i           s     y
# --------------------------
# 0101001101010010 0100    1
# 1001010111101000 0001    0
# 0100110101100000 1001    0
# 0000010101100110 0011    0
# 1001011110110000 1101    0
# 1111100110011000 1101    1
# 0010100001000110 0101    0
# 0111010100100001 0010    0
# 0011111000110000 0001    0
# 0111110011010000 1101    1
# 0011111100010111 0110    0
# 1101110011010011 1101    0
# 0100010101111110 1101    0
# 1101111101111000 1100    1
# 1101111010011111 1001    1
# --------------------------
*/
