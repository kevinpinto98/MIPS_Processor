`timescale 1ns/100ps

module tb_bcd_to_gray();
wire [3:0] gray;
reg [3:0] bcd;

//bcd_to_gray_df dut(gray,bcd);
bcd_to_gray_gl dut(gray,bcd);

initial begin
    bcd = 4'b0000;
    #10 bcd = 4'b0001;
    #10 bcd = 4'b0010;
    #10 bcd = 4'b0011;
    #10 bcd = 4'b0100;
    #10 bcd = 4'b0101;
    #10 bcd = 4'b0110;
    #10 bcd = 4'b0111;
    #10 bcd = 4'b1000;
    #10 bcd = 4'b1001;
end

initial begin
    $monitor("Time = %0d, BCD = %b, Gray = %b",$time,bcd,gray);
end

endmodule