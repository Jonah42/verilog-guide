`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 3 - dflipflop.v
// Positive edge triggered d flip flop

module dflipflop(
	input d,
	input clk,
	output reg q,
	output reg q_bar
    );

always@(posedge clk) begin
	q <= d;
	q_bar <= ~d;
end

endmodule
