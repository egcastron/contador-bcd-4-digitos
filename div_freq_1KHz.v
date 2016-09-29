`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:31:43 04/07/2015 
// Design Name: 
// Module Name:    div_freq_1KHz 
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
module div_freq_1KHz(
    input clkFPGA,
    output reg clk1KHz
    );
	 
reg [14:0] cont1000;
initial clk1KHz=0;	
always @(posedge clkFPGA)	
	begin
		   
		if(cont1000 < 'd25000)
			cont1000=cont1000+1;
		else
			begin
				clk1KHz=~clk1KHz;
				cont1000=0;
			end
	end
		

endmodule

