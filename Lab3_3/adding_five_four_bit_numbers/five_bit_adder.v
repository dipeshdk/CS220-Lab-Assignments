`timescale 1ns / 1ps

module five_bit_adder(x, y,cin, z, carry);
	input [4:0] x;input [4:0] y;input cin;
	output[4:0] z;wire [4:0] z;output carry;wire carry;wire carry0;
	four_bit_adder FBA0 (x[3:0], y[3:0], cin, z[3:0], carry0);
	full_adder FA2 (x[4], y[4], carry0, z[4], carry);
endmodule
