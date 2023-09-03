module bcd_to_gray_df(gray, bcd);
output [3:0] gray;
input [3:0] bcd;

assign gray[3] = bcd[3];
assign gray[2] = bcd[2] | bcd[3];
assign gray[1] = (~bcd[2] & bcd[1]) | (bcd[2] & ~bcd[1]);
assign gray[0] = (~bcd[1] & bcd[0]) | (bcd[1] & ~bcd[0]);

endmodule