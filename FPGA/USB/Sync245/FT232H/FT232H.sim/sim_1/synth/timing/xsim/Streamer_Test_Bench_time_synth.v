// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Feb 16 12:07:24 2018
// Host        : Gogol-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Gogol/Desktop/ClassWork/EE175/FPGA/USB/Sync245/FT232H/FT232H.sim/sim_1/synth/timing/xsim/Streamer_Test_Bench_time_synth.v
// Design      : Scaler_Streamer_Top_Block
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD22
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD23
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD24
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD25
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD26
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD27
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD28
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

(* PROCESS_HOST_DATA = "3" *) (* READ_HOST_DATA = "2" *) (* RESET = "4" *) 
(* STREAMING = "1" *) (* WAIT_FOR_START = "0" *) 
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
  input sys_clk;

  wire clk_100M;
  wire clk_36M;
  wire controller_n_11;
  wire controller_n_12;
  wire [7:0]dataBus;
  wire dataGood;
  wire ftdi_clk;
  wire ftdi_clk_IBUF;
  wire ftdi_clk_IBUF_BUFG;
  wire [7:0]ftdi_d;
  wire [7:0]ftdi_d_IBUF;
  wire [7:0]ftdi_d_OBUF;
  wire \ftdi_d_TRI[0] ;
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
  wire [1:0]state;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire NLW_clkDiv_locked_UNCONNECTED;

initial begin
 $sdf_annotate("Streamer_Test_Bench_time_synth.sdf",,,,"tool_control");
