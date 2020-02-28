`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:36 01/20/2020 
// Design Name: 
// Module Name:    eight_bit_comparator 
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
module eight_bit_comparator(pb1,pb2,pb3,pb4,y,lo,go,eo);
input pb1,pb2,pb3,pb4;
input [3:0] y;

reg[7:0]a;
reg[7:0]b;

output eo,go,lo;
wire eo,go,lo;
wire eo0,go0,lo0;wire eo1,go1,lo1;wire eo2,go2,lo2;wire eo3,go3,lo3;wire eo4,go4,lo4;wire eo5,go5,lo5;wire eo6,go6,lo6;

always @(posedge pb1) begin
		a[3:0] <= y;
end
always @(posedge pb2) begin
		a[7:4] <= y;
end
always @(posedge pb3) begin
		b[3:0] <= y;
end
always @(posedge pb4) begin
		b[7:4] <= y;
end

one_bit_comparator oa0(a[7],b[7],1'b0,1'b0,1'b1,lo0,go0,eo0);
one_bit_comparator oa1(a[6],b[6],lo0,go0,eo0,lo1,go1,eo1);
one_bit_comparator oa2(a[5],b[5],lo1,go1,eo1,lo2,go2,eo2);
one_bit_comparator oa3(a[4],b[4],lo2,go2,eo2,lo3,go3,eo3);
one_bit_comparator oa4(a[3],b[3],lo3,go3,eo3,lo4,go4,eo4);
one_bit_comparator oa5(a[2],b[2],lo4,go4,eo4,lo5,go5,eo5);
one_bit_comparator oa6(a[1],b[1],lo5,go5,eo5,lo6,go6,eo6);
one_bit_comparator oa7(a[0],b[0],lo6,go6,eo6,lo,go,eo);


endmodule
