`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 1 - minimal3.v
// Adding another output to minimal2.v

module minimal3(
	input i,
	output o,
	output o2
    );

assign o = i;
assign o2 = ~i;

endmodule
