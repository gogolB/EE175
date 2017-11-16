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
    output wire reg_loc,    // location in cameraReg to get addr_data
    output wire scl,    // sccb clock
    output wire sda_out);   // sccb data time

    reg [7:0] addr; // address of camera reg
    reg [7:0] data; // data to modify camera reg
    
    localparam CAMERA_ID_W = 0x84;    // Address to write to camera regs
    localparam IDLE = 0;
    localparam START_TX = 1;
    localparam START_DATA_TX = 2;
    localparam LOAD_DATA = 3;
    localparam SEND_BIT = 4;
    localparam STOP_DATA_TX = 5;
    localparam STOP_TX = 6;
    localparam WAIT = 7;

    reg [2:0] state;    // FSM state
    reg [2:0] state_return; // FSM state to return to after wait
    reg [1:0] phase;    // data tx phase
    reg [3:0] i;    // data tx bit index
    reg [7:0] reg_loc_val;  // temp storage for reg_loc output
    reg ready;
    reg [5:0] wait_time;    // number clk periods to wait

    initial begin
        state = IDLE;   // init FSM state to idle
        scl = 1;
        sda_out = 1;
        reg_loc_val = 0;    // start at first reg loc
        phase = 0;
        i = 7;  // data tx will be sent from MSB to LSB
        ready = 1;
    end

    always@(posedge clk)
        case(state)
            IDLE: begin
                reg_loc = reg_loc_val;  // set reg loc to update addr_data
                if(ready && reg_loc_val < 73) begin // ready to send new data
                    state = START_TX;   // ready to start tx
                    addr = addr_data[15:8]; // store current reg addr
                    data = addr_data[7:0];  // store current reg data
                    reg_loc_val++;  // increment to next reg location
                    // need to wait 600ns before next signal (t_HD:STA)
                    ready = 0;
                end`
            end

            START_TX: begin
                sda_out = 0;    // pull sda low to signal start of tx
                wait_time = 22;  //  wait for sda_out to stabilize(max 7) and start condition hold time(min 15)
                state = WAIT;
                state_return = START_DATA_TX;
              
                wait_time = 7;// need to wait 300ns for scl to be stable low (t_F)
                // need to wait 100-900ns for data out to be valid (t_AA)
                // need to wait (t_LOW)1.3us - t_AA before scl pulls high
                
                state = START_DATA_TX;
            end

            START_DATA_TX: begin
                scl = 0;    // pull scl low to signal start of data tx
                wait_time = 7;  // wait for scl to stabilize(max 7)
                state = WAIT;
                state_return = LOAD_DATA;
                // scl stays high for 600ns (t_HIGH)
            end

            LOAD_DATA: begin
                scl = 1;    // pull high to send bit
                wait_time = 7;  // wait for scl to stabilize(max 7)
                state = WAIT;
                state_return = SEND_BIT;
                case(phase)
                    0: begin
                        tx_data = CAMERA_ID_W;
                    end
                    
                    1: begin
                        tx_data = addr;
                    end

                    2: begin
                        tx_data = data;
                    end
                endcase
            end
    
            SEND_BIT: begin
                if(i >= 0) begin
                    sda_out = tx_data[i]
                    i--;
                end
                else begin  // sent 8 bits
                    sda_out = 0;    // don't care bit (end of phase)
                    phase++;
                end
                wait_time = 15;  // wait for sda_out to stabilize and end of scl high(min 15)
                state = WAIT;
                state_return = LOAD_DATA;
            end

            END_BIT: begin
                scl = 0;
                wait_time = 7;  // wait for scl to stabilize(max 7)
                state = WAIT;
                if(phase < 3) begin // still in phase
                    state_return = LOAD_DATA;
                end
                else begin    // end of phase 3 tx
                    state_return = STOP_DATA_TX;
                end
            end

            STOP_DATA_TX: begin
                scl = 1;    // pull high to stop data tx
                wait_time = 22;  // wait for scl to stabilize and end of t_SU:STO(min 22)
                state = WAIT;
                state_return = STOP_TX;
            end

            STOP_TX: begin
                sda_out = 1;    // pull high to stop tx
                wait_time = 38;  // wait for sda to stabilize and duration of t_BUF(min 38)
                state = WAIT;
                state_return = IDLE;
                ready = 1;
            end

            WAIT: begin
                if(wait_time == 0) begin
                    state = state_return;   // finished waiting; go to next step
                end
                else begin
                    wait_time--;    // update wait time
                end
            end
        endcase
    end

endmodule
