`timescale 1ns / 1ps

module six_bit_adder(x, y, z, carry);
	input [5:0] x;input [5:0] y;
	output[5:0] z;wire [5:0] z;output carry;wire carry;wire carry0;
	four_bit_adder FBA0 (x[3:0], y[3:0], 1'b0, z[3:0], carry0);
	two_bit_adder TBA2 (x[5:4], y[5:4], carry0, z[5:4], carry);
endmodule
