module bcd_to_gray_gl(gray, bcd);
output [3:0] gray;
input [3:0] bcd;

wire not_b2, not_b1, not_b0;

not(not_b2,bcd[2]);
not(not_b1,bcd[1]);
not(not_b0,bcd[0]);

buf b1(gray[3],bcd[3]);
or o1(gray[2],bcd[2],bcd[3]);
xor x1(gray[1],bcd[2],bcd[1]);
xor x2(gray[0],bcd[1],bcd[0]);

endmodule