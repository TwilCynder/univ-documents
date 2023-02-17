// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Feb 17 10:51:20 2023
// Host        : pc-u3-305-01 running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/tnt3192a/documents/work/M1/S8/vhdl/zybo_tp6/zybo_tp6.sim/sim_1/synth/timing/xsim/test_memory_time_synth.v
// Design      : memory
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* DBUS_WIDTH = "32" *) (* MEM_SIZE = "32" *) 
(* NotValidForBitStream *)
module memory
   (RST,
    CLK,
    EN,
    WEN,
    ADR,
    DI,
    DO);
  input RST;
  input CLK;
  input EN;
  input WEN;
  input [4:0]ADR;
  input [31:0]DI;
  output [31:0]DO;

  wire [4:0]ADR;
  wire [4:0]ADR_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [31:0]DI;
  wire [31:0]DI_IBUF;
  wire [31:0]DO;
  wire [31:0]DO_OBUF;
  wire \DO_OBUFT[31]_inst_i_2_n_0 ;
  wire \DO_TRI[0] ;
  wire \DO_tristate_oe[0]_i_10_n_0 ;
  wire \DO_tristate_oe[0]_i_11_n_0 ;
  wire \DO_tristate_oe[0]_i_12_n_0 ;
  wire \DO_tristate_oe[0]_i_13_n_0 ;
  wire \DO_tristate_oe[0]_i_14_n_0 ;
  wire \DO_tristate_oe[0]_i_15_n_0 ;
  wire \DO_tristate_oe[0]_i_1_n_0 ;
  wire \DO_tristate_oe[0]_i_8_n_0 ;
  wire \DO_tristate_oe[0]_i_9_n_0 ;
  wire \DO_tristate_oe[10]_i_10_n_0 ;
  wire \DO_tristate_oe[10]_i_11_n_0 ;
  wire \DO_tristate_oe[10]_i_12_n_0 ;
  wire \DO_tristate_oe[10]_i_13_n_0 ;
  wire \DO_tristate_oe[10]_i_14_n_0 ;
  wire \DO_tristate_oe[10]_i_15_n_0 ;
  wire \DO_tristate_oe[10]_i_1_n_0 ;
  wire \DO_tristate_oe[10]_i_8_n_0 ;
  wire \DO_tristate_oe[10]_i_9_n_0 ;
  wire \DO_tristate_oe[11]_i_10_n_0 ;
  wire \DO_tristate_oe[11]_i_11_n_0 ;
  wire \DO_tristate_oe[11]_i_12_n_0 ;
  wire \DO_tristate_oe[11]_i_13_n_0 ;
  wire \DO_tristate_oe[11]_i_14_n_0 ;
  wire \DO_tristate_oe[11]_i_15_n_0 ;
  wire \DO_tristate_oe[11]_i_1_n_0 ;
  wire \DO_tristate_oe[11]_i_8_n_0 ;
  wire \DO_tristate_oe[11]_i_9_n_0 ;
  wire \DO_tristate_oe[12]_i_10_n_0 ;
  wire \DO_tristate_oe[12]_i_11_n_0 ;
  wire \DO_tristate_oe[12]_i_12_n_0 ;
  wire \DO_tristate_oe[12]_i_13_n_0 ;
  wire \DO_tristate_oe[12]_i_14_n_0 ;
  wire \DO_tristate_oe[12]_i_15_n_0 ;
  wire \DO_tristate_oe[12]_i_1_n_0 ;
  wire \DO_tristate_oe[12]_i_8_n_0 ;
  wire \DO_tristate_oe[12]_i_9_n_0 ;
  wire \DO_tristate_oe[13]_i_10_n_0 ;
  wire \DO_tristate_oe[13]_i_11_n_0 ;
  wire \DO_tristate_oe[13]_i_12_n_0 ;
  wire \DO_tristate_oe[13]_i_13_n_0 ;
  wire \DO_tristate_oe[13]_i_14_n_0 ;
  wire \DO_tristate_oe[13]_i_15_n_0 ;
  wire \DO_tristate_oe[13]_i_1_n_0 ;
  wire \DO_tristate_oe[13]_i_8_n_0 ;
  wire \DO_tristate_oe[13]_i_9_n_0 ;
  wire \DO_tristate_oe[14]_i_10_n_0 ;
  wire \DO_tristate_oe[14]_i_11_n_0 ;
  wire \DO_tristate_oe[14]_i_12_n_0 ;
  wire \DO_tristate_oe[14]_i_13_n_0 ;
  wire \DO_tristate_oe[14]_i_14_n_0 ;
  wire \DO_tristate_oe[14]_i_15_n_0 ;
  wire \DO_tristate_oe[14]_i_1_n_0 ;
  wire \DO_tristate_oe[14]_i_8_n_0 ;
  wire \DO_tristate_oe[14]_i_9_n_0 ;
  wire \DO_tristate_oe[15]_i_10_n_0 ;
  wire \DO_tristate_oe[15]_i_11_n_0 ;
  wire \DO_tristate_oe[15]_i_12_n_0 ;
  wire \DO_tristate_oe[15]_i_13_n_0 ;
  wire \DO_tristate_oe[15]_i_14_n_0 ;
  wire \DO_tristate_oe[15]_i_15_n_0 ;
  wire \DO_tristate_oe[15]_i_1_n_0 ;
  wire \DO_tristate_oe[15]_i_8_n_0 ;
  wire \DO_tristate_oe[15]_i_9_n_0 ;
  wire \DO_tristate_oe[16]_i_10_n_0 ;
  wire \DO_tristate_oe[16]_i_11_n_0 ;
  wire \DO_tristate_oe[16]_i_12_n_0 ;
  wire \DO_tristate_oe[16]_i_13_n_0 ;
  wire \DO_tristate_oe[16]_i_14_n_0 ;
  wire \DO_tristate_oe[16]_i_15_n_0 ;
  wire \DO_tristate_oe[16]_i_1_n_0 ;
  wire \DO_tristate_oe[16]_i_8_n_0 ;
  wire \DO_tristate_oe[16]_i_9_n_0 ;
  wire \DO_tristate_oe[17]_i_10_n_0 ;
  wire \DO_tristate_oe[17]_i_11_n_0 ;
  wire \DO_tristate_oe[17]_i_12_n_0 ;
  wire \DO_tristate_oe[17]_i_13_n_0 ;
  wire \DO_tristate_oe[17]_i_14_n_0 ;
  wire \DO_tristate_oe[17]_i_15_n_0 ;
  wire \DO_tristate_oe[17]_i_1_n_0 ;
  wire \DO_tristate_oe[17]_i_8_n_0 ;
  wire \DO_tristate_oe[17]_i_9_n_0 ;
  wire \DO_tristate_oe[18]_i_10_n_0 ;
  wire \DO_tristate_oe[18]_i_11_n_0 ;
  wire \DO_tristate_oe[18]_i_12_n_0 ;
  wire \DO_tristate_oe[18]_i_13_n_0 ;
  wire \DO_tristate_oe[18]_i_14_n_0 ;
  wire \DO_tristate_oe[18]_i_15_n_0 ;
  wire \DO_tristate_oe[18]_i_1_n_0 ;
  wire \DO_tristate_oe[18]_i_8_n_0 ;
  wire \DO_tristate_oe[18]_i_9_n_0 ;
  wire \DO_tristate_oe[19]_i_10_n_0 ;
  wire \DO_tristate_oe[19]_i_11_n_0 ;
  wire \DO_tristate_oe[19]_i_12_n_0 ;
  wire \DO_tristate_oe[19]_i_13_n_0 ;
  wire \DO_tristate_oe[19]_i_14_n_0 ;
  wire \DO_tristate_oe[19]_i_15_n_0 ;
  wire \DO_tristate_oe[19]_i_1_n_0 ;
  wire \DO_tristate_oe[19]_i_8_n_0 ;
  wire \DO_tristate_oe[19]_i_9_n_0 ;
  wire \DO_tristate_oe[1]_i_10_n_0 ;
  wire \DO_tristate_oe[1]_i_11_n_0 ;
  wire \DO_tristate_oe[1]_i_12_n_0 ;
  wire \DO_tristate_oe[1]_i_13_n_0 ;
  wire \DO_tristate_oe[1]_i_14_n_0 ;
  wire \DO_tristate_oe[1]_i_15_n_0 ;
  wire \DO_tristate_oe[1]_i_1_n_0 ;
  wire \DO_tristate_oe[1]_i_8_n_0 ;
  wire \DO_tristate_oe[1]_i_9_n_0 ;
  wire \DO_tristate_oe[20]_i_10_n_0 ;
  wire \DO_tristate_oe[20]_i_11_n_0 ;
  wire \DO_tristate_oe[20]_i_12_n_0 ;
  wire \DO_tristate_oe[20]_i_13_n_0 ;
  wire \DO_tristate_oe[20]_i_14_n_0 ;
  wire \DO_tristate_oe[20]_i_15_n_0 ;
  wire \DO_tristate_oe[20]_i_1_n_0 ;
  wire \DO_tristate_oe[20]_i_8_n_0 ;
  wire \DO_tristate_oe[20]_i_9_n_0 ;
  wire \DO_tristate_oe[21]_i_10_n_0 ;
  wire \DO_tristate_oe[21]_i_11_n_0 ;
  wire \DO_tristate_oe[21]_i_12_n_0 ;
  wire \DO_tristate_oe[21]_i_13_n_0 ;
  wire \DO_tristate_oe[21]_i_14_n_0 ;
  wire \DO_tristate_oe[21]_i_15_n_0 ;
  wire \DO_tristate_oe[21]_i_1_n_0 ;
  wire \DO_tristate_oe[21]_i_8_n_0 ;
  wire \DO_tristate_oe[21]_i_9_n_0 ;
  wire \DO_tristate_oe[22]_i_10_n_0 ;
  wire \DO_tristate_oe[22]_i_11_n_0 ;
  wire \DO_tristate_oe[22]_i_12_n_0 ;
  wire \DO_tristate_oe[22]_i_13_n_0 ;
  wire \DO_tristate_oe[22]_i_14_n_0 ;
  wire \DO_tristate_oe[22]_i_15_n_0 ;
  wire \DO_tristate_oe[22]_i_1_n_0 ;
  wire \DO_tristate_oe[22]_i_8_n_0 ;
  wire \DO_tristate_oe[22]_i_9_n_0 ;
  wire \DO_tristate_oe[23]_i_10_n_0 ;
  wire \DO_tristate_oe[23]_i_11_n_0 ;
  wire \DO_tristate_oe[23]_i_12_n_0 ;
  wire \DO_tristate_oe[23]_i_13_n_0 ;
  wire \DO_tristate_oe[23]_i_14_n_0 ;
  wire \DO_tristate_oe[23]_i_15_n_0 ;
  wire \DO_tristate_oe[23]_i_1_n_0 ;
  wire \DO_tristate_oe[23]_i_8_n_0 ;
  wire \DO_tristate_oe[23]_i_9_n_0 ;
  wire \DO_tristate_oe[24]_i_10_n_0 ;
  wire \DO_tristate_oe[24]_i_11_n_0 ;
  wire \DO_tristate_oe[24]_i_12_n_0 ;
  wire \DO_tristate_oe[24]_i_13_n_0 ;
  wire \DO_tristate_oe[24]_i_14_n_0 ;
  wire \DO_tristate_oe[24]_i_15_n_0 ;
  wire \DO_tristate_oe[24]_i_1_n_0 ;
  wire \DO_tristate_oe[24]_i_8_n_0 ;
  wire \DO_tristate_oe[24]_i_9_n_0 ;
  wire \DO_tristate_oe[25]_i_10_n_0 ;
  wire \DO_tristate_oe[25]_i_11_n_0 ;
  wire \DO_tristate_oe[25]_i_12_n_0 ;
  wire \DO_tristate_oe[25]_i_13_n_0 ;
  wire \DO_tristate_oe[25]_i_14_n_0 ;
  wire \DO_tristate_oe[25]_i_15_n_0 ;
  wire \DO_tristate_oe[25]_i_1_n_0 ;
  wire \DO_tristate_oe[25]_i_8_n_0 ;
  wire \DO_tristate_oe[25]_i_9_n_0 ;
  wire \DO_tristate_oe[26]_i_10_n_0 ;
  wire \DO_tristate_oe[26]_i_11_n_0 ;
  wire \DO_tristate_oe[26]_i_12_n_0 ;
  wire \DO_tristate_oe[26]_i_13_n_0 ;
  wire \DO_tristate_oe[26]_i_14_n_0 ;
  wire \DO_tristate_oe[26]_i_15_n_0 ;
  wire \DO_tristate_oe[26]_i_1_n_0 ;
  wire \DO_tristate_oe[26]_i_8_n_0 ;
  wire \DO_tristate_oe[26]_i_9_n_0 ;
  wire \DO_tristate_oe[27]_i_10_n_0 ;
  wire \DO_tristate_oe[27]_i_11_n_0 ;
  wire \DO_tristate_oe[27]_i_12_n_0 ;
  wire \DO_tristate_oe[27]_i_13_n_0 ;
  wire \DO_tristate_oe[27]_i_14_n_0 ;
  wire \DO_tristate_oe[27]_i_15_n_0 ;
  wire \DO_tristate_oe[27]_i_1_n_0 ;
  wire \DO_tristate_oe[27]_i_8_n_0 ;
  wire \DO_tristate_oe[27]_i_9_n_0 ;
  wire \DO_tristate_oe[28]_i_10_n_0 ;
  wire \DO_tristate_oe[28]_i_11_n_0 ;
  wire \DO_tristate_oe[28]_i_12_n_0 ;
  wire \DO_tristate_oe[28]_i_13_n_0 ;
  wire \DO_tristate_oe[28]_i_14_n_0 ;
  wire \DO_tristate_oe[28]_i_15_n_0 ;
  wire \DO_tristate_oe[28]_i_1_n_0 ;
  wire \DO_tristate_oe[28]_i_8_n_0 ;
  wire \DO_tristate_oe[28]_i_9_n_0 ;
  wire \DO_tristate_oe[29]_i_10_n_0 ;
  wire \DO_tristate_oe[29]_i_11_n_0 ;
  wire \DO_tristate_oe[29]_i_12_n_0 ;
  wire \DO_tristate_oe[29]_i_13_n_0 ;
  wire \DO_tristate_oe[29]_i_14_n_0 ;
  wire \DO_tristate_oe[29]_i_15_n_0 ;
  wire \DO_tristate_oe[29]_i_1_n_0 ;
  wire \DO_tristate_oe[29]_i_8_n_0 ;
  wire \DO_tristate_oe[29]_i_9_n_0 ;
  wire \DO_tristate_oe[2]_i_10_n_0 ;
  wire \DO_tristate_oe[2]_i_11_n_0 ;
  wire \DO_tristate_oe[2]_i_12_n_0 ;
  wire \DO_tristate_oe[2]_i_13_n_0 ;
  wire \DO_tristate_oe[2]_i_14_n_0 ;
  wire \DO_tristate_oe[2]_i_15_n_0 ;
  wire \DO_tristate_oe[2]_i_1_n_0 ;
  wire \DO_tristate_oe[2]_i_8_n_0 ;
  wire \DO_tristate_oe[2]_i_9_n_0 ;
  wire \DO_tristate_oe[30]_i_10_n_0 ;
  wire \DO_tristate_oe[30]_i_11_n_0 ;
  wire \DO_tristate_oe[30]_i_12_n_0 ;
  wire \DO_tristate_oe[30]_i_13_n_0 ;
  wire \DO_tristate_oe[30]_i_14_n_0 ;
  wire \DO_tristate_oe[30]_i_15_n_0 ;
  wire \DO_tristate_oe[30]_i_1_n_0 ;
  wire \DO_tristate_oe[30]_i_8_n_0 ;
  wire \DO_tristate_oe[30]_i_9_n_0 ;
  wire \DO_tristate_oe[31]_i_10_n_0 ;
  wire \DO_tristate_oe[31]_i_11_n_0 ;
  wire \DO_tristate_oe[31]_i_12_n_0 ;
  wire \DO_tristate_oe[31]_i_13_n_0 ;
  wire \DO_tristate_oe[31]_i_14_n_0 ;
  wire \DO_tristate_oe[31]_i_15_n_0 ;
  wire \DO_tristate_oe[31]_i_1_n_0 ;
  wire \DO_tristate_oe[31]_i_8_n_0 ;
  wire \DO_tristate_oe[31]_i_9_n_0 ;
  wire \DO_tristate_oe[3]_i_10_n_0 ;
  wire \DO_tristate_oe[3]_i_11_n_0 ;
  wire \DO_tristate_oe[3]_i_12_n_0 ;
  wire \DO_tristate_oe[3]_i_13_n_0 ;
  wire \DO_tristate_oe[3]_i_14_n_0 ;
  wire \DO_tristate_oe[3]_i_15_n_0 ;
  wire \DO_tristate_oe[3]_i_1_n_0 ;
  wire \DO_tristate_oe[3]_i_8_n_0 ;
  wire \DO_tristate_oe[3]_i_9_n_0 ;
  wire \DO_tristate_oe[4]_i_10_n_0 ;
  wire \DO_tristate_oe[4]_i_11_n_0 ;
  wire \DO_tristate_oe[4]_i_12_n_0 ;
  wire \DO_tristate_oe[4]_i_13_n_0 ;
  wire \DO_tristate_oe[4]_i_14_n_0 ;
  wire \DO_tristate_oe[4]_i_15_n_0 ;
  wire \DO_tristate_oe[4]_i_1_n_0 ;
  wire \DO_tristate_oe[4]_i_8_n_0 ;
  wire \DO_tristate_oe[4]_i_9_n_0 ;
  wire \DO_tristate_oe[5]_i_10_n_0 ;
  wire \DO_tristate_oe[5]_i_11_n_0 ;
  wire \DO_tristate_oe[5]_i_12_n_0 ;
  wire \DO_tristate_oe[5]_i_13_n_0 ;
  wire \DO_tristate_oe[5]_i_14_n_0 ;
  wire \DO_tristate_oe[5]_i_15_n_0 ;
  wire \DO_tristate_oe[5]_i_1_n_0 ;
  wire \DO_tristate_oe[5]_i_8_n_0 ;
  wire \DO_tristate_oe[5]_i_9_n_0 ;
  wire \DO_tristate_oe[6]_i_10_n_0 ;
  wire \DO_tristate_oe[6]_i_11_n_0 ;
  wire \DO_tristate_oe[6]_i_12_n_0 ;
  wire \DO_tristate_oe[6]_i_13_n_0 ;
  wire \DO_tristate_oe[6]_i_14_n_0 ;
  wire \DO_tristate_oe[6]_i_15_n_0 ;
  wire \DO_tristate_oe[6]_i_1_n_0 ;
  wire \DO_tristate_oe[6]_i_8_n_0 ;
  wire \DO_tristate_oe[6]_i_9_n_0 ;
  wire \DO_tristate_oe[7]_i_10_n_0 ;
  wire \DO_tristate_oe[7]_i_11_n_0 ;
  wire \DO_tristate_oe[7]_i_12_n_0 ;
  wire \DO_tristate_oe[7]_i_13_n_0 ;
  wire \DO_tristate_oe[7]_i_14_n_0 ;
  wire \DO_tristate_oe[7]_i_15_n_0 ;
  wire \DO_tristate_oe[7]_i_1_n_0 ;
  wire \DO_tristate_oe[7]_i_8_n_0 ;
  wire \DO_tristate_oe[7]_i_9_n_0 ;
  wire \DO_tristate_oe[8]_i_10_n_0 ;
  wire \DO_tristate_oe[8]_i_11_n_0 ;
  wire \DO_tristate_oe[8]_i_12_n_0 ;
  wire \DO_tristate_oe[8]_i_13_n_0 ;
  wire \DO_tristate_oe[8]_i_14_n_0 ;
  wire \DO_tristate_oe[8]_i_15_n_0 ;
  wire \DO_tristate_oe[8]_i_1_n_0 ;
  wire \DO_tristate_oe[8]_i_8_n_0 ;
  wire \DO_tristate_oe[8]_i_9_n_0 ;
  wire \DO_tristate_oe[9]_i_10_n_0 ;
  wire \DO_tristate_oe[9]_i_11_n_0 ;
  wire \DO_tristate_oe[9]_i_12_n_0 ;
  wire \DO_tristate_oe[9]_i_13_n_0 ;
  wire \DO_tristate_oe[9]_i_14_n_0 ;
  wire \DO_tristate_oe[9]_i_15_n_0 ;
  wire \DO_tristate_oe[9]_i_1_n_0 ;
  wire \DO_tristate_oe[9]_i_8_n_0 ;
  wire \DO_tristate_oe[9]_i_9_n_0 ;
  wire \DO_tristate_oe_reg[0]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[0]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[0]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[0]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[0]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[0]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[10]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[10]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[10]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[10]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[10]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[10]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[11]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[11]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[11]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[11]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[11]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[11]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[12]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[12]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[12]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[12]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[12]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[12]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[13]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[13]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[13]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[13]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[13]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[13]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[14]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[14]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[14]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[14]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[14]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[14]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[15]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[15]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[15]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[15]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[15]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[15]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[16]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[16]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[16]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[16]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[16]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[16]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[17]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[17]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[17]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[17]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[17]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[17]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[18]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[18]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[18]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[18]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[18]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[18]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[19]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[19]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[19]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[19]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[19]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[19]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[1]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[1]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[1]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[1]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[1]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[1]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[20]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[20]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[20]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[20]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[20]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[20]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[21]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[21]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[21]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[21]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[21]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[21]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[22]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[22]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[22]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[22]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[22]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[22]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[23]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[23]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[23]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[23]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[23]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[23]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[24]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[24]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[24]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[24]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[24]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[24]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[25]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[25]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[25]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[25]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[25]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[25]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[26]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[26]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[26]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[26]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[26]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[26]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[27]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[27]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[27]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[27]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[27]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[27]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[28]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[28]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[28]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[28]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[28]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[28]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[29]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[29]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[29]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[29]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[29]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[29]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[2]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[2]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[2]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[2]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[2]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[2]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[30]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[30]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[30]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[30]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[30]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[30]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[31]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[31]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[31]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[31]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[31]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[31]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[3]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[3]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[3]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[3]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[3]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[3]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[4]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[4]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[4]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[4]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[4]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[4]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[5]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[5]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[5]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[5]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[5]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[5]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[6]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[6]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[6]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[6]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[6]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[6]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[7]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[7]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[7]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[7]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[7]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[7]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[8]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[8]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[8]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[8]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[8]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[8]_i_7_n_0 ;
  wire \DO_tristate_oe_reg[9]_i_2_n_0 ;
  wire \DO_tristate_oe_reg[9]_i_3_n_0 ;
  wire \DO_tristate_oe_reg[9]_i_4_n_0 ;
  wire \DO_tristate_oe_reg[9]_i_5_n_0 ;
  wire \DO_tristate_oe_reg[9]_i_6_n_0 ;
  wire \DO_tristate_oe_reg[9]_i_7_n_0 ;
  wire EN;
  wire EN_IBUF;
  wire \REGS[0][31]_i_2_n_0 ;
  wire \REGS[0][31]_i_3_n_0 ;
  wire \REGS[10] ;
  wire \REGS[10][31]_i_2_n_0 ;
  wire \REGS[11] ;
  wire \REGS[12] ;
  wire \REGS[12][31]_i_2_n_0 ;
  wire \REGS[13] ;
  wire \REGS[14] ;
  wire \REGS[15] ;
  wire \REGS[16] ;
  wire \REGS[16][31]_i_2_n_0 ;
  wire \REGS[17] ;
  wire \REGS[17][31]_i_2_n_0 ;
  wire \REGS[18] ;
  wire \REGS[18][31]_i_2_n_0 ;
  wire \REGS[19] ;
  wire \REGS[1] ;
  wire \REGS[1][31]_i_2_n_0 ;
  wire \REGS[20] ;
  wire \REGS[20][31]_i_2_n_0 ;
  wire \REGS[21] ;
  wire \REGS[22] ;
  wire \REGS[23] ;
  wire \REGS[24] ;
  wire \REGS[24][31]_i_2_n_0 ;
  wire \REGS[25] ;
  wire \REGS[26] ;
  wire \REGS[27] ;
  wire \REGS[28] ;
  wire \REGS[29] ;
  wire \REGS[2] ;
  wire \REGS[2][31]_i_2_n_0 ;
  wire \REGS[30] ;
  wire \REGS[31] ;
  wire \REGS[3] ;
  wire \REGS[3][31]_i_2_n_0 ;
  wire \REGS[4] ;
  wire \REGS[4][31]_i_2_n_0 ;
  wire \REGS[5] ;
  wire \REGS[5][31]_i_2_n_0 ;
  wire \REGS[6] ;
  wire \REGS[6][31]_i_2_n_0 ;
  wire \REGS[7] ;
  wire \REGS[8] ;
  wire \REGS[8][31]_i_2_n_0 ;
  wire \REGS[9] ;
  wire \REGS[9][31]_i_2_n_0 ;
  wire [31:0]\REGS_reg[0] ;
  wire [31:0]\REGS_reg[10] ;
  wire [31:0]\REGS_reg[11] ;
  wire [31:0]\REGS_reg[12] ;
  wire [31:0]\REGS_reg[13] ;
  wire [31:0]\REGS_reg[14] ;
  wire [31:0]\REGS_reg[15] ;
  wire [31:0]\REGS_reg[16] ;
  wire [31:0]\REGS_reg[17] ;
  wire [31:0]\REGS_reg[18] ;
  wire [31:0]\REGS_reg[19] ;
  wire [31:0]\REGS_reg[1] ;
  wire [31:0]\REGS_reg[20] ;
  wire [31:0]\REGS_reg[21] ;
  wire [31:0]\REGS_reg[22] ;
  wire [31:0]\REGS_reg[23] ;
  wire [31:0]\REGS_reg[24] ;
  wire [31:0]\REGS_reg[25] ;
  wire [31:0]\REGS_reg[26] ;
  wire [31:0]\REGS_reg[27] ;
  wire [31:0]\REGS_reg[28] ;
  wire [31:0]\REGS_reg[29] ;
  wire [31:0]\REGS_reg[2] ;
  wire [31:0]\REGS_reg[30] ;
  wire [31:0]\REGS_reg[31] ;
  wire [31:0]\REGS_reg[3] ;
  wire [31:0]\REGS_reg[4] ;
  wire [31:0]\REGS_reg[5] ;
  wire [31:0]\REGS_reg[6] ;
  wire [31:0]\REGS_reg[7] ;
  wire [31:0]\REGS_reg[8] ;
  wire [31:0]\REGS_reg[9] ;
  wire RST;
  wire RST_IBUF;
  wire WEN;
  wire WEN_IBUF;
  wire p_0_in;

