`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 02:28:27 PM
// Design Name: 
// Module Name: 565_To_Grayscale
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module takes 565 RGB and converts it to Grayscale. It does this using the following scheme
//              Assume the following 5 bits for R: (10101) this becomes (10101101) when it is taken from 5 bits to 8 bits.
//              This is not a linear transformation but it works.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RGB565_To_Grayscale(
    input wire [15:0] PixelData,
    output reg [7:0] Grayscale,
    input wire clockIn,
    output wire clockOut
    );
    
    assign clockOut = clockIn;
    
    wire [7:0] red;
    wire [7:0] green;
    wire [7:0] blue;
    
    // Apply MSB to top bits
    assign red[7:3] = PixelData[15:11];
    // Append MSB of R pixel Data to LSB of Red
    assign red[2:0] = PixelData[15:13];
    
    // Now do the green
    assign green[7:2] = PixelData[10:5];
    assign green[1:0] = PixelData[10:9];
    // Now the blue
    assign blue[7:3] = PixelData[5:0];
    assign blue[2:0] = PixelData[5:3];
    
    always @(posedge clockIn)
    begin
        Grayscale <= ((red + blue + green) / 3);
    end
    
    
endmodule
