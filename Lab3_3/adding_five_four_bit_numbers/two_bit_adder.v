`timescale 1ns / 1ps
module two_bit_adder (x, y,cin, z, carry);
	input [1:0] x;input [1:0] y;input cin;
	output[1:0] z;wire [1:0] z;output carry;wire carry;wire carry0;
	full_adder FA0 (x[0], y[0], cin, z[0], carry0);
	full_adder FA1 (x[1], y[1], carry0, z[1], carry);
endmodule