`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2017 10:55:58 AM
// Design Name: 
// Module Name: CameraController
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CameraController #(parameter SYS_CLK_FRQ = 100000000,
                          parameter XCLK_FRQ = 24_000_000)(
    // Facing Camera
    input wire [7:0] cam_byte,
    input wire pclk,
    input wire vsync,
    input wire href,
    output wire xclk,
    
    // Facing System
    //input wire sys_clk,	// not needed?
    output reg [15:0] pixel_data
    //output reg out_clk	// not needed?
    );

    initial begin
        pixel_data = 0;
    end

    localparam FRAME_START = 0;
    localparam PIXEL = 1;

    reg [15:0] pixel = 0;
    reg byte_num = 0;
    reg state = FRAME_START;
	 
	 assign xclk = pclk;

    always @(pclk) begin
        case(state)
            FRAME_START: begin
                if(vsync == 0) begin    // valid frame
                    state = PIXEL;
                    byte_num = 0;
                end
            end

            PIXEL: begin
                if(vsync == 1) begin    // end frame
                    state = FRAME_START;
                end
                else begin  // still in frame
                    if(href == 1) begin // valid line
						if(pclk == 1) begin	// rising edge sends byte
							if(byte_num == 0) begin // first byte (R3:0 G5:3)
							    pixel[15:8] = cam_byte;
							end
						    else begin  // second byte (G2:0 B3:0)
							    pixel[7:0] = cam_byte;
							    pixel_data = pixel; // output finished pixel data
						    end
						    byte_num = ~byte_num;   // switch to next byte val
					    end
                    end
                end
            end
        endcase
    end

endmodule

