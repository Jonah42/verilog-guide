`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 1 - minimal3_tb.v
// Testbench for minimal3.v


module minimal3_tb;

	// Inputs
	reg i;

	// Outputs
	wire o;
	wire o2;
	wire o3;
	// Instantiate the Unit Under Test (UUT)
	minimal3 uut (
		.i(i), 
		.o(o), 
		.o2(o2)
	);
	assign o3 = 0;
	initial begin
		// Initialize Inputs
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
		i = 1;
		#100;
	end
      
endmodule

