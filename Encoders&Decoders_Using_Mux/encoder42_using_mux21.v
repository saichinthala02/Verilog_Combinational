//--> Implementation of 4:2 Encoder using Mux.

//--> 2x1 Mux
module mux_2x1(i0,i1,s,y);
	input i0,i1,s;
	output y;
	assign y = (s==0)?i0:i1;
endmodule

//--> 4:2 Encoder using 2x1 Mux
module encoder42(a,y);
	input [3:0]a;
	output [1:0]y;
	
	mux_2x1 m1(a[2],1'b1,a[3],y[0]);
	mux_2x1 m2(a[1],1'b1,a[3],y[1]);
endmodule

//--> Test Bench for 4:2 Encoder
module top;
	reg [3:0]a;
	wire [1:0]y;

	encoder42 dut(a,y);

	initial begin
		$display("-----------");
		$display("  a	   y");
		$display("-----------");
		repeat(5) begin
		 a=$random;
		#2 $display("%b    %b",a,y);
		end
		$display("-----------");
	end
endmodule


/* Output:-
# -----------
#   a	   y
# -----------
# 0100    01
# 0001    00
# 1001    11
# 0011    10
# 1101    11
# -----------
*/
