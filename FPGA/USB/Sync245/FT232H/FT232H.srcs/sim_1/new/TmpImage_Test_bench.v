`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 02:26:30 AM
// Design Name: 
// Module Name: TmpImage_Test_bench
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


module TmpImage_Test_bench(

    );
    
    reg clk;
    wire clkout;
    wire[7:0] scaler;
    reg rst;
    
    TempImgCreator uut(.CLK(clk),
                         .CLKOUT(clkout),
                         .dataOut(scaler),
                         .reset(rst));
                         
                         
     initial begin
        clk = 0;
        forever begin
        #1 clk = ~clk;
        end
     end
     
     initial begin
     $display("Testing data creator");
     rst = 1;
     #10;
     rst = 0;
     #1000
     $finish;
     end
    
endmodule
