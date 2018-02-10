// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Feb  9 16:11:37 2018
// Host        : Gogol-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Gogol/Desktop/ClassWork/EE175/FPGA/USB/Sync245/FT232H/FT232H.sim/sim_1/impl/func/xsim/Sync_245_Test_Bench_func_impl.v
// Design      : Scaler_Streamer_Top_Block
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "64052df" *) 
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
  wire [6:0]ftdi_d_IBUF;
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
  wire lopt;
  wire lopt_2;
  wire lopt_4;
  wire lopt_6;
  wire NLW_controller_lopt_1_UNCONNECTED;
  wire NLW_controller_lopt_3_UNCONNECTED;
  wire NLW_controller_lopt_5_UNCONNECTED;
  wire NLW_controller_lopt_7_UNCONNECTED;

  Sync_245_Controller controller
       (.CLK(ftdi_clk_IBUF_BUFG),
        .ftdi_oe_OBUF(ftdi_oe_OBUF),
        .ftdi_rd_OBUF(ftdi_rd_OBUF),
        .ftdi_rxf_IBUF(ftdi_rxf_IBUF),
        .ftdi_txe_IBUF(ftdi_txe_IBUF),
        .ftdi_wr_OBUF(ftdi_wr_OBUF),
        .lopt(lopt),
        .lopt_1(NLW_controller_lopt_1_UNCONNECTED),
        .lopt_2(lopt_2),
        .lopt_3(NLW_controller_lopt_3_UNCONNECTED),
        .lopt_4(lopt_4),
        .lopt_5(NLW_controller_lopt_5_UNCONNECTED),
        .lopt_6(lopt_6),
        .lopt_7(NLW_controller_lopt_7_UNCONNECTED),
        .outputData({ftdi_d_IBUF[6],ftdi_d_IBUF[2:0]}));
  BUFG ftdi_clk_IBUF_BUFG_inst
       (.I(ftdi_clk_IBUF),
        .O(ftdi_clk_IBUF_BUFG));
  IBUF ftdi_clk_IBUF_inst
       (.I(ftdi_clk),
        .O(ftdi_clk_IBUF));
  OBUF \ftdi_d_OBUF[0]_inst 
       (.I(lopt),
        .O(ftdi_d[0]));
  OBUF \ftdi_d_OBUF[1]_inst 
       (.I(lopt_2),
        .O(ftdi_d[1]));
  OBUF \ftdi_d_OBUF[2]_inst 
       (.I(lopt_4),
        .O(ftdi_d[2]));
  OBUF \ftdi_d_OBUF[3]_inst 
       (.I(ftdi_d_IBUF[0]),
        .O(ftdi_d[3]));
  OBUF \ftdi_d_OBUF[4]_inst 
       (.I(ftdi_d_IBUF[1]),
        .O(ftdi_d[4]));
  OBUF \ftdi_d_OBUF[5]_inst 
       (.I(ftdi_d_IBUF[2]),
        .O(ftdi_d[5]));
  OBUF \ftdi_d_OBUF[6]_inst 
       (.I(lopt_6),
        .O(ftdi_d[6]));
  OBUF \ftdi_d_OBUF[7]_inst 
       (.I(ftdi_d_IBUF[6]),
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
   (ftdi_wr_OBUF,
    ftdi_rd_OBUF,
    ftdi_oe_OBUF,
    outputData,
    CLK,
    ftdi_txe_IBUF,
    ftdi_rxf_IBUF,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output ftdi_wr_OBUF;
  output ftdi_rd_OBUF;
  output ftdi_oe_OBUF;
  output [3:0]outputData;
  input CLK;
  input ftdi_txe_IBUF;
  input ftdi_rxf_IBUF;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire CLK;
  wire OE_reg_i_1_n_0;
  wire RD_reg_i_1_n_0;
  wire RD_reg_i_2_n_0;
  wire WR_reg_i_1_n_0;
  wire WR_reg_i_2_n_0;
  wire dataRxFifo_n_0;
  wire dataRxFifo_n_1;
  wire dataTxFifo_n_0;
  wire dataTxFifo_n_1;
  wire ftdi_oe_OBUF;
  wire ftdi_rd_OBUF;
  wire ftdi_rxf_IBUF;
  wire ftdi_txe_IBUF;
  wire ftdi_wr_OBUF;
  wire lopt;
  wire lopt_2;
  wire lopt_4;
  wire lopt_6;
  wire [3:0]outputData;
  wire recvData;
  wire recvData_reg_i_1_n_0;
  wire recvData_reg_i_2_n_0;
  wire sendData;
  wire sendData_reg_i_1_n_0;
  wire [2:0]state;
  wire NLW_dataTxFifo_lopt_1_UNCONNECTED;
  wire NLW_dataTxFifo_lopt_3_UNCONNECTED;
  wire NLW_dataTxFifo_lopt_5_UNCONNECTED;
  wire NLW_dataTxFifo_lopt_7_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    OE_reg
       (.CLR(1'b0),
        .D(OE_reg_i_1_n_0),
        .G(state[1]),
        .GE(1'b1),
        .Q(ftdi_oe_OBUF));
  LUT3 #(
    .INIT(8'hFD)) 
    OE_reg_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(OE_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    RD_reg
       (.CLR(1'b0),
        .D(RD_reg_i_1_n_0),
        .G(RD_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ftdi_rd_OBUF));
  LUT3 #(
    .INIT(8'hFD)) 
    RD_reg_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(RD_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h07)) 
    RD_reg_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
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
  LUT3 #(
    .INIT(8'hBF)) 
    WR_reg_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(WR_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'hA1)) 
    WR_reg_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(WR_reg_i_2_n_0));
  async_fifo dataRxFifo
       (.CLK(CLK),
        .D(dataRxFifo_n_0),
        .Q(state),
        .ftdi_rxf_IBUF(ftdi_rxf_IBUF),
        .recvData(recvData),
        .\state_reg[0] (dataRxFifo_n_1));
  async_fifo_0 dataTxFifo
       (.CLK(CLK),
        .D({dataTxFifo_n_0,dataTxFifo_n_1}),
        .Q(state),
        .ftdi_txe_IBUF(ftdi_txe_IBUF),
        .full_reg(dataRxFifo_n_1),
        .lopt(lopt),
        .lopt_1(NLW_dataTxFifo_lopt_1_UNCONNECTED),
        .lopt_2(lopt_2),
        .lopt_3(NLW_dataTxFifo_lopt_3_UNCONNECTED),
        .lopt_4(lopt_4),
        .lopt_5(NLW_dataTxFifo_lopt_5_UNCONNECTED),
        .lopt_6(lopt_6),
        .lopt_7(NLW_dataTxFifo_lopt_7_UNCONNECTED),
        .outputData(outputData),
        .sendData(sendData));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    recvData_reg
       (.CLR(1'b0),
        .D(recvData_reg_i_1_n_0),
        .G(recvData_reg_i_2_n_0),
        .GE(1'b1),
        .Q(recvData));
  LUT3 #(
    .INIT(8'h40)) 
    recvData_reg_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(recvData_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h43)) 
    recvData_reg_i_2
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(recvData_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    sendData_reg
       (.CLR(1'b0),
        .D(sendData_reg_i_1_n_0),
        .G(WR_reg_i_2_n_0),
        .GE(1'b1),
        .Q(sendData));
  LUT3 #(
    .INIT(8'h08)) 
    sendData_reg_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(sendData_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(dataTxFifo_n_1),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(dataRxFifo_n_0),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(dataTxFifo_n_0),
        .Q(state[2]),
        .R(1'b0));
endmodule

module async_fifo
   (D,
    \state_reg[0] ,
    CLK,
    recvData,
    Q,
    ftdi_rxf_IBUF);
  output [0:0]D;
  output \state_reg[0] ;
  input CLK;
  input recvData;
  input [2:0]Q;
  input ftdi_rxf_IBUF;

  wire CLK;
  wire [0:0]D;
  wire [2:0]Q;
  wire ftdi_rxf_IBUF;
  wire pWrite_counter_n_0;
  wire pWrite_counter_n_1;
  wire presetFull;
  wire recvData;
  wire rxFIFOFull;
  wire \state_reg[0] ;
  wire status;

  FDPE #(
    .INIT(1'b1)) 
    full_reg
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(presetFull),
        .Q(rxFIFOFull));
  graycounter_1 pWrite_counter
       (.CLK(CLK),
        .full_reg(pWrite_counter_n_0),
        .full_reg_0(pWrite_counter_n_1),
        .presetFull(presetFull),
        .recvData(recvData),
        .rxFIFOFull(rxFIFOFull),
        .status(status));
  LUT5 #(
    .INIT(32'h6666666E)) 
    \state[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rxFIFOFull),
        .I3(ftdi_rxf_IBUF),
        .I4(Q[2]),
        .O(D));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_2 
       (.I0(ftdi_rxf_IBUF),
        .I1(rxFIFOFull),
        .O(\state_reg[0] ));
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
   (D,
    outputData,
    CLK,
    sendData,
    Q,
    ftdi_txe_IBUF,
    full_reg,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output [1:0]D;
  output [3:0]outputData;
  input CLK;
  input sendData;
  input [2:0]Q;
  input ftdi_txe_IBUF;
  input full_reg;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire CLK;
  wire [1:0]D;
  wire [2:0]Q;
  wire ftdi_txe_IBUF;
  wire full_reg;
  wire memory_reg_0_63_3_5_n_0;
  wire memory_reg_0_63_3_5_n_1;
  wire memory_reg_0_63_3_5_n_2;
  wire memory_reg_0_63_7_7_n_0;
  wire [3:0]outputData;
  wire \outputData_reg[3]_lopt_replica_1 ;
  wire \outputData_reg[4]_lopt_replica_1 ;
  wire \outputData_reg[5]_lopt_replica_1 ;
  wire \outputData_reg[7]_lopt_replica_1 ;
  wire [5:0]pNextToRead;
  wire pRead_counter_n_6;
  wire pRead_counter_n_7;
  wire pRead_counter_n_8;
  wire pRead_counter_n_9;
  wire sendData;
  wire status;
  wire txFIFOEmpty;
  wire NLW_memory_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_memory_reg_0_63_7_7_SPO_UNCONNECTED;

  assign lopt = \outputData_reg[3]_lopt_replica_1 ;
  assign lopt_2 = \outputData_reg[4]_lopt_replica_1 ;
  assign lopt_4 = \outputData_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \outputData_reg[7]_lopt_replica_1 ;
  FDPE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(pRead_counter_n_7),
        .Q(txFIFOEmpty));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* XILINX_REPORT_XFORM = "RAM64M" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    memory_reg_0_63_3_5
       (.ADDRA(pNextToRead),
        .ADDRB(pNextToRead),
        .ADDRC(pNextToRead),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA(1'b0),
        .DIB(1'b0),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(memory_reg_0_63_3_5_n_0),
        .DOB(memory_reg_0_63_3_5_n_1),
        .DOC(memory_reg_0_63_3_5_n_2),
        .DOD(NLW_memory_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(1'b0),
        .WE(1'b0));
  (* XILINX_REPORT_XFORM = "RAM64X1D" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    memory_reg_0_63_7_7
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .A5(1'b0),
        .D(1'b0),
        .DPO(memory_reg_0_63_7_7_n_0),
        .DPRA0(pNextToRead[0]),
        .DPRA1(pNextToRead[1]),
        .DPRA2(pNextToRead[2]),
        .DPRA3(pNextToRead[3]),
        .DPRA4(pNextToRead[4]),
        .DPRA5(pNextToRead[5]),
        .SPO(NLW_memory_reg_0_63_7_7_SPO_UNCONNECTED),
        .WCLK(1'b0),
        .WE(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outputData_reg[3] 
       (.C(CLK),
        .CE(pRead_counter_n_6),
        .D(memory_reg_0_63_3_5_n_0),
        .Q(outputData[0]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \outputData_reg[3]_lopt_replica 
       (.C(CLK),
        .CE(pRead_counter_n_6),
        .D(memory_reg_0_63_3_5_n_0),
        .Q(\outputData_reg[3]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outputData_reg[4] 
       (.C(CLK),
        .CE(pRead_counter_n_6),
        .D(memory_reg_0_63_3_5_n_1),
        .Q(outputData[1]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \outputData_reg[4]_lopt_replica 
       (.C(CLK),
        .CE(pRead_counter_n_6),
        .D(memory_reg_0_63_3_5_n_1),
        .Q(\outputData_reg[4]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outputData_reg[5] 
       (.C(CLK),
        .CE(pRead_counter_n_6),
        .D(memory_reg_0_63_3_5_n_2),
        .Q(outputData[2]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \outputData_reg[5]_lopt_replica 
       (.C(CLK),
        .CE(pRead_counter_n_6),
        .D(memory_reg_0_63_3_5_n_2),
        .Q(\outputData_reg[5]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outputData_reg[7] 
       (.C(CLK),
        .CE(pRead_counter_n_6),
        .D(memory_reg_0_63_7_7_n_0),
        .Q(outputData[3]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \outputData_reg[7]_lopt_replica 
       (.C(CLK),
        .CE(pRead_counter_n_6),
        .D(memory_reg_0_63_7_7_n_0),
        .Q(\outputData_reg[7]_lopt_replica_1 ),
        .R(1'b0));
  graycounter pRead_counter
       (.CLK(CLK),
        .\binary_count_reg[0]_0 (pRead_counter_n_6),
        .empty_reg(pRead_counter_n_7),
        .empty_reg_0(pRead_counter_n_8),
        .empty_reg_1(pRead_counter_n_9),
        .\outputData_reg[3] (pNextToRead),
        .sendData(sendData),
        .status(status),
        .txFIFOEmpty(txFIFOEmpty));
  LUT6 #(
    .INIT(64'h55000000FDFD5501)) 
    \state[0]_i_1 
       (.I0(Q[2]),
        .I1(ftdi_txe_IBUF),
        .I2(txFIFOEmpty),
        .I3(full_reg),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2222888866668889)) 
    \state[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(ftdi_txe_IBUF),
        .I3(txFIFOEmpty),
        .I4(Q[0]),
        .I5(full_reg),
        .O(D[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pRead_counter_n_8),
        .D(pRead_counter_n_9),
        .G(pRead_counter_n_9),
        .GE(1'b1),
        .Q(status));
endmodule

module graycounter
   (\outputData_reg[3] ,
    \binary_count_reg[0]_0 ,
    empty_reg,
    empty_reg_0,
    empty_reg_1,
    CLK,
    status,
    sendData,
    txFIFOEmpty);
  output [5:0]\outputData_reg[3] ;
  output \binary_count_reg[0]_0 ;
  output empty_reg;
  output empty_reg_0;
  output empty_reg_1;
  input CLK;
  input status;
  input sendData;
  input txFIFOEmpty;

  wire CLK;
  wire \binary_count[6]_i_2_n_0 ;
  wire \binary_count_reg[0]_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire empty_i_2_n_0;
  wire empty_reg;
  wire empty_reg_0;
  wire empty_reg_1;
  wire \graycount[0]_i_1_n_0 ;
  wire \graycount[1]_i_1_n_0 ;
  wire \graycount[2]_i_1_n_0 ;
  wire \graycount[3]_i_1_n_0 ;
  wire \graycount[4]_i_1_n_0 ;
  wire \graycount[5]_i_1_n_0 ;
  wire [5:0]\outputData_reg[3] ;
  wire [6:6]pNextToRead;
  wire [6:0]p_0_in;
  wire sendData;
  wire status;
  wire txFIFOEmpty;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(\outputData_reg[3] [0]),
        .I2(binary_count_reg__1[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1 
       (.I0(\outputData_reg[3] [0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(\outputData_reg[3] [0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1 
       (.I0(binary_count_reg__1[3]),
        .I1(\outputData_reg[3] [0]),
        .I2(binary_count_reg__1[0]),
        .I3(binary_count_reg__1[2]),
        .I4(binary_count_reg__1[4]),
        .I5(binary_count_reg__1[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1 
       (.I0(\binary_count[6]_i_2_n_0 ),
        .I1(binary_count_reg__1[5]),
        .I2(binary_count_reg__0),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[2]),
        .I2(binary_count_reg__1[0]),
        .I3(\outputData_reg[3] [0]),
        .I4(binary_count_reg__1[3]),
        .O(\binary_count[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[0] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[2] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[3] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[4] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_in[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[5] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_in[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[6] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_in[6]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    empty_i_1
       (.I0(pNextToRead),
        .I1(empty_i_2_n_0),
        .I2(status),
        .O(empty_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    empty_i_2
       (.I0(\outputData_reg[3] [0]),
        .I1(\outputData_reg[3] [1]),
        .I2(\outputData_reg[3] [2]),
        .I3(\outputData_reg[3] [3]),
        .I4(\outputData_reg[3] [4]),
        .I5(\outputData_reg[3] [5]),
        .O(empty_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(\outputData_reg[3] [0]),
        .O(\graycount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1 
       (.I0(\outputData_reg[3] [0]),
        .I1(binary_count_reg__1[2]),
        .O(\graycount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(\graycount[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(\graycount[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(\graycount[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(\graycount[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[0] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(\graycount[0]_i_1_n_0 ),
        .Q(\outputData_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[1] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(\graycount[1]_i_1_n_0 ),
        .Q(\outputData_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[2] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(\graycount[2]_i_1_n_0 ),
        .Q(\outputData_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[3] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(\graycount[3]_i_1_n_0 ),
        .Q(\outputData_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[4] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(\graycount[4]_i_1_n_0 ),
        .Q(\outputData_reg[3] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[5] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(\graycount[5]_i_1_n_0 ),
        .Q(\outputData_reg[3] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[6] 
       (.C(CLK),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToRead),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \outputData[7]_i_1 
       (.I0(sendData),
        .I1(txFIFOEmpty),
        .O(\binary_count_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    status_reg_i_1
       (.I0(\outputData_reg[3] [5]),
        .I1(pNextToRead),
        .O(empty_reg_1));
  LUT2 #(
    .INIT(4'h2)) 
    status_reg_i_2
       (.I0(pNextToRead),
        .I1(\outputData_reg[3] [5]),
        .O(empty_reg_0));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_1
   (full_reg,
    full_reg_0,
    presetFull,
    CLK,
    recvData,
    rxFIFOFull,
    status);
  output full_reg;
  output full_reg_0;
  output presetFull;
  input CLK;
  input recvData;
  input rxFIFOFull;
  input status;

  wire CLK;
  wire \binary_count[6]_i_2__0_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire full_i_2_n_0;
  wire full_reg;
  wire full_reg_0;
  wire \graycount[0]_i_1__0_n_0 ;
  wire \graycount[1]_i_1__0_n_0 ;
  wire \graycount[2]_i_1__0_n_0 ;
  wire \graycount[3]_i_1__0_n_0 ;
  wire \graycount[4]_i_1__0_n_0 ;
  wire \graycount[5]_i_1__0_n_0 ;
  wire \graycount[6]_i_1_n_0 ;
  wire [6:0]pNextToWrite;
  wire [6:0]p_0_in__0;
  wire presetFull;
  wire recvData;
  wire rxFIFOFull;
  wire status;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__0 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__0 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1__0 
       (.I0(binary_count_reg__1[3]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[0]),
        .I3(binary_count_reg__1[2]),
        .I4(binary_count_reg__1[4]),
        .I5(binary_count_reg__1[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1__0 
       (.I0(\binary_count[6]_i_2__0_n_0 ),
        .I1(binary_count_reg__1[5]),
        .I2(binary_count_reg__0),
        .O(p_0_in__0[6]));
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
    .INIT(1'b0)) 
    \binary_count_reg[0] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[2] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[3] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[4] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[5] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \binary_count_reg[6] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(p_0_in__0[6]),
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
        .O(\graycount[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__0 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[2]),
        .O(\graycount[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__0 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(\graycount[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__0 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(\graycount[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1__0 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(\graycount[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1__0 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(\graycount[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \graycount[6]_i_1 
       (.I0(recvData),
        .I1(rxFIFOFull),
        .O(\graycount[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[0] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[0]_i_1__0_n_0 ),
        .Q(pNextToWrite[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[1] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[1]_i_1__0_n_0 ),
        .Q(pNextToWrite[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[2] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[2]_i_1__0_n_0 ),
        .Q(pNextToWrite[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[3] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[3]_i_1__0_n_0 ),
        .Q(pNextToWrite[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[4] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[4]_i_1__0_n_0 ),
        .Q(pNextToWrite[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[5] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
        .D(\graycount[5]_i_1__0_n_0 ),
        .Q(pNextToWrite[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \graycount_reg[6] 
       (.C(CLK),
        .CE(\graycount[6]_i_1_n_0 ),
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
