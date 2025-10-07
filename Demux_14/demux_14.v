module demux1to4(
    input  d,
    input  [1:0] sel,
    output y0, y1, y2, y3
);
    assign y0 = d & ~sel[1] & ~sel[0];
    assign y1 = d & ~sel[1] & sel[0];
    assign y2 = d & sel[1] & ~sel[0];
    assign y3 = d & sel[1] & sel[0];
endmodule

