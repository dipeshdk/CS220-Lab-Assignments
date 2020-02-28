`timescale 1ns / 1ps

module five_4_bit_numbers_top;

	// Inputs
	reg p1;
	reg p2;
	reg p3;
	reg p4;
	reg rc;
	reg [3:0] y;

	// Outputs
	wire [5:0] z;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	adding_five_four_bit_numbers uut (
		.p1(p1), 
		.p2(p2), 
		.p3(p3), 
		.p4(p4), 
		.rc(rc), 
		.y(y), 
		.z(z), 
		.carry(carry)
	);
	always @(z or carry) begin
		$display("time=%d : sum = %b, carry = %b",$time,z,carry);
	end
	
	initial begin
		p1 <= 0;
		p2 <= 0;
		p3 <= 0;
		p4 <= 0;
		rc <= 0;
		y <= 0;
		
		#5
		y <= 4'b1101;
		#5
		p1 <= 1;
		#5
		p1<=0;
		y <=  4'b0110;
		#5
		p2<=1;
		#5
		p2<=0;
		y <=  4'b1110;
		#5		
		p3<=1;
		#5
		p3<=0;
		y <=  4'b0101;
		#5
		p4<=1;
		#5
		p4<=0;
		y <= 4'b1011;
		#5
		rc <= 1;
		#5
		rc <= 0;
		#5
		$finish;
	end
      
endmodule

