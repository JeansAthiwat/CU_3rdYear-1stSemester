`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:47:53 04/09/2021 
// Design Name: 
// Module Name:    baud_generator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module baud_generator#(parameter N=163,N_width=8)
	(
	input clk,rst_n,
	output reg s_tick
    );
	 reg[N_width-1:0] counter=0;
	 always @(posedge clk,negedge rst_n) begin
		if(!rst_n) counter<=0;
		else begin
			s_tick=0;
			if(counter==N-1) begin
				s_tick=1;
				counter<=0;
			end
			else begin
				counter<=counter+1;
			end
			
		end
	 end
	 
endmodule
