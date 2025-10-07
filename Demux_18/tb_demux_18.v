`include "demux_18.v"
module top;
    reg d;
    reg [2:0] sel;
    wire y0, y1, y2, y3, y4, y5, y6, y7;

    demux1to8 uut(d, sel, y0, y1, y2, y3, y4, y5, y6, y7);

    initial begin
        $monitor("d=%b sel=%b => y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b", 
                 d, sel, y0, y1, y2, y3, y4, y5, y6, y7);
        d = 1;
		sel=3'b000;#10;
		sel=3'b001;#10;
		sel=3'b010;#10;
		sel=3'b011;#10;
		sel=3'b100;#10;
		sel=3'b101;#10;
		sel=3'b110;#10;
		sel=3'b111;#10;

        d = 0; sel = 3'b111; #10;
	end
endmodule

/* Output:-
# Start time: 12:00:36 on Oct 04,2025
# Loading work.top
# Loading work.demux1to8
# d=1 sel=000 => y0=1 y1=0 y2=0 y3=0 y4=0 y5=0 y6=0 y7=0
# d=1 sel=001 => y0=0 y1=1 y2=0 y3=0 y4=0 y5=0 y6=0 y7=0
# d=1 sel=010 => y0=0 y1=0 y2=1 y3=0 y4=0 y5=0 y6=0 y7=0
# d=1 sel=011 => y0=0 y1=0 y2=0 y3=1 y4=0 y5=0 y6=0 y7=0
# d=1 sel=100 => y0=0 y1=0 y2=0 y3=0 y4=1 y5=0 y6=0 y7=0
# d=1 sel=101 => y0=0 y1=0 y2=0 y3=0 y4=0 y5=1 y6=0 y7=0
# d=1 sel=110 => y0=0 y1=0 y2=0 y3=0 y4=0 y5=0 y6=1 y7=0
# d=1 sel=111 => y0=0 y1=0 y2=0 y3=0 y4=0 y5=0 y6=0 y7=1
# d=0 sel=111 => y0=0 y1=0 y2=0 y3=0 y4=0 y5=0 y6=0 y7=0
*/

