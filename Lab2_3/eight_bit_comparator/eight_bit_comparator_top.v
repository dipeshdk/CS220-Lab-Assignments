`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:55:24 01/26/2020
// Design Name:   eight_bit_comparator
// Module Name:   /media/dipeshk/hacker/CS220Labs/Lab2_3/eight_bit_comparator/eight_bit_comparator_top.v
// Project Name:  eight_bit_comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_comparator_top;

	// Inputs
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;
	reg [3:0] y;

	// Outputs
	wire lo;
	wire go;
	wire eo;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_comparator uut (
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.y(y), 
		.lo(lo), 
		.go(go), 
		.eo(eo)
	);
	always @(lo or go | eo) begin
		$display("time=%d : lo = %b, go = %b,eo = %b",$time,lo,go,eo);
	end
	initial begin
		// Initialize Inputs
		pb1 <= 0;
		pb2 <= 0;
		pb3 <= 0;
		pb4 <= 0;
		y <= 0;
		// 01101101 > 01011110 // go = 1 
		#5
		y <= 4'b1101;
		#5
		pb1 <= 1;
		#5
		pb1<=0;
		y <=  4'b0110;
		#5
		pb2<=1;
		#5
		pb2<=0;
		y <=  4'b1110;
		#5		
		pb3<=1;
		#5
		pb3<=0;
		y <=  4'b0101;
		#5
		pb4<=1;
		#5
		pb4<=0;
		#10
		/*
		//  01011110 < 01101101  // lo = 1 
		#5
		y <=  4'b1110;
		#5
		pb1 <= 1;
		#5
		pb1<=0;
		y <=  4'b0101;
		#5
		pb2<=1;
		#5
		pb2<=0;
		y <= 4'b1101;
		#5		
		pb3<=1;
		#5
		pb3<=0;
		y <=  4'b0110;
		#5
		pb4<=1;
		#5
		pb4<=0;
		#10
		
		// 01111100 = 01111100 //eo = 1
		#5
		y <= 4'b1100;
		#5
		pb1 <= 1;
		#5
		pb1<=0;
		y <=  4'b0111;
		#5
		pb2<=1;
		#5
		pb2<=0;
		y <=  4'b1100;
		#5		
		pb3<=1;
		#5
		pb3<=0;
		y <=  4'b0111;
		#5
		pb4<=1;
		#5
		pb4<=0;
		#10
		*/
		
		$finish;
	end
endmodule

