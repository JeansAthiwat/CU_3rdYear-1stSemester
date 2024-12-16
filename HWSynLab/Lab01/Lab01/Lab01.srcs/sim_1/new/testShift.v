`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 15:02:51
// Design Name: 
// Module Name: testShift
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


module testShift();
reg clock, d;
parameter WIDTH = 16;
wire [1:0] qa;
wire [1:0] qb;
wire [WIDTH-1:0] qc;
shiftA A1(qa,clock,d);
shiftB B1(qb,clock,d);
shiftN #(WIDTH) N8 (qc,clock,d);
always
    #10 clock = ~clock;
initial
begin
//$dumpfile("testDFlipFlop.dump");
//$dumpvars(1,D1);
    #0 d=0;
    clock=0;

    #1000 $finish;
end
always
    #20 d=~d;
    
endmodule
