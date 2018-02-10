// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Feb  9 09:37:44 2018
// Host        : Gogol-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Gogol/Desktop/ClassWork/EE175/FPGA/USB/Sync245/FT232H/FT232H.sim/sim_1/synth/timing/xsim/Sync_245_Test_Bench_time_synth.v
// Design      : Sync_245_Controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* IDLE = "0" *) (* PRE_RD_START = "1" *) (* RD_START = "2" *) 
(* RD_STOP = "4" *) (* READ_DATA = "3" *) (* WRITE_DATA = "6" *) 
(* WR_START = "5" *) (* WR_STOP = "7" *) 
(* NotValidForBitStream *)
module Sync_245_Controller
   (D,
    RXF,
    TXE,
    WR,
    RD,
    OE,
    CLKOUT,
    inputData,
    inputClock,
    inputDataGood,
    hostData,
    outputClock,
    readData,
    reset);
  inout [7:0]D;
  input RXF;
  input TXE;
  output WR;
  output RD;
  output OE;
  input CLKOUT;
  input [7:0]inputData;
  input inputClock;
  input inputDataGood;
  output [7:0]hostData;
  input outputClock;
  input readData;
  input reset;

  wire CLKOUT;
  wire CLKOUT_IBUF;
  wire CLKOUT_IBUF_BUFG;
  wire [7:0]D;
  wire [7:0]D_IBUF;
  wire OE;
  wire OE_OBUF;
  wire OE_reg_i_1_n_0;
  wire RD;
  wire RD_OBUF;
  wire RD_reg_i_1_n_0;
  wire RD_reg_i_2_n_0;
  wire RXF;
  wire RXF_IBUF;
  wire TXE;
  wire TXE_IBUF;
  wire WR;
  wire WR_OBUF;
  wire WR_reg_i_1_n_0;
  wire WR_reg_i_2_n_0;
  wire dataRxFifo_n_0;
  wire dataRxFifo_n_1;
  wire dataTxFifo_n_0;
  wire dataTxFifo_n_1;
  wire [7:0]hostData;
  wire [7:0]hostData_OBUF;
  wire inputClock;
  wire inputClock_IBUF;
  wire inputClock_IBUF_BUFG;
  wire [7:0]inputData;
  wire inputDataGood;
  wire inputDataGood_IBUF;
  wire [7:0]inputData_IBUF;
  wire outputClock;
  wire outputClock_IBUF;
  wire outputClock_IBUF_BUFG;
  wire readData;
  wire readData_IBUF;
  wire recvData;
  wire recvData_reg_i_1_n_0;
  wire recvData_reg_i_2_n_0;
  wire reset;
  wire reset_IBUF;
  wire sendData;
  wire sendData_reg_i_1_n_0;
  wire [2:0]state;

initial begin
 $sdf_annotate("Sync_245_Test_Bench_time_synth.sdf",,,,"tool_control");
