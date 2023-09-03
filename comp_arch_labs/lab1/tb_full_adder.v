module tb_adder();
reg a,b,cin;
wire sum,cout;

full_adder_gate_level dut(sum,cout,a,b,cin);

initial
begin
a = 1'b0; b = 1'b0; cin = 1'b0;
#5 a = 1'b0; b = 1'b0; cin = 1'b1;
#5 a = 1'b0; b = 1'b1; cin = 1'b0;
#5 a = 1'b0; b = 1'b1; cin = 1'b1;
#5 a = 1'b1; b = 1'b0; cin = 1'b0;
#5 a = 1'b1; b = 1'b0; cin = 1'b1;
#5 a = 1'b1; b = 1'b1; cin = 1'b0;
#5 a = 1'b1; b = 1'b1; cin = 1'b1;
end

initial
begin
$monitor("Time = %0d, a = %b, b = %b, cin = %b, sum = %b, cout = %b",$time,a,b,cin,sum,cout);
end
endmodule
