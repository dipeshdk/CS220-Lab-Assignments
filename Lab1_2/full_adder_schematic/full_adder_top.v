// Verilog test fixture created from schematic /media/dipeshk/hacker/CS220Labs/Lab1_2/full_adder_schematic/fuller_adder_sch.sch - Mon Jan 13 16:20:59 2020

`timescale 1ns / 1ps

module fuller_adder_sch_fuller_adder_sch_sch_tb();

// Inputs
   reg a;
   reg b;
   reg cin;

// Output
   wire Sum;
   wire cout;

// Bidirs

// Instantiate the UUT
   fuller_adder_sch UUT (
		.Sum(Sum), 
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout)
   );
// Initialize Inputs
   always @(Sum or cout) begin
		$display("time=%d: %b+%b+%b = %b, cout= %b\n", $time, a, b, cin, Sum, cout);   
		end
	initial begin
	a = 0; b = 0; cin = 0;
	#5
	a = 0; b = 1; cin = 0;
	#5
	a = 1; b = 0; cin = 1;
	#5
	a=1; b=1;cin=1;
	#5
	$finish;
	end
endmodule
