`timescale 1ns / 1ps
// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - vectors2.v
// Example use of a vector

module vectors2(
	input [5:0] switch,
	output [5:0] led
    );

assign led = switch;

endmodule
