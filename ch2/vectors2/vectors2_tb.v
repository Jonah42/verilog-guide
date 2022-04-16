`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - vectors2_tb.v
// Testbench for vector2.v


module vectors2_tb;

	// Inputs
	reg [5:0] switch;

	// Outputs
	wire [5:0] led;

	// Instantiate the Unit Under Test (UUT)
	vectors2 uut (.switch(switch), .led(led));

	initial begin
		// Initialize Inputs
		switch = 0;

		// Wait 100 ns for global reset to finish
		#100;
      forever begin
			switch = switch + 1;
			#100;
		end
	end
      
endmodule

