`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 3 - adder4bit.v
// 4 bit adder

module adder4bit(
	input [3:0] A,
	input [3:0] B,
	output reg [3:0] C
    );

always@(A, B) begin
	C <= A + B;
end

endmodule
