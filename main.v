`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:25:53 05/01/2017 
// Design Name: 
// Module Name:    main 
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

module main(
	input clk,	
	input [7:0] Data1,
	input [7:0] Data2,
	input [7:0] Data3,
	input [7:0] Data4,
	output [7:0] IM_Data_out
);

wire [1:0] WM_Data;

Generation G( .clk(clk), .WM_Data(WM_Data));
Insertion I( .clk(clk), .Data1(Data1), .Data2(Data2), .Data3(Data3), .Data4(Data4),
				.WM_Data(WM_Data), .WM_IM_Data(IM_Data_out));
endmodule
