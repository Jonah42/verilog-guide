`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - boolean8_tb.v
// Testbench for boolean8.v

module boolean8_tb;

	// Inputs
	reg [3:0] opcode;
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] res;

	// Instantiate the Unit Under Test (UUT)
	boolean8 uut (.opcode(opcode), .a(a), .b(b), .res(res));

	initial begin
		// Initialize Inputs
		opcode = 0;
		a = 42;
		b = 7;

		// Wait 100 ns for global reset to finish
		#100;
		opcode = 4'b0101;
		#100;
		opcode = 4'b0110;
		#100;
		opcode = 4'b0111;
		#100;
		opcode = 4'b1000;
	end
      
endmodule

