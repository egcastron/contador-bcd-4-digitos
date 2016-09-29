`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:13 04/06/2015 
// Design Name: 
// Module Name:    contador_hexa 
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
module contador_hexa(
	input clock,rst,
	output reg [3:0] datobcd
	);
	 
always @(negedge clock)
	begin
		if(rst==1)
			datobcd=0;
		else
			begin
				if(datobcd<16)
					datobcd=datobcd+1;
				else
					datobcd=0;
			end
	end



endmodule
