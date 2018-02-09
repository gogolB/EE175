`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 12:06:56 AM
// Design Name: 
// Module Name: Sync_245_Test_Bench
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


/*
    inout wire [7:0] D,
input wire RXF,
input wire TXE,
output reg WR,
output reg RD,
output reg OE,
input wire CLKOUT,

// Internal Implementation Facing
// Data going out to the host.
input wire [7:0] inputData,
input wire inputClock,
input wire inputDataGood,

// Data that came in to the FPGA from the host.
output reg [7:0] outputData,
input wire outputClock,
input  wire readData,

input reset
);
*/

module Sync_245_Test_Bench(

    );
    
    // FT232H IO
    wire [7:0] d;
    reg rxf, txe;
    wire wr, rd, oe;
    reg CLKIN;
    
    // Internal Imp
    reg[7:0] inData;
    reg inClk, inEn;
    
    wire[7:0] outData;
    reg outClk, outEn;
    
    reg rst;
    
    // Wires and set up to control bidir of D
    wire [7:0] d_to_host;
    reg [7:0] d_from_host;
    reg d_output_mode;
    
    assign d_to_host = d;
    assign d = (d_output_mode==1'b1)? d_from_host : 8'hZZ;
    
    
    Sync_245_Controller uut( .D(d),
                             .RXF(rxf),
                             .TXE(txe),
                             .WR(wr),
                             .RD(rd),
                             .OE(oe),
                             .CLKOUT(CLKIN),
                             
                             .inputData(inData),
                             .inputClock(inClk),
                             .inputDataGood(inEn),
                             
                             .hostData(outData),
                             .outputClock(outClk),
                             .readData(outEn),
                             
                             .reset(rst));
    // Set up clocks.
    initial begin 
        CLKIN = 0;
        forever begin
            #5 CLKIN = ~CLKIN;
        end 
     end
    
    initial begin 
         outClk = 0;
         forever begin
             #10 outClk = ~outClk;
         end 
      end
    
    initial begin 
       inClk = 0;
       forever begin
           #10 inClk = ~inClk;
       end 
    end
    
    initial begin
        $display("Entering Initial state!");
        d_output_mode = 0;
        d_from_host = 8'h00;
        rst = 0;
        rxf = 1;
        txe = 1;
        
        inData = 8'h00;
        inEn = 0;
        
        outEn = 0;
        rst = 1;
        #50;
        rst = 0;
        #50;
        
        #100;
        
        // Simulate sending data to host.
        txe = 0;
        inEn = 1;
        #1;
        // Add data to send
        inData = 8'hAA;
        #20;
        inData = 8'hBB;
        #20;
        inData = 8'hCC;
        #20;
        inData = 8'hDD;
        #20;
        inData = 8'hEE;
        #20;
        inData = 8'hFF;
        #20;
        
        inEn = 0;
        #1000;
        $finish;
    end
endmodule
