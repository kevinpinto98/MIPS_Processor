`timescale 1ns/100ps

module tb_comparator();
reg [3:0] A;
reg [3:0] B;
wire A_gt_B, A_eq_B, A_lt_B;

initial begin
A=4'b0000;
B=4'b0000;
end

initial begin
#1 A=-8; B=-5;
#1 A=2; B=7;
#1 A=5; B=-1;
end

comparator c1(A_gt_B, A_eq_B, A_lt_B,A,B);

initial begin
$monitor($time," A=%b, B=%b, A_gt_B=%b, A_eq_B=%b, A_lt_B=%b",A,B,A_gt_B, A_eq_B, A_lt_B);
end

initial begin
#5 $finish;
end

endmodule