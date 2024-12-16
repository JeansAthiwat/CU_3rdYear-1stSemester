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
    input [4:0] sw,
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
    //////
    // Single Pulser
    wire up0,up1,up2,up3,down0,down1,down2,down3;
    singlePulser spUP3(up3,btnC,targetClk);
    /////////
    ////////////////////////////////////////
    // Display
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,targetClk);
    
    ////////////////////////////////////////
    // sliding shift
    reg [2:0]state;
    //0 to sumting
    initial state = 0
    always@(posedge targetClock) begin
        case ({up3,state})
            4'b1000: state = 1;
            4'b1001: state = 2;
            4'b1010: state = 3;
            4'b1011: state = 4;
            4'b1100: state = 5;
            4'b1101: state = 6;
        endcase 
    end
    
    always@(state) begin
        case(state)
            0: {num3,num2,num1,num0} = {6,5,3,1}   
            1: {num3,num2,num1,num0} = {5,3,1,3}                                          
            2: {num3,num2,num1,num0} = {3,1,3,4}                        
            3: {num3,num2,num1,num0} = {6,5,3,1}   
            4: {num3,num2,num1,num0} = {5,3,1,3}          
            5: {num3,num2,num1,num0} = {3,1,3,4}           
            6: {num3,num2,num1,num0} = {6,5,3,1}  
        endcase 
    end
endmodule
