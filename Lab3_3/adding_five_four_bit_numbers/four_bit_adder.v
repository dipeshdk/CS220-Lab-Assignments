`timescale 1ns / 1ps

module four_bit_adder(x, y, ,cin,z, carry);
	input [3:0] x;input [3:0] y;input cin;
	output[3:0] z;wire [3:0] z;output carry;wire carry;wire carry0;
	two_bit_adder TBA0 (x[1:0], y[1:0],cin, z[1:0], carry0);
	two_bit_adder TBA1 (x[3:2], y[3:2], carry0, z[3:2], carry);

endmodule
