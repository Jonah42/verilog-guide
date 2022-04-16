`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - vector1.v
// Example use of an operator

module vector1(
	input [5:0] switch,
	output [5:0] led
    );

assign led[0] = switch[0];
assign led[1] = switch[1];
assign led[2] = switch[2];
assign led[3] = switch[3];
assign led[4] = switch[4];
assign led[5] = switch[5];

endmodule
