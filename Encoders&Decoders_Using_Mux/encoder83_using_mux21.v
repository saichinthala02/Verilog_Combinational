// Implementation of 8:3 Encoder using 2x1 mux
//--------------------
// 2x1 MUX
//--------------------
module mux_2x1(i0, i1, s, y);
    input i0, i1, s;
    output y;
    assign y = (s == 0) ? i0 : i1;
endmodule


module encoder83_mux(input [7:0] a, output [2:0] y);
    wire w1, w2, w3, w4, w5, w6;

    // y0 = a1 | a3 | a5 | a7
    mux_2x1 m1(a[1], 1'b1, a[3], w1);   
    mux_2x1 m2(w1, 1'b1, a[5], w2);     
    mux_2x1 m3(w2, 1'b1, a[7], y[0]);   

    // y1 = a2 | a3 | a6 | a7
    mux_2x1 m4(a[2], 1'b1, a[3], w3);   
    mux_2x1 m5(w3, 1'b1, a[6], w4);     
    mux_2x1 m6(w4, 1'b1, a[7], y[1]);   

    // y2 = a4 | a5 | a6 | a7
    mux_2x1 m7(a[4], 1'b1, a[5], w5);   
    mux_2x1 m8(w5, 1'b1, a[6], w6);     
    mux_2x1 m9(w6, 1'b1, a[7], y[2]);   
endmodule


//-->Test Bench
module top;
	reg [7:0]a;
	wire [2:0]y;
	encoder83 dut(a,y);
	initial begin
		$display("----------------");
		$display("  a      y");
		$display("----------------");
		repeat(10)begin
			a=$random;
			#2 $display("%b    %b",a,y);
		end
		$display("----------------");
	end
endmodule


