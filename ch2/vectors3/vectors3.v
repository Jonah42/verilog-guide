`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - vectors3.v
// Example use of a vector


module vectors3(
	input [5:0] switch,
	output [5:0] led
    );

assign led[1:0] = switch[1:0];
assign led[5:2] = switch[5:2];

endmodule
