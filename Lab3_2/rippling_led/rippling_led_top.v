`timescale 1ns / 1ps

module rippling_led_top;

	// Inputs
	reg clk;

	// Outputs
	wire led0;
	wire led1;
	wire led2;
	wire led3;
	wire led4;
	wire led5;
	wire led6;
	wire led7;

	// Instantiate the Unit Under Test (UUT)
	rippling_led uut (
		.clk(clk), 
		.led0(led0), 
		.led1(led1), 
		.led2(led2), 
		.led3(led3), 
		.led4(led4), 
		.led5(led5), 
		.led6(led6), 
		.led7(led7)
	);

		initial begin
			forever begin
				clk = 0;
				#5
				clk = 1;
				#5
				clk = 0;
				end
		end
		initial begin
			#2000000000
			$finish;
		end
endmodule

