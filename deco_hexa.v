`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:41 04/06/2015 
// Design Name: 
// Module Name:    deco_hexa 
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
module deco_hexa(
    input [3:0] bcd,
    output reg a,b,c,d,e,f,g 
    );

	always @ (bcd)
		begin
			case(bcd)
			4'b 0000: {a,b,c,d,e,f,g} = 7'b0000001;
			4'b 0001: {a,b,c,d,e,f,g} = 7'b1001111;
			4'b 0010: {a,b,c,d,e,f,g} = 7'b0010010;
			4'b 0011: {a,b,c,d,e,f,g} = 7'b0000110;
			4'b 0100: {a,b,c,d,e,f,g} = 7'b1001100;
			4'b 0101: {a,b,c,d,e,f,g} = 7'b0100100;
			4'b 0110: {a,b,c,d,e,f,g} = 7'b0100000;
			4'b 0111: {a,b,c,d,e,f,g} = 7'b0001111;
			4'b 1000: {a,b,c,d,e,f,g} = 7'b0000000;
			4'b 1001: {a,b,c,d,e,f,g} = 7'b0000100;
			default {a,b,c,d,e,f,g} = 7'b0000000;
			endcase
		end

endmodule
