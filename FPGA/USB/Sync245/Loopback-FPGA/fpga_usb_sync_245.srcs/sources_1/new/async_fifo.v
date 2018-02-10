`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:    Gogol 
// 
// Create Date: 01/12/2018 11:08:53 AM
// Design Name: 
// Module Name: async_fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This is a multi-clock domain async fifo. This particular implementation uses gray codes for addressing to prevent 
//              propogation delays caused by having to flip multiple bits. This is also has the added advantage to be
//              more power efficent since only one bit is flipping.
//              
//              Inspiration from:
//                              http://www.asic-world.com/examples/verilog/asyn_fifo.html
//                              https://github.com/6thimage/FT245_interface/blob/master/async_fifo.v
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module async_fifo#(parameter datawidth = 8, parameter DATADEPTH = 128, parameter addresswidth = $clog2(DATADEPTH))(
    input wire reset,
    
    // Reading
    input wire read_clk,
    input wire read_en,
    output reg [datawidth-1:0] outputData,
    
    // Writing
    input wire write_clk,
    input wire write_en,
    input wire [datawidth-1:0] inputData,
    
    // Fifo specific
    output reg full,
    output reg empty
    );
    
    reg[datawidth - 1:0] memory[DATADEPTH-1:0];
    wire [addresswidth-1:0] pNextToWrite, pNextToRead;
    wire equalAddresses;
    wire NextWriteAddr_en,NextReadAddr_en;
    wire set_Status, rst_Status;
    reg status;
    wire presetFull,presetEmpty;
    
    
    // Dual port ram logic
    // Reading
    always @(negedge read_clk) begin
        if (read_en & !empty) begin
            outputData <= memory[pNextToRead];
        end
    end
    
    // Writing
    always @(negedge write_clk) begin
        if (write_en & !full) begin
            memory[pNextToWrite] <= inputData;
        end
    end 
    
    assign NextWriteAddr_en = write_en & ~full;
    assign NextReadAddr_en = read_en & ~empty;
    
    // Addressing for writing
    graycounter #(.counterwidth(addresswidth)) pWrite_counter(
        .graycount(pNextToWrite),
        .enable(NextWriteAddr_en),
        .clear(reset),
        .clk(write_clk)
    );
    
    // Addressing for reading
    graycounter #(.counterwidth(addresswidth)) pRead_counter(
        .graycount(pNextToRead),
        .enable(NextReadAddr_en),
        .clear(reset),
        .clk(read_clk)
    );
    
    assign equalAddresses = (pNextToRead == pNextToWrite);
    
    assign set_Status = (pNextToWrite[addresswidth- 2] ~^pNextToRead[addresswidth-1]) & (pNextToWrite[addresswidth-1] ^  pNextToRead[addresswidth-2]);
    
    assign rst_Status = (pNextToWrite[addresswidth-2] ^  pNextToRead[addresswidth-1]) & (pNextToWrite[addresswidth-1] ~^ pNextToRead[addresswidth-2]);

    always @ (set_Status, rst_Status, reset) begin
        if(rst_Status | reset) begin
            status = 0; // Going Empty
        end
        else if(set_Status) begin
            status = 1; // Going Full
        end
    end
    
    // Full logic for the input port
    assign presetFull = status & equalAddresses; // FIFO Full
    
    always @(negedge write_clk, posedge presetFull) begin
        if(presetFull) begin
            full <= 1;
        end
        else begin
            full <= 0;
        end
    end
    
    // Empty logic for the output port.
    assign presetEmpty = ~status & equalAddresses; // FIFO Empty
    
    always @(negedge read_clk, posedge presetEmpty) begin
        if (presetEmpty) begin
            empty <= 1;
        end
        else begin
            empty <= 0;
        end
    end
    
endmodule
