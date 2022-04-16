`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - shifter_tb.v
// Testbench for shifter.v

module shifter_tb;

	// Inputs
	reg opcode;
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] res;

	// Instantiate the Unit Under Test (UUT)
	shifter uut (
		.opcode(opcode), 
		.a(a), 
		.b(b), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		opcode = 1;
		a = 42;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;
		opcode = 0;
		#100;
		b = 40;
		#100;
		opcode = 1;
	end
      
endmodule

