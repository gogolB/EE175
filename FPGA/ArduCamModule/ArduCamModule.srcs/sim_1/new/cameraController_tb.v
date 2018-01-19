`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:25:49 11/29/2017
// Design Name:   CameraController
// Module Name:   C:/Users/vhall/Desktop/CameraTest/cameraController/cameraController/cameraController_tb.v
// Project Name:  cameraController
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CameraController
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cameraController_tb;
	integer i;
	// Inputs
	reg [7:0] cam_byte;
	reg pclk;
	reg vsync;
	reg href;

	// Outputs
	wire xclk;
	wire [15:0] pixel_data;

	// Instantiate the Unit Under Test (UUT)
	CameraController uut (
		.cam_byte(cam_byte), 
		.pclk(pclk), 
		.vsync(vsync), 
		.href(href), 
		.xclk(xclk), 
		.pixel_data(pixel_data)
	);

	initial begin
		// Initialize Inputs
		cam_byte = 0;
		pclk = 0;
		vsync = 1;	// falling edge for new frame
		href = 0;	// rising edge for start line

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		cam_byte = 8'h88;
		vsync = 0;	// begin frame
		#21;
		pclk = 1;
		#21;
		pclk = 0;
		href = 1;	// begin row
		for(i = 0; i < 640; i = i + 1) begin	// 640 pixels
			#21;
			pclk = 1;
			#21;
			pclk = 0;
			cam_byte = i;
		end
		href = 0;	// end line
		#21;
		pclk = 1;
		#21;
		pclk = 0;
		href = 1;	// begin row
		for(i = 0; i < 640; i = i + 1) begin	// 640 pixels
			#21;
			pclk = 1;
			#21;
			pclk = 0;
			cam_byte = i;
		end
		href = 0;	// end line
		#21;
		pclk = 1;
		#21;
		pclk = 0;
		href = 1;	// begin row
		for(i = 0; i < 640; i = i + 1) begin	// 640 pixels
			#21;
			pclk = 1;
			#21;
			pclk = 0;
			cam_byte = i;
		end
		href = 0;	// end line
		#21
		pclk = 1;
		#21;
		pclk = 0;
		#21;
		pclk = 1;
		#21;
		pclk = 0;
		#21;
		pclk = 1;
		#21;
		pclk = 0;
		vsync = 1;	// end frame
		#21;
	end
      
endmodule

