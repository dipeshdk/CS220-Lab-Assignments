`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:56 01/20/2020 
// Design Name: 
// Module Name:    Sevenfullladder 
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
module Sevenfulladder(PB1,PB2,PB3,PB4,Y,z,carry);
	input PB1;
	input PB2;
	input PB3;
	input PB4;
	input [3:0]Y;
	
	reg [6:0] x;
	reg [6:0] b;
	
	output [6:0] z;
	wire [6:0] z;
	output carry;
	wire carry;
	wire carry0,carry1,carry2,carry3,carry4,carry5;
	always @(posedge PB1) begin
		x[3:0] <= Y;
	end
	always @(posedge PB2) begin
		x[6:4] <= Y[2:0];
	end
	always @(posedge PB3) begin
		b[3:0] <= Y;
	end
	always @(posedge PB4) begin
		b[6:4] <= Y[2:0];
	end
	
	
	
	full_adder FA0(x[0],b[0],1'b0,z[0],carry0);
	full_adder FA1(x[1],b[1],carry0,z[1],carry1);
	full_adder FA2(x[2],b[2],carry1,z[2],carry2);
	full_adder FA3(x[3],b[3],carry2,z[3],carry3);
	full_adder FA4(x[4],b[4],carry3,z[4],carry4);
	full_adder FA5(x[5],b[5],carry4,z[5],carry5);
	full_adder FA6(x[6],b[6],carry5,z[6],carry);
endmodule
