`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:11 04/06/2015 
// Design Name: 
// Module Name:    deco_digito 
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
module deco_digito(
    input [1:0] digito,
    output reg d1,d2,d3,d4
    );
 
	always @ (digito)
		begin
			case(digito)
			2'b 00: {d1,d2,d3,d4} = 4'b 0111;
			2'b 01: {d1,d2,d3,d4} = 4'b 1011;
			2'b 10: {d1,d2,d3,d4} = 4'b 1101;
			2'b 11: {d1,d2,d3,d4} = 4'b 1110;
			endcase
		end

endmodule

