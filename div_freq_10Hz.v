`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:03 04/06/2015 
// Design Name: 
// Module Name:    div_freq_10Hz 
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
module div_freq_10Hz( 
    input clkFPGA,
    output reg clk10Hz
    );
	 
reg [21:0] cont10;
initial clk10Hz=0;	
always @(posedge clkFPGA)	
	begin
		   
		if(cont10 < 'd25000)
			cont10=cont10+1;
		else
			begin
				clk10Hz=~clk10Hz;
				cont10=0;
			end
	end
		

endmodule

