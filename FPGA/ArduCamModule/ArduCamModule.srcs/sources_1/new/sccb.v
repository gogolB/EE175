`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2017 10:43 AM
// Design Name: 
// Module Name: sccb
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
/////////////////////////////////////////////////////////////////////////////////

module sccb #(parameter CLK = 24000000) (    // system clock at 24MHz
    input wire clk,
    input [15:0] addr_data;
    input wire sda_in,  // ack from slave
    output wire scl,    // sccb clock
    output wire sda_out);   // sccb data time

    reg [7:0] addr; // address of camera reg
    reg [7:0] data; // data to modify camera reg
    
    localparam CAMERA_ID = 0x42;    // Address to write to camera regs
    localparam IDLE = 0;
    localparam START_TX = 1;
    localparam START_DATA_TX = 2;
    localparam SEND_BIT = 3;
    localparam STOP_DATA_TX = 4;
    localparam STOP_TX = 5;
    localparam WAIT_ACK = 6;

    reg [2:0] state;    // FSM state
    reg [1:0] phase;    // data tx phase
    reg [3:0] i;    // data tx bit index 

    initial begin
        state = IDLE;   // init FSM state to idle
        scl = 1;
        sda_out = 1;
        phase = 0;
        i = 7;  // data tx will be sent from MSB to LSB
    end

    always@(posedge clk)
        case(state)
            IDLE: begin
                if(sda_in == 1) begin // slave ack ready for data
                    sda_out = 0;    // pull sda low to signal start tx
                    state = START_TX;
                end`
            end

            START_TX: begin
                scl = 0;    // pull scl low to signal start data tx
                addr = addr_data[15:8];
                data = addr_data[7:0];
                state = START_DATA_TX;
            end

            START_DATA_TX: begin
                scl = 1;    // pull high to send bit
                state = SEND_BIT;
            end

            SEND_BIT: begin
                case(phase)
                    0: begin
                        sda_out = CAMERA_ID[i]; // send one bit
                        if(i > 0) begin
                            i--;    // decrement i to next bit
                            state = START_DATA_TX;
                        end
                        else begin
                            i = 7;
                            phase++;
                            state = WAIT_ACK;   // wait for 9th bit ack from slave
                        end
                        scl = 0;    // pull low for end of bit tx
                    end

                    1: begin
                        sda_out = addr[i];
                        if(i > 0) begin
                            i--;
                            state = START_DATA_TX;
                        end
                        else begin
                            i = 7;
                            phase++;
                            state = WAIT_ACK;
                        end
                        scl = 0;
                    end

                    2: begin
                        sda_out = data[i];
                        if(i > 0) begin
                            i--;
                            state = START_DATA_TX;
                        end
                        else begin
                            i = 7;
                            phase++;
                            state = WAIT_ACK;
                        end
                    end
                endcase
            end

            STOP_DATA_TX: begin
                state = STOP_TX;
                scl = 1;    // pull high to stop data tx
            end

            STOP_TX: begin
                state = IDLE;
                sda_out = 1;    // pull high to stop tx
            end

            WAIT_ACK: begin
                if(sda_in) begin    // if recieved true ack signal
                    if(phase > 2) begin // end of 3 phase tx
                        state = STOP_DATA_TX;   // signal end of data tx
                    end
                    else begin  // more phases to tx
                        state = START_DATA_TX;  // go back to start of transmission
                    end
                end
                else begin
                    state = WAIT_ACK;   // wait until received ack from slave
                end
            end
        endcase
    end

endmodule
