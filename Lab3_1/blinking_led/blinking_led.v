`timescale 1ns / 1ps
`define OFF_TIME 25000000
`define ON_TIME (`OFF_TIME * 2)

module blinking_led(clk,led0);
	input clk;
	output led0;

	reg led0;
	reg [31:0]counter;

	initial begin
		counter <= 32'b0;
		led0 <= 1'b1;
	end
	always @(posedge clk) begin
		counter <= counter + 32'b1;
		if(counter == `OFF_TIME)
			begin 
				led0 <= 1'b0;
			end
		else if (counter == `ON_TIME)
			begin
				led0 <= 1'b1;
				counter <= 32'b0;
			end
	end
endmodule
