module tb_four_bit_adder();
reg [3:0] a,b;
reg sel;
wire [3:0] sum;
wire cout;

adder_subtractor dut(sum,cout,a,b,sel);

initial
begin
a = 4'b0110; b = 4'b1000; sel = 1'b0;
#5 a = 4'b0111; b = 4'b0101; sel = 1'b1;
#5 a = 4'b0010; b = 4'b1001; sel = 1'b0;
end

initial
begin
$monitor("Time = %0d, a = %b, b = %b, sel = %b, sum = %b, cout = %b",$time,a,b,sel,sum,cout);
end
endmodule