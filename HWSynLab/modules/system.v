`timescale 1ns / 1ps                                                         
/////////////////////////////////////////////////////////////////////////////
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
/////////////////////////////////////////////////////////////////////////////
                                                                             
                                                                             
module system(                                                               
    output [6:0] seg,                                                        
    output dp,                                                               
    output [3:0] an,                                                         
    input [4:0] sw,
    input btnC,                                                          
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
    wire up3;                            
    singlePulser spUP3(up3,btnC,targetClk);                                  
    /////////                                                                
    ////////////////////////////////////////                                 
    // Display                                                               
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,targetClk);
                                                                             
    ////////////////////////////////////////                                 
    // sliding shift                                                         
reg [3:0] state; // Declare state as a 4-bit register to handle 0 to 9
//reg [2**20 - 1 : 0] counter;   
//reg statechange_signal;
//// Initialize state to 0
//initial state = 4'd0;
//initial counter = 20'd0

//    always@(posedge targetClk) begin
//    counter = counter + 1;
//    if(counter >= 4'd1000)
    

always @(posedge targetClk) begin
    case ({up3, state})  // Combine `up3` and `state` to form a 5-bit value
        5'b10000: state = 4'd1;  // Assign decimal 1 to state
        5'b10001: state = 4'd2;  // Assign decimal 2 to state
        5'b10010: state = 4'd3;  // Assign decimal 3 to state
        5'b10011: state = 4'd4;  // Assign decimal 4 to state
        5'b10100: state = 4'd5;  // Assign decimal 5 to state
        5'b10101: state = 4'd6;  // Assign decimal 6 to state
        5'b10110: state = 4'd7;  // Assign decimal 7 to state
        5'b10111: state = 4'd8;  // Assign decimal 8 to state
        5'b11000: state = 4'd9;  // Assign decimal 9 to state
        5'b11001: state = 4'd0;  // Loop back to 0 after state 9 (circular shift)
        default: ;   // Default case to avoid latches
    endcase
end

// Assign values to num3, num2, num1, num0 for each state based on the circular sequence
always @(state) begin
    case (state)
        4'd0: {num3, num2, num1, num0} = {4'd6, 4'd5, 4'd3, 4'd1};  // State 0: Display "6531"
        4'd1: {num3, num2, num1, num0} = {4'd5, 4'd3, 4'd1, 4'd3};  // State 1: Display "5313"
        4'd2: {num3, num2, num1, num0} = {4'd3, 4'd1, 4'd3, 4'd4};  // State 2: Display "3134"
        4'd3: {num3, num2, num1, num0} = {4'd1, 4'd3, 4'd4, 4'd7};  // State 3: Display "1347"
        4'd4: {num3, num2, num1, num0} = {4'd3, 4'd4, 4'd7, 4'd6};  // State 4: Display "3476"
        4'd5: {num3, num2, num1, num0} = {4'd4, 4'd7, 4'd6, 4'd2};  // State 5: Display "4762"
        4'd6: {num3, num2, num1, num0} = {4'd7, 4'd6, 4'd2, 4'd1};  // State 6: Display "7621"
        4'd7: {num3, num2, num1, num0} = {4'd6, 4'd2, 4'd1, 4'd6};  // State 7: Display "6216"
        4'd8: {num3, num2, num1, num0} = {4'd2, 4'd1, 4'd6, 4'd5};  // State 8: Display "2165"
        4'd9: {num3, num2, num1, num0} = {4'd1, 4'd6, 4'd5, 4'd3};  // State 9: Display "1653"
        default: {num3, num2, num1, num0} = {4'd0, 4'd0, 4'd0, 4'd0};  // Default case
    endcase
end

                                                             
endmodule                                                                    
                                                                             