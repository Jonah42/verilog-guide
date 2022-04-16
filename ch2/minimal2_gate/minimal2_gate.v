`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - minimal2_gate.v
// Instantiating a primitive

module minimal2_gate(
	input i,
	output o
    );

not n1(o, i);

endmodule
