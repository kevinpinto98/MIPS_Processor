`timescale 1ns/100ps

module tb_mag_comp();
wire A_eq_B;
wire A_gt_B;
wire A_lt_B;
reg [3:0] A, B;

//mag_comp_behav dut(A_eq_B,A_gt_B,A_lt_B,A,B);
mag_comp_df dut(A_eq_B,A_gt_B,A_lt_B,A,B);
//mag_comp_gl dut(A_eq_B,A_gt_B,A_lt_B,A,B);

initial begin
    A = 4'd13; B = 4'd8;
    #10 A = 4'd6; B = 4'd7;
    #10 A = 4'd3; B = 4'd3;
    #5 A = 4'd5; B = 4'd12;
    #15 A = 4'd10; B = 4'd10;
    #10 A = 4'd15; B = 4'd4;
    #10 A = 4'd7; B = 4'd11;
end

initial begin
    $monitor("Time = %0d, A = %d, B = %d, A_eq_b = %b, A_gt_B = %b, A_lt_B = %b", $time, A, B, A_eq_B, A_gt_B, A_lt_B);
end

endmodule