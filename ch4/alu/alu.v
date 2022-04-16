`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 4 - alu.v
// 8 bit ALU

module alu(
	input [3:0] OPCODE,
	input [7:0] A,
	input [7:0] B,
	output reg [7:0] RESULT
    );
	 
// Buses for ouputs of each module instantiated
wire [7:0] adder_res;
wire [7:0] adder_1_res;
wire [7:0] sub_res;
wire [7:0] sub_1_res;
wire [7:0] boolean_res;
wire [7:0] shifter_res;
	 
// Instantiate modules
adder8 adder(.a(A), .b(B), .res(adder_res));
adder8 adder_1(.a(A), .b(1), .res(adder_1_res));
sub8 subtractor(.a(A), .b(B), .res(sub_res));
sub8 subtractor_1(.a(A), .b(1), .res(sub_1_res));
boolean8 boolean(.a(A), .b(B), .res(boolean_res), .opcode(OPCODE));
shifter s(.a(A), .b(B), .res(shifter_res), .opcode(OPCODE[0]));

always@(*) begin
	if (OPCODE == 0 || OPCODE >= 4'b1011) RESULT <= A;
	else if (OPCODE == 4'b0001) RESULT <= adder_1_res;
	else if (OPCODE == 4'b0010) RESULT <= sub_1_res;
	else if (OPCODE == 4'b0011) RESULT <= adder_res;
	else if (OPCODE == 4'b0100) RESULT <= sub_res;
	else if (OPCODE >= 4'b0101 && OPCODE <= 4'b1000) RESULT <= boolean_res;
	else RESULT <= shifter_res;
end

endmodule
