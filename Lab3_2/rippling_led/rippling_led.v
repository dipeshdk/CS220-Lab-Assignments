`timescale 1ns / 1ps
`define SHIFT_TIME 50000000

module rippling_led(clk,led0,led1,led2,led3,led4,led5,led6,led7);
	input clk;
	output led0,led1,led2,led3,led4,led5,led6,led7;
	
	reg led0,led1,led2,led3,led4,led5,led6,led7;
	reg [31:0]counter;

	initial begin
		counter <= 32'b0;
		led0<= 1;
		led1<= 0;
		led2<= 0;
		led3<= 0;
		led4<= 0;
		led5<= 0;
		led6<= 0;
		led7<= 0;
	end
	
	always @(posedge clk) begin
		counter <= counter + 32'b1;
		if(counter == `SHIFT_TIME) begin
			led1 <= led0;
			led2 <= led1;
			led3 <= led2;
			led4 <= led3;
			led5 <= led4;
			led6 <= led5;
			led7 <= led6;
			led0 <= led7;
			counter <= 32'b0;
		end
	end
endmodule
