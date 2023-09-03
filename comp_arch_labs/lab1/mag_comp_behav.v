module mag_comp_behav(A_eq_B, A_gt_B, A_lt_B,
                      A,B);

output reg A_eq_B;
output reg A_gt_B;
output reg A_lt_B;
input [3:0] A, B;

always @(A or B) begin
    if(A > B) begin
        A_eq_B = 1'b0;
        A_gt_B = 1'b1;
        A_lt_B = 1'b0;
    end
    else if(A < B) begin
        A_eq_B = 1'b0;
        A_gt_B = 1'b0;
        A_lt_B = 1'b1;
    end
    else begin
        A_eq_B = 1'b1;
        A_gt_B = 1'b0;
        A_lt_B = 1'b0;
    end
end

endmodule