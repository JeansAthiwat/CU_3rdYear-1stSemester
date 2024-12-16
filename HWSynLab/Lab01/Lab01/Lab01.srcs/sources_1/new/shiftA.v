`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 14:58:09
// Design Name: 
// Module Name: shiftA
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

module shiftA(q,clock,d);
output [1:0] q;
input clock,d;
reg [1:0] q;
always @(posedge clock)
begin
q[0]=d;
q[1]=q[0];
end
endmodule
module shiftB(q,clock,d);
output [1:0] q;
input clock,d;
reg [1:0] q;
always @(posedge clock)
begin
q[0]<=d;
q[1]<=q[0];
end
endmodule

module shiftN #(parameter WIDTH = 8) (
output reg [WIDTH-1:0] q, 
input clock,
input d);

always @(posedge clock)
begin
q <= {q[WIDTH-2:0], d};
end
endmodule