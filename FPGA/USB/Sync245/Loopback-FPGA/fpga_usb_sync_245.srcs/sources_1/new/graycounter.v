`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2018 11:23:19 AM
// Design Name: 
// Module Name: graycounter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Grasy scale counter based on design from http://www.asic-world.com/examples/verilog/asyn_fifo.html
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module graycounter#(parameter counterwidth = 8)(
        output reg [counterwidth - 1:0] graycount,
        
        input wire enable,
        input wire clear,
        
        input wire clk
    );
    
    reg [counterwidth - 1:0] binary_count;
    
    always @(negedge clk) begin
        if (clear) begin
            binary_count <= {counterwidth{1'b0}} + 1;
            graycount <= {counterwidth{1'b0}};
        end
        else if(enable) begin
            binary_count <= binary_count + 1;
            graycount <= {binary_count[counterwidth - 1], binary_count[counterwidth-2:0] ^ binary_count[counterwidth -1:1]};
        end
    end
    
    
    
endmodule
