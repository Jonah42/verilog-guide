`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 1 - minimal_tb.v
// A testbench for minimal.v

module minimal_tb;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	minimal uut (.o(o));

	initial begin
		// Wait 100 ns for global reset to finish
		#100;
	end
      
endmodule

