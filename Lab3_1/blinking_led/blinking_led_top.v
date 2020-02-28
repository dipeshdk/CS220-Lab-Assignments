`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:39:42 01/26/2020
// Design Name:   blinking_led
// Module Name:   /media/dipeshk/hacker/CS220Labs/Lab3_1/blinking_led_top.v
// Project Name:  blinking_led
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blinking_led
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blinking_led_top;

	// Inputs
	reg clk;

	// Outputs
	wire led0;

	// Instantiate the Unit Under Test (UUT)
	blinking_led uut (
		.clk(clk), 
		.led0(led0)
	);

	initial begin
		forever begin
			clk = 0;
			#1
			clk = 1;
			#1
			clk = 0;
		end
	end
   initial begin
		#2000000000
		$finish;
	end
endmodule

