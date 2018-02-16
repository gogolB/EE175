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
    
    reg dataGood;
    
    wire[7:0] hostDataBus;
    wire newHostData;
    reg readHostData;
    
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
                                   .CLKOUT(ftdi_clk),
                                   
                                   .inputData(dataBus),
                                   .inputClock(clk_from_data_to_controller),
                                   .inputDataGood(dataGood),
                                   
                                   .hostData(hostDataBus),
                                   .outputClock(clk_100M),
                                   .readData(readHostData),
                                   .hasData(newHostData),
                                   
                                   .reset(global_rst)
                                   );
                                   
                                   
    reg[3:0] state;
    parameter WAIT_FOR_START = 0,STREAMING=1, READ_HOST_DATA=2,PROCESS_HOST_DATA=3,RESET=4;
    
    reg[9:0] counter;
    
    always@(state) begin
        case(state)
            RESET: begin
                global_rst <= 1;
                dataGood <= 0;
                readHostData <= 0;
            end
            WAIT_FOR_START: begin
                global_rst <= 0;
                dataGood <= 0;
                readHostData <= 0;
            end
            STREAMING: begin
                global_rst <= 0;
                dataGood <= 1;
                readHostData <=0;
            end
            READ_HOST_DATA: begin
                readHostData <=1;
            end
            PROCESS_HOST_DATA: begin
                readHostData <= 0;
            end
            default: begin
                global_rst <= 1;
                dataGood <= 0;
                readHostData <=0;
            end
        endcase
    end
    
    always@(posedge sys_clk) begin
        case(state)
            default: begin
                state = RESET;
                counter = 0;
            end
            
            RESET: begin
                counter <= counter + 1;
                if(counter >= 10'h003)
                    state = WAIT_FOR_START;
            end
            
            WAIT_FOR_START: begin
                if(newHostData)
                    state = READ_HOST_DATA;
                else
                    state = WAIT_FOR_START;
            end
            
            READ_HOST_DATA: begin
                state = PROCESS_HOST_DATA;
            end
            
            PROCESS_HOST_DATA: begin
                if (hostDataBus == 8'b10101010)
                    state = STREAMING;
                else
                    state = WAIT_FOR_START;
            end
            
            STREAMING: begin
                state = STREAMING;
            end
            
        endcase
    
    end
    
    
endmodule
