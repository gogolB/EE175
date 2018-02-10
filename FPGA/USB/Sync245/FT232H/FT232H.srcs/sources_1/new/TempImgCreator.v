`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 02:20:40 AM
// Design Name: 
// Module Name: TempImgCreator
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


module TempImgCreator(
    input CLK,
    output CLKOUT,
    output reg [7:0] dataOut,
    
    input reset
    );
    
    reg[7:0] scaler;
    
    assign CLKOUT = CLK;
    
    always@(posedge CLK) begin
        if(reset) begin
            scaler <= 8'h00;
            dataOut <= scaler;
        end
        else begin
            scaler <= scaler + 1;
            dataOut <= scaler;
        end 
    end
endmodule
