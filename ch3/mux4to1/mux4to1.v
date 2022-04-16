`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 3 - mux4to1.v
// 4 to 1 multiplexer

module mux4to1(
	input [3:0] A,
	input [1:0] SEL,
	output reg O
    );

always@(SEL, A) begin
	if (SEL == 0) begin
		O = A[0];
	end
	else if (SEL == 1) begin
		O = A[1];
	end
	else if (SEL == 2) begin
		O = A[2];
	end
	else begin
		O = A[3];
	end
end

endmodule
