//--> Dataflow Model
/*
module mux_2x1(i0,i1,sel,y);
	input i0,i1,sel;
	output y;
	assign y = (~sel&i0) | (sel&i1);
endmodule
*/

//--> Behavioral Model
/*
module mux_2x1(i0,i1,sel,y);
	input i0,i1,sel;
	output reg y;
	always@(*) begin
		y = (~sel&i0) | (sel&i1);
	end
endmodule
*/

//--> Structural Model
module mux_2x1(i0,i1,sel,y);
	input i0,i1,sel;
	output y;
	wire n1,a1,a2;

	not g1(n1,sel);
	and g2(a1,n1,i0);
	and g3(a2,sel,i1);
	or g4(y,a1,a2);

endmodule
