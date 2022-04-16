`timescale 1ns / 1ps

// Jonah Meggs 2022
// Jonah's Guide to Verilog Chapter 2 - vector_construction_tb.v
// Testbench for vector_construction.v

module vector_construction_tb;

	// Inputs
	reg switch0;
	reg switch1;
	reg switch2;
	reg switch3;
	reg switch4;
	reg switch5;

	// Outputs
	wire [5:0] led;

	// Instantiate the Unit Under Test (UUT)
	vector_construction uut (
		.switch0(switch0), 
		.switch1(switch1), 
		.switch2(switch2), 
		.switch3(switch3), 
		.switch4(switch4), 
		.switch5(switch5), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		switch0 = 0;
		switch1 = 0;
		switch2 = 0;
		switch3 = 0;
		switch4 = 0;
		switch5 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      forever begin
			{switch5, switch4, switch3, switch2, switch1, switch0} = {switch5, switch4, switch3, switch2, switch1, switch0} + 1;
			#100;
		end
	end
      
endmodule

