`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2018 02:52:25 PM
// Design Name: 
// Module Name: FT245Controller
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


module FT245Controller(
    // FTDI 245 Facing IO
    inout wire [7:0] ft_data,       // Bidirection data
    input wire RXF,                 // recieve full - active low
    input wire TXE,                 // transmit empty - active low
    output reg RD,                  // read data from fifo - active low
    output reg WR,                  // write data to fifio - active low
    
    // Sync 245 specific.
    input wire clock_60_mhz,
    output reg OE,
    
    // Implementation Facing IO
    output reg DataRxReady,          // Pulses High when data is good.
    output reg [7:0] DataRx,         // Data recieved
    
    input wire DataTxReady,          // Assert high when sending data
    input wire [7:0] DataTx,         // Data to transmit
    output reg DataTxSent            // Pulses High when data is sent.
    
    );
    
    initial begin
        WR <= 0;
        RD <= 0;
    end
    
    
endmodule
