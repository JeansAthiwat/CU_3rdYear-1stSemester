`timescale 1ns / 1ps

module rotating_LED_TEST(
	input clk,rst_n,
	input rx,
	output[7:0] seg_out,
	output[5:0] sel_out
    );
	 wire [4:0] in0,in1,in2,in3,in4,in5;
	 rotating_LED #(.turns(25_000_000)) //Frequency will be 50MHz/turns = 50MHz/15M = 3.33Hz(0.3 sec per move)
		 rot_led
			(
			.clk(clk),
			.rst_n(rst_n),
			.rx(rx),
			.in0(in0),
			.in1(in1),
			.in2(in2),
			.in3(in3),
			.in4(in4),
			.in5(in5)
			 );
	 
	LED_mux led_mux
		(
		.clk(clk),
		.rst(rst_n),
		.in0(in0),
		.in1(in1),
		.in2(in2),
		.in3(in3),
		.in4(in4),
		.in5(in5),
		.seg_out(seg_out),
		.sel_out(sel_out)
		 );

endmodule
