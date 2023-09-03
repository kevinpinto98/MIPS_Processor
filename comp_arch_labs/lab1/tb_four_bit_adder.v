module tb_four_bit_adder();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

four_bit_adder dut(sum,cout,a,b,cin);

initial
begin
a = 4'b0110; b = 4'b1000; cin = 1'b0;
#5 a = 4'b0101; b = 4'b0111; cin = 1'b1;
#5 a = 4'b0010; b = 4'b1001; cin = 1'b0;
end

initial
begin
$monitor("Time = %0d, a = %b, b = %b, cin = %b, sum = %b, cout = %b",$time,a,b,cin,sum,cout);
end
endmodule