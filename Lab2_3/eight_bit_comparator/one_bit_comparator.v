`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:00 01/20/2020 
// Design Name: 
// Module Name:    one_bit_comparator 
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
module one_bit_comparator(a,b,li,gi,ei,lo,go,eo);
	input li,gi,ei,a,b;
	output lo,go,eo;
	reg lo,go,eo;
	//assign lo = 1'b0;assign go = 1'b0 ;assign eo = 1'b0;
	always @(a or b or li or gi or ei) begin
		lo <= 1'b0;go <= 1'b0 ;eo <= 1'b0;
		if(li == 1'b1) lo <= 1'b1;
		else if (gi == 1'b1) go <= 1'b1;
		else if(ei == 1'b1) begin 
			if( a > b) go <= 1'b1;
			else if(a<b) lo <=1'b1;
			else if(a == b) eo <=1'b1;
		end
	end
endmodule
