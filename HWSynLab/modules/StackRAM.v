`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 11:06:45
// Design Name: 
// Module Name: StackRAM
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


module StackRAM(
    output reg [7:0] addr, // 256 address
    output reg [7:0] dout, // 256 dataout max value
    input wire [7:0] din, // data in max value 256
    input wire oe, // out enable
    input wire clk, 
    input wire we, 
    input wire reset
    );
    
    reg [7:0] mem[255:0];
    
    initial begin
        dout = 0;
        addr = 0;
    end 
    
    always @( posedge clk ) begin
        if(we) begin
            mem[addr] = din;
            addr = addr + 1;
        end
        if(reset || (oe && addr == 0)) begin
            dout = 0;
            addr = 0;
        end
        if(oe && addr > 0) begin
            addr = addr - 1;
            dout = mem[addr];
            mem[addr] = 0;
        end
    end 
endmodule
