`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:22:49 04/07/2015 
// Design Name: 
// Module Name:    contador_2_bits 
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
module contador_2_bits(
	input clk1kHz,
	output reg [1:0] count
	);

always @(posedge clk1kHz)
	begin
	if(count< 4)
		count=count+1;
	else
		count=0;
	end

endmodule


