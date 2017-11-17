`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:46:12 11/17/2017
// Design Name:   sccb
// Module Name:   C:/Users/vhall/Desktop/CameraTest/newTest/sccb/sccb_tb.v
// Project Name:  sccb
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sccb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sccb_tb;
	integer i;
	// Inputs
	reg clk;
	wire [15:0] addr_data;
	reg sda_in;
	
	//reg [7:0] addr_in;

	// Outputs
	wire [7:0] reg_loc;
	wire scl;
	wire sda_out;
	
	//wire [15:0] addr_data_out;

	// Instantiate the Unit Under Test (UUT)
	
	cameraReg uut1 (
		.clk(clk), 
		.addr(reg_loc),
		.addr_data(addr_data)
	);
	
	sccb uut (
		.clk(clk), 
		.addr_data(addr_data), 
		.sda_in(sda_in), 
		.reg_loc(reg_loc), 
		.scl(scl), 
		.sda_out(sda_out)
	);
	
	

	initial begin
		// Initialize Inputs
		clk = 0;
//		addr_data = 0;
		sda_in = 0;

		// Wait 100 ns for global reset to finish
		#100;

		for(i = 0; i < 6022; i = i + 1) begin
			clk = 1;
			#21;
			clk = 0;
			#21;
		end

	end
      
endmodule
