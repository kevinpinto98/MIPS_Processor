`include "sign.v"

module comparator(A_gt_B, A_eq_B, A_lt_B,
                  A, B);
output reg A_gt_B, A_eq_B, A_lt_B;
input [3:0] A,B;

wire sign_A, sign_B;

sign_detector s1(sign_A, A);
sign_detector s2(sign_B, B);

always @(A or B or sign_A or sign_B) begin
    if(sign_A == 1'b1 && sign_B == 1'b0) begin
        A_gt_B = 1'b0;
        A_eq_B = 1'b0;
        A_lt_B = 1'b1;
    end
    else if(sign_A == 1'b0 && sign_B == 1'b1) begin
        A_gt_B = 1'b1;
        A_eq_B = 1'b0;
        A_lt_B = 1'b0;
    end
    else if(A > B) begin
        A_gt_B = 1'b1;
        A_eq_B = 1'b0;
        A_lt_B = 1'b0;
    end
    else if (A < B) begin
        A_gt_B = 1'b0;
        A_eq_B = 1'b0;
        A_lt_B = 1'b1;
    end
    else begin
        A_gt_B = 1'b0;
        A_eq_B = 1'b1;
        A_lt_B = 1'b0;
    end
end

endmodule