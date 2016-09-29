`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:37:24 04/06/2015 
// Design Name: 
// Module Name:    principal 
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
module principal(
	input clk50MHz,puls_ext,sel1,reset,
   output a,b,c,d,e,f,g,
   output d1,d2,d3,d4
   );
	 
	wire [3:0] U,D,C,M,BCD;
	wire [1:0] sel_display;
	wire reloj10hz,reloj1khz/*,pulso*/,clock;
	
	
	div_freq_10Hz DIV10(clk50MHz,reloj10hz);
	//debouncer ANTIR(puls_ext,pulso);
	mux_freq_o_pulsador MUX_FREQ(reloj10hz,puls_ext,sel1,clock);
	contador_BCD_4Dig BCD_4DIGIT(clock,reset,U,D,C,M);
	div_freq_1KHz DIV1K(clk50MHz,reloj1khz);
	contador_2_bits CONT_2B(reloj1khz,sel_display);
	mux_4bits MUX_4B(sel_display,U,D,C,M,BCD);
	deco_hexa MUX_BCD(BCD,a,b,c,d,e,f,g);
	deco_digito MUX_DIGIT(sel_display,d1,d2,d3,d4);
	
endmodule



