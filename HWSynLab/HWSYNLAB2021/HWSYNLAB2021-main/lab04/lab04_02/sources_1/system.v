`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2021 11:20:50 PM
// Design Name: 
// Module Name: system
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


module system(
    output [6:0] seg,
    output dp,
    output [3:0] an,
    input [15:0] sw, // ChanGE
    input clk
    );
    
    reg [3:0] num3,num2,num1,num0; // left to right
    
    wire an0,an1,an2,an3;
    assign an={an3,an2,an1,an0};
    
    ////////////////////////////////////////
    // Clock
    wire targetClk;
    wire [18:0] tclk;
    
    assign tclk[0]=clk;
    
    genvar c;
    generate for(c=0;c<18;c=c+1) begin
        clockDiv fDiv(tclk[c+1],tclk[c]);
    end endgenerate
    
    clockDiv fdivTarget(targetClk,tclk[18]);
    
    ////////////////////////////////////////
    // Display
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,targetClk);
    
    ////////////////////////////////////////
    // ROM and control
    reg [15:0] rom[2**16-1:0];
    initial $readmemb("rom3.data", rom);
    always @(posedge targetClk)
        {num3,num2,num1,num0} = {rom[16'd{sw[15:12],sw[11:8],sw[7:4],sw[3:0]}] };
    
endmodule
