`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2025 17:32:45
// Design Name: 
// Module Name: takeinput
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module takeinput(x,s,en,clk,rst_n);
input en,clk,rst_n;
input [31:0]x;
output reg [31:0] s;
always @ (posedge clk or negedge rst_n)
begin
if (~rst_n)
begin
s <= 32'b0;
end
else if(en)
begin
s <= x;
end
end
endmodule