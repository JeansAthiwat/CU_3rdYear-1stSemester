`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 10:57:40
// Design Name: 
// Module Name: testSystem
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


module testSystem(
    );
    wire [6:0] seg;
    wire dp;
    wire [3:0] an;
    reg clk;
    
    always
        #10 clk = ~clk;
        
    system s_test(seg,dp,an,clk);
    
    
endmodule
