`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:40:18 04/06/2015 
// Design Name: 
// Module Name:    contador_BCD_4Dig 
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
module contador_BCD_4Dig(
	input clock,rst,
	output reg [3:0] units,tens,hundreds,thousands
	);

always @(posedge clock)
	begin
		if(rst==1)
			begin
				units=0;
				tens=0;
				hundreds=0;
				thousands=0;
			end
		else
			begin
				if(units<9)
					units=units+1;	
				else
					begin
						units=0;
						if(tens<9)
							tens=tens+1;
						else
							begin
								tens=0;
								if(hundreds<9)
									hundreds=hundreds+1;
								else
									begin
										hundreds=0;
										if(thousands<9)
											thousands=thousands+1;
										else
											begin
												units=0;
												tens=0;
												hundreds=0;
												thousands=0;
											end
									end
							end
					end
			end
	end	
endmodule



