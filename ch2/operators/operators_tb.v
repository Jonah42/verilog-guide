`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - operators_tb.v
// Testbench for operators.v

module operators_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	operators uut (.a(a), .b(b), .o(o));

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
      b = 1;
		#100;
		a = 1;
		b = 0;
		#100;
		b = 1;
	end
      
endmodule

