`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:39:39 01/26/2020
// Design Name:   Sevenfulladder
// Module Name:   /media/dipeshk/hacker/CS220Labs/Lab2_2/seven_bit_adder/seven_bit_adder_top.v
// Project Name:  seven_bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sevenfulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seven_bit_adder_top;

	// Inputs
	reg PB1;
	reg PB2;
	reg PB3;
	reg PB4;
	reg [3:0] Y;

	// Outputs
	wire [6:0] z;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	Sevenfulladder uut (
		.PB1(PB1), 
		.PB2(PB2), 
		.PB3(PB3), 
		.PB4(PB4), 
		.Y(Y), 
		.z(z), 
		.carry(carry)
	);
	always @(z or carry) begin
		$display("time=%d : sum = %b, carry = %b",$time,z,carry);
	end
	initial begin
		// Initialize Inputs
		PB1 <= 0;
		PB2 <= 0;
		PB3 <= 0;
		PB4 <= 0;
		Y <= 0;
		// 1101101 + 1011110 = 11001011
		#5
		PB1 <= 1;
		Y <= 4'b1101;
		#5
		PB1<=0;
		PB2<=1;
		Y <=  4'b0110;
		#5
		PB2<=0;
		PB3<=1;
		Y <=  4'b1110;
		#5
		PB3<=0;
		PB4<=1;
		Y <=  4'b0101;
		#5
		PB4<=0;
		#5
		$finish;
	end
      
endmodule

