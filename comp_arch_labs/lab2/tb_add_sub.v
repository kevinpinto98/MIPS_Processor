`timescale 1ns/100ps

module tb_ADDSUB();
wire [3:0] S;
wire C, V;

reg [3:0] A, B;
reg M;

ADDSUB dut(S,C,V,A,B,M);

initial
begin
   A = 4'b0110; B = 4'b1000; M = 1'b0;
#5 A = 4'b0111; B = 4'b0101; M = 1'b1;
#5 A = 4'b0010; B = 4'b1001; M = 1'b0;
end

initial
begin
$monitor($time," A = %b, B = %b, M = %b, S = %b, C = %b, V = %b",A,B,M,S,C,V);
end

endmodule