module sign_detector(sign_num, num);
output reg sign_num;
input [3:0] num;

always @(num) begin
if (num[3] == 1'b1) begin 
    sign_num = 1'b1;
end
else begin
    sign_num = 1'b0;
end
end

endmodule