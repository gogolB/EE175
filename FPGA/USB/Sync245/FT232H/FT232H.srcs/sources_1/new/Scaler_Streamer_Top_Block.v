`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 02:48:56 AM
// Design Name: 
// Module Name: Scaler_Streamer_Top_Block
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


module Scaler_Streamer_Top_Block(
    // FTDI Chip.
    inout wire[7:0] ftdi_d,
    input wire ftdi_rxf,
    input wire ftdi_txe,
    output wire ftdi_wr,
    output wire ftdi_rd,
    output wire ftdi_oe,
    input wire ftdi_clk,
    
    // Local system clocks
    input sys_clk
    );
    
    wire clk_36M;
    wire clk_100M;
    reg global_rst;
    
    clk_wiz_0 clkDiv(.clk_in1(sys_clk),
                     .clk_out1(clk_100M),
                     .clk_out2(clk_36M),
                     .reset(global_rst));
                     
    wire clk_from_data_to_controller;
    
    wire[7:0] dataBus;
    
    TempImgCreator imgStreamer(.CLK(clk_36M),
                               .CLKOUT(clk_from_data_to_controller),
                               .dataOut(dataBus),
                               .reset(global_rst));
                               
    Sync_245_Controller controller(.D(ftdi_d),
                                   .RXF(ftdi_rxf),
                                   .TXE(ftdi_txe),
                                   .WR(ftdi_wr),
                                   .RD(ftdi_rd),
                                   .OE(ftdi_oe),
                                   .CLKOUT(ftdi_clk));
endmodule