end
  BUFG CLKOUT_IBUF_BUFG_inst
       (.I(CLKOUT_IBUF),
        .O(CLKOUT_IBUF_BUFG));
  IBUF CLKOUT_IBUF_inst
       (.I(CLKOUT),
        .O(CLKOUT_IBUF));
  OBUF \D_OBUF[0]_inst 
       (.I(D_IBUF[0]),
        .O(D[0]));
  OBUF \D_OBUF[1]_inst 
       (.I(D_IBUF[1]),
        .O(D[1]));
  OBUF \D_OBUF[2]_inst 
       (.I(D_IBUF[2]),
        .O(D[2]));
  OBUF \D_OBUF[3]_inst 
       (.I(D_IBUF[3]),
        .O(D[3]));
  OBUF \D_OBUF[4]_inst 
       (.I(D_IBUF[4]),
        .O(D[4]));
  OBUF \D_OBUF[5]_inst 
       (.I(D_IBUF[5]),
        .O(D[5]));
  OBUF \D_OBUF[6]_inst 
       (.I(D_IBUF[6]),
        .O(D[6]));
  OBUF \D_OBUF[7]_inst 
       (.I(D_IBUF[7]),
        .O(D[7]));
  OBUF OE_OBUF_inst
       (.I(OE_OBUF),
        .O(OE));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    OE_reg
       (.CLR(1'b0),
        .D(OE_reg_i_1_n_0),
        .G(state[1]),
        .GE(1'b1),
        .Q(OE_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    OE_reg_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(OE_reg_i_1_n_0));
  OBUF RD_OBUF_inst
       (.I(RD_OBUF),
        .O(RD));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    RD_reg
       (.CLR(1'b0),
        .D(RD_reg_i_1_n_0),
        .G(RD_reg_i_2_n_0),
        .GE(1'b1),
        .Q(RD_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    RD_reg_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(RD_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h07)) 
    RD_reg_i_2
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(RD_reg_i_2_n_0));
  IBUF RXF_IBUF_inst
       (.I(RXF),
        .O(RXF_IBUF));
  IBUF TXE_IBUF_inst
       (.I(TXE),
        .O(TXE_IBUF));
  OBUF WR_OBUF_inst
       (.I(WR_OBUF),
        .O(WR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    WR_reg
       (.CLR(1'b0),
        .D(WR_reg_i_1_n_0),
        .G(WR_reg_i_2_n_0),
        .GE(1'b1),
        .Q(WR_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    WR_reg_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(WR_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h89)) 
    WR_reg_i_2
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(WR_reg_i_2_n_0));
  async_fifo dataRxFifo
       (.D(dataRxFifo_n_0),
        .Q(state),
        .RXF_IBUF(RXF_IBUF),
        .memory_reg_0(D_IBUF),
        .outputData(hostData_OBUF),
        .readData_IBUF(readData_IBUF),
        .read_clk(outputClock_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .\state_reg[0] (dataRxFifo_n_1),
        .write_clk(CLKOUT_IBUF_BUFG),
        .write_en(recvData));
  async_fifo_0 dataTxFifo
       (.D({dataTxFifo_n_0,dataTxFifo_n_1}),
        .Q(state),
        .TXE_IBUF(TXE_IBUF),
        .full_reg_0(dataRxFifo_n_1),
        .inputClock(inputClock_IBUF_BUFG),
        .inputData(inputData_IBUF),
        .outputData(D_IBUF),
        .reset_IBUF(reset_IBUF),
        .sendData(sendData),
        .write_clk(CLKOUT_IBUF_BUFG),
        .write_en(inputDataGood_IBUF));
  OBUF \hostData_OBUF[0]_inst 
       (.I(hostData_OBUF[0]),
        .O(hostData[0]));
  OBUF \hostData_OBUF[1]_inst 
       (.I(hostData_OBUF[1]),
        .O(hostData[1]));
  OBUF \hostData_OBUF[2]_inst 
       (.I(hostData_OBUF[2]),
        .O(hostData[2]));
  OBUF \hostData_OBUF[3]_inst 
       (.I(hostData_OBUF[3]),
        .O(hostData[3]));
  OBUF \hostData_OBUF[4]_inst 
       (.I(hostData_OBUF[4]),
        .O(hostData[4]));
  OBUF \hostData_OBUF[5]_inst 
       (.I(hostData_OBUF[5]),
        .O(hostData[5]));
  OBUF \hostData_OBUF[6]_inst 
       (.I(hostData_OBUF[6]),
        .O(hostData[6]));
  OBUF \hostData_OBUF[7]_inst 
       (.I(hostData_OBUF[7]),
        .O(hostData[7]));
  BUFG inputClock_IBUF_BUFG_inst
       (.I(inputClock_IBUF),
        .O(inputClock_IBUF_BUFG));
  IBUF inputClock_IBUF_inst
       (.I(inputClock),
        .O(inputClock_IBUF));
  IBUF inputDataGood_IBUF_inst
       (.I(inputDataGood),
        .O(inputDataGood_IBUF));
  IBUF \inputData_IBUF[0]_inst 
       (.I(inputData[0]),
        .O(inputData_IBUF[0]));
  IBUF \inputData_IBUF[1]_inst 
       (.I(inputData[1]),
        .O(inputData_IBUF[1]));
  IBUF \inputData_IBUF[2]_inst 
       (.I(inputData[2]),
        .O(inputData_IBUF[2]));
  IBUF \inputData_IBUF[3]_inst 
       (.I(inputData[3]),
        .O(inputData_IBUF[3]));
  IBUF \inputData_IBUF[4]_inst 
       (.I(inputData[4]),
        .O(inputData_IBUF[4]));
  IBUF \inputData_IBUF[5]_inst 
       (.I(inputData[5]),
        .O(inputData_IBUF[5]));
  IBUF \inputData_IBUF[6]_inst 
       (.I(inputData[6]),
        .O(inputData_IBUF[6]));
  IBUF \inputData_IBUF[7]_inst 
       (.I(inputData[7]),
        .O(inputData_IBUF[7]));
  BUFG outputClock_IBUF_BUFG_inst
       (.I(outputClock_IBUF),
        .O(outputClock_IBUF_BUFG));
  IBUF outputClock_IBUF_inst
       (.I(outputClock),
        .O(outputClock_IBUF));
  IBUF readData_IBUF_inst
       (.I(readData),
        .O(readData_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    recvData_reg
       (.CLR(1'b0),
        .D(recvData_reg_i_1_n_0),
        .G(recvData_reg_i_2_n_0),
        .GE(1'b1),
        .Q(recvData));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    recvData_reg_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(recvData_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h43)) 
    recvData_reg_i_2
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(recvData_reg_i_2_n_0));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    sendData_reg
       (.CLR(1'b0),
        .D(sendData_reg_i_1_n_0),
        .G(WR_reg_i_2_n_0),
        .GE(1'b1),
        .Q(sendData));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sendData_reg_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(sendData_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(CLKOUT_IBUF_BUFG),
        .CE(1'b1),
        .D(dataTxFifo_n_1),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(CLKOUT_IBUF_BUFG),
        .CE(1'b1),
        .D(dataRxFifo_n_0),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(CLKOUT_IBUF_BUFG),
        .CE(1'b1),
        .D(dataTxFifo_n_0),
        .Q(state[2]),
        .R(1'b0));
endmodule

module async_fifo
   (D,
    \state_reg[0] ,
    outputData,
    read_clk,
    write_clk,
    reset_IBUF,
    Q,
    RXF_IBUF,
    write_en,
    readData_IBUF,
    memory_reg_0);
  output [0:0]D;
  output \state_reg[0] ;
  output [7:0]outputData;
  input read_clk;
  input write_clk;
  input reset_IBUF;
  input [2:0]Q;
  input RXF_IBUF;
  input write_en;
  input readData_IBUF;
  input [7:0]memory_reg_0;

  wire [0:0]D;
  wire [2:0]Q;
  wire RXF_IBUF;
  wire empty_reg_n_0;
  wire [7:0]memory_reg_0;
  wire memory_reg_i_2__0_n_0;
  wire [7:0]outputData;
  wire [6:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire pRead_counter_n_10;
  wire pRead_counter_n_7;
  wire pRead_counter_n_9;
  wire pWrite_counter_n_7;
  wire presetFull;
  wire readData_IBUF;
  wire read_clk;
  wire reset_IBUF;
  wire rxFIFOFull;
  wire \state_reg[0] ;
  wire status;
  wire write_clk;
  wire write_en;
  wire [15:0]NLW_memory_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_memory_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPBDOP_UNCONNECTED;

  FDPE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(read_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(pRead_counter_n_10),
        .Q(empty_reg_n_0));
  FDPE #(
    .INIT(1'b1)) 
    full_reg
       (.C(write_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(presetFull),
        .Q(rxFIFOFull));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    memory_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,pNextToWrite,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,pNextToRead,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(write_clk),
        .CLKBWRCLK(read_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,memory_reg_0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_memory_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_memory_reg_DOBDO_UNCONNECTED[15:8],outputData}),
        .DOPADOP(NLW_memory_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_memory_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(write_en),
        .ENBWREN(pRead_counter_n_7),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({memory_reg_i_2__0_n_0,memory_reg_i_2__0_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    memory_reg_i_2__0
       (.I0(rxFIFOFull),
        .O(memory_reg_i_2__0_n_0));
  graycounter_2 pRead_counter
       (.E(pRead_counter_n_7),
        .empty_reg(pRead_counter_n_10),
        .empty_reg_0(empty_reg_n_0),
        .full_reg(pRead_counter_n_9),
        .pNextToRead(pNextToRead),
        .pNextToWrite(pNextToWrite),
        .presetFull(presetFull),
        .readData_IBUF(readData_IBUF),
        .read_clk(read_clk),
        .reset_IBUF(reset_IBUF),
        .status(status));
  graycounter_3 pWrite_counter
       (.full_reg(pWrite_counter_n_7),
        .pNextToRead(pNextToRead[6:5]),
        .pNextToWrite(pNextToWrite),
        .reset_IBUF(reset_IBUF),
        .rxFIFOFull(rxFIFOFull),
        .write_clk(write_clk),
        .write_en(write_en));
  LUT6 #(
    .INIT(64'h1212121212121232)) 
    \state[1]_i_1 
       (.I0(Q[1]),
        .I1(reset_IBUF),
        .I2(Q[0]),
        .I3(rxFIFOFull),
        .I4(RXF_IBUF),
        .I5(Q[2]),
        .O(D));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_3 
       (.I0(RXF_IBUF),
        .I1(rxFIFOFull),
        .O(\state_reg[0] ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pWrite_counter_n_7),
        .D(pRead_counter_n_9),
        .G(pRead_counter_n_9),
        .GE(1'b1),
        .Q(status));
endmodule

(* ORIG_REF_NAME = "async_fifo" *) 
module async_fifo_0
   (D,
    outputData,
    write_clk,
    inputClock,
    reset_IBUF,
    Q,
    full_reg_0,
    TXE_IBUF,
    write_en,
    sendData,
    inputData);
  output [1:0]D;
  output [7:0]outputData;
  input write_clk;
  input inputClock;
  input reset_IBUF;
  input [2:0]Q;
  input full_reg_0;
  input TXE_IBUF;
  input write_en;
  input sendData;
  input [7:0]inputData;

  wire [1:0]D;
  wire [2:0]Q;
  wire TXE_IBUF;
  wire full_reg_0;
  wire full_reg_n_0;
  wire inputClock;
  wire [7:0]inputData;
  wire memory_reg_i_2_n_0;
  wire [7:0]outputData;
  wire [6:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire pRead_counter_n_10;
  wire pRead_counter_n_7;
  wire pRead_counter_n_9;
  wire pWrite_counter_n_7;
  wire presetFull;
  wire reset_IBUF;
  wire sendData;
  wire \state[2]_i_2_n_0 ;
  wire status;
  wire txFIFOEmpty;
  wire write_clk;
  wire write_en;
  wire [15:0]NLW_memory_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_memory_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPBDOP_UNCONNECTED;

  FDPE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(write_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(pRead_counter_n_10),
        .Q(txFIFOEmpty));
  FDPE #(
    .INIT(1'b1)) 
    full_reg
       (.C(inputClock),
        .CE(1'b1),
        .D(1'b0),
        .PRE(presetFull),
        .Q(full_reg_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    memory_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,pNextToWrite,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,pNextToRead,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(inputClock),
        .CLKBWRCLK(write_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inputData}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_memory_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_memory_reg_DOBDO_UNCONNECTED[15:8],outputData}),
        .DOPADOP(NLW_memory_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_memory_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(write_en),
        .ENBWREN(pRead_counter_n_7),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({memory_reg_i_2_n_0,memory_reg_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    memory_reg_i_2
       (.I0(full_reg_n_0),
        .O(memory_reg_i_2_n_0));
  graycounter pRead_counter
       (.E(pRead_counter_n_7),
        .empty_reg(pRead_counter_n_10),
        .full_reg(pRead_counter_n_9),
        .pNextToRead(pNextToRead),
        .pNextToWrite(pNextToWrite),
        .presetFull(presetFull),
        .reset_IBUF(reset_IBUF),
        .sendData(sendData),
        .status(status),
        .txFIFOEmpty(txFIFOEmpty),
        .write_clk(write_clk));
  graycounter_1 pWrite_counter
       (.full_reg(pWrite_counter_n_7),
        .full_reg_0(full_reg_n_0),
        .inputClock(inputClock),
        .pNextToRead(pNextToRead[6:5]),
        .pNextToWrite(pNextToWrite),
        .reset_IBUF(reset_IBUF),
        .write_en(write_en));
  LUT6 #(
    .INIT(64'hFC50FC00FC77FC54)) 
    \state[0]_i_1 
       (.I0(Q[2]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(full_reg_0),
        .I3(reset_IBUF),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h02022020DE12ED20)) 
    \state[2]_i_1 
       (.I0(Q[2]),
        .I1(reset_IBUF),
        .I2(Q[1]),
        .I3(\state[2]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(full_reg_0),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_2 
       (.I0(TXE_IBUF),
        .I1(txFIFOEmpty),
        .O(\state[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pWrite_counter_n_7),
        .D(pRead_counter_n_9),
        .G(pRead_counter_n_9),
        .GE(1'b1),
        .Q(status));
endmodule

module graycounter
   (pNextToRead,
    E,
    presetFull,
    full_reg,
    empty_reg,
    reset_IBUF,
    write_clk,
    status,
    pNextToWrite,
    sendData,
    txFIFOEmpty);
  output [6:0]pNextToRead;
  output [0:0]E;
  output presetFull;
  output full_reg;
  output empty_reg;
  input reset_IBUF;
  input write_clk;
  input status;
  input [6:0]pNextToWrite;
  input sendData;
  input txFIFOEmpty;

  wire [0:0]E;
  wire \binary_count[6]_i_2__0_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__0__0;
  wire empty_i_2_n_0;
  wire empty_i_3_n_0;
  wire empty_reg;
  wire full_reg;
  wire \graycount[0]_i_1__2_n_0 ;
  wire \graycount[1]_i_1__0_n_0 ;
  wire \graycount[2]_i_1__0_n_0 ;
  wire \graycount[3]_i_1__0_n_0 ;
  wire \graycount[4]_i_1__0_n_0 ;
  wire \graycount[5]_i_1__0_n_0 ;
  wire [6:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire [6:0]p_0_in__0;
  wire presetFull;
  wire reset_IBUF;
  wire sendData;
  wire status;
  wire txFIFOEmpty;
  wire write_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__0 
       (.I0(binary_count_reg__0__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__0 
       (.I0(binary_count_reg__0__0[0]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__0__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__0 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__0__0[0]),
        .I2(binary_count_reg__0__0[2]),
        .I3(binary_count_reg__0__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__0 
       (.I0(binary_count_reg__0__0[2]),
        .I1(binary_count_reg__0__0[0]),
        .I2(pNextToRead[0]),
        .I3(binary_count_reg__0__0[3]),
        .I4(binary_count_reg__0__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1__0 
       (.I0(binary_count_reg__0__0[3]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__0__0[0]),
        .I3(binary_count_reg__0__0[2]),
        .I4(binary_count_reg__0__0[4]),
        .I5(binary_count_reg__0__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1__0 
       (.I0(\binary_count[6]_i_2__0_n_0 ),
        .I1(binary_count_reg__0__0[5]),
        .I2(binary_count_reg__0),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2__0 
       (.I0(binary_count_reg__0__0[4]),
        .I1(binary_count_reg__0__0[2]),
        .I2(binary_count_reg__0__0[0]),
        .I3(pNextToRead[0]),
        .I4(binary_count_reg__0__0[3]),
        .O(\binary_count[6]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \binary_count_reg[0] 
       (.C(write_clk),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(binary_count_reg__0__0[0]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[2] 
       (.C(write_clk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(binary_count_reg__0__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[3] 
       (.C(write_clk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(binary_count_reg__0__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[4] 
       (.C(write_clk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(binary_count_reg__0__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[5] 
       (.C(write_clk),
        .CE(E),
        .D(p_0_in__0[5]),
        .Q(binary_count_reg__0__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[6] 
       (.C(write_clk),
        .CE(E),
        .D(p_0_in__0[6]),
        .Q(binary_count_reg__0),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00008008)) 
    empty_i_1
       (.I0(empty_i_2_n_0),
        .I1(empty_i_3_n_0),
        .I2(pNextToWrite[6]),
        .I3(pNextToRead[6]),
        .I4(status),
        .O(empty_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_i_2
       (.I0(pNextToRead[0]),
        .I1(pNextToWrite[0]),
        .I2(pNextToWrite[2]),
        .I3(pNextToRead[2]),
        .I4(pNextToWrite[1]),
        .I5(pNextToRead[1]),
        .O(empty_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_i_3
       (.I0(pNextToRead[3]),
        .I1(pNextToWrite[3]),
        .I2(pNextToWrite[5]),
        .I3(pNextToRead[5]),
        .I4(pNextToWrite[4]),
        .I5(pNextToRead[4]),
        .O(empty_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h80000080)) 
    full_i_1
       (.I0(status),
        .I1(empty_i_2_n_0),
        .I2(empty_i_3_n_0),
        .I3(pNextToWrite[6]),
        .I4(pNextToRead[6]),
        .O(presetFull));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__2 
       (.I0(binary_count_reg__0__0[0]),
        .I1(pNextToRead[0]),
        .O(\graycount[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__0 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__0__0[2]),
        .O(\graycount[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__0 
       (.I0(binary_count_reg__0__0[2]),
        .I1(binary_count_reg__0__0[3]),
        .O(\graycount[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__0 
       (.I0(binary_count_reg__0__0[3]),
        .I1(binary_count_reg__0__0[4]),
        .O(\graycount[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1__0 
       (.I0(binary_count_reg__0__0[4]),
        .I1(binary_count_reg__0__0[5]),
        .O(\graycount[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1__0 
       (.I0(binary_count_reg__0__0[5]),
        .I1(binary_count_reg__0),
        .O(\graycount[5]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[0] 
       (.C(write_clk),
        .CE(E),
        .D(\graycount[0]_i_1__2_n_0 ),
        .Q(pNextToRead[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[1] 
       (.C(write_clk),
        .CE(E),
        .D(\graycount[1]_i_1__0_n_0 ),
        .Q(pNextToRead[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[2] 
       (.C(write_clk),
        .CE(E),
        .D(\graycount[2]_i_1__0_n_0 ),
        .Q(pNextToRead[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[3] 
       (.C(write_clk),
        .CE(E),
        .D(\graycount[3]_i_1__0_n_0 ),
        .Q(pNextToRead[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[4] 
       (.C(write_clk),
        .CE(E),
        .D(\graycount[4]_i_1__0_n_0 ),
        .Q(pNextToRead[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[5] 
       (.C(write_clk),
        .CE(E),
        .D(\graycount[5]_i_1__0_n_0 ),
        .Q(pNextToRead[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[6] 
       (.C(write_clk),
        .CE(E),
        .D(binary_count_reg__0),
        .Q(pNextToRead[6]),
        .R(reset_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_i_1__0
       (.I0(sendData),
        .I1(txFIFOEmpty),
        .O(E));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_1__0
       (.I0(pNextToRead[5]),
        .I1(pNextToWrite[6]),
        .I2(pNextToRead[6]),
        .I3(pNextToWrite[5]),
        .O(full_reg));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_1
   (pNextToWrite,
    full_reg,
    reset_IBUF,
    inputClock,
    pNextToRead,
    write_en,
    full_reg_0);
  output [6:0]pNextToWrite;
  output full_reg;
  input reset_IBUF;
  input inputClock;
  input [1:0]pNextToRead;
  input write_en;
  input full_reg_0;

  wire \binary_count[6]_i_2_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__0__0;
  wire full_reg;
  wire full_reg_0;
  wire \graycount[0]_i_1__1_n_0 ;
  wire \graycount[1]_i_1_n_0 ;
  wire \graycount[2]_i_1_n_0 ;
  wire \graycount[3]_i_1_n_0 ;
  wire \graycount[4]_i_1_n_0 ;
  wire \graycount[5]_i_1_n_0 ;
  wire \graycount[6]_i_1_n_0 ;
  wire inputClock;
  wire [1:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire [6:0]p_0_in;
  wire reset_IBUF;
  wire write_en;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1 
       (.I0(binary_count_reg__0__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1 
       (.I0(binary_count_reg__0__0[0]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__0__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__0__0[0]),
        .I2(binary_count_reg__0__0[2]),
        .I3(binary_count_reg__0__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1 
       (.I0(binary_count_reg__0__0[2]),
        .I1(binary_count_reg__0__0[0]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__0__0[3]),
        .I4(binary_count_reg__0__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1 
       (.I0(binary_count_reg__0__0[3]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__0__0[0]),
        .I3(binary_count_reg__0__0[2]),
        .I4(binary_count_reg__0__0[4]),
        .I5(binary_count_reg__0__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1 
       (.I0(\binary_count[6]_i_2_n_0 ),
        .I1(binary_count_reg__0__0[5]),
        .I2(binary_count_reg__0),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2 
       (.I0(binary_count_reg__0__0[4]),
        .I1(binary_count_reg__0__0[2]),
        .I2(binary_count_reg__0__0[0]),
        .I3(pNextToWrite[0]),
        .I4(binary_count_reg__0__0[3]),
        .O(\binary_count[6]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \binary_count_reg[0] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(binary_count_reg__0__0[0]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[2] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(binary_count_reg__0__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[3] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(binary_count_reg__0__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[4] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(binary_count_reg__0__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[5] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(binary_count_reg__0__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[6] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(binary_count_reg__0),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__1 
       (.I0(binary_count_reg__0__0[0]),
        .I1(pNextToWrite[0]),
        .O(\graycount[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__0__0[2]),
        .O(\graycount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1 
       (.I0(binary_count_reg__0__0[2]),
        .I1(binary_count_reg__0__0[3]),
        .O(\graycount[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1 
       (.I0(binary_count_reg__0__0[3]),
        .I1(binary_count_reg__0__0[4]),
        .O(\graycount[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1 
       (.I0(binary_count_reg__0__0[4]),
        .I1(binary_count_reg__0__0[5]),
        .O(\graycount[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1 
       (.I0(binary_count_reg__0__0[5]),
        .I1(binary_count_reg__0),
        .O(\graycount[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[6]_i_1 
       (.I0(write_en),
        .I1(full_reg_0),
        .O(\graycount[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[0] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[0]_i_1__1_n_0 ),
        .Q(pNextToWrite[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[1] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[1]_i_1_n_0 ),
        .Q(pNextToWrite[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[2] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[2]_i_1_n_0 ),
        .Q(pNextToWrite[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[3] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[3]_i_1_n_0 ),
        .Q(pNextToWrite[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[4] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[4]_i_1_n_0 ),
        .Q(pNextToWrite[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[5] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[5]_i_1_n_0 ),
        .Q(pNextToWrite[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[6] 
       (.C(inputClock),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToWrite[6]),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'hFFFF6006)) 
    status_reg_i_2__0
       (.I0(pNextToWrite[5]),
        .I1(pNextToRead[1]),
        .I2(pNextToWrite[6]),
        .I3(pNextToRead[0]),
        .I4(reset_IBUF),
        .O(full_reg));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_2
   (pNextToRead,
    E,
    presetFull,
    full_reg,
    empty_reg,
    reset_IBUF,
    read_clk,
    status,
    pNextToWrite,
    readData_IBUF,
    empty_reg_0);
  output [6:0]pNextToRead;
  output [0:0]E;
  output presetFull;
  output full_reg;
  output empty_reg;
  input reset_IBUF;
  input read_clk;
  input status;
  input [6:0]pNextToWrite;
  input readData_IBUF;
  input empty_reg_0;

  wire [0:0]E;
  wire \binary_count[6]_i_2__2_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__0__0;
  wire empty_i_2__0_n_0;
  wire empty_i_3__0_n_0;
  wire empty_reg;
  wire empty_reg_0;
  wire full_reg;
  wire \graycount[0]_i_1__0_n_0 ;
  wire \graycount[1]_i_1__2_n_0 ;
  wire \graycount[2]_i_1__2_n_0 ;
  wire \graycount[3]_i_1__2_n_0 ;
  wire \graycount[4]_i_1__2_n_0 ;
  wire \graycount[5]_i_1__2_n_0 ;
  wire [6:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire [6:0]p_0_in__2;
  wire presetFull;
  wire readData_IBUF;
  wire read_clk;
  wire reset_IBUF;
  wire status;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__2 
       (.I0(binary_count_reg__0__0[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__2 
       (.I0(binary_count_reg__0__0[0]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__0__0[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__2 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__0__0[0]),
        .I2(binary_count_reg__0__0[2]),
        .I3(binary_count_reg__0__0[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__2 
       (.I0(binary_count_reg__0__0[2]),
        .I1(binary_count_reg__0__0[0]),
        .I2(pNextToRead[0]),
        .I3(binary_count_reg__0__0[3]),
        .I4(binary_count_reg__0__0[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1__2 
       (.I0(binary_count_reg__0__0[3]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__0__0[0]),
        .I3(binary_count_reg__0__0[2]),
        .I4(binary_count_reg__0__0[4]),
        .I5(binary_count_reg__0__0[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1__2 
       (.I0(\binary_count[6]_i_2__2_n_0 ),
        .I1(binary_count_reg__0__0[5]),
        .I2(binary_count_reg__0),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2__2 
       (.I0(binary_count_reg__0__0[4]),
        .I1(binary_count_reg__0__0[2]),
        .I2(binary_count_reg__0__0[0]),
        .I3(pNextToRead[0]),
        .I4(binary_count_reg__0__0[3]),
        .O(\binary_count[6]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \binary_count_reg[0] 
       (.C(read_clk),
        .CE(E),
        .D(p_0_in__2[0]),
        .Q(binary_count_reg__0__0[0]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[2] 
       (.C(read_clk),
        .CE(E),
        .D(p_0_in__2[2]),
        .Q(binary_count_reg__0__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[3] 
       (.C(read_clk),
        .CE(E),
        .D(p_0_in__2[3]),
        .Q(binary_count_reg__0__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[4] 
       (.C(read_clk),
        .CE(E),
        .D(p_0_in__2[4]),
        .Q(binary_count_reg__0__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[5] 
       (.C(read_clk),
        .CE(E),
        .D(p_0_in__2[5]),
        .Q(binary_count_reg__0__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[6] 
       (.C(read_clk),
        .CE(E),
        .D(p_0_in__2[6]),
        .Q(binary_count_reg__0),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008008)) 
    empty_i_1__0
       (.I0(empty_i_2__0_n_0),
        .I1(empty_i_3__0_n_0),
        .I2(pNextToWrite[6]),
        .I3(pNextToRead[6]),
        .I4(status),
        .O(empty_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_i_2__0
       (.I0(pNextToRead[0]),
        .I1(pNextToWrite[0]),
        .I2(pNextToWrite[2]),
        .I3(pNextToRead[2]),
        .I4(pNextToWrite[1]),
        .I5(pNextToRead[1]),
        .O(empty_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_i_3__0
       (.I0(pNextToRead[3]),
        .I1(pNextToWrite[3]),
        .I2(pNextToWrite[5]),
        .I3(pNextToRead[5]),
        .I4(pNextToWrite[4]),
        .I5(pNextToRead[4]),
        .O(empty_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000080)) 
    full_i_1__0
       (.I0(status),
        .I1(empty_i_2__0_n_0),
        .I2(empty_i_3__0_n_0),
        .I3(pNextToWrite[6]),
        .I4(pNextToRead[6]),
        .O(presetFull));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__0 
       (.I0(binary_count_reg__0__0[0]),
        .I1(pNextToRead[0]),
        .O(\graycount[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__2 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__0__0[2]),
        .O(\graycount[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__2 
       (.I0(binary_count_reg__0__0[2]),
        .I1(binary_count_reg__0__0[3]),
        .O(\graycount[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__2 
       (.I0(binary_count_reg__0__0[3]),
        .I1(binary_count_reg__0__0[4]),
        .O(\graycount[3]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1__2 
       (.I0(binary_count_reg__0__0[4]),
        .I1(binary_count_reg__0__0[5]),
        .O(\graycount[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1__2 
       (.I0(binary_count_reg__0__0[5]),
        .I1(binary_count_reg__0),
        .O(\graycount[5]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[0] 
       (.C(read_clk),
        .CE(E),
        .D(\graycount[0]_i_1__0_n_0 ),
        .Q(pNextToRead[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[1] 
       (.C(read_clk),
        .CE(E),
        .D(\graycount[1]_i_1__2_n_0 ),
        .Q(pNextToRead[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[2] 
       (.C(read_clk),
        .CE(E),
        .D(\graycount[2]_i_1__2_n_0 ),
        .Q(pNextToRead[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[3] 
       (.C(read_clk),
        .CE(E),
        .D(\graycount[3]_i_1__2_n_0 ),
        .Q(pNextToRead[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[4] 
       (.C(read_clk),
        .CE(E),
        .D(\graycount[4]_i_1__2_n_0 ),
        .Q(pNextToRead[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[5] 
       (.C(read_clk),
        .CE(E),
        .D(\graycount[5]_i_1__2_n_0 ),
        .Q(pNextToRead[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[6] 
       (.C(read_clk),
        .CE(E),
        .D(binary_count_reg__0),
        .Q(pNextToRead[6]),
        .R(reset_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    memory_reg_i_1
       (.I0(readData_IBUF),
        .I1(empty_reg_0),
        .O(E));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_1
       (.I0(pNextToRead[5]),
        .I1(pNextToWrite[6]),
        .I2(pNextToRead[6]),
        .I3(pNextToWrite[5]),
        .O(full_reg));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_3
   (pNextToWrite,
    full_reg,
    reset_IBUF,
    write_clk,
    pNextToRead,
    write_en,
    rxFIFOFull);
  output [6:0]pNextToWrite;
  output full_reg;
  input reset_IBUF;
  input write_clk;
  input [1:0]pNextToRead;
  input write_en;
  input rxFIFOFull;

  wire \binary_count[6]_i_2__1_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__0__0;
  wire full_reg;
  wire \graycount[0]_i_1_n_0 ;
  wire \graycount[1]_i_1__1_n_0 ;
  wire \graycount[2]_i_1__1_n_0 ;
  wire \graycount[3]_i_1__1_n_0 ;
  wire \graycount[4]_i_1__1_n_0 ;
  wire \graycount[5]_i_1__1_n_0 ;
  wire \graycount[6]_i_1__0_n_0 ;
  wire [1:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire [6:0]p_0_in__1;
  wire reset_IBUF;
  wire rxFIFOFull;
  wire write_clk;
  wire write_en;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__1 
       (.I0(binary_count_reg__0__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__1 
       (.I0(binary_count_reg__0__0[0]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__0__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__0__0[0]),
        .I2(binary_count_reg__0__0[2]),
        .I3(binary_count_reg__0__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__1 
       (.I0(binary_count_reg__0__0[2]),
        .I1(binary_count_reg__0__0[0]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__0__0[3]),
        .I4(binary_count_reg__0__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1__1 
       (.I0(binary_count_reg__0__0[3]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__0__0[0]),
        .I3(binary_count_reg__0__0[2]),
        .I4(binary_count_reg__0__0[4]),
        .I5(binary_count_reg__0__0[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1__1 
       (.I0(\binary_count[6]_i_2__1_n_0 ),
        .I1(binary_count_reg__0__0[5]),
        .I2(binary_count_reg__0),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2__1 
       (.I0(binary_count_reg__0__0[4]),
        .I1(binary_count_reg__0__0[2]),
        .I2(binary_count_reg__0__0[0]),
        .I3(pNextToWrite[0]),
        .I4(binary_count_reg__0__0[3]),
        .O(\binary_count[6]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \binary_count_reg[0] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_in__1[0]),
        .Q(binary_count_reg__0__0[0]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[2] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_in__1[2]),
        .Q(binary_count_reg__0__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[3] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_in__1[3]),
        .Q(binary_count_reg__0__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[4] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_in__1[4]),
        .Q(binary_count_reg__0__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[5] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_in__1[5]),
        .Q(binary_count_reg__0__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[6] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_in__1[6]),
        .Q(binary_count_reg__0),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1 
       (.I0(binary_count_reg__0__0[0]),
        .I1(pNextToWrite[0]),
        .O(\graycount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__0__0[2]),
        .O(\graycount[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__1 
       (.I0(binary_count_reg__0__0[2]),
        .I1(binary_count_reg__0__0[3]),
        .O(\graycount[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__1 
       (.I0(binary_count_reg__0__0[3]),
        .I1(binary_count_reg__0__0[4]),
        .O(\graycount[3]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1__1 
       (.I0(binary_count_reg__0__0[4]),
        .I1(binary_count_reg__0__0[5]),
        .O(\graycount[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1__1 
       (.I0(binary_count_reg__0__0[5]),
        .I1(binary_count_reg__0),
        .O(\graycount[5]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[6]_i_1__0 
       (.I0(write_en),
        .I1(rxFIFOFull),
        .O(\graycount[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[0] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(\graycount[0]_i_1_n_0 ),
        .Q(pNextToWrite[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[1] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(\graycount[1]_i_1__1_n_0 ),
        .Q(pNextToWrite[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[2] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(\graycount[2]_i_1__1_n_0 ),
        .Q(pNextToWrite[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[3] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(\graycount[3]_i_1__1_n_0 ),
        .Q(pNextToWrite[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[4] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(\graycount[4]_i_1__1_n_0 ),
        .Q(pNextToWrite[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[5] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(\graycount[5]_i_1__1_n_0 ),
        .Q(pNextToWrite[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[6] 
       (.C(write_clk),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToWrite[6]),
        .R(reset_IBUF));
  LUT5 #(
    .INIT(32'hFFFF6006)) 
    status_reg_i_2
       (.I0(pNextToWrite[5]),
        .I1(pNextToRead[1]),
        .I2(pNextToWrite[6]),
        .I3(pNextToRead[0]),
        .I4(reset_IBUF),
        .O(full_reg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
