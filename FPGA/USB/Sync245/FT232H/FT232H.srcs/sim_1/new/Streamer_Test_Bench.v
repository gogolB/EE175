`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2018 11:34:27 PM
// Design Name: 
// Module Name: Streamer_Test_Bench
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


module Streamer_Test_Bench(

    );
    
    wire [7:0] d;
    reg rxf, txe;
    wire wr, rd, oe;
    reg CLKIN;
    
    reg SYS_CLK_100M;
    
    Scaler_Streamer_Top_Block uut (.ftdi_d(d),
                                   .ftdi_oe(oe),
                                   .ftdi_rd(rd),
                                   .ftdi_wr(wr),
                                   .ftdi_rxf(rxf),
                                   .ftdi_txe(txe),
                                   .ftdi_clk(CLKIN),
                                   .sys_clk(SYS_CLK_100M)); 
    
    reg [7:0] inputData;
    reg sendDataFromHost;
    
    //assign outputData = d;
    assign d = (sendDataFromHost == 1'b1) ? inputData : 8'bZZZZZZZZ;
    
    
    // Set up clocks.
    initial begin 
        CLKIN = 0;
        sendDataFromHost = 0;
        forever begin
            #8 CLKIN = ~CLKIN;
        end 
     end
     
     initial begin 
         SYS_CLK_100M = 0;
         forever begin
             #5 SYS_CLK_100M = ~SYS_CLK_100M;
         end 
      end


    initial begin
        $display("Entering Initial state!");
        rxf = 1;
        txe = 1;
        inputData = 8'hAA;
        
        #100;
        rxf = 0;
        #10
        sendDataFromHost = 1;
        inputData = 8'hAA;
        rxf = 0;
        #50
        rxf = 1;
        sendDataFromHost = 0;
        txe = 0;
        #1000000000;
        #1000000000;
        #1000000000;
        #1000000000;
        #1000000000;
        #1000000000;
        
        sendDataFromHost = 1;
        $finish;    
    end     
    
    
endmodule