end
  clk_wiz_0 clkDiv
       (.clk_in1(sys_clk_IBUF),
        .clk_out1(clk_100M),
        .clk_out2(clk_36M),
        .locked(NLW_clkDiv_locked_UNCONNECTED),
        .reset(1'b0));
  Sync_245_Controller controller
       (.DIADI(ftdi_d_IBUF),
        .DOBDO(ftdi_d_OBUF),
        .Q(dataBus),
        .bbstub_clk_out1(clk_100M),
        .bbstub_clk_out2(clk_36M),
        .clk_out1(clk_100M),
        .clk_out2(clk_36M),
        .dataGood(dataGood),
        .ftdi_clk(ftdi_clk_IBUF_BUFG),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .\ftdi_d_TRI[0] (\ftdi_d_TRI[0] ),
        .ftdi_oe_OBUF(ftdi_oe_OBUF),
        .ftdi_rd_OBUF(ftdi_rd_OBUF),
        .ftdi_rxf_IBUF(ftdi_rxf_IBUF),
        .ftdi_txe_IBUF(ftdi_txe_IBUF),
        .ftdi_wr_OBUF(ftdi_wr_OBUF),
        .state(state),
        .\state_reg[0]_0 (controller_n_12),
        .\state_reg[1]_0 (controller_n_11));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    dataGood_reg
       (.CLR(1'b0),
        .D(state[0]),
        .G(state[1]),
        .GE(1'b1),
        .Q(dataGood));
  BUFG ftdi_clk_IBUF_BUFG_inst
       (.I(ftdi_clk_IBUF),
        .O(ftdi_clk_IBUF_BUFG));
  IBUF ftdi_clk_IBUF_inst
       (.I(ftdi_clk),
        .O(ftdi_clk_IBUF));
  IOBUF_UNIQ_BASE_ \ftdi_d_IOBUF[0]_inst 
       (.I(ftdi_d_OBUF[0]),
        .IO(ftdi_d[0]),
        .O(ftdi_d_IBUF[0]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD22 \ftdi_d_IOBUF[1]_inst 
       (.I(ftdi_d_OBUF[1]),
        .IO(ftdi_d[1]),
        .O(ftdi_d_IBUF[1]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD23 \ftdi_d_IOBUF[2]_inst 
       (.I(ftdi_d_OBUF[2]),
        .IO(ftdi_d[2]),
        .O(ftdi_d_IBUF[2]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD24 \ftdi_d_IOBUF[3]_inst 
       (.I(ftdi_d_OBUF[3]),
        .IO(ftdi_d[3]),
        .O(ftdi_d_IBUF[3]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD25 \ftdi_d_IOBUF[4]_inst 
       (.I(ftdi_d_OBUF[4]),
        .IO(ftdi_d[4]),
        .O(ftdi_d_IBUF[4]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD26 \ftdi_d_IOBUF[5]_inst 
       (.I(ftdi_d_OBUF[5]),
        .IO(ftdi_d[5]),
        .O(ftdi_d_IBUF[5]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD27 \ftdi_d_IOBUF[6]_inst 
       (.I(ftdi_d_OBUF[6]),
        .IO(ftdi_d[6]),
        .O(ftdi_d_IBUF[6]),
        .T(\ftdi_d_TRI[0] ));
  IOBUF_HD28 \ftdi_d_IOBUF[7]_inst 
       (.I(ftdi_d_OBUF[7]),
        .IO(ftdi_d[7]),
        .O(ftdi_d_IBUF[7]),
        .T(\ftdi_d_TRI[0] ));
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
  TempImgCreator imgStreamer
       (.Q(dataBus),
        .clk_out2(clk_36M));
  (* FSM_ENCODED_STATES = "RESET:0100,WAIT_FOR_START:0000,READ_HOST_DATA:0010,PROCESS_HOST_DATA:0011,STREAMING:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(sys_clk_IBUF),
        .CE(1'b1),
        .D(controller_n_12),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RESET:0100,WAIT_FOR_START:0000,READ_HOST_DATA:0010,PROCESS_HOST_DATA:0011,STREAMING:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(sys_clk_IBUF),
        .CE(1'b1),
        .D(controller_n_11),
        .Q(state[1]),
        .R(1'b0));
  (* OPT_INSERTED *) 
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
endmodule

module Sync_245_Controller
   (DOBDO,
    ftdi_wr_OBUF,
    ftdi_rd_OBUF,
    ftdi_oe_OBUF,
    \state_reg[1]_0 ,
    \state_reg[0]_0 ,
    \ftdi_d_TRI[0] ,
    bbstub_clk_out2,
    ftdi_clk,
    dataGood,
    Q,
    bbstub_clk_out1,
    DIADI,
    ftdi_clk_IBUF_BUFG,
    clk_out1,
    clk_out2,
    state,
    ftdi_txe_IBUF,
    ftdi_rxf_IBUF);
  output [7:0]DOBDO;
  output ftdi_wr_OBUF;
  output ftdi_rd_OBUF;
  output ftdi_oe_OBUF;
  output \state_reg[1]_0 ;
  output \state_reg[0]_0 ;
  output \ftdi_d_TRI[0] ;
  input bbstub_clk_out2;
  input ftdi_clk;
  input dataGood;
  input [7:0]Q;
  input bbstub_clk_out1;
  input [7:0]DIADI;
  input ftdi_clk_IBUF_BUFG;
  input clk_out1;
  input clk_out2;
  input [1:0]state;
  input ftdi_txe_IBUF;
  input ftdi_rxf_IBUF;

  wire [7:0]DIADI;
  wire [7:0]DOBDO;
  wire OE_reg_i_1_n_0;
  wire OE_reg_i_2_n_0;
  wire [7:0]Q;
  wire RD_reg_i_1_n_0;
  wire RD_reg_i_2_n_0;
  wire WR_reg_i_1_n_0;
  wire WR_reg_i_2_n_0;
  wire bbstub_clk_out1;
  wire bbstub_clk_out2;
  wire clk_out1;
  wire clk_out2;
  wire dataGood;
  wire dataRxFifo_n_2;
  wire dataRxFifo_n_3;
  wire dataTxFifo_n_8;
  wire dataTxFifo_n_9;
  wire ftdi_clk;
  wire ftdi_clk_IBUF_BUFG;
  wire \ftdi_d_TRI[0] ;
  wire ftdi_oe_OBUF;
  wire ftdi_rd_OBUF;
  wire ftdi_rxf_IBUF;
  wire ftdi_txe_IBUF;
  wire ftdi_wr_OBUF;
  wire recvData;
  wire recvData_reg_i_1_n_0;
  wire sendData;
  wire sendData_reg_i_1_n_0;
  wire sendData_reg_i_2_n_0;
  wire [1:0]state;
  wire state13_out;
  wire state1__0;
  wire [3:0]state_0;
  wire \state_reg[0]_0 ;
  wire \state_reg[1]_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    OE_reg
       (.CLR(1'b0),
        .D(OE_reg_i_1_n_0),
        .G(OE_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ftdi_oe_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    OE_reg_i_1
       (.I0(state_0[0]),
        .I1(state_0[2]),
        .I2(state_0[3]),
        .I3(state_0[1]),
        .O(OE_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE55)) 
    OE_reg_i_2
       (.I0(state_0[1]),
        .I1(state_0[0]),
        .I2(state_0[2]),
        .I3(state_0[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    RD_reg_i_1
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(state_0[3]),
        .I3(state_0[2]),
        .O(RD_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE19)) 
    RD_reg_i_2
       (.I0(state_0[0]),
        .I1(state_0[1]),
        .I2(state_0[2]),
        .I3(state_0[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    WR_reg_i_1
       (.I0(state_0[1]),
        .I1(state_0[2]),
        .I2(state_0[0]),
        .I3(state_0[3]),
        .O(WR_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAEB)) 
    WR_reg_i_2
       (.I0(state_0[3]),
        .I1(state_0[1]),
        .I2(state_0[2]),
        .I3(state_0[0]),
        .O(WR_reg_i_2_n_0));
  async_fifo dataRxFifo
       (.D({dataRxFifo_n_2,dataRxFifo_n_3}),
        .DIADI(DIADI),
        .Q(state_0),
        .bbstub_clk_out1(bbstub_clk_out1),
        .clk_out1(clk_out1),
        .ftdi_clk(ftdi_clk),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .ftdi_rxf_IBUF(ftdi_rxf_IBUF),
        .recvData(recvData),
        .state(state),
        .state13_out(state13_out),
        .state1__0(state1__0),
        .\state_reg[0] (\state_reg[0]_0 ),
        .\state_reg[1] (\state_reg[1]_0 ));
  async_fifo_0 dataTxFifo
       (.D({dataTxFifo_n_8,dataTxFifo_n_9}),
        .DOBDO(DOBDO),
        .Q(Q),
        .bbstub_clk_out2(bbstub_clk_out2),
        .clk_out2(clk_out2),
        .dataGood(dataGood),
        .ftdi_clk(ftdi_clk),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .ftdi_txe_IBUF(ftdi_txe_IBUF),
        .sendData(sendData),
        .state13_out(state13_out),
        .state1__0(state1__0),
        .\state_reg[3] (state_0));
  LUT1 #(
    .INIT(2'h1)) 
    \ftdi_d_IOBUF[7]_inst_i_1 
       (.I0(sendData),
        .O(\ftdi_d_TRI[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    recvData_reg
       (.CLR(1'b0),
        .D(recvData_reg_i_1_n_0),
        .G(RD_reg_i_2_n_0),
        .GE(1'b1),
        .Q(recvData));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    recvData_reg_i_1
       (.I0(state_0[2]),
        .I1(state_0[3]),
        .I2(state_0[1]),
        .I3(state_0[0]),
        .O(recvData_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    sendData_reg
       (.CLR(1'b0),
        .D(sendData_reg_i_1_n_0),
        .G(sendData_reg_i_2_n_0),
        .GE(1'b1),
        .Q(sendData));
  LUT4 #(
    .INIT(16'h5400)) 
    sendData_reg_i_1
       (.I0(state_0[3]),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(state_0[2]),
        .O(sendData_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFAEB)) 
    sendData_reg_i_2
       (.I0(state_0[3]),
        .I1(state_0[1]),
        .I2(state_0[2]),
        .I3(state_0[0]),
        .O(sendData_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataRxFifo_n_3),
        .Q(state_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataTxFifo_n_9),
        .Q(state_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataRxFifo_n_2),
        .Q(state_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dataTxFifo_n_8),
        .Q(state_0[3]),
        .R(1'b0));
endmodule

module TempImgCreator
   (Q,
    clk_out2);
  output [7:0]Q;
  input clk_out2;

  wire [7:0]Q;
  wire clk_out2;
  wire [7:0]p_0_in;
  wire \scaler[7]_i_2_n_0 ;
  wire [7:0]scaler_reg__0;

  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(scaler_reg__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(scaler_reg__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(scaler_reg__0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(scaler_reg__0[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(scaler_reg__0[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(scaler_reg__0[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(scaler_reg__0[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataOut_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(scaler_reg__0[7]),
        .Q(Q[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \scaler[0]_i_1 
       (.I0(scaler_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scaler[1]_i_1 
       (.I0(scaler_reg__0[0]),
        .I1(scaler_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \scaler[2]_i_1 
       (.I0(scaler_reg__0[0]),
        .I1(scaler_reg__0[1]),
        .I2(scaler_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \scaler[3]_i_1 
       (.I0(scaler_reg__0[1]),
        .I1(scaler_reg__0[0]),
        .I2(scaler_reg__0[2]),
        .I3(scaler_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \scaler[4]_i_1 
       (.I0(scaler_reg__0[2]),
        .I1(scaler_reg__0[0]),
        .I2(scaler_reg__0[1]),
        .I3(scaler_reg__0[3]),
        .I4(scaler_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \scaler[5]_i_1 
       (.I0(scaler_reg__0[3]),
        .I1(scaler_reg__0[1]),
        .I2(scaler_reg__0[0]),
        .I3(scaler_reg__0[2]),
        .I4(scaler_reg__0[4]),
        .I5(scaler_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scaler[6]_i_1 
       (.I0(\scaler[7]_i_2_n_0 ),
        .I1(scaler_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \scaler[7]_i_1 
       (.I0(\scaler[7]_i_2_n_0 ),
        .I1(scaler_reg__0[6]),
        .I2(scaler_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \scaler[7]_i_2 
       (.I0(scaler_reg__0[5]),
        .I1(scaler_reg__0[3]),
        .I2(scaler_reg__0[1]),
        .I3(scaler_reg__0[0]),
        .I4(scaler_reg__0[2]),
        .I5(scaler_reg__0[4]),
        .O(\scaler[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(scaler_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(scaler_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(scaler_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(scaler_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(scaler_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(scaler_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(scaler_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scaler_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(scaler_reg__0[7]),
        .R(1'b0));
endmodule

module async_fifo
   (\state_reg[1] ,
    \state_reg[0] ,
    D,
    state13_out,
    ftdi_clk,
    bbstub_clk_out1,
    recvData,
    DIADI,
    ftdi_clk_IBUF_BUFG,
    clk_out1,
    state,
    Q,
    state1__0,
    ftdi_rxf_IBUF);
  output \state_reg[1] ;
  output \state_reg[0] ;
  output [1:0]D;
  output state13_out;
  input ftdi_clk;
  input bbstub_clk_out1;
  input recvData;
  input [7:0]DIADI;
  input ftdi_clk_IBUF_BUFG;
  input clk_out1;
  input [1:0]state;
  input [3:0]Q;
  input state1__0;
  input ftdi_rxf_IBUF;

  wire [1:0]D;
  wire [7:0]DIADI;
  wire [3:0]Q;
  wire bbstub_clk_out1;
  wire clk_out1;
  wire ftdi_clk;
  wire ftdi_clk_IBUF_BUFG;
  wire ftdi_rxf_IBUF;
  wire [7:0]hostDataBus;
  wire [6:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire pRead_counter_n_12;
  wire pRead_counter_n_13;
  wire pRead_counter_n_14;
  wire pRead_counter_n_15;
  wire pRead_counter_n_7;
  wire recvData;
  wire [1:0]state;
  wire state13_out;
  wire state1__0;
  wire \state[0]_i_2_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire status;
  wire [15:0]NLW_memory_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_memory_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPBDOP_UNCONNECTED;

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
    .IS_CLKARDCLK_INVERTED(1'b1),
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,pNextToWrite,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,pNextToRead,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ftdi_clk),
        .CLKBWRCLK(bbstub_clk_out1),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_memory_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_memory_reg_DOBDO_UNCONNECTED[15:8],hostDataBus}),
        .DOPADOP(NLW_memory_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_memory_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(recvData),
        .ENBWREN(pRead_counter_n_7),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({pRead_counter_n_14,pRead_counter_n_14}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  graycounter_2 pRead_counter
       (.D(D),
        .Q(Q),
        .WEA(pRead_counter_n_14),
        .\binary_count_reg[0]_0 (pRead_counter_n_7),
        .\binary_count_reg[0]_1 (pRead_counter_n_15),
        .clk_out1(clk_out1),
        .ftdi_rxf_IBUF(ftdi_rxf_IBUF),
        .memory_reg(pRead_counter_n_12),
        .memory_reg_0(pRead_counter_n_13),
        .pNextToRead(pNextToRead),
        .pNextToWrite(pNextToWrite),
        .recvData(recvData),
        .state(state),
        .state13_out(state13_out),
        .state1__0(state1__0),
        .\state_reg[1] (\state_reg[1] ),
        .status(status));
  graycounter_3 pWrite_counter
       (.ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .\graycount_reg[6]_0 (pRead_counter_n_15),
        .pNextToWrite(pNextToWrite));
  LUT5 #(
    .INIT(32'h80FFFF00)) 
    \state[0]_i_1 
       (.I0(hostDataBus[7]),
        .I1(\state[0]_i_2_n_0 ),
        .I2(hostDataBus[5]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \state[0]_i_2 
       (.I0(hostDataBus[1]),
        .I1(hostDataBus[2]),
        .I2(hostDataBus[0]),
        .I3(hostDataBus[4]),
        .I4(hostDataBus[6]),
        .I5(hostDataBus[3]),
        .O(\state[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pRead_counter_n_12),
        .D(pRead_counter_n_13),
        .G(pRead_counter_n_13),
        .GE(1'b1),
        .Q(status));
endmodule

(* ORIG_REF_NAME = "async_fifo" *) 
module async_fifo_0
   (DOBDO,
    D,
    state1__0,
    bbstub_clk_out2,
    ftdi_clk,
    dataGood,
    Q,
    clk_out2,
    ftdi_clk_IBUF_BUFG,
    \state_reg[3] ,
    state13_out,
    ftdi_txe_IBUF,
    sendData);
  output [7:0]DOBDO;
  output [1:0]D;
  output state1__0;
  input bbstub_clk_out2;
  input ftdi_clk;
  input dataGood;
  input [7:0]Q;
  input clk_out2;
  input ftdi_clk_IBUF_BUFG;
  input [3:0]\state_reg[3] ;
  input state13_out;
  input ftdi_txe_IBUF;
  input sendData;

  wire [1:0]D;
  wire [7:0]DOBDO;
  wire [7:0]Q;
  wire bbstub_clk_out2;
  wire clk_out2;
  wire dataGood;
  wire ftdi_clk;
  wire ftdi_clk_IBUF_BUFG;
  wire ftdi_txe_IBUF;
  wire [6:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire pRead_counter_n_11;
  wire pRead_counter_n_12;
  wire pRead_counter_n_13;
  wire pRead_counter_n_14;
  wire pRead_counter_n_7;
  wire sendData;
  wire state13_out;
  wire state1__0;
  wire [3:0]\state_reg[3] ;
  wire status;
  wire [15:0]NLW_memory_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_memory_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPBDOP_UNCONNECTED;

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
    .IS_CLKARDCLK_INVERTED(1'b1),
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,pNextToWrite,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,pNextToRead,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(bbstub_clk_out2),
        .CLKBWRCLK(ftdi_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_memory_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_memory_reg_DOBDO_UNCONNECTED[15:8],DOBDO}),
        .DOPADOP(NLW_memory_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_memory_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(dataGood),
        .ENBWREN(pRead_counter_n_7),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({pRead_counter_n_13,pRead_counter_n_13}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  graycounter pRead_counter
       (.D(D),
        .WEA(pRead_counter_n_13),
        .\binary_count_reg[0]_0 (pRead_counter_n_14),
        .\binary_count_reg[6]_0 (pRead_counter_n_7),
        .dataGood(dataGood),
        .ftdi_clk_IBUF_BUFG(ftdi_clk_IBUF_BUFG),
        .ftdi_txe_IBUF(ftdi_txe_IBUF),
        .memory_reg(pRead_counter_n_11),
        .memory_reg_0(pRead_counter_n_12),
        .pNextToRead(pNextToRead),
        .pNextToWrite(pNextToWrite),
        .sendData(sendData),
        .state13_out(state13_out),
        .state1__0(state1__0),
        .\state_reg[3] (\state_reg[3] ),
        .status(status));
  graycounter_1 pWrite_counter
       (.clk_out2(clk_out2),
        .\graycount_reg[6]_0 (pRead_counter_n_14),
        .pNextToWrite(pNextToWrite));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    status_reg
       (.CLR(pRead_counter_n_11),
        .D(pRead_counter_n_12),
        .G(pRead_counter_n_12),
        .GE(1'b1),
        .Q(status));
endmodule

module clk_wiz_0
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clk_out2;
  wire clk_out2_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_clk_wiz_0),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(9.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(9.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(25),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_clk_wiz_0),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module graycounter
   (pNextToRead,
    \binary_count_reg[6]_0 ,
    D,
    state1__0,
    memory_reg,
    memory_reg_0,
    WEA,
    \binary_count_reg[0]_0 ,
    ftdi_clk_IBUF_BUFG,
    \state_reg[3] ,
    state13_out,
    pNextToWrite,
    status,
    dataGood,
    ftdi_txe_IBUF,
    sendData);
  output [6:0]pNextToRead;
  output \binary_count_reg[6]_0 ;
  output [1:0]D;
  output state1__0;
  output memory_reg;
  output memory_reg_0;
  output [0:0]WEA;
  output \binary_count_reg[0]_0 ;
  input ftdi_clk_IBUF_BUFG;
  input [3:0]\state_reg[3] ;
  input state13_out;
  input [6:0]pNextToWrite;
  input status;
  input dataGood;
  input ftdi_txe_IBUF;
  input sendData;

  wire [1:0]D;
  wire [0:0]WEA;
  wire [6:0]binary_count0__0;
  wire \binary_count[6]_i_2__0_n_0 ;
  wire \binary_count_reg[0]_0 ;
  wire \binary_count_reg[6]_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire dataGood;
  wire ftdi_clk_IBUF_BUFG;
  wire ftdi_txe_IBUF;
  wire \graycount[6]_i_2_n_0 ;
  wire \graycount[6]_i_3_n_0 ;
  wire memory_reg;
  wire memory_reg_0;
  wire [6:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire [5:0]p_0_out;
  wire sendData;
  wire state13_out;
  wire state1__0;
  wire [3:0]\state_reg[3] ;
  wire status;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__0 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__0 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToRead[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[4]),
        .O(binary_count0__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1__0 
       (.I0(binary_count_reg__1[3]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[0]),
        .I3(binary_count_reg__1[2]),
        .I4(binary_count_reg__1[4]),
        .I5(binary_count_reg__1[5]),
        .O(binary_count0__0[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1__0 
       (.I0(\binary_count[6]_i_2__0_n_0 ),
        .I1(binary_count_reg__1[5]),
        .I2(binary_count_reg__0),
        .O(binary_count0__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2__0 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[2]),
        .I2(binary_count_reg__1[0]),
        .I3(pNextToRead[0]),
        .I4(binary_count_reg__1[3]),
        .O(\binary_count[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(binary_count0__0[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(binary_count0__0[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(binary_count0__0[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(binary_count0__0[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[5] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(binary_count0__0[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[6] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(binary_count0__0[6]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .O(p_0_out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__0 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__0 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__0 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(p_0_out[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1__0 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(p_0_out[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1__0 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'h6FFFFFFF00000000)) 
    \graycount[6]_i_1__0 
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[6]),
        .I2(\graycount[6]_i_2_n_0 ),
        .I3(\graycount[6]_i_3_n_0 ),
        .I4(status),
        .I5(dataGood),
        .O(\binary_count_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFF6FFF00000000)) 
    \graycount[6]_i_1__2 
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[6]),
        .I2(\graycount[6]_i_2_n_0 ),
        .I3(\graycount[6]_i_3_n_0 ),
        .I4(status),
        .I5(sendData),
        .O(\binary_count_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \graycount[6]_i_2 
       (.I0(pNextToRead[3]),
        .I1(pNextToWrite[3]),
        .I2(pNextToWrite[5]),
        .I3(pNextToRead[5]),
        .I4(pNextToWrite[4]),
        .I5(pNextToRead[4]),
        .O(\graycount[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \graycount[6]_i_3 
       (.I0(pNextToRead[0]),
        .I1(pNextToWrite[0]),
        .I2(pNextToWrite[2]),
        .I3(pNextToRead[2]),
        .I4(pNextToWrite[1]),
        .I5(pNextToRead[1]),
        .O(\graycount[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(p_0_out[0]),
        .Q(pNextToRead[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(p_0_out[1]),
        .Q(pNextToRead[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(p_0_out[2]),
        .Q(pNextToRead[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(p_0_out[3]),
        .Q(pNextToRead[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(p_0_out[4]),
        .Q(pNextToRead[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[5] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(p_0_out[5]),
        .Q(pNextToRead[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[6] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\binary_count_reg[6]_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToRead[6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h6FFFFFFF)) 
    memory_reg_i_3
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[6]),
        .I2(\graycount[6]_i_2_n_0 ),
        .I3(\graycount[6]_i_3_n_0 ),
        .I4(status),
        .O(WEA));
  LUT6 #(
    .INIT(64'h45405F5F55550000)) 
    \state[1]_i_1__0 
       (.I0(\state_reg[3] [3]),
        .I1(state1__0),
        .I2(\state_reg[3] [2]),
        .I3(state13_out),
        .I4(\state_reg[3] [1]),
        .I5(\state_reg[3] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00002000)) 
    \state[3]_i_1 
       (.I0(\state_reg[3] [1]),
        .I1(state1__0),
        .I2(\state_reg[3] [0]),
        .I3(\state_reg[3] [2]),
        .I4(\state_reg[3] [3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000FFFF00006FFF)) 
    \state[3]_i_2 
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[6]),
        .I2(\graycount[6]_i_2_n_0 ),
        .I3(\graycount[6]_i_3_n_0 ),
        .I4(ftdi_txe_IBUF),
        .I5(status),
        .O(state1__0));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_1
       (.I0(pNextToRead[5]),
        .I1(pNextToWrite[6]),
        .I2(pNextToRead[6]),
        .I3(pNextToWrite[5]),
        .O(memory_reg_0));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_2
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[5]),
        .I2(pNextToWrite[6]),
        .I3(pNextToRead[5]),
        .O(memory_reg));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_1
   (pNextToWrite,
    \graycount_reg[6]_0 ,
    clk_out2);
  output [6:0]pNextToWrite;
  input \graycount_reg[6]_0 ;
  input clk_out2;

  wire [6:0]binary_count0;
  wire \binary_count[6]_i_2_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire clk_out2;
  wire \graycount_reg[6]_0 ;
  wire [6:0]pNextToWrite;
  wire [5:0]p_0_out;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[4]),
        .O(binary_count0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1 
       (.I0(binary_count_reg__1[3]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[0]),
        .I3(binary_count_reg__1[2]),
        .I4(binary_count_reg__1[4]),
        .I5(binary_count_reg__1[5]),
        .O(binary_count0[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1 
       (.I0(\binary_count[6]_i_2_n_0 ),
        .I1(binary_count_reg__1[5]),
        .I2(binary_count_reg__0),
        .O(binary_count0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[2]),
        .I2(binary_count_reg__1[0]),
        .I3(pNextToWrite[0]),
        .I4(binary_count_reg__1[3]),
        .O(\binary_count[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[5] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[6] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0[6]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__0 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .O(p_0_out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(p_0_out[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(p_0_out[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(p_0_out[5]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[0]),
        .Q(pNextToWrite[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[1]),
        .Q(pNextToWrite[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[2]),
        .Q(pNextToWrite[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[3]),
        .Q(pNextToWrite[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[4]),
        .Q(pNextToWrite[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[5] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[5]),
        .Q(pNextToWrite[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[6] 
       (.C(clk_out2),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToWrite[6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_2
   (pNextToRead,
    \binary_count_reg[0]_0 ,
    \state_reg[1] ,
    D,
    state13_out,
    memory_reg,
    memory_reg_0,
    WEA,
    \binary_count_reg[0]_1 ,
    clk_out1,
    state,
    Q,
    state1__0,
    pNextToWrite,
    status,
    recvData,
    ftdi_rxf_IBUF);
  output [6:0]pNextToRead;
  output \binary_count_reg[0]_0 ;
  output \state_reg[1] ;
  output [1:0]D;
  output state13_out;
  output memory_reg;
  output memory_reg_0;
  output [0:0]WEA;
  output \binary_count_reg[0]_1 ;
  input clk_out1;
  input [1:0]state;
  input [3:0]Q;
  input state1__0;
  input [6:0]pNextToWrite;
  input status;
  input recvData;
  input ftdi_rxf_IBUF;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [6:0]binary_count0__2;
  wire \binary_count[6]_i_2__2_n_0 ;
  wire \binary_count_reg[0]_0 ;
  wire \binary_count_reg[0]_1 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire clk_out1;
  wire ftdi_rxf_IBUF;
  wire \graycount[6]_i_2__0_n_0 ;
  wire \graycount[6]_i_2__1_n_0 ;
  wire \graycount[6]_i_3__0_n_0 ;
  wire memory_reg;
  wire memory_reg_0;
  wire [6:0]pNextToRead;
  wire [6:0]pNextToWrite;
  wire [5:0]p_0_out;
  wire recvData;
  wire [1:0]state;
  wire state13_out;
  wire state1__0;
  wire \state_reg[1] ;
  wire status;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__2 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__2 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__2 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__2 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToRead[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[4]),
        .O(binary_count0__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1__2 
       (.I0(binary_count_reg__1[3]),
        .I1(pNextToRead[0]),
        .I2(binary_count_reg__1[0]),
        .I3(binary_count_reg__1[2]),
        .I4(binary_count_reg__1[4]),
        .I5(binary_count_reg__1[5]),
        .O(binary_count0__2[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1__2 
       (.I0(\binary_count[6]_i_2__2_n_0 ),
        .I1(binary_count_reg__1[5]),
        .I2(binary_count_reg__0),
        .O(binary_count0__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2__2 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[2]),
        .I2(binary_count_reg__1[0]),
        .I3(pNextToRead[0]),
        .I4(binary_count_reg__1[3]),
        .O(\binary_count[6]_i_2__2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__2[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__2[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__2[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__2[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[5] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__2[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[6] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count0__2[6]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToRead[0]),
        .O(p_0_out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__2 
       (.I0(pNextToRead[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__2 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__2 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(p_0_out[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1__2 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(p_0_out[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1__2 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(p_0_out[5]));
  LUT3 #(
    .INIT(8'h04)) 
    \graycount[6]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\graycount[6]_i_2__1_n_0 ),
        .O(\binary_count_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6FFFFFFF00000000)) 
    \graycount[6]_i_1__1 
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[6]),
        .I2(\graycount[6]_i_2__0_n_0 ),
        .I3(\graycount[6]_i_3__0_n_0 ),
        .I4(status),
        .I5(recvData),
        .O(\binary_count_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \graycount[6]_i_2__0 
       (.I0(pNextToRead[3]),
        .I1(pNextToWrite[3]),
        .I2(pNextToWrite[5]),
        .I3(pNextToRead[5]),
        .I4(pNextToWrite[4]),
        .I5(pNextToRead[4]),
        .O(\graycount[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00009000)) 
    \graycount[6]_i_2__1 
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[6]),
        .I2(\graycount[6]_i_2__0_n_0 ),
        .I3(\graycount[6]_i_3__0_n_0 ),
        .I4(status),
        .O(\graycount[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \graycount[6]_i_3__0 
       (.I0(pNextToRead[0]),
        .I1(pNextToWrite[0]),
        .I2(pNextToWrite[2]),
        .I3(pNextToRead[2]),
        .I4(pNextToWrite[1]),
        .I5(pNextToRead[1]),
        .O(\graycount[6]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[0]),
        .Q(pNextToRead[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[1]),
        .Q(pNextToRead[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[2]),
        .Q(pNextToRead[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[3]),
        .Q(pNextToRead[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[4]),
        .Q(pNextToRead[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[5] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(p_0_out[5]),
        .Q(pNextToRead[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[6] 
       (.C(clk_out1),
        .CE(\binary_count_reg[0]_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToRead[6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h6FFFFFFF)) 
    memory_reg_i_2__0
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[6]),
        .I2(\graycount[6]_i_2__0_n_0 ),
        .I3(\graycount[6]_i_3__0_n_0 ),
        .I4(status),
        .O(WEA));
  LUT6 #(
    .INIT(64'h5242120271717170)) 
    \state[0]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(state13_out),
        .I4(state1__0),
        .I5(Q[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h0D)) 
    \state[1]_i_1 
       (.I0(\graycount[6]_i_2__1_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
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
  LUT6 #(
    .INIT(64'h00006FFF0000FFFF)) 
    \state[2]_i_2 
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[6]),
        .I2(\graycount[6]_i_2__0_n_0 ),
        .I3(\graycount[6]_i_3__0_n_0 ),
        .I4(ftdi_rxf_IBUF),
        .I5(status),
        .O(state13_out));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_1__0
       (.I0(pNextToRead[5]),
        .I1(pNextToWrite[6]),
        .I2(pNextToRead[6]),
        .I3(pNextToWrite[5]),
        .O(memory_reg_0));
  LUT4 #(
    .INIT(16'h6006)) 
    status_reg_i_2__0
       (.I0(pNextToRead[6]),
        .I1(pNextToWrite[5]),
        .I2(pNextToWrite[6]),
        .I3(pNextToRead[5]),
        .O(memory_reg));
endmodule

(* ORIG_REF_NAME = "graycounter" *) 
module graycounter_3
   (pNextToWrite,
    \graycount_reg[6]_0 ,
    ftdi_clk_IBUF_BUFG);
  output [6:0]pNextToWrite;
  input \graycount_reg[6]_0 ;
  input ftdi_clk_IBUF_BUFG;

  wire [6:0]binary_count0__1;
  wire \binary_count[6]_i_2__1_n_0 ;
  wire [6:6]binary_count_reg__0;
  wire [5:0]binary_count_reg__1;
  wire ftdi_clk_IBUF_BUFG;
  wire \graycount_reg[6]_0 ;
  wire [6:0]pNextToWrite;
  wire [5:0]p_0_out;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1__1 
       (.I0(binary_count_reg__1[0]),
        .O(binary_count0__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[2]_i_1__1 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[2]),
        .O(binary_count0__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \binary_count[3]_i_1__1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[0]),
        .I2(binary_count_reg__1[2]),
        .I3(binary_count_reg__1[3]),
        .O(binary_count0__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \binary_count[4]_i_1__1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[0]),
        .I2(pNextToWrite[0]),
        .I3(binary_count_reg__1[3]),
        .I4(binary_count_reg__1[4]),
        .O(binary_count0__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \binary_count[5]_i_1__1 
       (.I0(binary_count_reg__1[3]),
        .I1(pNextToWrite[0]),
        .I2(binary_count_reg__1[0]),
        .I3(binary_count_reg__1[2]),
        .I4(binary_count_reg__1[4]),
        .I5(binary_count_reg__1[5]),
        .O(binary_count0__1[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \binary_count[6]_i_1__1 
       (.I0(\binary_count[6]_i_2__1_n_0 ),
        .I1(binary_count_reg__1[5]),
        .I2(binary_count_reg__0),
        .O(binary_count0__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \binary_count[6]_i_2__1 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[2]),
        .I2(binary_count_reg__1[0]),
        .I3(pNextToWrite[0]),
        .I4(binary_count_reg__1[3]),
        .O(\binary_count[6]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0__1[0]),
        .Q(binary_count_reg__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0__1[2]),
        .Q(binary_count_reg__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0__1[3]),
        .Q(binary_count_reg__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0__1[4]),
        .Q(binary_count_reg__1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[5] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0__1[5]),
        .Q(binary_count_reg__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \binary_count_reg[6] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count0__1[6]),
        .Q(binary_count_reg__0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[0]_i_1__2 
       (.I0(binary_count_reg__1[0]),
        .I1(pNextToWrite[0]),
        .O(p_0_out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[1]_i_1__1 
       (.I0(pNextToWrite[0]),
        .I1(binary_count_reg__1[2]),
        .O(p_0_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[2]_i_1__1 
       (.I0(binary_count_reg__1[2]),
        .I1(binary_count_reg__1[3]),
        .O(p_0_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[3]_i_1__1 
       (.I0(binary_count_reg__1[3]),
        .I1(binary_count_reg__1[4]),
        .O(p_0_out[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[4]_i_1__1 
       (.I0(binary_count_reg__1[4]),
        .I1(binary_count_reg__1[5]),
        .O(p_0_out[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \graycount[5]_i_1__1 
       (.I0(binary_count_reg__1[5]),
        .I1(binary_count_reg__0),
        .O(p_0_out[5]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[0] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[0]),
        .Q(pNextToWrite[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[1] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[1]),
        .Q(pNextToWrite[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[2] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[2]),
        .Q(pNextToWrite[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[3] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[3]),
        .Q(pNextToWrite[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[4] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[4]),
        .Q(pNextToWrite[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[5] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(p_0_out[5]),
        .Q(pNextToWrite[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \graycount_reg[6] 
       (.C(ftdi_clk_IBUF_BUFG),
        .CE(\graycount_reg[6]_0 ),
        .D(binary_count_reg__0),
        .Q(pNextToWrite[6]),
        .R(1'b0));
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
