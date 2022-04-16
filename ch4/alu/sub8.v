`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - sub8.v
// 8 bit subtractor

module sub8(
	input [7:0] a,
	input [7:0] b,
	output reg [7:0] res
    );
	 
always@(a, b) begin
	res <= a - b;
end

endmodule
