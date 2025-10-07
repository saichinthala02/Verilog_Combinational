module demux1to8(
    input d,
    input [2:0] sel,
    output y0, y1, y2, y3, y4, y5, y6, y7
);
    assign y0 = d & ~sel[2] & ~sel[1] & ~sel[0];
    assign y1 = d & ~sel[2] & ~sel[1] & sel[0];
    assign y2 = d & ~sel[2] & sel[1] & ~sel[0];
    assign y3 = d & ~sel[2] & sel[1] & sel[0];
    assign y4 = d & sel[2] & ~sel[1] & ~sel[0];
    assign y5 = d & sel[2] & ~sel[1] & sel[0];
    assign y6 = d & sel[2] & sel[1] & ~sel[0];
    assign y7 = d & sel[2] & sel[1] & sel[0];
endmodule

