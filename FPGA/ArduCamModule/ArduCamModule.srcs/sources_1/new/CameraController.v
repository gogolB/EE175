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


module CameraController(
    // Camera Facing 
    input wire [7:0] CameraRawData,         // 
    output wire XClk,
    input wire PClk,
    input wire VSync,
    input wire HRef,
    output wire SCL,
    inout wire SDA,
    
    // System Facing
    output wire [15:0] PixelData,
    output wire DataGood,
    input wire SystemClock
    );
    
    parameter SYS_CLOCK_FRQ = 100000000 ;
    parameter XCLK_FRQ = 24000000; 
endmodule
