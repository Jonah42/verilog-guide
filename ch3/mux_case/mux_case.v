`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 3 - mux_case.v
// 4 to 1 multiplexer using a case statement

module mux_case(
	input [3:0] A,
	input [1:0] SEL,
	output reg O
    );

always@(SEL, A) begin
	case (SEL)
		0: O <= A[0];
		1: O <= A[1];
		2: O <= A[2];
		3: O <= A[3];
		default: O <= 0;
	endcase
end

endmodule
