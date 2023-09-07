`timescale 1ns/100ps

module tb_adder_32_bit();
wire [31:0] S;
wire C;

reg [31:0] A,B;
reg Cin;

adder_32_bit dut(S,C,A,B,Cin);

initial begin

end

initial begin
$monitor($time," A=%b,B=%b,C=%b,S=%d,C=%b",A,B,Cin,S,C);
end

endmodule