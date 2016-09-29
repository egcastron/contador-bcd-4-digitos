`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:35 04/06/2015 
// Design Name: 
// Module Name:    mux_freq_o_pulsador 
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
module mux_freq_o_pulsador(
    input clk10hz,pulsa,selector,
    output reg clk
    );

	 	always @ (selector)
			case(selector)
			1'b 0: clk = clk10hz;
			1'b 1: clk = pulsa;
			endcase
			
endmodule
