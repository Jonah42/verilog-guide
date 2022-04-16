`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - operators.v
// Example use of an operator

module operators(
	input a,
	input b,
	output o
    );

assign o = a|b;

endmodule
