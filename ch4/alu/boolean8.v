`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - boolean8.v
// 8 bit boolean logic block

module boolean8(
	input [3:0] opcode,
	input [7:0] a,
	input [7:0] b,
	output reg [7:0] res
    );

always@(opcode, a, b) begin
	case (opcode)
		4'b0101: res <= a & b;
		4'b0110: res <= a | b;
		4'b0111: res <= a ^ b;
		4'b1000: res <= ~a;
		default: res <= 0;
	endcase
end

endmodule
