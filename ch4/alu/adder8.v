`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - adder8.v
// 8 bit adder

module adder8(
	input [7:0] a,
	input [7:0] b,
	output reg [7:0] res
    );

always@(a, b) begin
	res <= a+b;
end

endmodule
