`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - sub8_tb.v
// Testbench for sub8.v

module sub8_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] res;

	// Instantiate the Unit Under Test (UUT)
	sub8 uut (.a(a), .b(b), .res(res));

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 124;
		#100;
		b = 1;
		#100;
		b = 42;
		#100
		a = 2;
	end
      
endmodule

