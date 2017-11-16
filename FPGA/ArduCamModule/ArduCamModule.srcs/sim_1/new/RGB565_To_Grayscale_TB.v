`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 03:04:38 PM
// Design Name: 
// Module Name: RGB565_To_Grayscale_TB
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


module RGB565_To_Grayscale_TB();

    reg[15:0] inputPixelData;
    wire[7:0] outputData;
    
    reg clock;
    wire outputClock;
    
    // MUT: Module Under Test
    RGB565_To_Grayscale MUT (.PixelData(inputPixelData), .Grayscale(outputData), .clockIn(clock), .clockOut(outputClock));
    
    
    initial
    begin
        clock = 0;
        
        // Test 1
        inputPixelData = 16'b0000000000000000;
        #5;
        
        // Test 2
        inputPixelData = 16'b0000100000100001;
        #5;
        
        #100 $finish;
    end
    
    // Tick the clock.
    always
        #1 clock = !clock;
    

endmodule
