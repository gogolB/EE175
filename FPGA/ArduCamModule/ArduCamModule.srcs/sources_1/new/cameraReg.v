`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 10:49 PM
// Design Name: 
// Module Name: cameraReg
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


module cameraReg(
	input wire clk,
	input wire [7:0] addr,
	output reg [15:0] addr_data
	);
	
	initial begin
		 addr_data = 16'h12_80; // SCCB register reset
	end

//FFFF is end of rom, FFF0 is delay
always @(posedge clk) begin
	case(addr) 
    	0:  addr_data <= 16'h12_80; // SCCB register reset
    	1:  addr_data <= 16'hFF_F0; // delay
    	2:  addr_data <= 16'h12_04; // COM7,     set RGB color output
    	3:  addr_data <= 16'h11_80; // CLKRC     internal PLL matches input clock
    	4:  addr_data <= 16'h0C_00; // COM3,     default settings
    	5:  addr_data <= 16'h3E_00; // COM14,    no scaling, normal pclock
    	6:  addr_data <= 16'h04_00; // COM1,     disable CCIR656
    	7:  addr_data <= 16'h40_d0; // COM15,     RGB565, full output range
    	8:  addr_data <= 16'h3a_04; // TSLB       set correct output data sequence (magic)
    	9:  addr_data <= 16'h14_18; // COM9       MAX AGC value x4
    	10: addr_data <= 16'h4F_B3; // MTX1       all of these are magical matrix coefficients
    	11: addr_data <= 16'h50_B3; // MTX2
    	12: addr_data <= 16'h51_00; // MTX3
    	13: addr_data <= 16'h52_3d; // MTX4
    	14: addr_data <= 16'h53_A7; // MTX5
    	15: addr_data <= 16'h54_E4; // MTX6
    	16: addr_data <= 16'h58_9E; // MTXS
    	17: addr_data <= 16'h3D_C0; // COM13      sets gamma enable, does not preserve reserved bits, may be wrong?
    	18: addr_data <= 16'h17_14; // HSTART     start high 8 bits
    	19: addr_data <= 16'h18_02; // HSTOP      stop high 8 bits //these kill the odd colored line
    	20: addr_data <= 16'h32_80; // HREF       edge offset
    	21: addr_data <= 16'h19_03; // VSTART     start high 8 bits
    	22: addr_data <= 16'h1A_7B; // VSTOP      stop high 8 bits
    	23: addr_data <= 16'h03_0A; // VREF       vsync edge offset
    	24: addr_data <= 16'h0F_41; // COM6       reset timings
    	25: addr_data <= 16'h1E_00; // MVFP       disable mirror / flip //might have magic value of 03
    	26: addr_data <= 16'h33_0B; // CHLF       //magic value from the internet
    	27: addr_data <= 16'h3C_78; // COM12      no HREF when VSYNC low
    	28: addr_data <= 16'h69_00; // GFIX       fix gain control
    	29: addr_data <= 16'h74_00; // REG74      Digital gain control
    	30: addr_data <= 16'hB0_84; // RSVD       magic value from the internet *required* for good color
    	31: addr_data <= 16'hB1_0c; // ABLC1
    	32: addr_data <= 16'hB2_0e; // RSVD       more magic internet values
     	33: addr_data <= 16'hB3_80; // THL_ST
    	// begin mystery scaling numbers
    	34: addr_data <= 16'h70_3a;
    	35: addr_data <= 16'h71_35;
    	36: addr_data <= 16'h72_11;
    	37: addr_data <= 16'h73_f0;
    	38: addr_data <= 16'ha2_02;
    	// gamma curve values
    	39: addr_data <= 16'h7a_20;
    	40: addr_data <= 16'h7b_10;
    	41: addr_data <= 16'h7c_1e;
    	42: addr_data <= 16'h7d_35;
    	43: addr_data <= 16'h7e_5a;
    	44: addr_data <= 16'h7f_69;
    	45: addr_data <= 16'h80_76;
    	46: addr_data <= 16'h81_80;
    	47: addr_data <= 16'h82_88;
    	48: addr_data <= 16'h83_8f;
    	49: addr_data <= 16'h84_96;
    	50: addr_data <= 16'h85_a3;
    	51: addr_data <= 16'h86_af;
    	52: addr_data <= 16'h87_c4;
    	53: addr_data <= 16'h88_d7;
    	54: addr_data <= 16'h89_e8;
    	// AGC and AEC
    	54: addr_data <= 16'h13_e0; // COM8, disable AGC / AEC
    	55: addr_data <= 16'h00_00; // set gain reg to 0 for AGC
    	56: addr_data <= 16'h10_00; // set ARCJ reg to 0
     	57: addr_data <= 16'h0d_40; // magic reserved bit for COM4
    	58: addr_data <= 16'h14_18; // COM9, 4x gain + magic bit
    	59: addr_data <= 16'ha5_05; // BD50MAX
    	60: addr_data <= 16'hab_07; // DB60MAX
    	61: addr_data <= 16'h24_95; // AGC upper limit
    	62: addr_data <= 16'h25_33; // AGC lower limit
    	63: addr_data <= 16'h26_e3; // AGC/AEC fast mode op region
    	64: addr_data <= 16'h9f_78; // HAECC1
    	65: addr_data <= 16'ha0_68; // HAECC2
    	66: addr_data <= 16'ha1_03; // magic
    	67: addr_data <= 16'ha6_d8; // HAECC3
    	68: addr_data <= 16'ha7_d8; // HAECC4
    	69: addr_data <= 16'ha8_f0; // HAECC5
    	70: addr_data <= 16'ha9_90; // HAECC6
    	71: addr_data <= 16'haa_94; // HAECC7
	    72: addr_data <= 16'h13_e5; // COM8, enable AGC / AEC
    	default: begin
    		addr_data <= 16'hFF_FF;         // mark end of ROM
        end
	endcase
end

endmodule
