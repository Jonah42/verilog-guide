`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 1 - minimal2_gate_tb.v
// Testbench for minimal2_gate.v


module minimal2_gate_tb;

	// Inputs
	reg i;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	minimal2_gate uut (.i(i), .o(o));

	initial begin
		// Initialize Inputs
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
		i = 1;
		#100;
	end
      
endmodule

