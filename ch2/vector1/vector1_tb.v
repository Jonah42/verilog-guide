`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - vector1_tb.v
// Testbench for vector1.v


module vector1_tb;

	// Inputs
	reg [5:0] switch;

	// Outputs
	wire [5:0] led;

	// Instantiate the Unit Under Test (UUT)
	vector1 uut (.switch(switch), .led(led));

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

