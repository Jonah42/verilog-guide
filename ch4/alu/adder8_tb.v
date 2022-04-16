`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - adder8_tb.v
// Testbench for adder8.v

module adder8_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] res;

	// Instantiate the Unit Under Test (UUT)
	adder8 uut (.a(a), .b(b), .res(res));

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 42;
		#100;
		b = 1;
		#100;
		b = 32;
		#100;
		a = 255;
		end
      
endmodule

