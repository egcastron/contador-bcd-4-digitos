`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:47 04/06/2015 
// Design Name: 
// Module Name:    debouncer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module debouncer(
	input sen_in,
	output reg sen_out
    );

	reg [3:0] cont = 0;
	
	initial
	
		sen_out = 0;
	
	always @(posedge sen_in)
	
		if(cont<8)
		
			cont = cont + 1;
			
		else
		
			cont = 0;
			
	always @(*)
	
		if(cont == 8)
		
			sen_out = ~sen_out;

endmodule
