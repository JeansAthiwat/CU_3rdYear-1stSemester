`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 14:06:27
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(
    cout,
     s,
     a,
     b,
     cin
    );
    
    output cout;
    output s;
    input a;
    input b;
    input cin;
    
    assign {cout,s} = a + b + cin;

//    reg cout, s;
//    always @ (a or b or cin)
//    begin
//    {cout, s} = a + b + cin;
//    end
    
endmodule
