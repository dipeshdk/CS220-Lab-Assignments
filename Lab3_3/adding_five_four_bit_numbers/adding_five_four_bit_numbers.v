`timescale 1ns / 1ps
module adding_five_four_bit_numbers(p1,p2,p3,p4,rc,y,z,carry);
input p1,p2,p3,p4,rc;
input [3:0]y;

reg [3:0]a;
reg [3:0]b;
reg [3:0]c;
reg [3:0]d;
reg [5:0]e;

output [5:0]z;
output carry;

wire carry;
wire [5:0]z;

always @(posedge p1) begin
		a <= y;
		e <= 6'b0;
end
always @(posedge p2) begin
		b <= y;
end
always @(posedge p3) begin
		c <= y;
end
always @(posedge p4) begin
		d <= y;
end
always @(posedge rc) begin
		e[3:0] <= y;
end

wire [4:0] x1;
wire [4:0] y1;
wire [5:0] z1;

four_bit_adder f1(a,b,1'b0,x1[3:0],x1[4]);
four_bit_adder f2(c,d,1'b0,y1[3:0],y1[4]);
five_bit_adder fi1(x1,y1,1'b0,z1[4:0],z1[5]);
six_bit_adder s1(z1,e,z,carry);


endmodule
