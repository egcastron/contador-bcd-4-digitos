`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:37:13 04/07/2015
// Design Name:   div_freq_1KHz
// Module Name:   C:/Users/guillermo/Documents/UNAL/digital 1/codigos xilinxx/contador_bcd_4_digitos/freq_1k.v
// Project Name:  contador_bcd_4_digitos
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: div_freq_1KHz
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module freq_1k;

	// Inputs
	reg clkFPGA;

	// Outputs
	wire clk1KHz;

	// Instantiate the Unit Under Test (UUT)
	div_freq_1KHz uut (
		.clkFPGA(clkFPGA), 
		.clk1KHz(clk1KHz)
	);

	initial begin
		// Initialize Inputs
		clkFPGA = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

