`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 3 - adder4bit_tb.v
// Testbench for adder4bit.v

module adder4b_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [3:0] C;

	// Instantiate the Unit Under Test (UUT)
	adder4bit uut (.A(A), .B(B), .C(C));

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 4;
		#100;
		B = 2;
		#100;
		A = 5;
		B = 7;
	end
      
endmodule

