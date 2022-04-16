`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - alu_tb.v
// Testbench for alu.v

module alu_tb;

	// Inputs
	reg [3:0] OPCODE;
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [7:0] RESULT;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.OPCODE(OPCODE), 
		.A(A), 
		.B(B), 
		.RESULT(RESULT)
	);

	initial begin
		// Initialize Inputs
		OPCODE = 0;
		A = 42;
		B = 5;

		// Wait 100 ns for global reset to finish
		#100;
		OPCODE = 1;
		#100;
		OPCODE = 2;
		#100;
		OPCODE = 3;
		#100;
		OPCODE = 4;
		#100;
		OPCODE = 5;
		#100;
		OPCODE = 6;
		#100;
		OPCODE = 7;
		#100;
		OPCODE = 8;
		#100;
		OPCODE = 9;
		#100;
		OPCODE = 10;
		#100;
		OPCODE = 11;
	end
      
endmodule