initial begin
 $sdf_annotate("test_memory_time_synth.sdf",,,,"tool_control");
end
  IBUF \ADR_IBUF[0]_inst 
       (.I(ADR[0]),
        .O(ADR_IBUF[0]));
  IBUF \ADR_IBUF[1]_inst 
       (.I(ADR[1]),
        .O(ADR_IBUF[1]));
  IBUF \ADR_IBUF[2]_inst 
       (.I(ADR[2]),
        .O(ADR_IBUF[2]));
  IBUF \ADR_IBUF[3]_inst 
       (.I(ADR[3]),
        .O(ADR_IBUF[3]));
  IBUF \ADR_IBUF[4]_inst 
       (.I(ADR[4]),
        .O(ADR_IBUF[4]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF \DI_IBUF[0]_inst 
       (.I(DI[0]),
        .O(DI_IBUF[0]));
  IBUF \DI_IBUF[10]_inst 
       (.I(DI[10]),
        .O(DI_IBUF[10]));
  IBUF \DI_IBUF[11]_inst 
       (.I(DI[11]),
        .O(DI_IBUF[11]));
  IBUF \DI_IBUF[12]_inst 
       (.I(DI[12]),
        .O(DI_IBUF[12]));
  IBUF \DI_IBUF[13]_inst 
       (.I(DI[13]),
        .O(DI_IBUF[13]));
  IBUF \DI_IBUF[14]_inst 
       (.I(DI[14]),
        .O(DI_IBUF[14]));
  IBUF \DI_IBUF[15]_inst 
       (.I(DI[15]),
        .O(DI_IBUF[15]));
  IBUF \DI_IBUF[16]_inst 
       (.I(DI[16]),
        .O(DI_IBUF[16]));
  IBUF \DI_IBUF[17]_inst 
       (.I(DI[17]),
        .O(DI_IBUF[17]));
  IBUF \DI_IBUF[18]_inst 
       (.I(DI[18]),
        .O(DI_IBUF[18]));
  IBUF \DI_IBUF[19]_inst 
       (.I(DI[19]),
        .O(DI_IBUF[19]));
  IBUF \DI_IBUF[1]_inst 
       (.I(DI[1]),
        .O(DI_IBUF[1]));
  IBUF \DI_IBUF[20]_inst 
       (.I(DI[20]),
        .O(DI_IBUF[20]));
  IBUF \DI_IBUF[21]_inst 
       (.I(DI[21]),
        .O(DI_IBUF[21]));
  IBUF \DI_IBUF[22]_inst 
       (.I(DI[22]),
        .O(DI_IBUF[22]));
  IBUF \DI_IBUF[23]_inst 
       (.I(DI[23]),
        .O(DI_IBUF[23]));
  IBUF \DI_IBUF[24]_inst 
       (.I(DI[24]),
        .O(DI_IBUF[24]));
  IBUF \DI_IBUF[25]_inst 
       (.I(DI[25]),
        .O(DI_IBUF[25]));
  IBUF \DI_IBUF[26]_inst 
       (.I(DI[26]),
        .O(DI_IBUF[26]));
  IBUF \DI_IBUF[27]_inst 
       (.I(DI[27]),
        .O(DI_IBUF[27]));
  IBUF \DI_IBUF[28]_inst 
       (.I(DI[28]),
        .O(DI_IBUF[28]));
  IBUF \DI_IBUF[29]_inst 
       (.I(DI[29]),
        .O(DI_IBUF[29]));
  IBUF \DI_IBUF[2]_inst 
       (.I(DI[2]),
        .O(DI_IBUF[2]));
  IBUF \DI_IBUF[30]_inst 
       (.I(DI[30]),
        .O(DI_IBUF[30]));
  IBUF \DI_IBUF[31]_inst 
       (.I(DI[31]),
        .O(DI_IBUF[31]));
  IBUF \DI_IBUF[3]_inst 
       (.I(DI[3]),
        .O(DI_IBUF[3]));
  IBUF \DI_IBUF[4]_inst 
       (.I(DI[4]),
        .O(DI_IBUF[4]));
  IBUF \DI_IBUF[5]_inst 
       (.I(DI[5]),
        .O(DI_IBUF[5]));
  IBUF \DI_IBUF[6]_inst 
       (.I(DI[6]),
        .O(DI_IBUF[6]));
  IBUF \DI_IBUF[7]_inst 
       (.I(DI[7]),
        .O(DI_IBUF[7]));
  IBUF \DI_IBUF[8]_inst 
       (.I(DI[8]),
        .O(DI_IBUF[8]));
  IBUF \DI_IBUF[9]_inst 
       (.I(DI[9]),
        .O(DI_IBUF[9]));
  OBUFT \DO_OBUFT[0]_inst 
       (.I(DO_OBUF[0]),
        .O(DO[0]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[10]_inst 
       (.I(DO_OBUF[10]),
        .O(DO[10]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[11]_inst 
       (.I(DO_OBUF[11]),
        .O(DO[11]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[12]_inst 
       (.I(DO_OBUF[12]),
        .O(DO[12]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[13]_inst 
       (.I(DO_OBUF[13]),
        .O(DO[13]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[14]_inst 
       (.I(DO_OBUF[14]),
        .O(DO[14]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[15]_inst 
       (.I(DO_OBUF[15]),
        .O(DO[15]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[16]_inst 
       (.I(DO_OBUF[16]),
        .O(DO[16]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[17]_inst 
       (.I(DO_OBUF[17]),
        .O(DO[17]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[18]_inst 
       (.I(DO_OBUF[18]),
        .O(DO[18]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[19]_inst 
       (.I(DO_OBUF[19]),
        .O(DO[19]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[1]_inst 
       (.I(DO_OBUF[1]),
        .O(DO[1]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[20]_inst 
       (.I(DO_OBUF[20]),
        .O(DO[20]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[21]_inst 
       (.I(DO_OBUF[21]),
        .O(DO[21]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[22]_inst 
       (.I(DO_OBUF[22]),
        .O(DO[22]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[23]_inst 
       (.I(DO_OBUF[23]),
        .O(DO[23]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[24]_inst 
       (.I(DO_OBUF[24]),
        .O(DO[24]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[25]_inst 
       (.I(DO_OBUF[25]),
        .O(DO[25]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[26]_inst 
       (.I(DO_OBUF[26]),
        .O(DO[26]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[27]_inst 
       (.I(DO_OBUF[27]),
        .O(DO[27]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[28]_inst 
       (.I(DO_OBUF[28]),
        .O(DO[28]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[29]_inst 
       (.I(DO_OBUF[29]),
        .O(DO[29]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[2]_inst 
       (.I(DO_OBUF[2]),
        .O(DO[2]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[30]_inst 
       (.I(DO_OBUF[30]),
        .O(DO[30]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[31]_inst 
       (.I(DO_OBUF[31]),
        .O(DO[31]),
        .T(\DO_TRI[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_OBUFT[31]_inst_i_1 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_OBUFT[31]_inst_i_2_n_0 ),
        .Q(\DO_TRI[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \DO_OBUFT[31]_inst_i_2 
       (.I0(EN_IBUF),
        .O(\DO_OBUFT[31]_inst_i_2_n_0 ));
  OBUFT \DO_OBUFT[3]_inst 
       (.I(DO_OBUF[3]),
        .O(DO[3]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[4]_inst 
       (.I(DO_OBUF[4]),
        .O(DO[4]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[5]_inst 
       (.I(DO_OBUF[5]),
        .O(DO[5]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[6]_inst 
       (.I(DO_OBUF[6]),
        .O(DO[6]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[7]_inst 
       (.I(DO_OBUF[7]),
        .O(DO[7]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[8]_inst 
       (.I(DO_OBUF[8]),
        .O(DO[8]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[9]_inst 
       (.I(DO_OBUF[9]),
        .O(DO[9]),
        .T(\DO_TRI[0] ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[0]_i_1 
       (.I0(DI_IBUF[0]),
        .I1(\DO_tristate_oe_reg[0]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[0]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[0]_i_10 
       (.I0(\REGS_reg[27] [0]),
        .I1(\REGS_reg[26] [0]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [0]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [0]),
        .O(\DO_tristate_oe[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[0]_i_11 
       (.I0(\REGS_reg[31] [0]),
        .I1(\REGS_reg[30] [0]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [0]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [0]),
        .O(\DO_tristate_oe[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[0]_i_12 
       (.I0(\REGS_reg[3] [0]),
        .I1(\REGS_reg[2] [0]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [0]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [0]),
        .O(\DO_tristate_oe[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[0]_i_13 
       (.I0(\REGS_reg[7] [0]),
        .I1(\REGS_reg[6] [0]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [0]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [0]),
        .O(\DO_tristate_oe[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[0]_i_14 
       (.I0(\REGS_reg[11] [0]),
        .I1(\REGS_reg[10] [0]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [0]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [0]),
        .O(\DO_tristate_oe[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[0]_i_15 
       (.I0(\REGS_reg[15] [0]),
        .I1(\REGS_reg[14] [0]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [0]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [0]),
        .O(\DO_tristate_oe[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[0]_i_8 
       (.I0(\REGS_reg[19] [0]),
        .I1(\REGS_reg[18] [0]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [0]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [0]),
        .O(\DO_tristate_oe[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[0]_i_9 
       (.I0(\REGS_reg[23] [0]),
        .I1(\REGS_reg[22] [0]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [0]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [0]),
        .O(\DO_tristate_oe[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[10]_i_1 
       (.I0(DI_IBUF[10]),
        .I1(\DO_tristate_oe_reg[10]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[10]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[10]_i_10 
       (.I0(\REGS_reg[27] [10]),
        .I1(\REGS_reg[26] [10]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [10]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [10]),
        .O(\DO_tristate_oe[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[10]_i_11 
       (.I0(\REGS_reg[31] [10]),
        .I1(\REGS_reg[30] [10]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [10]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [10]),
        .O(\DO_tristate_oe[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[10]_i_12 
       (.I0(\REGS_reg[3] [10]),
        .I1(\REGS_reg[2] [10]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [10]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [10]),
        .O(\DO_tristate_oe[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[10]_i_13 
       (.I0(\REGS_reg[7] [10]),
        .I1(\REGS_reg[6] [10]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [10]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [10]),
        .O(\DO_tristate_oe[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[10]_i_14 
       (.I0(\REGS_reg[11] [10]),
        .I1(\REGS_reg[10] [10]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [10]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [10]),
        .O(\DO_tristate_oe[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[10]_i_15 
       (.I0(\REGS_reg[15] [10]),
        .I1(\REGS_reg[14] [10]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [10]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [10]),
        .O(\DO_tristate_oe[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[10]_i_8 
       (.I0(\REGS_reg[19] [10]),
        .I1(\REGS_reg[18] [10]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [10]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [10]),
        .O(\DO_tristate_oe[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[10]_i_9 
       (.I0(\REGS_reg[23] [10]),
        .I1(\REGS_reg[22] [10]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [10]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [10]),
        .O(\DO_tristate_oe[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[11]_i_1 
       (.I0(DI_IBUF[11]),
        .I1(\DO_tristate_oe_reg[11]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[11]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[11]_i_10 
       (.I0(\REGS_reg[27] [11]),
        .I1(\REGS_reg[26] [11]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [11]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [11]),
        .O(\DO_tristate_oe[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[11]_i_11 
       (.I0(\REGS_reg[31] [11]),
        .I1(\REGS_reg[30] [11]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [11]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [11]),
        .O(\DO_tristate_oe[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[11]_i_12 
       (.I0(\REGS_reg[3] [11]),
        .I1(\REGS_reg[2] [11]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [11]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [11]),
        .O(\DO_tristate_oe[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[11]_i_13 
       (.I0(\REGS_reg[7] [11]),
        .I1(\REGS_reg[6] [11]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [11]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [11]),
        .O(\DO_tristate_oe[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[11]_i_14 
       (.I0(\REGS_reg[11] [11]),
        .I1(\REGS_reg[10] [11]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [11]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [11]),
        .O(\DO_tristate_oe[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[11]_i_15 
       (.I0(\REGS_reg[15] [11]),
        .I1(\REGS_reg[14] [11]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [11]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [11]),
        .O(\DO_tristate_oe[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[11]_i_8 
       (.I0(\REGS_reg[19] [11]),
        .I1(\REGS_reg[18] [11]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [11]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [11]),
        .O(\DO_tristate_oe[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[11]_i_9 
       (.I0(\REGS_reg[23] [11]),
        .I1(\REGS_reg[22] [11]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [11]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [11]),
        .O(\DO_tristate_oe[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[12]_i_1 
       (.I0(DI_IBUF[12]),
        .I1(\DO_tristate_oe_reg[12]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[12]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[12]_i_10 
       (.I0(\REGS_reg[27] [12]),
        .I1(\REGS_reg[26] [12]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [12]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [12]),
        .O(\DO_tristate_oe[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[12]_i_11 
       (.I0(\REGS_reg[31] [12]),
        .I1(\REGS_reg[30] [12]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [12]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [12]),
        .O(\DO_tristate_oe[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[12]_i_12 
       (.I0(\REGS_reg[3] [12]),
        .I1(\REGS_reg[2] [12]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [12]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [12]),
        .O(\DO_tristate_oe[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[12]_i_13 
       (.I0(\REGS_reg[7] [12]),
        .I1(\REGS_reg[6] [12]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [12]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [12]),
        .O(\DO_tristate_oe[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[12]_i_14 
       (.I0(\REGS_reg[11] [12]),
        .I1(\REGS_reg[10] [12]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [12]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [12]),
        .O(\DO_tristate_oe[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[12]_i_15 
       (.I0(\REGS_reg[15] [12]),
        .I1(\REGS_reg[14] [12]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [12]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [12]),
        .O(\DO_tristate_oe[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[12]_i_8 
       (.I0(\REGS_reg[19] [12]),
        .I1(\REGS_reg[18] [12]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [12]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [12]),
        .O(\DO_tristate_oe[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[12]_i_9 
       (.I0(\REGS_reg[23] [12]),
        .I1(\REGS_reg[22] [12]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [12]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [12]),
        .O(\DO_tristate_oe[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[13]_i_1 
       (.I0(DI_IBUF[13]),
        .I1(\DO_tristate_oe_reg[13]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[13]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[13]_i_10 
       (.I0(\REGS_reg[27] [13]),
        .I1(\REGS_reg[26] [13]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [13]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [13]),
        .O(\DO_tristate_oe[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[13]_i_11 
       (.I0(\REGS_reg[31] [13]),
        .I1(\REGS_reg[30] [13]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [13]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [13]),
        .O(\DO_tristate_oe[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[13]_i_12 
       (.I0(\REGS_reg[3] [13]),
        .I1(\REGS_reg[2] [13]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [13]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [13]),
        .O(\DO_tristate_oe[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[13]_i_13 
       (.I0(\REGS_reg[7] [13]),
        .I1(\REGS_reg[6] [13]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [13]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [13]),
        .O(\DO_tristate_oe[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[13]_i_14 
       (.I0(\REGS_reg[11] [13]),
        .I1(\REGS_reg[10] [13]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [13]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [13]),
        .O(\DO_tristate_oe[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[13]_i_15 
       (.I0(\REGS_reg[15] [13]),
        .I1(\REGS_reg[14] [13]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [13]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [13]),
        .O(\DO_tristate_oe[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[13]_i_8 
       (.I0(\REGS_reg[19] [13]),
        .I1(\REGS_reg[18] [13]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [13]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [13]),
        .O(\DO_tristate_oe[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[13]_i_9 
       (.I0(\REGS_reg[23] [13]),
        .I1(\REGS_reg[22] [13]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [13]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [13]),
        .O(\DO_tristate_oe[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[14]_i_1 
       (.I0(DI_IBUF[14]),
        .I1(\DO_tristate_oe_reg[14]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[14]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[14]_i_10 
       (.I0(\REGS_reg[27] [14]),
        .I1(\REGS_reg[26] [14]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [14]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [14]),
        .O(\DO_tristate_oe[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[14]_i_11 
       (.I0(\REGS_reg[31] [14]),
        .I1(\REGS_reg[30] [14]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [14]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [14]),
        .O(\DO_tristate_oe[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[14]_i_12 
       (.I0(\REGS_reg[3] [14]),
        .I1(\REGS_reg[2] [14]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [14]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [14]),
        .O(\DO_tristate_oe[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[14]_i_13 
       (.I0(\REGS_reg[7] [14]),
        .I1(\REGS_reg[6] [14]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [14]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [14]),
        .O(\DO_tristate_oe[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[14]_i_14 
       (.I0(\REGS_reg[11] [14]),
        .I1(\REGS_reg[10] [14]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [14]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [14]),
        .O(\DO_tristate_oe[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[14]_i_15 
       (.I0(\REGS_reg[15] [14]),
        .I1(\REGS_reg[14] [14]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [14]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [14]),
        .O(\DO_tristate_oe[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[14]_i_8 
       (.I0(\REGS_reg[19] [14]),
        .I1(\REGS_reg[18] [14]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [14]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [14]),
        .O(\DO_tristate_oe[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[14]_i_9 
       (.I0(\REGS_reg[23] [14]),
        .I1(\REGS_reg[22] [14]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [14]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [14]),
        .O(\DO_tristate_oe[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[15]_i_1 
       (.I0(DI_IBUF[15]),
        .I1(\DO_tristate_oe_reg[15]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[15]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[15]_i_10 
       (.I0(\REGS_reg[27] [15]),
        .I1(\REGS_reg[26] [15]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [15]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [15]),
        .O(\DO_tristate_oe[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[15]_i_11 
       (.I0(\REGS_reg[31] [15]),
        .I1(\REGS_reg[30] [15]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [15]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [15]),
        .O(\DO_tristate_oe[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[15]_i_12 
       (.I0(\REGS_reg[3] [15]),
        .I1(\REGS_reg[2] [15]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [15]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [15]),
        .O(\DO_tristate_oe[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[15]_i_13 
       (.I0(\REGS_reg[7] [15]),
        .I1(\REGS_reg[6] [15]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [15]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [15]),
        .O(\DO_tristate_oe[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[15]_i_14 
       (.I0(\REGS_reg[11] [15]),
        .I1(\REGS_reg[10] [15]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [15]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [15]),
        .O(\DO_tristate_oe[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[15]_i_15 
       (.I0(\REGS_reg[15] [15]),
        .I1(\REGS_reg[14] [15]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [15]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [15]),
        .O(\DO_tristate_oe[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[15]_i_8 
       (.I0(\REGS_reg[19] [15]),
        .I1(\REGS_reg[18] [15]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [15]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [15]),
        .O(\DO_tristate_oe[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[15]_i_9 
       (.I0(\REGS_reg[23] [15]),
        .I1(\REGS_reg[22] [15]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [15]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [15]),
        .O(\DO_tristate_oe[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[16]_i_1 
       (.I0(DI_IBUF[16]),
        .I1(\DO_tristate_oe_reg[16]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[16]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[16]_i_10 
       (.I0(\REGS_reg[27] [16]),
        .I1(\REGS_reg[26] [16]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [16]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [16]),
        .O(\DO_tristate_oe[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[16]_i_11 
       (.I0(\REGS_reg[31] [16]),
        .I1(\REGS_reg[30] [16]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [16]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [16]),
        .O(\DO_tristate_oe[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[16]_i_12 
       (.I0(\REGS_reg[3] [16]),
        .I1(\REGS_reg[2] [16]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [16]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [16]),
        .O(\DO_tristate_oe[16]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[16]_i_13 
       (.I0(\REGS_reg[7] [16]),
        .I1(\REGS_reg[6] [16]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [16]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [16]),
        .O(\DO_tristate_oe[16]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[16]_i_14 
       (.I0(\REGS_reg[11] [16]),
        .I1(\REGS_reg[10] [16]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [16]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [16]),
        .O(\DO_tristate_oe[16]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[16]_i_15 
       (.I0(\REGS_reg[15] [16]),
        .I1(\REGS_reg[14] [16]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [16]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [16]),
        .O(\DO_tristate_oe[16]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[16]_i_8 
       (.I0(\REGS_reg[19] [16]),
        .I1(\REGS_reg[18] [16]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [16]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [16]),
        .O(\DO_tristate_oe[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[16]_i_9 
       (.I0(\REGS_reg[23] [16]),
        .I1(\REGS_reg[22] [16]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [16]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [16]),
        .O(\DO_tristate_oe[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[17]_i_1 
       (.I0(DI_IBUF[17]),
        .I1(\DO_tristate_oe_reg[17]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[17]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[17]_i_10 
       (.I0(\REGS_reg[27] [17]),
        .I1(\REGS_reg[26] [17]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [17]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [17]),
        .O(\DO_tristate_oe[17]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[17]_i_11 
       (.I0(\REGS_reg[31] [17]),
        .I1(\REGS_reg[30] [17]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [17]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [17]),
        .O(\DO_tristate_oe[17]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[17]_i_12 
       (.I0(\REGS_reg[3] [17]),
        .I1(\REGS_reg[2] [17]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [17]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [17]),
        .O(\DO_tristate_oe[17]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[17]_i_13 
       (.I0(\REGS_reg[7] [17]),
        .I1(\REGS_reg[6] [17]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [17]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [17]),
        .O(\DO_tristate_oe[17]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[17]_i_14 
       (.I0(\REGS_reg[11] [17]),
        .I1(\REGS_reg[10] [17]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [17]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [17]),
        .O(\DO_tristate_oe[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[17]_i_15 
       (.I0(\REGS_reg[15] [17]),
        .I1(\REGS_reg[14] [17]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [17]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [17]),
        .O(\DO_tristate_oe[17]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[17]_i_8 
       (.I0(\REGS_reg[19] [17]),
        .I1(\REGS_reg[18] [17]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [17]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [17]),
        .O(\DO_tristate_oe[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[17]_i_9 
       (.I0(\REGS_reg[23] [17]),
        .I1(\REGS_reg[22] [17]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [17]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [17]),
        .O(\DO_tristate_oe[17]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[18]_i_1 
       (.I0(DI_IBUF[18]),
        .I1(\DO_tristate_oe_reg[18]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[18]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[18]_i_10 
       (.I0(\REGS_reg[27] [18]),
        .I1(\REGS_reg[26] [18]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [18]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [18]),
        .O(\DO_tristate_oe[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[18]_i_11 
       (.I0(\REGS_reg[31] [18]),
        .I1(\REGS_reg[30] [18]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [18]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [18]),
        .O(\DO_tristate_oe[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[18]_i_12 
       (.I0(\REGS_reg[3] [18]),
        .I1(\REGS_reg[2] [18]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [18]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [18]),
        .O(\DO_tristate_oe[18]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[18]_i_13 
       (.I0(\REGS_reg[7] [18]),
        .I1(\REGS_reg[6] [18]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [18]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [18]),
        .O(\DO_tristate_oe[18]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[18]_i_14 
       (.I0(\REGS_reg[11] [18]),
        .I1(\REGS_reg[10] [18]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [18]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [18]),
        .O(\DO_tristate_oe[18]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[18]_i_15 
       (.I0(\REGS_reg[15] [18]),
        .I1(\REGS_reg[14] [18]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [18]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [18]),
        .O(\DO_tristate_oe[18]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[18]_i_8 
       (.I0(\REGS_reg[19] [18]),
        .I1(\REGS_reg[18] [18]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [18]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [18]),
        .O(\DO_tristate_oe[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[18]_i_9 
       (.I0(\REGS_reg[23] [18]),
        .I1(\REGS_reg[22] [18]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [18]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [18]),
        .O(\DO_tristate_oe[18]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[19]_i_1 
       (.I0(DI_IBUF[19]),
        .I1(\DO_tristate_oe_reg[19]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[19]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[19]_i_10 
       (.I0(\REGS_reg[27] [19]),
        .I1(\REGS_reg[26] [19]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [19]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [19]),
        .O(\DO_tristate_oe[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[19]_i_11 
       (.I0(\REGS_reg[31] [19]),
        .I1(\REGS_reg[30] [19]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [19]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [19]),
        .O(\DO_tristate_oe[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[19]_i_12 
       (.I0(\REGS_reg[3] [19]),
        .I1(\REGS_reg[2] [19]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [19]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [19]),
        .O(\DO_tristate_oe[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[19]_i_13 
       (.I0(\REGS_reg[7] [19]),
        .I1(\REGS_reg[6] [19]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [19]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [19]),
        .O(\DO_tristate_oe[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[19]_i_14 
       (.I0(\REGS_reg[11] [19]),
        .I1(\REGS_reg[10] [19]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [19]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [19]),
        .O(\DO_tristate_oe[19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[19]_i_15 
       (.I0(\REGS_reg[15] [19]),
        .I1(\REGS_reg[14] [19]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [19]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [19]),
        .O(\DO_tristate_oe[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[19]_i_8 
       (.I0(\REGS_reg[19] [19]),
        .I1(\REGS_reg[18] [19]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [19]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [19]),
        .O(\DO_tristate_oe[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[19]_i_9 
       (.I0(\REGS_reg[23] [19]),
        .I1(\REGS_reg[22] [19]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [19]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [19]),
        .O(\DO_tristate_oe[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[1]_i_1 
       (.I0(DI_IBUF[1]),
        .I1(\DO_tristate_oe_reg[1]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[1]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[1]_i_10 
       (.I0(\REGS_reg[27] [1]),
        .I1(\REGS_reg[26] [1]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [1]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [1]),
        .O(\DO_tristate_oe[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[1]_i_11 
       (.I0(\REGS_reg[31] [1]),
        .I1(\REGS_reg[30] [1]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [1]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [1]),
        .O(\DO_tristate_oe[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[1]_i_12 
       (.I0(\REGS_reg[3] [1]),
        .I1(\REGS_reg[2] [1]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [1]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [1]),
        .O(\DO_tristate_oe[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[1]_i_13 
       (.I0(\REGS_reg[7] [1]),
        .I1(\REGS_reg[6] [1]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [1]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [1]),
        .O(\DO_tristate_oe[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[1]_i_14 
       (.I0(\REGS_reg[11] [1]),
        .I1(\REGS_reg[10] [1]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [1]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [1]),
        .O(\DO_tristate_oe[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[1]_i_15 
       (.I0(\REGS_reg[15] [1]),
        .I1(\REGS_reg[14] [1]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [1]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [1]),
        .O(\DO_tristate_oe[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[1]_i_8 
       (.I0(\REGS_reg[19] [1]),
        .I1(\REGS_reg[18] [1]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [1]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [1]),
        .O(\DO_tristate_oe[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[1]_i_9 
       (.I0(\REGS_reg[23] [1]),
        .I1(\REGS_reg[22] [1]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [1]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [1]),
        .O(\DO_tristate_oe[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[20]_i_1 
       (.I0(DI_IBUF[20]),
        .I1(\DO_tristate_oe_reg[20]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[20]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[20]_i_10 
       (.I0(\REGS_reg[27] [20]),
        .I1(\REGS_reg[26] [20]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [20]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [20]),
        .O(\DO_tristate_oe[20]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[20]_i_11 
       (.I0(\REGS_reg[31] [20]),
        .I1(\REGS_reg[30] [20]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [20]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [20]),
        .O(\DO_tristate_oe[20]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[20]_i_12 
       (.I0(\REGS_reg[3] [20]),
        .I1(\REGS_reg[2] [20]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [20]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [20]),
        .O(\DO_tristate_oe[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[20]_i_13 
       (.I0(\REGS_reg[7] [20]),
        .I1(\REGS_reg[6] [20]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [20]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [20]),
        .O(\DO_tristate_oe[20]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[20]_i_14 
       (.I0(\REGS_reg[11] [20]),
        .I1(\REGS_reg[10] [20]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [20]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [20]),
        .O(\DO_tristate_oe[20]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[20]_i_15 
       (.I0(\REGS_reg[15] [20]),
        .I1(\REGS_reg[14] [20]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [20]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [20]),
        .O(\DO_tristate_oe[20]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[20]_i_8 
       (.I0(\REGS_reg[19] [20]),
        .I1(\REGS_reg[18] [20]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [20]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [20]),
        .O(\DO_tristate_oe[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[20]_i_9 
       (.I0(\REGS_reg[23] [20]),
        .I1(\REGS_reg[22] [20]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [20]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [20]),
        .O(\DO_tristate_oe[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[21]_i_1 
       (.I0(DI_IBUF[21]),
        .I1(\DO_tristate_oe_reg[21]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[21]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[21]_i_10 
       (.I0(\REGS_reg[27] [21]),
        .I1(\REGS_reg[26] [21]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [21]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [21]),
        .O(\DO_tristate_oe[21]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[21]_i_11 
       (.I0(\REGS_reg[31] [21]),
        .I1(\REGS_reg[30] [21]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [21]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [21]),
        .O(\DO_tristate_oe[21]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[21]_i_12 
       (.I0(\REGS_reg[3] [21]),
        .I1(\REGS_reg[2] [21]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [21]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [21]),
        .O(\DO_tristate_oe[21]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[21]_i_13 
       (.I0(\REGS_reg[7] [21]),
        .I1(\REGS_reg[6] [21]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [21]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [21]),
        .O(\DO_tristate_oe[21]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[21]_i_14 
       (.I0(\REGS_reg[11] [21]),
        .I1(\REGS_reg[10] [21]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [21]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [21]),
        .O(\DO_tristate_oe[21]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[21]_i_15 
       (.I0(\REGS_reg[15] [21]),
        .I1(\REGS_reg[14] [21]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [21]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [21]),
        .O(\DO_tristate_oe[21]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[21]_i_8 
       (.I0(\REGS_reg[19] [21]),
        .I1(\REGS_reg[18] [21]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [21]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [21]),
        .O(\DO_tristate_oe[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[21]_i_9 
       (.I0(\REGS_reg[23] [21]),
        .I1(\REGS_reg[22] [21]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [21]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [21]),
        .O(\DO_tristate_oe[21]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[22]_i_1 
       (.I0(DI_IBUF[22]),
        .I1(\DO_tristate_oe_reg[22]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[22]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[22]_i_10 
       (.I0(\REGS_reg[27] [22]),
        .I1(\REGS_reg[26] [22]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [22]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [22]),
        .O(\DO_tristate_oe[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[22]_i_11 
       (.I0(\REGS_reg[31] [22]),
        .I1(\REGS_reg[30] [22]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [22]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [22]),
        .O(\DO_tristate_oe[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[22]_i_12 
       (.I0(\REGS_reg[3] [22]),
        .I1(\REGS_reg[2] [22]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [22]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [22]),
        .O(\DO_tristate_oe[22]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[22]_i_13 
       (.I0(\REGS_reg[7] [22]),
        .I1(\REGS_reg[6] [22]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [22]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [22]),
        .O(\DO_tristate_oe[22]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[22]_i_14 
       (.I0(\REGS_reg[11] [22]),
        .I1(\REGS_reg[10] [22]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [22]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [22]),
        .O(\DO_tristate_oe[22]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[22]_i_15 
       (.I0(\REGS_reg[15] [22]),
        .I1(\REGS_reg[14] [22]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [22]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [22]),
        .O(\DO_tristate_oe[22]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[22]_i_8 
       (.I0(\REGS_reg[19] [22]),
        .I1(\REGS_reg[18] [22]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [22]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [22]),
        .O(\DO_tristate_oe[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[22]_i_9 
       (.I0(\REGS_reg[23] [22]),
        .I1(\REGS_reg[22] [22]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [22]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [22]),
        .O(\DO_tristate_oe[22]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[23]_i_1 
       (.I0(DI_IBUF[23]),
        .I1(\DO_tristate_oe_reg[23]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[23]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[23]_i_10 
       (.I0(\REGS_reg[27] [23]),
        .I1(\REGS_reg[26] [23]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [23]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [23]),
        .O(\DO_tristate_oe[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[23]_i_11 
       (.I0(\REGS_reg[31] [23]),
        .I1(\REGS_reg[30] [23]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [23]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [23]),
        .O(\DO_tristate_oe[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[23]_i_12 
       (.I0(\REGS_reg[3] [23]),
        .I1(\REGS_reg[2] [23]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [23]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [23]),
        .O(\DO_tristate_oe[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[23]_i_13 
       (.I0(\REGS_reg[7] [23]),
        .I1(\REGS_reg[6] [23]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [23]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [23]),
        .O(\DO_tristate_oe[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[23]_i_14 
       (.I0(\REGS_reg[11] [23]),
        .I1(\REGS_reg[10] [23]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [23]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [23]),
        .O(\DO_tristate_oe[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[23]_i_15 
       (.I0(\REGS_reg[15] [23]),
        .I1(\REGS_reg[14] [23]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [23]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [23]),
        .O(\DO_tristate_oe[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[23]_i_8 
       (.I0(\REGS_reg[19] [23]),
        .I1(\REGS_reg[18] [23]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [23]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [23]),
        .O(\DO_tristate_oe[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[23]_i_9 
       (.I0(\REGS_reg[23] [23]),
        .I1(\REGS_reg[22] [23]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [23]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [23]),
        .O(\DO_tristate_oe[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[24]_i_1 
       (.I0(DI_IBUF[24]),
        .I1(\DO_tristate_oe_reg[24]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[24]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[24]_i_10 
       (.I0(\REGS_reg[27] [24]),
        .I1(\REGS_reg[26] [24]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [24]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [24]),
        .O(\DO_tristate_oe[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[24]_i_11 
       (.I0(\REGS_reg[31] [24]),
        .I1(\REGS_reg[30] [24]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [24]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [24]),
        .O(\DO_tristate_oe[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[24]_i_12 
       (.I0(\REGS_reg[3] [24]),
        .I1(\REGS_reg[2] [24]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [24]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [24]),
        .O(\DO_tristate_oe[24]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[24]_i_13 
       (.I0(\REGS_reg[7] [24]),
        .I1(\REGS_reg[6] [24]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [24]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [24]),
        .O(\DO_tristate_oe[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[24]_i_14 
       (.I0(\REGS_reg[11] [24]),
        .I1(\REGS_reg[10] [24]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [24]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [24]),
        .O(\DO_tristate_oe[24]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[24]_i_15 
       (.I0(\REGS_reg[15] [24]),
        .I1(\REGS_reg[14] [24]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [24]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [24]),
        .O(\DO_tristate_oe[24]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[24]_i_8 
       (.I0(\REGS_reg[19] [24]),
        .I1(\REGS_reg[18] [24]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [24]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [24]),
        .O(\DO_tristate_oe[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[24]_i_9 
       (.I0(\REGS_reg[23] [24]),
        .I1(\REGS_reg[22] [24]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [24]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [24]),
        .O(\DO_tristate_oe[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[25]_i_1 
       (.I0(DI_IBUF[25]),
        .I1(\DO_tristate_oe_reg[25]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[25]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[25]_i_10 
       (.I0(\REGS_reg[27] [25]),
        .I1(\REGS_reg[26] [25]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [25]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [25]),
        .O(\DO_tristate_oe[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[25]_i_11 
       (.I0(\REGS_reg[31] [25]),
        .I1(\REGS_reg[30] [25]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [25]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [25]),
        .O(\DO_tristate_oe[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[25]_i_12 
       (.I0(\REGS_reg[3] [25]),
        .I1(\REGS_reg[2] [25]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [25]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [25]),
        .O(\DO_tristate_oe[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[25]_i_13 
       (.I0(\REGS_reg[7] [25]),
        .I1(\REGS_reg[6] [25]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [25]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [25]),
        .O(\DO_tristate_oe[25]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[25]_i_14 
       (.I0(\REGS_reg[11] [25]),
        .I1(\REGS_reg[10] [25]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [25]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [25]),
        .O(\DO_tristate_oe[25]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[25]_i_15 
       (.I0(\REGS_reg[15] [25]),
        .I1(\REGS_reg[14] [25]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [25]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [25]),
        .O(\DO_tristate_oe[25]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[25]_i_8 
       (.I0(\REGS_reg[19] [25]),
        .I1(\REGS_reg[18] [25]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [25]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [25]),
        .O(\DO_tristate_oe[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[25]_i_9 
       (.I0(\REGS_reg[23] [25]),
        .I1(\REGS_reg[22] [25]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [25]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [25]),
        .O(\DO_tristate_oe[25]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[26]_i_1 
       (.I0(DI_IBUF[26]),
        .I1(\DO_tristate_oe_reg[26]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[26]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[26]_i_10 
       (.I0(\REGS_reg[27] [26]),
        .I1(\REGS_reg[26] [26]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [26]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [26]),
        .O(\DO_tristate_oe[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[26]_i_11 
       (.I0(\REGS_reg[31] [26]),
        .I1(\REGS_reg[30] [26]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [26]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [26]),
        .O(\DO_tristate_oe[26]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[26]_i_12 
       (.I0(\REGS_reg[3] [26]),
        .I1(\REGS_reg[2] [26]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [26]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [26]),
        .O(\DO_tristate_oe[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[26]_i_13 
       (.I0(\REGS_reg[7] [26]),
        .I1(\REGS_reg[6] [26]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [26]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [26]),
        .O(\DO_tristate_oe[26]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[26]_i_14 
       (.I0(\REGS_reg[11] [26]),
        .I1(\REGS_reg[10] [26]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [26]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [26]),
        .O(\DO_tristate_oe[26]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[26]_i_15 
       (.I0(\REGS_reg[15] [26]),
        .I1(\REGS_reg[14] [26]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [26]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [26]),
        .O(\DO_tristate_oe[26]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[26]_i_8 
       (.I0(\REGS_reg[19] [26]),
        .I1(\REGS_reg[18] [26]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [26]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [26]),
        .O(\DO_tristate_oe[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[26]_i_9 
       (.I0(\REGS_reg[23] [26]),
        .I1(\REGS_reg[22] [26]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [26]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [26]),
        .O(\DO_tristate_oe[26]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[27]_i_1 
       (.I0(DI_IBUF[27]),
        .I1(\DO_tristate_oe_reg[27]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[27]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[27]_i_10 
       (.I0(\REGS_reg[27] [27]),
        .I1(\REGS_reg[26] [27]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [27]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [27]),
        .O(\DO_tristate_oe[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[27]_i_11 
       (.I0(\REGS_reg[31] [27]),
        .I1(\REGS_reg[30] [27]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [27]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [27]),
        .O(\DO_tristate_oe[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[27]_i_12 
       (.I0(\REGS_reg[3] [27]),
        .I1(\REGS_reg[2] [27]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [27]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [27]),
        .O(\DO_tristate_oe[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[27]_i_13 
       (.I0(\REGS_reg[7] [27]),
        .I1(\REGS_reg[6] [27]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [27]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [27]),
        .O(\DO_tristate_oe[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[27]_i_14 
       (.I0(\REGS_reg[11] [27]),
        .I1(\REGS_reg[10] [27]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [27]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [27]),
        .O(\DO_tristate_oe[27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[27]_i_15 
       (.I0(\REGS_reg[15] [27]),
        .I1(\REGS_reg[14] [27]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [27]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [27]),
        .O(\DO_tristate_oe[27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[27]_i_8 
       (.I0(\REGS_reg[19] [27]),
        .I1(\REGS_reg[18] [27]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [27]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [27]),
        .O(\DO_tristate_oe[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[27]_i_9 
       (.I0(\REGS_reg[23] [27]),
        .I1(\REGS_reg[22] [27]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [27]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [27]),
        .O(\DO_tristate_oe[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[28]_i_1 
       (.I0(DI_IBUF[28]),
        .I1(\DO_tristate_oe_reg[28]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[28]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[28]_i_10 
       (.I0(\REGS_reg[27] [28]),
        .I1(\REGS_reg[26] [28]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [28]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [28]),
        .O(\DO_tristate_oe[28]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[28]_i_11 
       (.I0(\REGS_reg[31] [28]),
        .I1(\REGS_reg[30] [28]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [28]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [28]),
        .O(\DO_tristate_oe[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[28]_i_12 
       (.I0(\REGS_reg[3] [28]),
        .I1(\REGS_reg[2] [28]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [28]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [28]),
        .O(\DO_tristate_oe[28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[28]_i_13 
       (.I0(\REGS_reg[7] [28]),
        .I1(\REGS_reg[6] [28]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [28]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [28]),
        .O(\DO_tristate_oe[28]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[28]_i_14 
       (.I0(\REGS_reg[11] [28]),
        .I1(\REGS_reg[10] [28]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [28]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [28]),
        .O(\DO_tristate_oe[28]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[28]_i_15 
       (.I0(\REGS_reg[15] [28]),
        .I1(\REGS_reg[14] [28]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [28]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [28]),
        .O(\DO_tristate_oe[28]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[28]_i_8 
       (.I0(\REGS_reg[19] [28]),
        .I1(\REGS_reg[18] [28]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [28]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [28]),
        .O(\DO_tristate_oe[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[28]_i_9 
       (.I0(\REGS_reg[23] [28]),
        .I1(\REGS_reg[22] [28]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [28]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [28]),
        .O(\DO_tristate_oe[28]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[29]_i_1 
       (.I0(DI_IBUF[29]),
        .I1(\DO_tristate_oe_reg[29]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[29]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[29]_i_10 
       (.I0(\REGS_reg[27] [29]),
        .I1(\REGS_reg[26] [29]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [29]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [29]),
        .O(\DO_tristate_oe[29]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[29]_i_11 
       (.I0(\REGS_reg[31] [29]),
        .I1(\REGS_reg[30] [29]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [29]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [29]),
        .O(\DO_tristate_oe[29]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[29]_i_12 
       (.I0(\REGS_reg[3] [29]),
        .I1(\REGS_reg[2] [29]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [29]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [29]),
        .O(\DO_tristate_oe[29]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[29]_i_13 
       (.I0(\REGS_reg[7] [29]),
        .I1(\REGS_reg[6] [29]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [29]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [29]),
        .O(\DO_tristate_oe[29]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[29]_i_14 
       (.I0(\REGS_reg[11] [29]),
        .I1(\REGS_reg[10] [29]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [29]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [29]),
        .O(\DO_tristate_oe[29]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[29]_i_15 
       (.I0(\REGS_reg[15] [29]),
        .I1(\REGS_reg[14] [29]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [29]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [29]),
        .O(\DO_tristate_oe[29]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[29]_i_8 
       (.I0(\REGS_reg[19] [29]),
        .I1(\REGS_reg[18] [29]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [29]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [29]),
        .O(\DO_tristate_oe[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[29]_i_9 
       (.I0(\REGS_reg[23] [29]),
        .I1(\REGS_reg[22] [29]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [29]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [29]),
        .O(\DO_tristate_oe[29]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[2]_i_1 
       (.I0(DI_IBUF[2]),
        .I1(\DO_tristate_oe_reg[2]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[2]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[2]_i_10 
       (.I0(\REGS_reg[27] [2]),
        .I1(\REGS_reg[26] [2]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [2]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [2]),
        .O(\DO_tristate_oe[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[2]_i_11 
       (.I0(\REGS_reg[31] [2]),
        .I1(\REGS_reg[30] [2]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [2]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [2]),
        .O(\DO_tristate_oe[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[2]_i_12 
       (.I0(\REGS_reg[3] [2]),
        .I1(\REGS_reg[2] [2]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [2]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [2]),
        .O(\DO_tristate_oe[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[2]_i_13 
       (.I0(\REGS_reg[7] [2]),
        .I1(\REGS_reg[6] [2]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [2]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [2]),
        .O(\DO_tristate_oe[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[2]_i_14 
       (.I0(\REGS_reg[11] [2]),
        .I1(\REGS_reg[10] [2]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [2]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [2]),
        .O(\DO_tristate_oe[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[2]_i_15 
       (.I0(\REGS_reg[15] [2]),
        .I1(\REGS_reg[14] [2]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [2]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [2]),
        .O(\DO_tristate_oe[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[2]_i_8 
       (.I0(\REGS_reg[19] [2]),
        .I1(\REGS_reg[18] [2]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [2]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [2]),
        .O(\DO_tristate_oe[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[2]_i_9 
       (.I0(\REGS_reg[23] [2]),
        .I1(\REGS_reg[22] [2]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [2]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [2]),
        .O(\DO_tristate_oe[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[30]_i_1 
       (.I0(DI_IBUF[30]),
        .I1(\DO_tristate_oe_reg[30]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[30]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[30]_i_10 
       (.I0(\REGS_reg[27] [30]),
        .I1(\REGS_reg[26] [30]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [30]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [30]),
        .O(\DO_tristate_oe[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[30]_i_11 
       (.I0(\REGS_reg[31] [30]),
        .I1(\REGS_reg[30] [30]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [30]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [30]),
        .O(\DO_tristate_oe[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[30]_i_12 
       (.I0(\REGS_reg[3] [30]),
        .I1(\REGS_reg[2] [30]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [30]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [30]),
        .O(\DO_tristate_oe[30]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[30]_i_13 
       (.I0(\REGS_reg[7] [30]),
        .I1(\REGS_reg[6] [30]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [30]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [30]),
        .O(\DO_tristate_oe[30]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[30]_i_14 
       (.I0(\REGS_reg[11] [30]),
        .I1(\REGS_reg[10] [30]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [30]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [30]),
        .O(\DO_tristate_oe[30]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[30]_i_15 
       (.I0(\REGS_reg[15] [30]),
        .I1(\REGS_reg[14] [30]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [30]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [30]),
        .O(\DO_tristate_oe[30]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[30]_i_8 
       (.I0(\REGS_reg[19] [30]),
        .I1(\REGS_reg[18] [30]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [30]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [30]),
        .O(\DO_tristate_oe[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[30]_i_9 
       (.I0(\REGS_reg[23] [30]),
        .I1(\REGS_reg[22] [30]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [30]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [30]),
        .O(\DO_tristate_oe[30]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[31]_i_1 
       (.I0(DI_IBUF[31]),
        .I1(\DO_tristate_oe_reg[31]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[31]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[31]_i_10 
       (.I0(\REGS_reg[27] [31]),
        .I1(\REGS_reg[26] [31]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [31]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [31]),
        .O(\DO_tristate_oe[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[31]_i_11 
       (.I0(\REGS_reg[31] [31]),
        .I1(\REGS_reg[30] [31]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [31]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [31]),
        .O(\DO_tristate_oe[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[31]_i_12 
       (.I0(\REGS_reg[3] [31]),
        .I1(\REGS_reg[2] [31]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [31]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [31]),
        .O(\DO_tristate_oe[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[31]_i_13 
       (.I0(\REGS_reg[7] [31]),
        .I1(\REGS_reg[6] [31]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [31]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [31]),
        .O(\DO_tristate_oe[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[31]_i_14 
       (.I0(\REGS_reg[11] [31]),
        .I1(\REGS_reg[10] [31]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [31]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [31]),
        .O(\DO_tristate_oe[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[31]_i_15 
       (.I0(\REGS_reg[15] [31]),
        .I1(\REGS_reg[14] [31]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [31]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [31]),
        .O(\DO_tristate_oe[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[31]_i_8 
       (.I0(\REGS_reg[19] [31]),
        .I1(\REGS_reg[18] [31]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [31]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [31]),
        .O(\DO_tristate_oe[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[31]_i_9 
       (.I0(\REGS_reg[23] [31]),
        .I1(\REGS_reg[22] [31]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [31]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [31]),
        .O(\DO_tristate_oe[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[3]_i_1 
       (.I0(DI_IBUF[3]),
        .I1(\DO_tristate_oe_reg[3]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[3]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[3]_i_10 
       (.I0(\REGS_reg[27] [3]),
        .I1(\REGS_reg[26] [3]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [3]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [3]),
        .O(\DO_tristate_oe[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[3]_i_11 
       (.I0(\REGS_reg[31] [3]),
        .I1(\REGS_reg[30] [3]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [3]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [3]),
        .O(\DO_tristate_oe[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[3]_i_12 
       (.I0(\REGS_reg[3] [3]),
        .I1(\REGS_reg[2] [3]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [3]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [3]),
        .O(\DO_tristate_oe[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[3]_i_13 
       (.I0(\REGS_reg[7] [3]),
        .I1(\REGS_reg[6] [3]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [3]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [3]),
        .O(\DO_tristate_oe[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[3]_i_14 
       (.I0(\REGS_reg[11] [3]),
        .I1(\REGS_reg[10] [3]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [3]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [3]),
        .O(\DO_tristate_oe[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[3]_i_15 
       (.I0(\REGS_reg[15] [3]),
        .I1(\REGS_reg[14] [3]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [3]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [3]),
        .O(\DO_tristate_oe[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[3]_i_8 
       (.I0(\REGS_reg[19] [3]),
        .I1(\REGS_reg[18] [3]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [3]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [3]),
        .O(\DO_tristate_oe[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[3]_i_9 
       (.I0(\REGS_reg[23] [3]),
        .I1(\REGS_reg[22] [3]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [3]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [3]),
        .O(\DO_tristate_oe[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[4]_i_1 
       (.I0(DI_IBUF[4]),
        .I1(\DO_tristate_oe_reg[4]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[4]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[4]_i_10 
       (.I0(\REGS_reg[27] [4]),
        .I1(\REGS_reg[26] [4]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [4]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [4]),
        .O(\DO_tristate_oe[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[4]_i_11 
       (.I0(\REGS_reg[31] [4]),
        .I1(\REGS_reg[30] [4]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [4]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [4]),
        .O(\DO_tristate_oe[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[4]_i_12 
       (.I0(\REGS_reg[3] [4]),
        .I1(\REGS_reg[2] [4]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [4]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [4]),
        .O(\DO_tristate_oe[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[4]_i_13 
       (.I0(\REGS_reg[7] [4]),
        .I1(\REGS_reg[6] [4]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [4]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [4]),
        .O(\DO_tristate_oe[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[4]_i_14 
       (.I0(\REGS_reg[11] [4]),
        .I1(\REGS_reg[10] [4]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [4]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [4]),
        .O(\DO_tristate_oe[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[4]_i_15 
       (.I0(\REGS_reg[15] [4]),
        .I1(\REGS_reg[14] [4]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [4]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [4]),
        .O(\DO_tristate_oe[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[4]_i_8 
       (.I0(\REGS_reg[19] [4]),
        .I1(\REGS_reg[18] [4]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [4]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [4]),
        .O(\DO_tristate_oe[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[4]_i_9 
       (.I0(\REGS_reg[23] [4]),
        .I1(\REGS_reg[22] [4]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [4]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [4]),
        .O(\DO_tristate_oe[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[5]_i_1 
       (.I0(DI_IBUF[5]),
        .I1(\DO_tristate_oe_reg[5]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[5]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[5]_i_10 
       (.I0(\REGS_reg[27] [5]),
        .I1(\REGS_reg[26] [5]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [5]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [5]),
        .O(\DO_tristate_oe[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[5]_i_11 
       (.I0(\REGS_reg[31] [5]),
        .I1(\REGS_reg[30] [5]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [5]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [5]),
        .O(\DO_tristate_oe[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[5]_i_12 
       (.I0(\REGS_reg[3] [5]),
        .I1(\REGS_reg[2] [5]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [5]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [5]),
        .O(\DO_tristate_oe[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[5]_i_13 
       (.I0(\REGS_reg[7] [5]),
        .I1(\REGS_reg[6] [5]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [5]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [5]),
        .O(\DO_tristate_oe[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[5]_i_14 
       (.I0(\REGS_reg[11] [5]),
        .I1(\REGS_reg[10] [5]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [5]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [5]),
        .O(\DO_tristate_oe[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[5]_i_15 
       (.I0(\REGS_reg[15] [5]),
        .I1(\REGS_reg[14] [5]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [5]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [5]),
        .O(\DO_tristate_oe[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[5]_i_8 
       (.I0(\REGS_reg[19] [5]),
        .I1(\REGS_reg[18] [5]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [5]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [5]),
        .O(\DO_tristate_oe[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[5]_i_9 
       (.I0(\REGS_reg[23] [5]),
        .I1(\REGS_reg[22] [5]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [5]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [5]),
        .O(\DO_tristate_oe[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[6]_i_1 
       (.I0(DI_IBUF[6]),
        .I1(\DO_tristate_oe_reg[6]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[6]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[6]_i_10 
       (.I0(\REGS_reg[27] [6]),
        .I1(\REGS_reg[26] [6]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [6]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [6]),
        .O(\DO_tristate_oe[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[6]_i_11 
       (.I0(\REGS_reg[31] [6]),
        .I1(\REGS_reg[30] [6]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [6]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [6]),
        .O(\DO_tristate_oe[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[6]_i_12 
       (.I0(\REGS_reg[3] [6]),
        .I1(\REGS_reg[2] [6]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [6]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [6]),
        .O(\DO_tristate_oe[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[6]_i_13 
       (.I0(\REGS_reg[7] [6]),
        .I1(\REGS_reg[6] [6]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [6]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [6]),
        .O(\DO_tristate_oe[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[6]_i_14 
       (.I0(\REGS_reg[11] [6]),
        .I1(\REGS_reg[10] [6]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [6]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [6]),
        .O(\DO_tristate_oe[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[6]_i_15 
       (.I0(\REGS_reg[15] [6]),
        .I1(\REGS_reg[14] [6]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [6]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [6]),
        .O(\DO_tristate_oe[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[6]_i_8 
       (.I0(\REGS_reg[19] [6]),
        .I1(\REGS_reg[18] [6]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [6]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [6]),
        .O(\DO_tristate_oe[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[6]_i_9 
       (.I0(\REGS_reg[23] [6]),
        .I1(\REGS_reg[22] [6]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [6]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [6]),
        .O(\DO_tristate_oe[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[7]_i_1 
       (.I0(DI_IBUF[7]),
        .I1(\DO_tristate_oe_reg[7]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[7]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[7]_i_10 
       (.I0(\REGS_reg[27] [7]),
        .I1(\REGS_reg[26] [7]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [7]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [7]),
        .O(\DO_tristate_oe[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[7]_i_11 
       (.I0(\REGS_reg[31] [7]),
        .I1(\REGS_reg[30] [7]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [7]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [7]),
        .O(\DO_tristate_oe[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[7]_i_12 
       (.I0(\REGS_reg[3] [7]),
        .I1(\REGS_reg[2] [7]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [7]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [7]),
        .O(\DO_tristate_oe[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[7]_i_13 
       (.I0(\REGS_reg[7] [7]),
        .I1(\REGS_reg[6] [7]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [7]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [7]),
        .O(\DO_tristate_oe[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[7]_i_14 
       (.I0(\REGS_reg[11] [7]),
        .I1(\REGS_reg[10] [7]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [7]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [7]),
        .O(\DO_tristate_oe[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[7]_i_15 
       (.I0(\REGS_reg[15] [7]),
        .I1(\REGS_reg[14] [7]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [7]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [7]),
        .O(\DO_tristate_oe[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[7]_i_8 
       (.I0(\REGS_reg[19] [7]),
        .I1(\REGS_reg[18] [7]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [7]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [7]),
        .O(\DO_tristate_oe[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[7]_i_9 
       (.I0(\REGS_reg[23] [7]),
        .I1(\REGS_reg[22] [7]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [7]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [7]),
        .O(\DO_tristate_oe[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[8]_i_1 
       (.I0(DI_IBUF[8]),
        .I1(\DO_tristate_oe_reg[8]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[8]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[8]_i_10 
       (.I0(\REGS_reg[27] [8]),
        .I1(\REGS_reg[26] [8]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [8]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [8]),
        .O(\DO_tristate_oe[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[8]_i_11 
       (.I0(\REGS_reg[31] [8]),
        .I1(\REGS_reg[30] [8]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [8]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [8]),
        .O(\DO_tristate_oe[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[8]_i_12 
       (.I0(\REGS_reg[3] [8]),
        .I1(\REGS_reg[2] [8]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [8]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [8]),
        .O(\DO_tristate_oe[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[8]_i_13 
       (.I0(\REGS_reg[7] [8]),
        .I1(\REGS_reg[6] [8]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [8]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [8]),
        .O(\DO_tristate_oe[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[8]_i_14 
       (.I0(\REGS_reg[11] [8]),
        .I1(\REGS_reg[10] [8]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [8]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [8]),
        .O(\DO_tristate_oe[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[8]_i_15 
       (.I0(\REGS_reg[15] [8]),
        .I1(\REGS_reg[14] [8]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [8]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [8]),
        .O(\DO_tristate_oe[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[8]_i_8 
       (.I0(\REGS_reg[19] [8]),
        .I1(\REGS_reg[18] [8]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [8]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [8]),
        .O(\DO_tristate_oe[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[8]_i_9 
       (.I0(\REGS_reg[23] [8]),
        .I1(\REGS_reg[22] [8]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [8]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [8]),
        .O(\DO_tristate_oe[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \DO_tristate_oe[9]_i_1 
       (.I0(DI_IBUF[9]),
        .I1(\DO_tristate_oe_reg[9]_i_2_n_0 ),
        .I2(ADR_IBUF[4]),
        .I3(\DO_tristate_oe_reg[9]_i_3_n_0 ),
        .I4(WEN_IBUF),
        .O(\DO_tristate_oe[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[9]_i_10 
       (.I0(\REGS_reg[27] [9]),
        .I1(\REGS_reg[26] [9]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[25] [9]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[24] [9]),
        .O(\DO_tristate_oe[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[9]_i_11 
       (.I0(\REGS_reg[31] [9]),
        .I1(\REGS_reg[30] [9]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[29] [9]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[28] [9]),
        .O(\DO_tristate_oe[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[9]_i_12 
       (.I0(\REGS_reg[3] [9]),
        .I1(\REGS_reg[2] [9]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[1] [9]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[0] [9]),
        .O(\DO_tristate_oe[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[9]_i_13 
       (.I0(\REGS_reg[7] [9]),
        .I1(\REGS_reg[6] [9]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[5] [9]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[4] [9]),
        .O(\DO_tristate_oe[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[9]_i_14 
       (.I0(\REGS_reg[11] [9]),
        .I1(\REGS_reg[10] [9]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[9] [9]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[8] [9]),
        .O(\DO_tristate_oe[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[9]_i_15 
       (.I0(\REGS_reg[15] [9]),
        .I1(\REGS_reg[14] [9]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[13] [9]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[12] [9]),
        .O(\DO_tristate_oe[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[9]_i_8 
       (.I0(\REGS_reg[19] [9]),
        .I1(\REGS_reg[18] [9]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[17] [9]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[16] [9]),
        .O(\DO_tristate_oe[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DO_tristate_oe[9]_i_9 
       (.I0(\REGS_reg[23] [9]),
        .I1(\REGS_reg[22] [9]),
        .I2(ADR_IBUF[1]),
        .I3(\REGS_reg[21] [9]),
        .I4(ADR_IBUF[0]),
        .I5(\REGS_reg[20] [9]),
        .O(\DO_tristate_oe[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[0]_i_1_n_0 ),
        .Q(DO_OBUF[0]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[0]_i_2 
       (.I0(\DO_tristate_oe_reg[0]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[0]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[0]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[0]_i_3 
       (.I0(\DO_tristate_oe_reg[0]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[0]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[0]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[0]_i_4 
       (.I0(\DO_tristate_oe[0]_i_8_n_0 ),
        .I1(\DO_tristate_oe[0]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[0]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[0]_i_5 
       (.I0(\DO_tristate_oe[0]_i_10_n_0 ),
        .I1(\DO_tristate_oe[0]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[0]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[0]_i_6 
       (.I0(\DO_tristate_oe[0]_i_12_n_0 ),
        .I1(\DO_tristate_oe[0]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[0]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[0]_i_7 
       (.I0(\DO_tristate_oe[0]_i_14_n_0 ),
        .I1(\DO_tristate_oe[0]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[0]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[10]_i_1_n_0 ),
        .Q(DO_OBUF[10]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[10]_i_2 
       (.I0(\DO_tristate_oe_reg[10]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[10]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[10]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[10]_i_3 
       (.I0(\DO_tristate_oe_reg[10]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[10]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[10]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[10]_i_4 
       (.I0(\DO_tristate_oe[10]_i_8_n_0 ),
        .I1(\DO_tristate_oe[10]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[10]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[10]_i_5 
       (.I0(\DO_tristate_oe[10]_i_10_n_0 ),
        .I1(\DO_tristate_oe[10]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[10]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[10]_i_6 
       (.I0(\DO_tristate_oe[10]_i_12_n_0 ),
        .I1(\DO_tristate_oe[10]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[10]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[10]_i_7 
       (.I0(\DO_tristate_oe[10]_i_14_n_0 ),
        .I1(\DO_tristate_oe[10]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[10]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[11]_i_1_n_0 ),
        .Q(DO_OBUF[11]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[11]_i_2 
       (.I0(\DO_tristate_oe_reg[11]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[11]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[11]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[11]_i_3 
       (.I0(\DO_tristate_oe_reg[11]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[11]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[11]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[11]_i_4 
       (.I0(\DO_tristate_oe[11]_i_8_n_0 ),
        .I1(\DO_tristate_oe[11]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[11]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[11]_i_5 
       (.I0(\DO_tristate_oe[11]_i_10_n_0 ),
        .I1(\DO_tristate_oe[11]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[11]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[11]_i_6 
       (.I0(\DO_tristate_oe[11]_i_12_n_0 ),
        .I1(\DO_tristate_oe[11]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[11]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[11]_i_7 
       (.I0(\DO_tristate_oe[11]_i_14_n_0 ),
        .I1(\DO_tristate_oe[11]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[11]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[12]_i_1_n_0 ),
        .Q(DO_OBUF[12]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[12]_i_2 
       (.I0(\DO_tristate_oe_reg[12]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[12]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[12]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[12]_i_3 
       (.I0(\DO_tristate_oe_reg[12]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[12]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[12]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[12]_i_4 
       (.I0(\DO_tristate_oe[12]_i_8_n_0 ),
        .I1(\DO_tristate_oe[12]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[12]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[12]_i_5 
       (.I0(\DO_tristate_oe[12]_i_10_n_0 ),
        .I1(\DO_tristate_oe[12]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[12]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[12]_i_6 
       (.I0(\DO_tristate_oe[12]_i_12_n_0 ),
        .I1(\DO_tristate_oe[12]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[12]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[12]_i_7 
       (.I0(\DO_tristate_oe[12]_i_14_n_0 ),
        .I1(\DO_tristate_oe[12]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[12]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[13]_i_1_n_0 ),
        .Q(DO_OBUF[13]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[13]_i_2 
       (.I0(\DO_tristate_oe_reg[13]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[13]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[13]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[13]_i_3 
       (.I0(\DO_tristate_oe_reg[13]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[13]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[13]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[13]_i_4 
       (.I0(\DO_tristate_oe[13]_i_8_n_0 ),
        .I1(\DO_tristate_oe[13]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[13]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[13]_i_5 
       (.I0(\DO_tristate_oe[13]_i_10_n_0 ),
        .I1(\DO_tristate_oe[13]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[13]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[13]_i_6 
       (.I0(\DO_tristate_oe[13]_i_12_n_0 ),
        .I1(\DO_tristate_oe[13]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[13]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[13]_i_7 
       (.I0(\DO_tristate_oe[13]_i_14_n_0 ),
        .I1(\DO_tristate_oe[13]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[13]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[14]_i_1_n_0 ),
        .Q(DO_OBUF[14]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[14]_i_2 
       (.I0(\DO_tristate_oe_reg[14]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[14]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[14]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[14]_i_3 
       (.I0(\DO_tristate_oe_reg[14]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[14]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[14]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[14]_i_4 
       (.I0(\DO_tristate_oe[14]_i_8_n_0 ),
        .I1(\DO_tristate_oe[14]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[14]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[14]_i_5 
       (.I0(\DO_tristate_oe[14]_i_10_n_0 ),
        .I1(\DO_tristate_oe[14]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[14]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[14]_i_6 
       (.I0(\DO_tristate_oe[14]_i_12_n_0 ),
        .I1(\DO_tristate_oe[14]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[14]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[14]_i_7 
       (.I0(\DO_tristate_oe[14]_i_14_n_0 ),
        .I1(\DO_tristate_oe[14]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[14]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[15]_i_1_n_0 ),
        .Q(DO_OBUF[15]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[15]_i_2 
       (.I0(\DO_tristate_oe_reg[15]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[15]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[15]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[15]_i_3 
       (.I0(\DO_tristate_oe_reg[15]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[15]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[15]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[15]_i_4 
       (.I0(\DO_tristate_oe[15]_i_8_n_0 ),
        .I1(\DO_tristate_oe[15]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[15]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[15]_i_5 
       (.I0(\DO_tristate_oe[15]_i_10_n_0 ),
        .I1(\DO_tristate_oe[15]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[15]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[15]_i_6 
       (.I0(\DO_tristate_oe[15]_i_12_n_0 ),
        .I1(\DO_tristate_oe[15]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[15]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[15]_i_7 
       (.I0(\DO_tristate_oe[15]_i_14_n_0 ),
        .I1(\DO_tristate_oe[15]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[15]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[16]_i_1_n_0 ),
        .Q(DO_OBUF[16]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[16]_i_2 
       (.I0(\DO_tristate_oe_reg[16]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[16]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[16]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[16]_i_3 
       (.I0(\DO_tristate_oe_reg[16]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[16]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[16]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[16]_i_4 
       (.I0(\DO_tristate_oe[16]_i_8_n_0 ),
        .I1(\DO_tristate_oe[16]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[16]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[16]_i_5 
       (.I0(\DO_tristate_oe[16]_i_10_n_0 ),
        .I1(\DO_tristate_oe[16]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[16]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[16]_i_6 
       (.I0(\DO_tristate_oe[16]_i_12_n_0 ),
        .I1(\DO_tristate_oe[16]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[16]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[16]_i_7 
       (.I0(\DO_tristate_oe[16]_i_14_n_0 ),
        .I1(\DO_tristate_oe[16]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[16]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[17]_i_1_n_0 ),
        .Q(DO_OBUF[17]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[17]_i_2 
       (.I0(\DO_tristate_oe_reg[17]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[17]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[17]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[17]_i_3 
       (.I0(\DO_tristate_oe_reg[17]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[17]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[17]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[17]_i_4 
       (.I0(\DO_tristate_oe[17]_i_8_n_0 ),
        .I1(\DO_tristate_oe[17]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[17]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[17]_i_5 
       (.I0(\DO_tristate_oe[17]_i_10_n_0 ),
        .I1(\DO_tristate_oe[17]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[17]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[17]_i_6 
       (.I0(\DO_tristate_oe[17]_i_12_n_0 ),
        .I1(\DO_tristate_oe[17]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[17]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[17]_i_7 
       (.I0(\DO_tristate_oe[17]_i_14_n_0 ),
        .I1(\DO_tristate_oe[17]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[17]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[18]_i_1_n_0 ),
        .Q(DO_OBUF[18]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[18]_i_2 
       (.I0(\DO_tristate_oe_reg[18]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[18]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[18]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[18]_i_3 
       (.I0(\DO_tristate_oe_reg[18]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[18]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[18]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[18]_i_4 
       (.I0(\DO_tristate_oe[18]_i_8_n_0 ),
        .I1(\DO_tristate_oe[18]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[18]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[18]_i_5 
       (.I0(\DO_tristate_oe[18]_i_10_n_0 ),
        .I1(\DO_tristate_oe[18]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[18]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[18]_i_6 
       (.I0(\DO_tristate_oe[18]_i_12_n_0 ),
        .I1(\DO_tristate_oe[18]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[18]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[18]_i_7 
       (.I0(\DO_tristate_oe[18]_i_14_n_0 ),
        .I1(\DO_tristate_oe[18]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[18]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[19]_i_1_n_0 ),
        .Q(DO_OBUF[19]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[19]_i_2 
       (.I0(\DO_tristate_oe_reg[19]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[19]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[19]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[19]_i_3 
       (.I0(\DO_tristate_oe_reg[19]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[19]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[19]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[19]_i_4 
       (.I0(\DO_tristate_oe[19]_i_8_n_0 ),
        .I1(\DO_tristate_oe[19]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[19]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[19]_i_5 
       (.I0(\DO_tristate_oe[19]_i_10_n_0 ),
        .I1(\DO_tristate_oe[19]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[19]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[19]_i_6 
       (.I0(\DO_tristate_oe[19]_i_12_n_0 ),
        .I1(\DO_tristate_oe[19]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[19]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[19]_i_7 
       (.I0(\DO_tristate_oe[19]_i_14_n_0 ),
        .I1(\DO_tristate_oe[19]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[19]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[1]_i_1_n_0 ),
        .Q(DO_OBUF[1]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[1]_i_2 
       (.I0(\DO_tristate_oe_reg[1]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[1]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[1]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[1]_i_3 
       (.I0(\DO_tristate_oe_reg[1]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[1]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[1]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[1]_i_4 
       (.I0(\DO_tristate_oe[1]_i_8_n_0 ),
        .I1(\DO_tristate_oe[1]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[1]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[1]_i_5 
       (.I0(\DO_tristate_oe[1]_i_10_n_0 ),
        .I1(\DO_tristate_oe[1]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[1]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[1]_i_6 
       (.I0(\DO_tristate_oe[1]_i_12_n_0 ),
        .I1(\DO_tristate_oe[1]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[1]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[1]_i_7 
       (.I0(\DO_tristate_oe[1]_i_14_n_0 ),
        .I1(\DO_tristate_oe[1]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[1]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[20]_i_1_n_0 ),
        .Q(DO_OBUF[20]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[20]_i_2 
       (.I0(\DO_tristate_oe_reg[20]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[20]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[20]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[20]_i_3 
       (.I0(\DO_tristate_oe_reg[20]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[20]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[20]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[20]_i_4 
       (.I0(\DO_tristate_oe[20]_i_8_n_0 ),
        .I1(\DO_tristate_oe[20]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[20]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[20]_i_5 
       (.I0(\DO_tristate_oe[20]_i_10_n_0 ),
        .I1(\DO_tristate_oe[20]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[20]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[20]_i_6 
       (.I0(\DO_tristate_oe[20]_i_12_n_0 ),
        .I1(\DO_tristate_oe[20]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[20]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[20]_i_7 
       (.I0(\DO_tristate_oe[20]_i_14_n_0 ),
        .I1(\DO_tristate_oe[20]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[20]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[21]_i_1_n_0 ),
        .Q(DO_OBUF[21]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[21]_i_2 
       (.I0(\DO_tristate_oe_reg[21]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[21]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[21]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[21]_i_3 
       (.I0(\DO_tristate_oe_reg[21]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[21]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[21]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[21]_i_4 
       (.I0(\DO_tristate_oe[21]_i_8_n_0 ),
        .I1(\DO_tristate_oe[21]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[21]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[21]_i_5 
       (.I0(\DO_tristate_oe[21]_i_10_n_0 ),
        .I1(\DO_tristate_oe[21]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[21]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[21]_i_6 
       (.I0(\DO_tristate_oe[21]_i_12_n_0 ),
        .I1(\DO_tristate_oe[21]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[21]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[21]_i_7 
       (.I0(\DO_tristate_oe[21]_i_14_n_0 ),
        .I1(\DO_tristate_oe[21]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[21]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[22]_i_1_n_0 ),
        .Q(DO_OBUF[22]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[22]_i_2 
       (.I0(\DO_tristate_oe_reg[22]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[22]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[22]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[22]_i_3 
       (.I0(\DO_tristate_oe_reg[22]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[22]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[22]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[22]_i_4 
       (.I0(\DO_tristate_oe[22]_i_8_n_0 ),
        .I1(\DO_tristate_oe[22]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[22]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[22]_i_5 
       (.I0(\DO_tristate_oe[22]_i_10_n_0 ),
        .I1(\DO_tristate_oe[22]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[22]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[22]_i_6 
       (.I0(\DO_tristate_oe[22]_i_12_n_0 ),
        .I1(\DO_tristate_oe[22]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[22]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[22]_i_7 
       (.I0(\DO_tristate_oe[22]_i_14_n_0 ),
        .I1(\DO_tristate_oe[22]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[22]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[23]_i_1_n_0 ),
        .Q(DO_OBUF[23]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[23]_i_2 
       (.I0(\DO_tristate_oe_reg[23]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[23]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[23]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[23]_i_3 
       (.I0(\DO_tristate_oe_reg[23]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[23]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[23]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[23]_i_4 
       (.I0(\DO_tristate_oe[23]_i_8_n_0 ),
        .I1(\DO_tristate_oe[23]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[23]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[23]_i_5 
       (.I0(\DO_tristate_oe[23]_i_10_n_0 ),
        .I1(\DO_tristate_oe[23]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[23]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[23]_i_6 
       (.I0(\DO_tristate_oe[23]_i_12_n_0 ),
        .I1(\DO_tristate_oe[23]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[23]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[23]_i_7 
       (.I0(\DO_tristate_oe[23]_i_14_n_0 ),
        .I1(\DO_tristate_oe[23]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[23]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[24]_i_1_n_0 ),
        .Q(DO_OBUF[24]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[24]_i_2 
       (.I0(\DO_tristate_oe_reg[24]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[24]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[24]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[24]_i_3 
       (.I0(\DO_tristate_oe_reg[24]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[24]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[24]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[24]_i_4 
       (.I0(\DO_tristate_oe[24]_i_8_n_0 ),
        .I1(\DO_tristate_oe[24]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[24]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[24]_i_5 
       (.I0(\DO_tristate_oe[24]_i_10_n_0 ),
        .I1(\DO_tristate_oe[24]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[24]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[24]_i_6 
       (.I0(\DO_tristate_oe[24]_i_12_n_0 ),
        .I1(\DO_tristate_oe[24]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[24]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[24]_i_7 
       (.I0(\DO_tristate_oe[24]_i_14_n_0 ),
        .I1(\DO_tristate_oe[24]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[24]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[25]_i_1_n_0 ),
        .Q(DO_OBUF[25]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[25]_i_2 
       (.I0(\DO_tristate_oe_reg[25]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[25]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[25]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[25]_i_3 
       (.I0(\DO_tristate_oe_reg[25]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[25]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[25]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[25]_i_4 
       (.I0(\DO_tristate_oe[25]_i_8_n_0 ),
        .I1(\DO_tristate_oe[25]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[25]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[25]_i_5 
       (.I0(\DO_tristate_oe[25]_i_10_n_0 ),
        .I1(\DO_tristate_oe[25]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[25]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[25]_i_6 
       (.I0(\DO_tristate_oe[25]_i_12_n_0 ),
        .I1(\DO_tristate_oe[25]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[25]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[25]_i_7 
       (.I0(\DO_tristate_oe[25]_i_14_n_0 ),
        .I1(\DO_tristate_oe[25]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[25]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[26]_i_1_n_0 ),
        .Q(DO_OBUF[26]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[26]_i_2 
       (.I0(\DO_tristate_oe_reg[26]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[26]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[26]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[26]_i_3 
       (.I0(\DO_tristate_oe_reg[26]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[26]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[26]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[26]_i_4 
       (.I0(\DO_tristate_oe[26]_i_8_n_0 ),
        .I1(\DO_tristate_oe[26]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[26]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[26]_i_5 
       (.I0(\DO_tristate_oe[26]_i_10_n_0 ),
        .I1(\DO_tristate_oe[26]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[26]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[26]_i_6 
       (.I0(\DO_tristate_oe[26]_i_12_n_0 ),
        .I1(\DO_tristate_oe[26]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[26]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[26]_i_7 
       (.I0(\DO_tristate_oe[26]_i_14_n_0 ),
        .I1(\DO_tristate_oe[26]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[26]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[27]_i_1_n_0 ),
        .Q(DO_OBUF[27]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[27]_i_2 
       (.I0(\DO_tristate_oe_reg[27]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[27]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[27]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[27]_i_3 
       (.I0(\DO_tristate_oe_reg[27]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[27]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[27]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[27]_i_4 
       (.I0(\DO_tristate_oe[27]_i_8_n_0 ),
        .I1(\DO_tristate_oe[27]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[27]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[27]_i_5 
       (.I0(\DO_tristate_oe[27]_i_10_n_0 ),
        .I1(\DO_tristate_oe[27]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[27]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[27]_i_6 
       (.I0(\DO_tristate_oe[27]_i_12_n_0 ),
        .I1(\DO_tristate_oe[27]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[27]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[27]_i_7 
       (.I0(\DO_tristate_oe[27]_i_14_n_0 ),
        .I1(\DO_tristate_oe[27]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[27]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[28]_i_1_n_0 ),
        .Q(DO_OBUF[28]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[28]_i_2 
       (.I0(\DO_tristate_oe_reg[28]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[28]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[28]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[28]_i_3 
       (.I0(\DO_tristate_oe_reg[28]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[28]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[28]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[28]_i_4 
       (.I0(\DO_tristate_oe[28]_i_8_n_0 ),
        .I1(\DO_tristate_oe[28]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[28]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[28]_i_5 
       (.I0(\DO_tristate_oe[28]_i_10_n_0 ),
        .I1(\DO_tristate_oe[28]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[28]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[28]_i_6 
       (.I0(\DO_tristate_oe[28]_i_12_n_0 ),
        .I1(\DO_tristate_oe[28]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[28]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[28]_i_7 
       (.I0(\DO_tristate_oe[28]_i_14_n_0 ),
        .I1(\DO_tristate_oe[28]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[28]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[29]_i_1_n_0 ),
        .Q(DO_OBUF[29]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[29]_i_2 
       (.I0(\DO_tristate_oe_reg[29]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[29]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[29]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[29]_i_3 
       (.I0(\DO_tristate_oe_reg[29]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[29]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[29]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[29]_i_4 
       (.I0(\DO_tristate_oe[29]_i_8_n_0 ),
        .I1(\DO_tristate_oe[29]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[29]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[29]_i_5 
       (.I0(\DO_tristate_oe[29]_i_10_n_0 ),
        .I1(\DO_tristate_oe[29]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[29]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[29]_i_6 
       (.I0(\DO_tristate_oe[29]_i_12_n_0 ),
        .I1(\DO_tristate_oe[29]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[29]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[29]_i_7 
       (.I0(\DO_tristate_oe[29]_i_14_n_0 ),
        .I1(\DO_tristate_oe[29]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[29]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[2]_i_1_n_0 ),
        .Q(DO_OBUF[2]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[2]_i_2 
       (.I0(\DO_tristate_oe_reg[2]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[2]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[2]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[2]_i_3 
       (.I0(\DO_tristate_oe_reg[2]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[2]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[2]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[2]_i_4 
       (.I0(\DO_tristate_oe[2]_i_8_n_0 ),
        .I1(\DO_tristate_oe[2]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[2]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[2]_i_5 
       (.I0(\DO_tristate_oe[2]_i_10_n_0 ),
        .I1(\DO_tristate_oe[2]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[2]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[2]_i_6 
       (.I0(\DO_tristate_oe[2]_i_12_n_0 ),
        .I1(\DO_tristate_oe[2]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[2]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[2]_i_7 
       (.I0(\DO_tristate_oe[2]_i_14_n_0 ),
        .I1(\DO_tristate_oe[2]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[2]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[30]_i_1_n_0 ),
        .Q(DO_OBUF[30]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[30]_i_2 
       (.I0(\DO_tristate_oe_reg[30]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[30]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[30]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[30]_i_3 
       (.I0(\DO_tristate_oe_reg[30]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[30]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[30]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[30]_i_4 
       (.I0(\DO_tristate_oe[30]_i_8_n_0 ),
        .I1(\DO_tristate_oe[30]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[30]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[30]_i_5 
       (.I0(\DO_tristate_oe[30]_i_10_n_0 ),
        .I1(\DO_tristate_oe[30]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[30]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[30]_i_6 
       (.I0(\DO_tristate_oe[30]_i_12_n_0 ),
        .I1(\DO_tristate_oe[30]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[30]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[30]_i_7 
       (.I0(\DO_tristate_oe[30]_i_14_n_0 ),
        .I1(\DO_tristate_oe[30]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[30]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[31]_i_1_n_0 ),
        .Q(DO_OBUF[31]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[31]_i_2 
       (.I0(\DO_tristate_oe_reg[31]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[31]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[31]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[31]_i_3 
       (.I0(\DO_tristate_oe_reg[31]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[31]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[31]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[31]_i_4 
       (.I0(\DO_tristate_oe[31]_i_8_n_0 ),
        .I1(\DO_tristate_oe[31]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[31]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[31]_i_5 
       (.I0(\DO_tristate_oe[31]_i_10_n_0 ),
        .I1(\DO_tristate_oe[31]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[31]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[31]_i_6 
       (.I0(\DO_tristate_oe[31]_i_12_n_0 ),
        .I1(\DO_tristate_oe[31]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[31]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[31]_i_7 
       (.I0(\DO_tristate_oe[31]_i_14_n_0 ),
        .I1(\DO_tristate_oe[31]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[31]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[3]_i_1_n_0 ),
        .Q(DO_OBUF[3]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[3]_i_2 
       (.I0(\DO_tristate_oe_reg[3]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[3]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[3]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[3]_i_3 
       (.I0(\DO_tristate_oe_reg[3]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[3]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[3]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[3]_i_4 
       (.I0(\DO_tristate_oe[3]_i_8_n_0 ),
        .I1(\DO_tristate_oe[3]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[3]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[3]_i_5 
       (.I0(\DO_tristate_oe[3]_i_10_n_0 ),
        .I1(\DO_tristate_oe[3]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[3]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[3]_i_6 
       (.I0(\DO_tristate_oe[3]_i_12_n_0 ),
        .I1(\DO_tristate_oe[3]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[3]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[3]_i_7 
       (.I0(\DO_tristate_oe[3]_i_14_n_0 ),
        .I1(\DO_tristate_oe[3]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[3]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[4]_i_1_n_0 ),
        .Q(DO_OBUF[4]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[4]_i_2 
       (.I0(\DO_tristate_oe_reg[4]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[4]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[4]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[4]_i_3 
       (.I0(\DO_tristate_oe_reg[4]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[4]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[4]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[4]_i_4 
       (.I0(\DO_tristate_oe[4]_i_8_n_0 ),
        .I1(\DO_tristate_oe[4]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[4]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[4]_i_5 
       (.I0(\DO_tristate_oe[4]_i_10_n_0 ),
        .I1(\DO_tristate_oe[4]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[4]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[4]_i_6 
       (.I0(\DO_tristate_oe[4]_i_12_n_0 ),
        .I1(\DO_tristate_oe[4]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[4]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[4]_i_7 
       (.I0(\DO_tristate_oe[4]_i_14_n_0 ),
        .I1(\DO_tristate_oe[4]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[4]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[5]_i_1_n_0 ),
        .Q(DO_OBUF[5]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[5]_i_2 
       (.I0(\DO_tristate_oe_reg[5]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[5]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[5]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[5]_i_3 
       (.I0(\DO_tristate_oe_reg[5]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[5]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[5]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[5]_i_4 
       (.I0(\DO_tristate_oe[5]_i_8_n_0 ),
        .I1(\DO_tristate_oe[5]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[5]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[5]_i_5 
       (.I0(\DO_tristate_oe[5]_i_10_n_0 ),
        .I1(\DO_tristate_oe[5]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[5]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[5]_i_6 
       (.I0(\DO_tristate_oe[5]_i_12_n_0 ),
        .I1(\DO_tristate_oe[5]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[5]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[5]_i_7 
       (.I0(\DO_tristate_oe[5]_i_14_n_0 ),
        .I1(\DO_tristate_oe[5]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[5]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[6]_i_1_n_0 ),
        .Q(DO_OBUF[6]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[6]_i_2 
       (.I0(\DO_tristate_oe_reg[6]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[6]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[6]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[6]_i_3 
       (.I0(\DO_tristate_oe_reg[6]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[6]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[6]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[6]_i_4 
       (.I0(\DO_tristate_oe[6]_i_8_n_0 ),
        .I1(\DO_tristate_oe[6]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[6]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[6]_i_5 
       (.I0(\DO_tristate_oe[6]_i_10_n_0 ),
        .I1(\DO_tristate_oe[6]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[6]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[6]_i_6 
       (.I0(\DO_tristate_oe[6]_i_12_n_0 ),
        .I1(\DO_tristate_oe[6]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[6]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[6]_i_7 
       (.I0(\DO_tristate_oe[6]_i_14_n_0 ),
        .I1(\DO_tristate_oe[6]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[6]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[7]_i_1_n_0 ),
        .Q(DO_OBUF[7]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[7]_i_2 
       (.I0(\DO_tristate_oe_reg[7]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[7]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[7]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[7]_i_3 
       (.I0(\DO_tristate_oe_reg[7]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[7]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[7]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[7]_i_4 
       (.I0(\DO_tristate_oe[7]_i_8_n_0 ),
        .I1(\DO_tristate_oe[7]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[7]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[7]_i_5 
       (.I0(\DO_tristate_oe[7]_i_10_n_0 ),
        .I1(\DO_tristate_oe[7]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[7]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[7]_i_6 
       (.I0(\DO_tristate_oe[7]_i_12_n_0 ),
        .I1(\DO_tristate_oe[7]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[7]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[7]_i_7 
       (.I0(\DO_tristate_oe[7]_i_14_n_0 ),
        .I1(\DO_tristate_oe[7]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[7]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[8]_i_1_n_0 ),
        .Q(DO_OBUF[8]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[8]_i_2 
       (.I0(\DO_tristate_oe_reg[8]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[8]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[8]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[8]_i_3 
       (.I0(\DO_tristate_oe_reg[8]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[8]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[8]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[8]_i_4 
       (.I0(\DO_tristate_oe[8]_i_8_n_0 ),
        .I1(\DO_tristate_oe[8]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[8]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[8]_i_5 
       (.I0(\DO_tristate_oe[8]_i_10_n_0 ),
        .I1(\DO_tristate_oe[8]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[8]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[8]_i_6 
       (.I0(\DO_tristate_oe[8]_i_12_n_0 ),
        .I1(\DO_tristate_oe[8]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[8]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[8]_i_7 
       (.I0(\DO_tristate_oe[8]_i_14_n_0 ),
        .I1(\DO_tristate_oe[8]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[8]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(RST_IBUF),
        .D(\DO_tristate_oe[9]_i_1_n_0 ),
        .Q(DO_OBUF[9]),
        .R(1'b0));
  MUXF8 \DO_tristate_oe_reg[9]_i_2 
       (.I0(\DO_tristate_oe_reg[9]_i_4_n_0 ),
        .I1(\DO_tristate_oe_reg[9]_i_5_n_0 ),
        .O(\DO_tristate_oe_reg[9]_i_2_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF8 \DO_tristate_oe_reg[9]_i_3 
       (.I0(\DO_tristate_oe_reg[9]_i_6_n_0 ),
        .I1(\DO_tristate_oe_reg[9]_i_7_n_0 ),
        .O(\DO_tristate_oe_reg[9]_i_3_n_0 ),
        .S(ADR_IBUF[3]));
  MUXF7 \DO_tristate_oe_reg[9]_i_4 
       (.I0(\DO_tristate_oe[9]_i_8_n_0 ),
        .I1(\DO_tristate_oe[9]_i_9_n_0 ),
        .O(\DO_tristate_oe_reg[9]_i_4_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[9]_i_5 
       (.I0(\DO_tristate_oe[9]_i_10_n_0 ),
        .I1(\DO_tristate_oe[9]_i_11_n_0 ),
        .O(\DO_tristate_oe_reg[9]_i_5_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[9]_i_6 
       (.I0(\DO_tristate_oe[9]_i_12_n_0 ),
        .I1(\DO_tristate_oe[9]_i_13_n_0 ),
        .O(\DO_tristate_oe_reg[9]_i_6_n_0 ),
        .S(ADR_IBUF[2]));
  MUXF7 \DO_tristate_oe_reg[9]_i_7 
       (.I0(\DO_tristate_oe[9]_i_14_n_0 ),
        .I1(\DO_tristate_oe[9]_i_15_n_0 ),
        .O(\DO_tristate_oe_reg[9]_i_7_n_0 ),
        .S(ADR_IBUF[2]));
  IBUF EN_IBUF_inst
       (.I(EN),
        .O(EN_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \REGS[0][31]_i_1 
       (.I0(RST_IBUF),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[0][31]_i_2 
       (.I0(EN_IBUF),
        .I1(\REGS[0][31]_i_3_n_0 ),
        .O(\REGS[0][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \REGS[0][31]_i_3 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[3]),
        .I2(ADR_IBUF[2]),
        .I3(ADR_IBUF[0]),
        .I4(ADR_IBUF[1]),
        .I5(ADR_IBUF[4]),
        .O(\REGS[0][31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[10][31]_i_1 
       (.I0(EN_IBUF),
        .I1(\REGS[10][31]_i_2_n_0 ),
        .O(\REGS[10] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \REGS[10][31]_i_2 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(ADR_IBUF[0]),
        .I3(ADR_IBUF[1]),
        .I4(ADR_IBUF[3]),
        .I5(ADR_IBUF[2]),
        .O(\REGS[10][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[11][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[2]),
        .I2(ADR_IBUF[3]),
        .I3(\REGS[3][31]_i_2_n_0 ),
        .I4(ADR_IBUF[4]),
        .I5(WEN_IBUF),
        .O(\REGS[11] ));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[12][31]_i_1 
       (.I0(EN_IBUF),
        .I1(\REGS[12][31]_i_2_n_0 ),
        .O(\REGS[12] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \REGS[12][31]_i_2 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(ADR_IBUF[0]),
        .I3(ADR_IBUF[2]),
        .I4(ADR_IBUF[3]),
        .I5(ADR_IBUF[1]),
        .O(\REGS[12][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[13][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[1]),
        .I2(ADR_IBUF[3]),
        .I3(\REGS[5][31]_i_2_n_0 ),
        .I4(ADR_IBUF[4]),
        .I5(WEN_IBUF),
        .O(\REGS[13] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[14][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[0]),
        .I2(ADR_IBUF[3]),
        .I3(\REGS[6][31]_i_2_n_0 ),
        .I4(ADR_IBUF[4]),
        .I5(WEN_IBUF),
        .O(\REGS[14] ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \REGS[15][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[2]),
        .I2(\REGS[3][31]_i_2_n_0 ),
        .I3(ADR_IBUF[3]),
        .I4(ADR_IBUF[4]),
        .I5(WEN_IBUF),
        .O(\REGS[15] ));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[16][31]_i_1 
       (.I0(EN_IBUF),
        .I1(\REGS[16][31]_i_2_n_0 ),
        .O(\REGS[16] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \REGS[16][31]_i_2 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[3]),
        .I2(ADR_IBUF[1]),
        .I3(ADR_IBUF[4]),
        .I4(ADR_IBUF[0]),
        .I5(ADR_IBUF[2]),
        .O(\REGS[16][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \REGS[17][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[2]),
        .I2(\REGS[17][31]_i_2_n_0 ),
        .I3(ADR_IBUF[1]),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[17] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \REGS[17][31]_i_2 
       (.I0(ADR_IBUF[0]),
        .I1(ADR_IBUF[4]),
        .O(\REGS[17][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \REGS[18][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[2]),
        .I2(\REGS[18][31]_i_2_n_0 ),
        .I3(ADR_IBUF[0]),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[18] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \REGS[18][31]_i_2 
       (.I0(ADR_IBUF[1]),
        .I1(ADR_IBUF[4]),
        .O(\REGS[18][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[19][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[2]),
        .I2(ADR_IBUF[4]),
        .I3(\REGS[3][31]_i_2_n_0 ),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[19] ));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[1][31]_i_1 
       (.I0(EN_IBUF),
        .I1(\REGS[1][31]_i_2_n_0 ),
        .O(\REGS[1] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \REGS[1][31]_i_2 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[3]),
        .I2(ADR_IBUF[2]),
        .I3(ADR_IBUF[0]),
        .I4(ADR_IBUF[1]),
        .I5(ADR_IBUF[4]),
        .O(\REGS[1][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \REGS[20][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[1]),
        .I2(\REGS[20][31]_i_2_n_0 ),
        .I3(ADR_IBUF[0]),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[20] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \REGS[20][31]_i_2 
       (.I0(ADR_IBUF[2]),
        .I1(ADR_IBUF[4]),
        .O(\REGS[20][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[21][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[1]),
        .I2(ADR_IBUF[4]),
        .I3(\REGS[5][31]_i_2_n_0 ),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[21] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[22][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[0]),
        .I2(ADR_IBUF[4]),
        .I3(\REGS[6][31]_i_2_n_0 ),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[22] ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \REGS[23][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[2]),
        .I2(\REGS[3][31]_i_2_n_0 ),
        .I3(ADR_IBUF[4]),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[23] ));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[24][31]_i_1 
       (.I0(EN_IBUF),
        .I1(\REGS[24][31]_i_2_n_0 ),
        .O(\REGS[24] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \REGS[24][31]_i_2 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[2]),
        .I2(ADR_IBUF[0]),
        .I3(ADR_IBUF[4]),
        .I4(ADR_IBUF[3]),
        .I5(ADR_IBUF[1]),
        .O(\REGS[24][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[25][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[1]),
        .I2(ADR_IBUF[3]),
        .I3(\REGS[17][31]_i_2_n_0 ),
        .I4(ADR_IBUF[2]),
        .I5(WEN_IBUF),
        .O(\REGS[25] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[26][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[0]),
        .I2(ADR_IBUF[3]),
        .I3(\REGS[18][31]_i_2_n_0 ),
        .I4(ADR_IBUF[2]),
        .I5(WEN_IBUF),
        .O(\REGS[26] ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \REGS[27][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(\REGS[3][31]_i_2_n_0 ),
        .I3(ADR_IBUF[3]),
        .I4(ADR_IBUF[2]),
        .I5(WEN_IBUF),
        .O(\REGS[27] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[28][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[0]),
        .I2(ADR_IBUF[3]),
        .I3(\REGS[20][31]_i_2_n_0 ),
        .I4(ADR_IBUF[1]),
        .I5(WEN_IBUF),
        .O(\REGS[28] ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \REGS[29][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(\REGS[5][31]_i_2_n_0 ),
        .I3(ADR_IBUF[3]),
        .I4(ADR_IBUF[1]),
        .I5(WEN_IBUF),
        .O(\REGS[29] ));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[2][31]_i_1 
       (.I0(EN_IBUF),
        .I1(\REGS[2][31]_i_2_n_0 ),
        .O(\REGS[2] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \REGS[2][31]_i_2 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[3]),
        .I2(ADR_IBUF[2]),
        .I3(ADR_IBUF[1]),
        .I4(ADR_IBUF[0]),
        .I5(ADR_IBUF[4]),
        .O(\REGS[2][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \REGS[30][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(\REGS[6][31]_i_2_n_0 ),
        .I3(ADR_IBUF[3]),
        .I4(ADR_IBUF[0]),
        .I5(WEN_IBUF),
        .O(\REGS[30] ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \REGS[31][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[3]),
        .I2(ADR_IBUF[4]),
        .I3(\REGS[3][31]_i_2_n_0 ),
        .I4(ADR_IBUF[2]),
        .I5(WEN_IBUF),
        .O(\REGS[31] ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \REGS[3][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(\REGS[3][31]_i_2_n_0 ),
        .I3(ADR_IBUF[2]),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[3] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \REGS[3][31]_i_2 
       (.I0(ADR_IBUF[0]),
        .I1(ADR_IBUF[1]),
        .O(\REGS[3][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[4][31]_i_1 
       (.I0(EN_IBUF),
        .I1(\REGS[4][31]_i_2_n_0 ),
        .O(\REGS[4] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \REGS[4][31]_i_2 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[3]),
        .I2(ADR_IBUF[1]),
        .I3(ADR_IBUF[2]),
        .I4(ADR_IBUF[0]),
        .I5(ADR_IBUF[4]),
        .O(\REGS[4][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \REGS[5][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(\REGS[5][31]_i_2_n_0 ),
        .I3(ADR_IBUF[1]),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[5] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \REGS[5][31]_i_2 
       (.I0(ADR_IBUF[0]),
        .I1(ADR_IBUF[2]),
        .O(\REGS[5][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \REGS[6][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(\REGS[6][31]_i_2_n_0 ),
        .I3(ADR_IBUF[0]),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[6] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \REGS[6][31]_i_2 
       (.I0(ADR_IBUF[1]),
        .I1(ADR_IBUF[2]),
        .O(\REGS[6][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \REGS[7][31]_i_1 
       (.I0(EN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(ADR_IBUF[2]),
        .I3(\REGS[3][31]_i_2_n_0 ),
        .I4(ADR_IBUF[3]),
        .I5(WEN_IBUF),
        .O(\REGS[7] ));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[8][31]_i_1 
       (.I0(EN_IBUF),
        .I1(\REGS[8][31]_i_2_n_0 ),
        .O(\REGS[8] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \REGS[8][31]_i_2 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(ADR_IBUF[1]),
        .I3(ADR_IBUF[3]),
        .I4(ADR_IBUF[0]),
        .I5(ADR_IBUF[2]),
        .O(\REGS[8][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \REGS[9][31]_i_1 
       (.I0(EN_IBUF),
        .I1(\REGS[9][31]_i_2_n_0 ),
        .O(\REGS[9] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \REGS[9][31]_i_2 
       (.I0(WEN_IBUF),
        .I1(ADR_IBUF[4]),
        .I2(ADR_IBUF[1]),
        .I3(ADR_IBUF[0]),
        .I4(ADR_IBUF[3]),
        .I5(ADR_IBUF[2]),
        .O(\REGS[9][31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[0] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[0] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[0] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[0] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[0] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[0] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[0] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[0] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[0] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[0] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[0] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[0] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[0] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[0] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[0] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[0] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[0] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[0] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[0] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[0] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[0] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[0] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[0] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[0] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[0] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[0] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[0] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[0] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[0] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[0] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[0] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[0][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[0][31]_i_2_n_0 ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[0] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[10] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[10] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[10] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[10] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[10] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[10] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[10] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[10] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[10] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[10] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[10] [19]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[10][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[10] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[10] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[10] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[10] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[10] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[10] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[10] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[10] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[10] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[10] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[10] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[10] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[10] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[10] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[10][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[10] [3]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[10] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[10] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[10] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[10] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[10] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[10][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[10] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[10] [9]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[11][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[11] [0]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[11] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[11] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[11] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[11] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[11] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[11] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[11] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[11] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[11] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[11] [19]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[11][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[11] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[11] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[11] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[11] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[11] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[11] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[11] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[11] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[11] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[11] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[11] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[11] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[11] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[11] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[11][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[11] [3]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[11] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[11] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[11] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[11] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[11] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[11][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[11] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[11] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[12] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[12] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[12] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[12] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[12] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[12] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[12] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[12] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[12] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[12] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[12] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[12] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[12] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[12] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[12] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[12] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[12] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[12] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[12] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[12] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[12] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[12] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[12][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[12] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[12] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[12] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[12][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[12] [3]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[12] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[12] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[12] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[12] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[12] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[12][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[12] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[12] [9]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[13][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[13] [0]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[13] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[13] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[13] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[13] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[13] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[13] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[13] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[13] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[13] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[13] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[13] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[13] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[13] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[13] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[13] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[13] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[13] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[13] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[13] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[13] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[13] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[13][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[13] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[13] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[13] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[13][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[13] [3]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[13] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[13] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[13] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[13] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[13] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[13][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[13] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[13] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[14] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[14] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[14] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[14] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[14] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[14] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[14] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[14] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[14] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[14] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[14] [19]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[14][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[14] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[14] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[14] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[14] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[14] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[14] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[14] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[14] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[14] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[14] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[14] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[14][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[14] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[14] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[14] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[14][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[14] [3]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[14] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[14] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[14] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[14] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[14] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[14][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[14] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[14] [9]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[15][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[15] [0]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[15] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[15] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[15] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[15] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[15] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[15] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[15] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[15] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[15] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[15] [19]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[15][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[15] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[15] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[15] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[15] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[15] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[15] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[15] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[15] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[15] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[15] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[15] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[15][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[15] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[15] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[15] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[15][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[15] [3]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[15] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[15] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[15] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[15] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[15] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[15][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[15] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[15] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[16] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[16] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[16] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[16] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[16] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[16] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[16] [15]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[16] [16]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[16] [17]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[16] [18]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[16] [19]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[16] [1]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[16] [20]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[16] [21]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[16] [22]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[16] [23]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[16] [24]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[16] [25]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[16] [26]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[16] [27]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[16] [28]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[16] [29]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[16] [2]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[16] [30]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[16][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[16] [31]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[16] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[16] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[16] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[16] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[16] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[16] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[16][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[16] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[16] [9]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[17] [0]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[17] [10]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[17] [11]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[17] [12]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[17] [13]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[17] [14]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[17] [15]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[17] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[17] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[17] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[17] [19]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[17] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[17] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[17] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[17] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[17] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[17] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[17] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[17] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[17] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[17] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[17] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[17] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[17] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[17][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[17] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[17] [3]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[17] [4]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[17] [5]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[17] [6]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[17] [7]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[17] [8]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[17][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[17] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[17] [9]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[18] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[18] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[18] [11]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[18] [12]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[18] [13]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[18] [14]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[18] [15]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[18] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[18] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[18] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[18] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[18] [1]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[18] [20]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[18] [21]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[18] [22]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[18] [23]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[18] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[18] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[18] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[18] [27]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[18] [28]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[18] [29]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[18] [2]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[18] [30]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[18] [31]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[18] [3]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[18] [4]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[18] [5]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[18] [6]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[18][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[18] [7]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[18] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[18][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[18] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[18] [9]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[19] [0]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[19] [10]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[19] [11]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[19] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[19] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[19] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[19] [15]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[19] [16]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[19] [17]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[19] [18]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[19] [19]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[19] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[19] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[19] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[19] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[19] [23]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[19] [24]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[19] [25]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[19] [26]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[19] [27]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[19] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[19] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[19] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[19] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[19] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[19] [3]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[19] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[19] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[19] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[19][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[19] [7]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[19] [8]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[19][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[19] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[19] [9]),
        .S(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[1][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[1] [0]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[1] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[1] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[1] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[1] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[1] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[1] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[1] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[1] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[1] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[1] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[1] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[1] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[1] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[1] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[1] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[1] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[1] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[1] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[1] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[1] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[1] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[1] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[1] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[1] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[1] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[1] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[1] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[1] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[1] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[1] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[1] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[20] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[20] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[20] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[20] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[20] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[20] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[20] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[20] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[20] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[20] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[20] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[20] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[20] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[20] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[20] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[20] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[20] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[20] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[20] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[20] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[20] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[20] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[20] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[20] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[20] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[20] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[20] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[20] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[20] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[20] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[20] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[20][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[20] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[20] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[21] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[21] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[21] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[21] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[21] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[21] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[21] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[21] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[21] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[21] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[21] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[21] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[21] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[21] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[21] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[21] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[21] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[21] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[21] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[21] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[21] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[21] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[21] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[21] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[21] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[21] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[21] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[21] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[21] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[21] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[21] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[21][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[21] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[21] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[22] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[22] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[22] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[22] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[22] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[22] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[22] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[22] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[22] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[22] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[22] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[22] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[22] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[22] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[22] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[22] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[22] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[22] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[22] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[22] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[22] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[22] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[22] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[22] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[22] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[22] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[22] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[22] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[22] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[22] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[22] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[22][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[22] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[22] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[23] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[23] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[23] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[23] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[23] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[23] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[23] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[23] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[23] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[23] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[23] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[23] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[23] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[23] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[23] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[23] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[23] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[23] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[23] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[23] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[23] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[23] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[23] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[23] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[23] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[23] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[23] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[23] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[23] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[23] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[23] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[23][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[23] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[23] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[24] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[24] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[24] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[24] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[24] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[24] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[24] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[24] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[24] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[24] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[24] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[24] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[24] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[24] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[24] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[24] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[24] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[24] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[24] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[24] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[24] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[24] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[24] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[24] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[24] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[24] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[24] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[24] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[24] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[24] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[24] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[24][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[24] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[24] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[25] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[25] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[25] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[25] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[25] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[25] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[25] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[25] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[25] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[25] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[25] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[25] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[25] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[25] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[25] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[25] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[25] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[25] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[25] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[25] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[25] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[25] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[25] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[25] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[25] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[25] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[25] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[25] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[25] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[25] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[25] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[25][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[25] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[25] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[26] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[26] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[26] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[26] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[26] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[26] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[26] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[26] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[26] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[26] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[26] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[26] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[26] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[26] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[26] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[26] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[26] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[26] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[26] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[26] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[26] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[26] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[26] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[26] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[26] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[26] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[26] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[26] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[26] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[26] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[26] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[26][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[26] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[26] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[27] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[27] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[27] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[27] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[27] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[27] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[27] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[27] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[27] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[27] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[27] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[27] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[27] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[27] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[27] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[27] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[27] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[27] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[27] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[27] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[27] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[27] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[27] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[27] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[27] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[27] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[27] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[27] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[27] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[27] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[27] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[27][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[27] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[27] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[28] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[28] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[28] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[28] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[28] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[28] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[28] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[28] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[28] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[28] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[28] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[28] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[28] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[28] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[28] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[28] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[28] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[28] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[28] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[28] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[28] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[28] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[28] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[28] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[28] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[28] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[28] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[28] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[28] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[28] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[28] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[28][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[28] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[28] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[29] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[29] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[29] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[29] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[29] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[29] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[29] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[29] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[29] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[29] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[29] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[29] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[29] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[29] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[29] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[29] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[29] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[29] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[29] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[29] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[29] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[29] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[29] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[29] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[29] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[29] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[29] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[29] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[29] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[29] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[29] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[29][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[29] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[29] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[2] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[2] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[2] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[2] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[2] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[2] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[2] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[2] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[2] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[2] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[2] [19]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[2][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[2] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[2] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[2] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[2] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[2] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[2] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[2] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[2] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[2] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[2] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[2] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[2] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[2] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[2] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[2] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[2] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[2] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[2] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[2] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[2] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[2] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[30] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[30] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[30] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[30] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[30] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[30] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[30] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[30] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[30] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[30] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[30] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[30] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[30] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[30] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[30] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[30] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[30] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[30] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[30] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[30] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[30] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[30] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[30] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[30] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[30] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[30] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[30] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[30] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[30] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[30] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[30] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[30][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[30] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[30] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[31] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[31] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[31] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[31] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[31] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[31] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[31] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[31] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[31] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[31] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[31] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[31] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[31] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[31] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[31] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[31] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[31] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[31] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[31] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[31] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[31] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[31] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[31] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[31] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[31] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[31] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[31] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[31] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[31] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[31] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[31] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[31][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[31] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[31] [9]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[3][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[3] [0]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[3] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[3] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[3] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[3] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[3] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[3] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[3] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[3] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[3] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[3] [19]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[3][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[3] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[3] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[3] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[3] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[3] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[3] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[3] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[3] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[3] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[3] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[3] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[3] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[3] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[3] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[3] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[3] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[3] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[3] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[3] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[3] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[3] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[4] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[4] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[4] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[4] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[4] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[4] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[4] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[4] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[4] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[4] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[4] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[4] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[4] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[4] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[4] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[4] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[4] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[4] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[4] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[4] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[4] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[4] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[4][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[4] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[4] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[4] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[4] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[4] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[4] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[4] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[4] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[4] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[4] [9]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[5][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[5] [0]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[5] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[5] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[5] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[5] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[5] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[5] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[5] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[5] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[5] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[5] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[5] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[5] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[5] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[5] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[5] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[5] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[5] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[5] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[5] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[5] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[5] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[5][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[5] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[5] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[5] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[5] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[5] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[5] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[5] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[5] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[5] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[5] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[6] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[6] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[6] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[6] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[6] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[6] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[6] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[6] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[6] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[6] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[6] [19]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[6][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[6] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[6] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[6] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[6] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[6] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[6] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[6] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[6] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[6] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[6] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[6] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[6][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[6] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[6] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[6] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[6] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[6] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[6] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[6] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[6] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[6] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[6] [9]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[7][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[7] [0]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[7] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[7] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[7] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[7] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[7] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[7] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[7] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[7] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[7] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[7] [19]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[7][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[7] [1]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[7] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[7] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[7] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[7] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[7] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[7] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[7] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[7] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[7] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[7] [29]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[7][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[7] [2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[7] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[7] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[7] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[7] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[7] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[7] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[7] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[7] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[7] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[8] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[8] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[8] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[8] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[8] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[8] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[8] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[8] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[8] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[8] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[8] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[8] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[8] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[8] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[8] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[8] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[8] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[8] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[8] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[8] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[8] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[8] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[8] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[8] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[8] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[8][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[8] [3]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[8] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[8] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[8] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[8] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[8] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[8][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[8] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[8] [9]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[9][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[0]),
        .Q(\REGS_reg[9] [0]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[10]),
        .Q(\REGS_reg[9] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[11]),
        .Q(\REGS_reg[9] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[12]),
        .Q(\REGS_reg[9] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[13]),
        .Q(\REGS_reg[9] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[14]),
        .Q(\REGS_reg[9] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[15]),
        .Q(\REGS_reg[9] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[16]),
        .Q(\REGS_reg[9] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[17]),
        .Q(\REGS_reg[9] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[18]),
        .Q(\REGS_reg[9] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[19]),
        .Q(\REGS_reg[9] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[1]),
        .Q(\REGS_reg[9] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[20]),
        .Q(\REGS_reg[9] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[21]),
        .Q(\REGS_reg[9] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[22]),
        .Q(\REGS_reg[9] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[23]),
        .Q(\REGS_reg[9] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[24]),
        .Q(\REGS_reg[9] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[25]),
        .Q(\REGS_reg[9] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[26]),
        .Q(\REGS_reg[9] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[27]),
        .Q(\REGS_reg[9] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[28]),
        .Q(\REGS_reg[9] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[29]),
        .Q(\REGS_reg[9] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[2]),
        .Q(\REGS_reg[9] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[30]),
        .Q(\REGS_reg[9] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[31]),
        .Q(\REGS_reg[9] [31]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \REGS_reg[9][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[3]),
        .Q(\REGS_reg[9] [3]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[4]),
        .Q(\REGS_reg[9] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[5]),
        .Q(\REGS_reg[9] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[6]),
        .Q(\REGS_reg[9] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[7]),
        .Q(\REGS_reg[9] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[8]),
        .Q(\REGS_reg[9] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[9][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[9] ),
        .D(DI_IBUF[9]),
        .Q(\REGS_reg[9] [9]),
        .R(p_0_in));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  IBUF WEN_IBUF_inst
       (.I(WEN),
        .O(WEN_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
