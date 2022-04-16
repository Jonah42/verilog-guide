`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 3 - dflipflop2.v
// Positive edge triggered d flip flop with initial condition

module dflipflop2(
	input d,
	input clk,
	output reg q = 0,
	output reg q_bar = 1
    );

always@(posedge clk) begin
	q <= d;
	q_bar <= ~d;
end

endmodule

