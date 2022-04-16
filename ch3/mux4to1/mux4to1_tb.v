`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 3 - mux4to1_tb.v
// Testbench for mux4to1.v

module mux4to1_tb;

	// Inputs
	reg [3:0] A;
	reg [1:0] SEL;

	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	mux4to1 uut (.A(A), .SEL(SEL), .O(O));

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

