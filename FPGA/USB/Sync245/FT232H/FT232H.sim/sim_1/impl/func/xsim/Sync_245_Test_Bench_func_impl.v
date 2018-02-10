// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Feb  9 18:09:17 2018
// Host        : Gogol-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Gogol/Desktop/ClassWork/EE175/FPGA/USB/Sync245/FT232H/FT232H.sim/sim_1/impl/func/xsim/Sync_245_Test_Bench_func_impl.v
// Design      : Scaler_Streamer_Top_Block
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "a204558e" *) (* POWER_OPT_BRAM_CDC = "1" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Scaler_Streamer_Top_Block
   (ftdi_d,
    ftdi_rxf,
    ftdi_txe,
    ftdi_wr,
    ftdi_rd,
    ftdi_oe,
    ftdi_clk,
    sys_clk);
  inout [7:0]ftdi_d;
  input ftdi_rxf;
  input ftdi_txe;
  output ftdi_wr;
  output ftdi_rd;
  output ftdi_oe;
  input ftdi_clk;
  (* IBUF_LOW_PWR *) input sys_clk;

  wire ftdi_clk;
  wire ftdi_clk_IBUF;
  wire ftdi_clk_IBUF_BUFG;
  wire [7:0]ftdi_d;
  wire [7:0]ftdi_d_IBUF;
  wire ftdi_oe;
  wire ftdi_oe_OBUF;
  wire ftdi_rd;
  wire ftdi_rd_OBUF;
  wire ftdi_rxf;
  wire ftdi_rxf_IBUF;
  wire ftdi_txe;
  wire ftdi_txe_IBUF;
  wire ftdi_wr;
  wire ftdi_wr_OBUF;

  Sync_245_Controller controller
       (.DOBDO(ftdi_d_IBUF),
        .ftdi_clk(ftdi_clk_IBUF_BUFG),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .ftdi_oe_OBUF(ftdi_oe_OBUF),
        .ftdi_rd_OBUF(ftdi_rd_OBUF),
        .ftdi_rxf_IBUF(ftdi_rxf_IBUF),
        .ftdi_txe_IBUF(ftdi_txe_IBUF),
        .ftdi_wr_OBUF(ftdi_wr_OBUF));
  BUFG ftdi_clk_IBUF_BUFG_inst
       (.I(ftdi_clk_IBUF),
        .O(ftdi_clk_IBUF_BUFG));
  IBUF ftdi_clk_IBUF_inst
       (.I(ftdi_clk),
        .O(ftdi_clk_IBUF));
  OBUF \ftdi_d_OBUF[0]_inst 
       (.I(ftdi_d_IBUF[0]),
        .O(ftdi_d[0]));
  OBUF \ftdi_d_OBUF[1]_inst 
       (.I(ftdi_d_IBUF[1]),
        .O(ftdi_d[1]));
  OBUF \ftdi_d_OBUF[2]_inst 
       (.I(ftdi_d_IBUF[2]),
        .O(ftdi_d[2]));
  OBUF \ftdi_d_OBUF[3]_inst 
       (.I(ftdi_d_IBUF[3]),
        .O(ftdi_d[3]));
  OBUF \ftdi_d_OBUF[4]_inst 
       (.I(ftdi_d_IBUF[4]),
        .O(ftdi_d[4]));
  OBUF \ftdi_d_OBUF[5]_inst 
       (.I(ftdi_d_IBUF[5]),
        .O(ftdi_d[5]));
  OBUF \ftdi_d_OBUF[6]_inst 
       (.I(ftdi_d_IBUF[6]),
        .O(ftdi_d[6]));
  OBUF \ftdi_d_OBUF[7]_inst 
       (.I(ftdi_d_IBUF[7]),
        .O(ftdi_d[7]));
  OBUF ftdi_oe_OBUF_inst
       (.I(ftdi_oe_OBUF),
        .O(ftdi_oe));
  OBUF ftdi_rd_OBUF_inst
       (.I(ftdi_rd_OBUF),
        .O(ftdi_rd));
  IBUF ftdi_rxf_IBUF_inst
       (.I(ftdi_rxf),
        .O(ftdi_rxf_IBUF));
  IBUF ftdi_txe_IBUF_inst
       (.I(ftdi_txe),
        .O(ftdi_txe_IBUF));
  OBUF ftdi_wr_OBUF_inst
       (.I(ftdi_wr_OBUF),
        .O(ftdi_wr));
endmodule

module Sync_245_Controller
   (DOBDO,
    ftdi_wr_OBUF,
    ftdi_rd_OBUF,
    ftdi_oe_OBUF,
    ftdi_clk,
    ftdi_clk_IBUF_BUFG,
    ftdi_txe_IBUF,
    ftdi_rxf_IBUF);
  output [7:0]DOBDO;
  output ftdi_wr_OBUF;
  output ftdi_rd_OBUF;
  output ftdi_oe_OBUF;
  input ftdi_clk;
  input ftdi_clk_IBUF_BUFG;
  input ftdi_txe_IBUF;
  input ftdi_rxf_IBUF;

  wire [7:0]DOBDO;
  wire OE_reg_i_1_n_0;
  wire OE_reg_i_2_n_0;
  wire RD_reg_i_1_n_0;
  wire RD_reg_i_2_n_0;
  wire WR_reg_i_1_n_0;
  wire WR_reg_i_2_n_0;
  wire dataRxFifo_n_0;
  wire dataRxFifo_n_1;
  wire dataRxFifo_n_2;
  wire dataTxFifo_n_8;
  wire dataTxFifo_n_9;
  wire ftdi_clk;
  wire ftdi_clk_IBUF_BUFG;
  wire ftdi_oe_OBUF;
  wire ftdi_rd_OBUF;
  wire ftdi_rxf_IBUF;
  wire ftdi_txe_IBUF;
  wire ftdi_wr_OBUF;
  wire recvData;
  wire recvData_reg_i_1_n_0;
  wire recvData_reg_i_2_n_0;
  wire sendData;
  wire sendData_reg_i_1_n_0;
  wire sendData_reg_i_2_n_0;
  wire [3:0]state;
  wire state1__0;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    OE_reg
       (.CLR(1'b0),
        .D(OE_reg_i_1_n_0),
        .G(OE_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ftdi_oe_OBUF));
  LUT4 #(
    .INIT(16'hFFFD)) 
    OE_reg_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .O(OE_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hFE55)) 
    OE_reg_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .O(OE_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    RD_reg
       (.CLR(1'b0),
        .D(RD_reg_i_1_n_0),
        .G(RD_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ftdi_rd_OBUF));
  LUT4 #(
    .INIT(16'hFFFD)) 
    RD_reg_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .O(RD_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hF1E5)) 
    RD_reg_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(RD_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    WR_reg
       (.CLR(1'b0),
        .D(WR_reg_i_1_n_0),
        .G(WR_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ftdi_wr_OBUF));
  LUT4 #(
    .INIT(16'hFFF7)) 
    WR_reg_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .O(WR_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAEB)) 
    WR_reg_i_2
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(WR_reg_i_2_n_0));
  async_fifo dataRxFifo
       (.D({dataRxFifo_n_1,dataRxFifo_n_2}),
        .Q(state),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .ftdi_rxf_IBUF(ftdi_rxf_IBUF),
        .recvData(recvData),
        .state1__0(state1__0),
        .\state_reg[1] (dataRxFifo_n_0));
  async_fifo_0 dataTxFifo
       (.D({dataTxFifo_n_8,dataTxFifo_n_9}),
        .DOBDO(DOBDO),
        .Q(state),
        .ftdi_clk(ftdi_clk),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .ftdi_txe_IBUF(ftdi_txe_IBUF),
        .full_reg(dataRxFifo_n_0),
        .sendData(sendData),
        .state1__0(state1__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    recvData_reg
       (.CLR(1'b0),
        .D(recvData_reg_i_1_n_0),
        .G(recvData_reg_i_2_n_0),
        .GE(1'b1),
        .Q(recvData));
  LUT4 #(
    .INIT(16'h1000)) 
    recvData_reg_i_1
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(recvData_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hFE19)) 
    recvData_reg_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(recvData_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    sendData_reg
       (.CLR(1'b0),
        .D(sendData_reg_i_1_n_0),
        .G(sendData_reg_i_2_n_0),
        .GE(1'b1),
        .Q(sendData));
  LUT3 #(
    .INIT(8'h40)) 
    sendData_reg_i_1
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .O(sendData_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'hEEAB)) 
    sendData_reg_i_2
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(sendData_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataRxFifo_n_2),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataTxFifo_n_9),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataRxFifo_n_1),
        .Q(state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataTxFifo_n_8),
        .Q(state[3]),
        .R(1'b0));
endmodule

module async_fifo
   (\state_reg[1] ,
    D,
    ftdi_clk_IBUF_BUFG,
    ftdi_rxf_IBUF,
    Q,
    recvData,
    state1__0);
  output \state_reg[1] ;
  output [1:0]D;
  input ftdi_clk_IBUF_BUFG;
  input ftdi_rxf_IBUF;
  input [3:0]Q;
  input recvData;
  input state1__0;

  wire [1:0]D;
  wire [3:0]Q;
  wire ftdi_clk_IBUF_BUFG;
  wire ftdi_rxf_IBUF;
  wire pWrite_counter_n_0;
  wire pWrite_counter_n_1;
  wire presetFull;
  wire recvData;
  wire rxFIFOFull;
  wire state13_out;
  wire state1__0;
  wire \state_reg[1] ;
  wire status;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    full_reg
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(presetFull),
        .Q(rxFIFOFull),
        .R(1'b0));
  graycounter_1 pWrite_counter
       (.ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .full_reg(pWrite_counter_n_0),
        .full_reg_0(pWrite_counter_n_1),
        .presetFull(presetFull),
        .recvData(recvData),
        .rxFIFOFull(rxFIFOFull),
        .status(status));
  LUT6 #(
    .INIT(64'h5242120271717170)) 
    \state[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(state13_out),
        .I4(state1__0),
        .I5(Q[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h1F)) 
    \state[1]_i_3 
       (.I0(rxFIFOFull),
        .I1(ftdi_rxf_IBUF),
        .I2(Q[0]),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h4656061660616060)) 
    \state[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(state13_out),
        .I4(state1__0),
        .I5(Q[0]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_2 
       (.I0(ftdi_rxf_IBUF),
        .I1(rxFIFOFull),
        .O(state13_out));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pWrite_counter_n_1),
        .D(pWrite_counter_n_0),
        .G(pWrite_counter_n_0),
        .GE(1'b1),
        .Q(status));
endmodule

(* ORIG_REF_NAME = "async_fifo" *) 
module async_fifo_0
   (DOBDO,
    D,
    state1__0,
    ftdi_clk,
    ftdi_clk_IBUF_BUFG,
    Q,
    ftdi_txe_IBUF,
    sendData,
    full_reg);
  output [7:0]DOBDO;
  output [1:0]D;
  output state1__0;
  input ftdi_clk;
  input ftdi_clk_IBUF_BUFG;
  input [3:0]Q;
  input ftdi_txe_IBUF;
  input sendData;
  input full_reg;

  wire [1:0]D;
  wire [7:0]DOBDO;
  wire [3:0]Q;
  wire ftdi_clk;
  wire ftdi_clk_IBUF_BUFG;
  wire ftdi_txe_IBUF;
  wire full_reg;
  wire [6:0]pNextToRead;
  wire pRead_counter_n_10;
  wire pRead_counter_n_7;
  wire pRead_counter_n_8;
  wire pRead_counter_n_9;
  wire sendData;
  wire state1__0;
  wire \state[1]_i_2_n_0 ;
  wire status;
  wire txFIFOEmpty;
  wire [15:0]NLW_memory_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_memory_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPBDOP_UNCONNECTED;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    empty_reg
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pRead_counter_n_8),
        .Q(txFIFOEmpty),
        .R(1'b0));
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
    .IS_CLKBWRCLK_INVERTED(1'b1),
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,pNextToRead,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(1'b1),
        .CLKBWRCLK(ftdi_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_memory_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_memory_reg_DOBDO_UNCONNECTED[15:8],DOBDO}),
        .DOPADOP(NLW_memory_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_memory_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b0),
        .ENBWREN(pRead_counter_n_7),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  graycounter pRead_counter
       (.\binary_count_reg[0]_0 (pRead_counter_n_7),
        .empty_reg(pRead_counter_n_8),
        .empty_reg_0(pRead_counter_n_9),
        .empty_reg_1(pRead_counter_n_10),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .pNextToRead(pNextToRead),
        .sendData(sendData),
        .status(status),
        .txFIFOEmpty(txFIFOEmpty));
  LUT6 #(
    .INIT(64'h45405F5F45400000)) 
    \state[1]_i_1 
       (.I0(Q[3]),
        .I1(\state[1]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(full_reg),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h1F)) 
    \state[1]_i_2 
       (.I0(txFIFOEmpty),
        .I1(ftdi_txe_IBUF),
        .I2(Q[0]),
        .O(\state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_3 
       (.I0(ftdi_txe_IBUF),
        .I1(txFIFOEmpty),
        .O(state1__0));
  LUT6 #(
    .INIT(64'h00000000A8000000)) 
    \state[3]_i_1 
       (.I0(Q[1]),
        .I1(txFIFOEmpty),
        .I2(ftdi_txe_IBUF),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pRead_counter_n_9),
        .D(pRead_counter_n_10),
        .G(pRead_counter_n_10),
        .GE(1'b1),
        .Q(status));
endmodule

module graycounter
   (pNextToRead,
    \binary_count_reg[0]_0 ,
    empty_reg,
    empty_reg_0,
    empty_reg_1,
    ftdi_clk_IBUF_BUFG,
    status,
    sendData,
    txFIFOEmpty);
  output [6:0]pNextToRead;
  output \binary_count_reg[0]_0 ;
  output empty_reg;
  output empty_reg_0;
  output empty_reg_1;
  input ftdi_clk_IBUF_BUFG;
  input status;
  input sendData;
  input txFIFOEmpty;

  wire [6:0]binary_count0;
  wire \binary_count[6]_i_2_n_0 ;
  wire \binary_count_reg[0]_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire empty_i_2_n_0;
  wire empty_reg;
  wire empty_reg_0;
  wire empty_reg_1;
  wire ftdi_clk_IBUF_BUFG;
  wire [6:0]pNextToRead;
  wire [5:0]p_0_out;
  wire sendData;
  wire status;
  wire txFIFOEmpty;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToRead[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[4]),
        .O(binary_count0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1 
       (.I0(binary_count_reg__1[3]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[0]),
        .I3(binary_count_reg__1[2]),
        .I4(binary_count_reg__1[4]),
        .I5(binary_count_reg__1[5]),
        .O(binary_count0[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1 
       (.I0(\binary_count[6]_i_2_n_0 ),
        .I1(binary_count_reg__1[5]),
        .I2(binary_count_reg__0),
        .O(binary_count0[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[2]),
        .I2(binary_count_reg__1[0]),
        .I3(pNextToRead[0]),
        .I4(binary_count_reg__1[3]),
        .O(\binary_count[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[5] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[6] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0[6]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    empty_i_1
       (.I0(pNextToRead[6]),
        .I1(empty_i_2_n_0),
        .I2(status),
        .O(empty_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    empty_i_2
       (.I0(pNextToRead[0]),
        .I1(pNextToRead[1]),
        .I2(pNextToRead[2]),
        .I3(pNextToRead[3]),
        .I4(pNextToRead[4]),
        .I5(pNextToRead[5]),
        .O(empty_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(p_0_out[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[6]_i_1 
       (.I0(sendData),
        .I1(txFIFOEmpty),
        .O(\binary_count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[0]),
        .Q(pNextToRead[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[1]),
        .Q(pNextToRead[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[2]),
        .Q(pNextToRead[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[3]),
        .Q(pNextToRead[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[4]),
        .Q(pNextToRead[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[5] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[5]),
        .Q(pNextToRead[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[6] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToRead[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    status_reg_i_1
       (.I0(pNextToRead[5]),
        .I1(pNextToRead[6]),
        .O(empty_reg_1));
  LUT2 #(
    .INIT(4'h2)) 
    status_reg_i_2
       (.I0(pNextToRead[6]),
        .I1(pNextToRead[5]),
        .O(empty_reg_0));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_1
   (full_reg,
    full_reg_0,
    presetFull,
    ftdi_clk_IBUF_BUFG,
    recvData,
    rxFIFOFull,
    status);
  output full_reg;
  output full_reg_0;
  output presetFull;
  input ftdi_clk_IBUF_BUFG;
  input recvData;
  input rxFIFOFull;
  input status;

  wire [6:0]binary_count0__0;
  wire \binary_count[6]_i_2__0_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire ftdi_clk_IBUF_BUFG;
  wire full_i_2_n_0;
  wire full_reg;
  wire full_reg_0;
  wire \graycount[6]_i_1__0_n_0 ;
  wire [6:0]pNextToWrite;
  wire [5:0]p_0_out;
  wire presetFull;
  wire recvData;
  wire rxFIFOFull;
  wire status;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__0 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0__0[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__0 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[4]),
        .O(binary_count0__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1__0 
       (.I0(binary_count_reg__1[3]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[0]),
        .I3(binary_count_reg__1[2]),
        .I4(binary_count_reg__1[4]),
        .I5(binary_count_reg__1[5]),
        .O(binary_count0__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1__0 
       (.I0(\binary_count[6]_i_2__0_n_0 ),
        .I1(binary_count_reg__1[5]),
        .I2(binary_count_reg__0),
        .O(binary_count0__0[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2__0 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[2]),
        .I2(binary_count_reg__1[0]),
        .I3(pNextToWrite[0]),
        .I4(binary_count_reg__1[3]),
        .O(\binary_count[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(binary_count0__0[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(binary_count0__0[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(binary_count0__0[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(binary_count0__0[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[5] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(binary_count0__0[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[6] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(binary_count0__0[6]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    full_i_1
       (.I0(status),
        .I1(pNextToWrite[6]),
        .I2(full_i_2_n_0),
        .O(presetFull));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    full_i_2
       (.I0(pNextToWrite[0]),
        .I1(pNextToWrite[1]),
        .I2(pNextToWrite[2]),
        .I3(pNextToWrite[3]),
        .I4(pNextToWrite[4]),
        .I5(pNextToWrite[5]),
        .O(full_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__0 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__0 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__0 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1__0 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1__0 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(p_0_out[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[6]_i_1__0 
       (.I0(recvData),
        .I1(rxFIFOFull),
        .O(\graycount[6]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_out[0]),
        .Q(pNextToWrite[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_out[1]),
        .Q(pNextToWrite[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_out[2]),
        .Q(pNextToWrite[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_out[3]),
        .Q(pNextToWrite[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_out[4]),
        .Q(pNextToWrite[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[5] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(p_0_out[5]),
        .Q(pNextToWrite[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[6] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount[6]_i_1__0_n_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToWrite[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    status_reg_i_1__0
       (.I0(pNextToWrite[6]),
        .I1(pNextToWrite[5]),
        .O(full_reg));
  LUT2 #(
    .INIT(4'h2)) 
    status_reg_i_2__0
       (.I0(pNextToWrite[5]),
        .I1(pNextToWrite[6]),
        .O(full_reg_0));
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
