`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - shifter.v
// 8 bit shifter

module shifter(
	input opcode,
	input [7:0] a,
	input [7:0] b,
	output reg [7:0] res
    );

always@(a, b, opcode) begin
	if (opcode == 1) res <= a << b;
	else res <= a >> b;
end

endmodule
