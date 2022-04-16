`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 3 - dflipflop2_tb.v
// Testbench for dflipflop2.v


module dflipflop2_tb;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire q_bar;

	// Instantiate the Unit Under Test (UUT)
	dflipflop2 uut (.d(d), .clk(clk), .q(q), .q_bar(q_bar));

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;
		#100;
		d = 1;
		clk = 0;
		#100;
		clk = 1;
	end
      
endmodule
