`timescale 1ns / 1ps

module tb_Thirty_Two_Bit_Full_Adder;

reg [31:0] x;
reg [31:0] y;
 
wire [31:0] out;
wire c31;
 
Thirty_Two_Bit_Full_Adder uut (
.x(x),
.y(y),
.s(out),
.c31(c31)
);
 
initial
begin
 
x = 32'b0000_0000_0000_0000_0000_0000_0000_1101;
y = 32'b0000_0000_0000_0000_0000_0000_0000_1101;
#50; 
x = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
y = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
#50
x = 32'b0000_0000_0000_0000_0000_0001_0000_1101; 
y = 32'b0000_0000_0000_0000_0000_0000_0000_1101; 
#50
x = 32'b0000_1000_0000_0000_0000_0001_0000_1101; 
y = 32'b0001_0000_0000_0000_0000_0000_0000_1101; 
#50;

end

endmodule
