`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2018 10:56:03 AM
// Design Name: 
// Module Name: UsbController
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Async FIFO Controller for FPGA to control FT2232H
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UsbController(

    // FT2232H facing IO
    inout [7:0] USBInterfaceData,
    input RXF,
    input TXE,
    output reg RD,
    output reg WR,
    
    // Internal facing IO
    input clock         // 100 MHz Clock all timeing done off of that.
    );
    
    reg [7:0]counter;
    reg [7:0]waitForTime;
    
    reg [3:0]state;
    reg [3:0]nextState;
    parameter IDLE = 0, READING_START = 1, READING_WAIT_T3 = 2, READING_DATA = 3, READING_WAIT_T1 = 4, READING_WAIT_T2 = 5, READING_WAIT_T6 = 6,
    WRITE_START = 7;
    
    reg USBRXFlag; // Flag is true when the RX of the FT Device is not empty
    reg USBTXFlag; // Flag is true when the TX of the FT device is not full.
    
    initial begin
        USBTXFlag <= 1;
        USBRXFlag <= 0;
        counter <= 0;
        waitForTime <= 0;
        RD <= 1;
        WR <= 0;
    end
        
    always @(posedge clock)begin
        state <= nextState;
    end
    
    // Reading alert
    // Only run when detecting a falling edge of RXF
    always @(negedge RXF) begin
         USBRXFlag <= 1;
    end
    
    // Writing Alert
    // Only run when detecting a rising edge of TXF
    always @(posedge TXE) begin
        USBTXFlag = 0;
    end
    
    
    always @(posedge clock) begin
        // We are not doing anything
        if(state == IDLE)
        begin
            // We have data to read
            if(USBRXFlag)
            begin
                nextState = READING_START;
            end
            
            // We have data to send
            // Its not full so we can send it.
            if(!USBTXFlag)
            begin
                nextState = WRITE_START;
            end
        end
    end
    
    always @(posedge clock) begin
        case(state)
            // -----------------------------------------------
            // START OF READING STATES         
            // -----------------------------------------------
            
            READING_START:
            begin
                // Set up the system to start reading
                counter = 0;
                
                USBRXFlag = 0;
                // According to the manual we need to wait at most 50ns for there to be valid data.
                waitForTime = 5; // 5 Cycles on a 100 MHz clock
                nextState = READING_WAIT_T3;
            end
            
            READING_WAIT_T3:
            begin
                if(counter < waitForTime)
                    counter <= counter + 1;
                else begin
                    counter <= 0;
                    waitForTime <= 0;
                    nextState = READING_DATA;
                    end
            end
            
            READING_DATA:
            begin
                // TODO: Read the data here and put it somewhere...
                
                waitForTime <= 5; // T1 time is 50ns
                counter <= 0;
                
                nextState = READING_WAIT_T1;
            end
            
            READING_WAIT_T1:
            begin
                if (counter < waitForTime)
                    counter <= counter + 1;
                else begin
                    counter <= 0;
                    waitForTime <= 5;     // Need to wait at least 50 ns for T2    
                    nextState = READING_WAIT_T2;
                end
            end
            
            READING_WAIT_T2:
            begin
                if (counter < waitForTime)
                    counter <= counter + 1;
                else begin
                    counter <= 0;
                    waitForTime <= 8; // Need to wait at most 80 ns for T6
                    nextState = READING_WAIT_T6;
                end
            end
            
            READING_WAIT_T6:
            begin
                if (counter < waitForTime)
                    counter <= counter + 1;
                else begin
                    counter <= 0;
                    waitForTime <= 0;
                    nextState = IDLE;
                end
            end
            // -----------------------------------------------
            // END OF READING STATES         
            // -----------------------------------------------
            
            // -----------------------------------------------
            // START OF WRITING STATES         
            // -----------------------------------------------
            WRITE_START:
            begin
            
            end       
            
            // -----------------------------------------------
            // END OF WRITING STATES         
            // -----------------------------------------------
            
        endcase
    end
    
    
endmodule
