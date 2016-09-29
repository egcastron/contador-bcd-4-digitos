`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:34:37 04/07/2015 
// Design Name: 
// Module Name:    mux_4bits 
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
module mux_4bits(
	input [1:0] count,
	input [3:0] units,tens,hundreds,thousands,	 
	output reg [3:0] bcd
	);

always @(count)
	case(count)
		2'b00: bcd=units;
		2'b01: bcd=tens;
		2'b10: bcd=hundreds;
		2'b11: bcd=thousands;
	endcase

endmodule