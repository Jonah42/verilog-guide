`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - vector_construction.v
// Constructing a vector

module vector_construction(
	input switch0,
	input switch1,
	input switch2,
	input switch3,
	input switch4,
	input switch5,
	output [5:0] led
    );

assign led = {switch5, switch4, switch3, switch2, switch1, switch0};

endmodule
