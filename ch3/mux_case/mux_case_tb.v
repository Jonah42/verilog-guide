`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 3 - mux_case_tb.v
// Testbench for mux_case.v

module mux_case_tb;

	// Inputs
	reg [3:0] A;
	reg [1:0] SEL;

	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	mux_case uut (.A(A), .SEL(SEL), .O(O));

	initial begin
		// Initialize Inputs
		A = 5;
		SEL = 0;

		// Wait 100 ns for global reset to finish
		#100;
		SEL = 3;
		#100;
		A = 15;
	end
      
endmodule
