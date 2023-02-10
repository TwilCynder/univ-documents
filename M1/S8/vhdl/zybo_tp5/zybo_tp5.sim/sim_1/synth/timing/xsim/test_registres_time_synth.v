// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Feb 10 10:53:41 2023
// Host        : pc-u3-305-04 running 64-bit Debian GNU/Linux 11 (bullseye)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/tnt3192a/documents/work/M1/S8/vhdl/zybo_tp5/zybo_tp5.sim/sim_1/synth/timing/xsim/test_registres_time_synth.v
// Design      : registres
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ABUS_WIDTH = "3" *) (* DBUS_WIDTH = "32" *) 
(* NotValidForBitStream *)
module registres
   (CLK,
    W,
    RST,
    ADR_A,
    ADR_B,
    ADR_W,
    D,
    QA,
    QB);
  input CLK;
  input W;
  input RST;
  input [2:0]ADR_A;
  input [2:0]ADR_B;
  input [2:0]ADR_W;
  input [31:0]D;
  output [31:0]QA;
  output [31:0]QB;

  wire [2:0]ADR_A;
  wire [2:0]ADR_A_IBUF;
  wire [2:0]ADR_B;
  wire [2:0]ADR_B_IBUF;
  wire [2:0]ADR_W;
  wire [2:0]ADR_W_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [31:0]D;
  wire [31:0]D_IBUF;
  wire [31:0]QA;
  wire [31:0]QA_OBUF;
  wire \QA_OBUF[0]_inst_i_3_n_0 ;
  wire \QA_OBUF[0]_inst_i_4_n_0 ;
  wire \QA_OBUF[10]_inst_i_3_n_0 ;
  wire \QA_OBUF[10]_inst_i_4_n_0 ;
  wire \QA_OBUF[11]_inst_i_3_n_0 ;
  wire \QA_OBUF[11]_inst_i_4_n_0 ;
  wire \QA_OBUF[12]_inst_i_3_n_0 ;
  wire \QA_OBUF[12]_inst_i_4_n_0 ;
  wire \QA_OBUF[13]_inst_i_3_n_0 ;
  wire \QA_OBUF[13]_inst_i_4_n_0 ;
  wire \QA_OBUF[14]_inst_i_3_n_0 ;
  wire \QA_OBUF[14]_inst_i_4_n_0 ;
  wire \QA_OBUF[15]_inst_i_3_n_0 ;
  wire \QA_OBUF[15]_inst_i_4_n_0 ;
  wire \QA_OBUF[16]_inst_i_3_n_0 ;
  wire \QA_OBUF[16]_inst_i_4_n_0 ;
  wire \QA_OBUF[17]_inst_i_3_n_0 ;
  wire \QA_OBUF[17]_inst_i_4_n_0 ;
  wire \QA_OBUF[18]_inst_i_3_n_0 ;
  wire \QA_OBUF[18]_inst_i_4_n_0 ;
  wire \QA_OBUF[19]_inst_i_3_n_0 ;
  wire \QA_OBUF[19]_inst_i_4_n_0 ;
  wire \QA_OBUF[1]_inst_i_3_n_0 ;
  wire \QA_OBUF[1]_inst_i_4_n_0 ;
  wire \QA_OBUF[20]_inst_i_3_n_0 ;
  wire \QA_OBUF[20]_inst_i_4_n_0 ;
  wire \QA_OBUF[21]_inst_i_3_n_0 ;
  wire \QA_OBUF[21]_inst_i_4_n_0 ;
  wire \QA_OBUF[22]_inst_i_3_n_0 ;
  wire \QA_OBUF[22]_inst_i_4_n_0 ;
  wire \QA_OBUF[23]_inst_i_3_n_0 ;
  wire \QA_OBUF[23]_inst_i_4_n_0 ;
  wire \QA_OBUF[24]_inst_i_3_n_0 ;
  wire \QA_OBUF[24]_inst_i_4_n_0 ;
  wire \QA_OBUF[25]_inst_i_3_n_0 ;
  wire \QA_OBUF[25]_inst_i_4_n_0 ;
  wire \QA_OBUF[26]_inst_i_3_n_0 ;
  wire \QA_OBUF[26]_inst_i_4_n_0 ;
  wire \QA_OBUF[27]_inst_i_3_n_0 ;
  wire \QA_OBUF[27]_inst_i_4_n_0 ;
  wire \QA_OBUF[28]_inst_i_3_n_0 ;
  wire \QA_OBUF[28]_inst_i_4_n_0 ;
  wire \QA_OBUF[29]_inst_i_3_n_0 ;
  wire \QA_OBUF[29]_inst_i_4_n_0 ;
  wire \QA_OBUF[2]_inst_i_3_n_0 ;
  wire \QA_OBUF[2]_inst_i_4_n_0 ;
  wire \QA_OBUF[30]_inst_i_3_n_0 ;
  wire \QA_OBUF[30]_inst_i_4_n_0 ;
  wire \QA_OBUF[31]_inst_i_5_n_0 ;
  wire \QA_OBUF[31]_inst_i_6_n_0 ;
  wire \QA_OBUF[3]_inst_i_3_n_0 ;
  wire \QA_OBUF[3]_inst_i_4_n_0 ;
  wire \QA_OBUF[4]_inst_i_3_n_0 ;
  wire \QA_OBUF[4]_inst_i_4_n_0 ;
  wire \QA_OBUF[5]_inst_i_3_n_0 ;
  wire \QA_OBUF[5]_inst_i_4_n_0 ;
  wire \QA_OBUF[6]_inst_i_3_n_0 ;
  wire \QA_OBUF[6]_inst_i_4_n_0 ;
  wire \QA_OBUF[7]_inst_i_3_n_0 ;
  wire \QA_OBUF[7]_inst_i_4_n_0 ;
  wire \QA_OBUF[8]_inst_i_3_n_0 ;
  wire \QA_OBUF[8]_inst_i_4_n_0 ;
  wire \QA_OBUF[9]_inst_i_3_n_0 ;
  wire \QA_OBUF[9]_inst_i_4_n_0 ;
  wire [31:0]QB;
  wire [31:0]QB_OBUF;
  wire \QB_OBUF[0]_inst_i_3_n_0 ;
  wire \QB_OBUF[0]_inst_i_4_n_0 ;
  wire \QB_OBUF[0]_inst_i_5_n_0 ;
  wire \QB_OBUF[10]_inst_i_3_n_0 ;
  wire \QB_OBUF[10]_inst_i_4_n_0 ;
  wire \QB_OBUF[10]_inst_i_5_n_0 ;
  wire \QB_OBUF[11]_inst_i_3_n_0 ;
  wire \QB_OBUF[11]_inst_i_4_n_0 ;
  wire \QB_OBUF[11]_inst_i_5_n_0 ;
  wire \QB_OBUF[12]_inst_i_3_n_0 ;
  wire \QB_OBUF[12]_inst_i_4_n_0 ;
  wire \QB_OBUF[12]_inst_i_5_n_0 ;
  wire \QB_OBUF[13]_inst_i_3_n_0 ;
  wire \QB_OBUF[13]_inst_i_4_n_0 ;
  wire \QB_OBUF[13]_inst_i_5_n_0 ;
  wire \QB_OBUF[14]_inst_i_3_n_0 ;
  wire \QB_OBUF[14]_inst_i_4_n_0 ;
  wire \QB_OBUF[14]_inst_i_5_n_0 ;
  wire \QB_OBUF[15]_inst_i_3_n_0 ;
  wire \QB_OBUF[15]_inst_i_4_n_0 ;
  wire \QB_OBUF[15]_inst_i_5_n_0 ;
  wire \QB_OBUF[16]_inst_i_3_n_0 ;
  wire \QB_OBUF[16]_inst_i_4_n_0 ;
  wire \QB_OBUF[16]_inst_i_5_n_0 ;
  wire \QB_OBUF[17]_inst_i_3_n_0 ;
  wire \QB_OBUF[17]_inst_i_4_n_0 ;
  wire \QB_OBUF[17]_inst_i_5_n_0 ;
  wire \QB_OBUF[18]_inst_i_3_n_0 ;
  wire \QB_OBUF[18]_inst_i_4_n_0 ;
  wire \QB_OBUF[18]_inst_i_5_n_0 ;
  wire \QB_OBUF[19]_inst_i_3_n_0 ;
  wire \QB_OBUF[19]_inst_i_4_n_0 ;
  wire \QB_OBUF[19]_inst_i_5_n_0 ;
  wire \QB_OBUF[1]_inst_i_3_n_0 ;
  wire \QB_OBUF[1]_inst_i_4_n_0 ;
  wire \QB_OBUF[1]_inst_i_5_n_0 ;
  wire \QB_OBUF[20]_inst_i_3_n_0 ;
  wire \QB_OBUF[20]_inst_i_4_n_0 ;
  wire \QB_OBUF[20]_inst_i_5_n_0 ;
  wire \QB_OBUF[21]_inst_i_3_n_0 ;
  wire \QB_OBUF[21]_inst_i_4_n_0 ;
  wire \QB_OBUF[21]_inst_i_5_n_0 ;
  wire \QB_OBUF[22]_inst_i_3_n_0 ;
  wire \QB_OBUF[22]_inst_i_4_n_0 ;
  wire \QB_OBUF[22]_inst_i_5_n_0 ;
  wire \QB_OBUF[23]_inst_i_3_n_0 ;
  wire \QB_OBUF[23]_inst_i_4_n_0 ;
  wire \QB_OBUF[23]_inst_i_5_n_0 ;
  wire \QB_OBUF[24]_inst_i_3_n_0 ;
  wire \QB_OBUF[24]_inst_i_4_n_0 ;
  wire \QB_OBUF[24]_inst_i_5_n_0 ;
  wire \QB_OBUF[25]_inst_i_3_n_0 ;
  wire \QB_OBUF[25]_inst_i_4_n_0 ;
  wire \QB_OBUF[25]_inst_i_5_n_0 ;
  wire \QB_OBUF[26]_inst_i_3_n_0 ;
  wire \QB_OBUF[26]_inst_i_4_n_0 ;
  wire \QB_OBUF[26]_inst_i_5_n_0 ;
  wire \QB_OBUF[27]_inst_i_3_n_0 ;
  wire \QB_OBUF[27]_inst_i_4_n_0 ;
  wire \QB_OBUF[27]_inst_i_5_n_0 ;
  wire \QB_OBUF[28]_inst_i_3_n_0 ;
  wire \QB_OBUF[28]_inst_i_4_n_0 ;
  wire \QB_OBUF[28]_inst_i_5_n_0 ;
  wire \QB_OBUF[29]_inst_i_3_n_0 ;
  wire \QB_OBUF[29]_inst_i_4_n_0 ;
  wire \QB_OBUF[29]_inst_i_5_n_0 ;
  wire \QB_OBUF[2]_inst_i_3_n_0 ;
  wire \QB_OBUF[2]_inst_i_4_n_0 ;
  wire \QB_OBUF[2]_inst_i_5_n_0 ;
  wire \QB_OBUF[30]_inst_i_3_n_0 ;
  wire \QB_OBUF[30]_inst_i_4_n_0 ;
  wire \QB_OBUF[30]_inst_i_5_n_0 ;
  wire \QB_OBUF[31]_inst_i_3_n_0 ;
  wire \QB_OBUF[31]_inst_i_4_n_0 ;
  wire \QB_OBUF[31]_inst_i_5_n_0 ;
  wire \QB_OBUF[31]_inst_i_6_n_0 ;
  wire \QB_OBUF[3]_inst_i_3_n_0 ;
  wire \QB_OBUF[3]_inst_i_4_n_0 ;
  wire \QB_OBUF[3]_inst_i_5_n_0 ;
  wire \QB_OBUF[4]_inst_i_3_n_0 ;
  wire \QB_OBUF[4]_inst_i_4_n_0 ;
  wire \QB_OBUF[4]_inst_i_5_n_0 ;
  wire \QB_OBUF[5]_inst_i_3_n_0 ;
  wire \QB_OBUF[5]_inst_i_4_n_0 ;
  wire \QB_OBUF[5]_inst_i_5_n_0 ;
  wire \QB_OBUF[6]_inst_i_3_n_0 ;
  wire \QB_OBUF[6]_inst_i_4_n_0 ;
  wire \QB_OBUF[6]_inst_i_5_n_0 ;
  wire \QB_OBUF[7]_inst_i_3_n_0 ;
  wire \QB_OBUF[7]_inst_i_4_n_0 ;
  wire \QB_OBUF[7]_inst_i_5_n_0 ;
  wire \QB_OBUF[8]_inst_i_3_n_0 ;
  wire \QB_OBUF[8]_inst_i_4_n_0 ;
  wire \QB_OBUF[8]_inst_i_5_n_0 ;
  wire \QB_OBUF[9]_inst_i_3_n_0 ;
  wire \QB_OBUF[9]_inst_i_4_n_0 ;
  wire \QB_OBUF[9]_inst_i_5_n_0 ;
  wire [31:0]\REGS[0] ;
  wire \REGS[1] ;
  wire \REGS[2] ;
  wire \REGS[3] ;
  wire \REGS[4] ;
  wire \REGS[5] ;
  wire \REGS[6] ;
  wire \REGS[7] ;
  wire [31:0]\REGS_reg[1] ;
  wire [31:0]\REGS_reg[2] ;
  wire [31:0]\REGS_reg[3] ;
  wire [31:0]\REGS_reg[4] ;
  wire [31:0]\REGS_reg[5] ;
  wire [31:0]\REGS_reg[6] ;
  wire [31:0]\REGS_reg[7] ;
  wire RST;
  wire RST_IBUF;
  wire W;
  wire W_IBUF;
  wire eqOp;
  wire eqOp0_out;
  wire p_0_in;

initial begin
 $sdf_annotate("test_registres_time_synth.sdf",,,,"tool_control");
end
  IBUF \ADR_A_IBUF[0]_inst 
       (.I(ADR_A[0]),
        .O(ADR_A_IBUF[0]));
  IBUF \ADR_A_IBUF[1]_inst 
       (.I(ADR_A[1]),
        .O(ADR_A_IBUF[1]));
  IBUF \ADR_A_IBUF[2]_inst 
       (.I(ADR_A[2]),
        .O(ADR_A_IBUF[2]));
  IBUF \ADR_B_IBUF[0]_inst 
       (.I(ADR_B[0]),
        .O(ADR_B_IBUF[0]));
  IBUF \ADR_B_IBUF[1]_inst 
       (.I(ADR_B[1]),
        .O(ADR_B_IBUF[1]));
  IBUF \ADR_B_IBUF[2]_inst 
       (.I(ADR_B[2]),
        .O(ADR_B_IBUF[2]));
  IBUF \ADR_W_IBUF[0]_inst 
       (.I(ADR_W[0]),
        .O(ADR_W_IBUF[0]));
  IBUF \ADR_W_IBUF[1]_inst 
       (.I(ADR_W[1]),
        .O(ADR_W_IBUF[1]));
  IBUF \ADR_W_IBUF[2]_inst 
       (.I(ADR_W[2]),
        .O(ADR_W_IBUF[2]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF \D_IBUF[0]_inst 
       (.I(D[0]),
        .O(D_IBUF[0]));
  IBUF \D_IBUF[10]_inst 
       (.I(D[10]),
        .O(D_IBUF[10]));
  IBUF \D_IBUF[11]_inst 
       (.I(D[11]),
        .O(D_IBUF[11]));
  IBUF \D_IBUF[12]_inst 
       (.I(D[12]),
        .O(D_IBUF[12]));
  IBUF \D_IBUF[13]_inst 
       (.I(D[13]),
        .O(D_IBUF[13]));
  IBUF \D_IBUF[14]_inst 
       (.I(D[14]),
        .O(D_IBUF[14]));
  IBUF \D_IBUF[15]_inst 
       (.I(D[15]),
        .O(D_IBUF[15]));
  IBUF \D_IBUF[16]_inst 
       (.I(D[16]),
        .O(D_IBUF[16]));
  IBUF \D_IBUF[17]_inst 
       (.I(D[17]),
        .O(D_IBUF[17]));
  IBUF \D_IBUF[18]_inst 
       (.I(D[18]),
        .O(D_IBUF[18]));
  IBUF \D_IBUF[19]_inst 
       (.I(D[19]),
        .O(D_IBUF[19]));
  IBUF \D_IBUF[1]_inst 
       (.I(D[1]),
        .O(D_IBUF[1]));
  IBUF \D_IBUF[20]_inst 
       (.I(D[20]),
        .O(D_IBUF[20]));
  IBUF \D_IBUF[21]_inst 
       (.I(D[21]),
        .O(D_IBUF[21]));
  IBUF \D_IBUF[22]_inst 
       (.I(D[22]),
        .O(D_IBUF[22]));
  IBUF \D_IBUF[23]_inst 
       (.I(D[23]),
        .O(D_IBUF[23]));
  IBUF \D_IBUF[24]_inst 
       (.I(D[24]),
        .O(D_IBUF[24]));
  IBUF \D_IBUF[25]_inst 
       (.I(D[25]),
        .O(D_IBUF[25]));
  IBUF \D_IBUF[26]_inst 
       (.I(D[26]),
        .O(D_IBUF[26]));
  IBUF \D_IBUF[27]_inst 
       (.I(D[27]),
        .O(D_IBUF[27]));
  IBUF \D_IBUF[28]_inst 
       (.I(D[28]),
        .O(D_IBUF[28]));
  IBUF \D_IBUF[29]_inst 
       (.I(D[29]),
        .O(D_IBUF[29]));
  IBUF \D_IBUF[2]_inst 
       (.I(D[2]),
        .O(D_IBUF[2]));
  IBUF \D_IBUF[30]_inst 
       (.I(D[30]),
        .O(D_IBUF[30]));
  IBUF \D_IBUF[31]_inst 
       (.I(D[31]),
        .O(D_IBUF[31]));
  IBUF \D_IBUF[3]_inst 
       (.I(D[3]),
        .O(D_IBUF[3]));
  IBUF \D_IBUF[4]_inst 
       (.I(D[4]),
        .O(D_IBUF[4]));
  IBUF \D_IBUF[5]_inst 
       (.I(D[5]),
        .O(D_IBUF[5]));
  IBUF \D_IBUF[6]_inst 
       (.I(D[6]),
        .O(D_IBUF[6]));
  IBUF \D_IBUF[7]_inst 
       (.I(D[7]),
        .O(D_IBUF[7]));
  IBUF \D_IBUF[8]_inst 
       (.I(D[8]),
        .O(D_IBUF[8]));
  IBUF \D_IBUF[9]_inst 
       (.I(D[9]),
        .O(D_IBUF[9]));
  OBUF \QA_OBUF[0]_inst 
       (.I(QA_OBUF[0]),
        .O(QA[0]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[0]_inst_i_1 
       (.I0(\REGS[0] [0]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[0]),
        .I4(eqOp),
        .O(QA_OBUF[0]));
  MUXF7 \QA_OBUF[0]_inst_i_2 
       (.I0(\QA_OBUF[0]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[0]_inst_i_4_n_0 ),
        .O(\REGS[0] [0]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[0]_inst_i_3 
       (.I0(\REGS_reg[3] [0]),
        .I1(\REGS_reg[2] [0]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [0]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[0]_inst_i_4 
       (.I0(\REGS_reg[7] [0]),
        .I1(\REGS_reg[6] [0]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [0]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [0]),
        .O(\QA_OBUF[0]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[10]_inst 
       (.I(QA_OBUF[10]),
        .O(QA[10]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[10]_inst_i_1 
       (.I0(\REGS[0] [10]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[10]),
        .I4(eqOp),
        .O(QA_OBUF[10]));
  MUXF7 \QA_OBUF[10]_inst_i_2 
       (.I0(\QA_OBUF[10]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[10]_inst_i_4_n_0 ),
        .O(\REGS[0] [10]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[10]_inst_i_3 
       (.I0(\REGS_reg[3] [10]),
        .I1(\REGS_reg[2] [10]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [10]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[10]_inst_i_4 
       (.I0(\REGS_reg[7] [10]),
        .I1(\REGS_reg[6] [10]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [10]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [10]),
        .O(\QA_OBUF[10]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[11]_inst 
       (.I(QA_OBUF[11]),
        .O(QA[11]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[11]_inst_i_1 
       (.I0(\REGS[0] [11]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[11]),
        .I4(eqOp),
        .O(QA_OBUF[11]));
  MUXF7 \QA_OBUF[11]_inst_i_2 
       (.I0(\QA_OBUF[11]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[11]_inst_i_4_n_0 ),
        .O(\REGS[0] [11]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[11]_inst_i_3 
       (.I0(\REGS_reg[3] [11]),
        .I1(\REGS_reg[2] [11]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [11]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[11]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[11]_inst_i_4 
       (.I0(\REGS_reg[7] [11]),
        .I1(\REGS_reg[6] [11]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [11]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [11]),
        .O(\QA_OBUF[11]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[12]_inst 
       (.I(QA_OBUF[12]),
        .O(QA[12]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[12]_inst_i_1 
       (.I0(\REGS[0] [12]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[12]),
        .I4(eqOp),
        .O(QA_OBUF[12]));
  MUXF7 \QA_OBUF[12]_inst_i_2 
       (.I0(\QA_OBUF[12]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[12]_inst_i_4_n_0 ),
        .O(\REGS[0] [12]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[12]_inst_i_3 
       (.I0(\REGS_reg[3] [12]),
        .I1(\REGS_reg[2] [12]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [12]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[12]_inst_i_4 
       (.I0(\REGS_reg[7] [12]),
        .I1(\REGS_reg[6] [12]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [12]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [12]),
        .O(\QA_OBUF[12]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[13]_inst 
       (.I(QA_OBUF[13]),
        .O(QA[13]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[13]_inst_i_1 
       (.I0(\REGS[0] [13]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[13]),
        .I4(eqOp),
        .O(QA_OBUF[13]));
  MUXF7 \QA_OBUF[13]_inst_i_2 
       (.I0(\QA_OBUF[13]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[13]_inst_i_4_n_0 ),
        .O(\REGS[0] [13]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[13]_inst_i_3 
       (.I0(\REGS_reg[3] [13]),
        .I1(\REGS_reg[2] [13]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [13]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[13]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[13]_inst_i_4 
       (.I0(\REGS_reg[7] [13]),
        .I1(\REGS_reg[6] [13]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [13]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [13]),
        .O(\QA_OBUF[13]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[14]_inst 
       (.I(QA_OBUF[14]),
        .O(QA[14]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[14]_inst_i_1 
       (.I0(\REGS[0] [14]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[14]),
        .I4(eqOp),
        .O(QA_OBUF[14]));
  MUXF7 \QA_OBUF[14]_inst_i_2 
       (.I0(\QA_OBUF[14]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[14]_inst_i_4_n_0 ),
        .O(\REGS[0] [14]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[14]_inst_i_3 
       (.I0(\REGS_reg[3] [14]),
        .I1(\REGS_reg[2] [14]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [14]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[14]_inst_i_4 
       (.I0(\REGS_reg[7] [14]),
        .I1(\REGS_reg[6] [14]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [14]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [14]),
        .O(\QA_OBUF[14]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[15]_inst 
       (.I(QA_OBUF[15]),
        .O(QA[15]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[15]_inst_i_1 
       (.I0(\REGS[0] [15]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[15]),
        .I4(eqOp),
        .O(QA_OBUF[15]));
  MUXF7 \QA_OBUF[15]_inst_i_2 
       (.I0(\QA_OBUF[15]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[15]_inst_i_4_n_0 ),
        .O(\REGS[0] [15]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[15]_inst_i_3 
       (.I0(\REGS_reg[3] [15]),
        .I1(\REGS_reg[2] [15]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [15]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[15]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[15]_inst_i_4 
       (.I0(\REGS_reg[7] [15]),
        .I1(\REGS_reg[6] [15]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [15]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [15]),
        .O(\QA_OBUF[15]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[16]_inst 
       (.I(QA_OBUF[16]),
        .O(QA[16]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[16]_inst_i_1 
       (.I0(\REGS[0] [16]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[16]),
        .I4(eqOp),
        .O(QA_OBUF[16]));
  MUXF7 \QA_OBUF[16]_inst_i_2 
       (.I0(\QA_OBUF[16]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[16]_inst_i_4_n_0 ),
        .O(\REGS[0] [16]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[16]_inst_i_3 
       (.I0(\REGS_reg[3] [16]),
        .I1(\REGS_reg[2] [16]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [16]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[16]_inst_i_4 
       (.I0(\REGS_reg[7] [16]),
        .I1(\REGS_reg[6] [16]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [16]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [16]),
        .O(\QA_OBUF[16]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[17]_inst 
       (.I(QA_OBUF[17]),
        .O(QA[17]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[17]_inst_i_1 
       (.I0(\REGS[0] [17]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[17]),
        .I4(eqOp),
        .O(QA_OBUF[17]));
  MUXF7 \QA_OBUF[17]_inst_i_2 
       (.I0(\QA_OBUF[17]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[17]_inst_i_4_n_0 ),
        .O(\REGS[0] [17]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[17]_inst_i_3 
       (.I0(\REGS_reg[3] [17]),
        .I1(\REGS_reg[2] [17]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [17]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[17]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[17]_inst_i_4 
       (.I0(\REGS_reg[7] [17]),
        .I1(\REGS_reg[6] [17]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [17]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [17]),
        .O(\QA_OBUF[17]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[18]_inst 
       (.I(QA_OBUF[18]),
        .O(QA[18]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[18]_inst_i_1 
       (.I0(\REGS[0] [18]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[18]),
        .I4(eqOp),
        .O(QA_OBUF[18]));
  MUXF7 \QA_OBUF[18]_inst_i_2 
       (.I0(\QA_OBUF[18]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[18]_inst_i_4_n_0 ),
        .O(\REGS[0] [18]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[18]_inst_i_3 
       (.I0(\REGS_reg[3] [18]),
        .I1(\REGS_reg[2] [18]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [18]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[18]_inst_i_4 
       (.I0(\REGS_reg[7] [18]),
        .I1(\REGS_reg[6] [18]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [18]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [18]),
        .O(\QA_OBUF[18]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[19]_inst 
       (.I(QA_OBUF[19]),
        .O(QA[19]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[19]_inst_i_1 
       (.I0(\REGS[0] [19]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[19]),
        .I4(eqOp),
        .O(QA_OBUF[19]));
  MUXF7 \QA_OBUF[19]_inst_i_2 
       (.I0(\QA_OBUF[19]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[19]_inst_i_4_n_0 ),
        .O(\REGS[0] [19]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[19]_inst_i_3 
       (.I0(\REGS_reg[3] [19]),
        .I1(\REGS_reg[2] [19]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [19]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[19]_inst_i_4 
       (.I0(\REGS_reg[7] [19]),
        .I1(\REGS_reg[6] [19]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [19]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [19]),
        .O(\QA_OBUF[19]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[1]_inst 
       (.I(QA_OBUF[1]),
        .O(QA[1]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[1]_inst_i_1 
       (.I0(\REGS[0] [1]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[1]),
        .I4(eqOp),
        .O(QA_OBUF[1]));
  MUXF7 \QA_OBUF[1]_inst_i_2 
       (.I0(\QA_OBUF[1]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[1]_inst_i_4_n_0 ),
        .O(\REGS[0] [1]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[1]_inst_i_3 
       (.I0(\REGS_reg[3] [1]),
        .I1(\REGS_reg[2] [1]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [1]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[1]_inst_i_4 
       (.I0(\REGS_reg[7] [1]),
        .I1(\REGS_reg[6] [1]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [1]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [1]),
        .O(\QA_OBUF[1]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[20]_inst 
       (.I(QA_OBUF[20]),
        .O(QA[20]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[20]_inst_i_1 
       (.I0(\REGS[0] [20]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[20]),
        .I4(eqOp),
        .O(QA_OBUF[20]));
  MUXF7 \QA_OBUF[20]_inst_i_2 
       (.I0(\QA_OBUF[20]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[20]_inst_i_4_n_0 ),
        .O(\REGS[0] [20]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[20]_inst_i_3 
       (.I0(\REGS_reg[3] [20]),
        .I1(\REGS_reg[2] [20]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [20]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[20]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[20]_inst_i_4 
       (.I0(\REGS_reg[7] [20]),
        .I1(\REGS_reg[6] [20]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [20]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [20]),
        .O(\QA_OBUF[20]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[21]_inst 
       (.I(QA_OBUF[21]),
        .O(QA[21]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[21]_inst_i_1 
       (.I0(\REGS[0] [21]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[21]),
        .I4(eqOp),
        .O(QA_OBUF[21]));
  MUXF7 \QA_OBUF[21]_inst_i_2 
       (.I0(\QA_OBUF[21]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[21]_inst_i_4_n_0 ),
        .O(\REGS[0] [21]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[21]_inst_i_3 
       (.I0(\REGS_reg[3] [21]),
        .I1(\REGS_reg[2] [21]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [21]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[21]_inst_i_4 
       (.I0(\REGS_reg[7] [21]),
        .I1(\REGS_reg[6] [21]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [21]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [21]),
        .O(\QA_OBUF[21]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[22]_inst 
       (.I(QA_OBUF[22]),
        .O(QA[22]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[22]_inst_i_1 
       (.I0(\REGS[0] [22]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[22]),
        .I4(eqOp),
        .O(QA_OBUF[22]));
  MUXF7 \QA_OBUF[22]_inst_i_2 
       (.I0(\QA_OBUF[22]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[22]_inst_i_4_n_0 ),
        .O(\REGS[0] [22]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[22]_inst_i_3 
       (.I0(\REGS_reg[3] [22]),
        .I1(\REGS_reg[2] [22]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [22]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[22]_inst_i_4 
       (.I0(\REGS_reg[7] [22]),
        .I1(\REGS_reg[6] [22]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [22]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [22]),
        .O(\QA_OBUF[22]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[23]_inst 
       (.I(QA_OBUF[23]),
        .O(QA[23]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[23]_inst_i_1 
       (.I0(\REGS[0] [23]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[23]),
        .I4(eqOp),
        .O(QA_OBUF[23]));
  MUXF7 \QA_OBUF[23]_inst_i_2 
       (.I0(\QA_OBUF[23]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[23]_inst_i_4_n_0 ),
        .O(\REGS[0] [23]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[23]_inst_i_3 
       (.I0(\REGS_reg[3] [23]),
        .I1(\REGS_reg[2] [23]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [23]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[23]_inst_i_4 
       (.I0(\REGS_reg[7] [23]),
        .I1(\REGS_reg[6] [23]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [23]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [23]),
        .O(\QA_OBUF[23]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[24]_inst 
       (.I(QA_OBUF[24]),
        .O(QA[24]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[24]_inst_i_1 
       (.I0(\REGS[0] [24]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[24]),
        .I4(eqOp),
        .O(QA_OBUF[24]));
  MUXF7 \QA_OBUF[24]_inst_i_2 
       (.I0(\QA_OBUF[24]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[24]_inst_i_4_n_0 ),
        .O(\REGS[0] [24]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[24]_inst_i_3 
       (.I0(\REGS_reg[3] [24]),
        .I1(\REGS_reg[2] [24]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [24]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[24]_inst_i_4 
       (.I0(\REGS_reg[7] [24]),
        .I1(\REGS_reg[6] [24]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [24]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [24]),
        .O(\QA_OBUF[24]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[25]_inst 
       (.I(QA_OBUF[25]),
        .O(QA[25]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[25]_inst_i_1 
       (.I0(\REGS[0] [25]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[25]),
        .I4(eqOp),
        .O(QA_OBUF[25]));
  MUXF7 \QA_OBUF[25]_inst_i_2 
       (.I0(\QA_OBUF[25]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[25]_inst_i_4_n_0 ),
        .O(\REGS[0] [25]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[25]_inst_i_3 
       (.I0(\REGS_reg[3] [25]),
        .I1(\REGS_reg[2] [25]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [25]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[25]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[25]_inst_i_4 
       (.I0(\REGS_reg[7] [25]),
        .I1(\REGS_reg[6] [25]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [25]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [25]),
        .O(\QA_OBUF[25]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[26]_inst 
       (.I(QA_OBUF[26]),
        .O(QA[26]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[26]_inst_i_1 
       (.I0(\REGS[0] [26]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[26]),
        .I4(eqOp),
        .O(QA_OBUF[26]));
  MUXF7 \QA_OBUF[26]_inst_i_2 
       (.I0(\QA_OBUF[26]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[26]_inst_i_4_n_0 ),
        .O(\REGS[0] [26]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[26]_inst_i_3 
       (.I0(\REGS_reg[3] [26]),
        .I1(\REGS_reg[2] [26]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [26]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[26]_inst_i_4 
       (.I0(\REGS_reg[7] [26]),
        .I1(\REGS_reg[6] [26]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [26]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [26]),
        .O(\QA_OBUF[26]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[27]_inst 
       (.I(QA_OBUF[27]),
        .O(QA[27]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[27]_inst_i_1 
       (.I0(\REGS[0] [27]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[27]),
        .I4(eqOp),
        .O(QA_OBUF[27]));
  MUXF7 \QA_OBUF[27]_inst_i_2 
       (.I0(\QA_OBUF[27]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[27]_inst_i_4_n_0 ),
        .O(\REGS[0] [27]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[27]_inst_i_3 
       (.I0(\REGS_reg[3] [27]),
        .I1(\REGS_reg[2] [27]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [27]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[27]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[27]_inst_i_4 
       (.I0(\REGS_reg[7] [27]),
        .I1(\REGS_reg[6] [27]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [27]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [27]),
        .O(\QA_OBUF[27]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[28]_inst 
       (.I(QA_OBUF[28]),
        .O(QA[28]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[28]_inst_i_1 
       (.I0(\REGS[0] [28]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[28]),
        .I4(eqOp),
        .O(QA_OBUF[28]));
  MUXF7 \QA_OBUF[28]_inst_i_2 
       (.I0(\QA_OBUF[28]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[28]_inst_i_4_n_0 ),
        .O(\REGS[0] [28]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[28]_inst_i_3 
       (.I0(\REGS_reg[3] [28]),
        .I1(\REGS_reg[2] [28]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [28]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[28]_inst_i_4 
       (.I0(\REGS_reg[7] [28]),
        .I1(\REGS_reg[6] [28]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [28]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [28]),
        .O(\QA_OBUF[28]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[29]_inst 
       (.I(QA_OBUF[29]),
        .O(QA[29]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[29]_inst_i_1 
       (.I0(\REGS[0] [29]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[29]),
        .I4(eqOp),
        .O(QA_OBUF[29]));
  MUXF7 \QA_OBUF[29]_inst_i_2 
       (.I0(\QA_OBUF[29]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[29]_inst_i_4_n_0 ),
        .O(\REGS[0] [29]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[29]_inst_i_3 
       (.I0(\REGS_reg[3] [29]),
        .I1(\REGS_reg[2] [29]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [29]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[29]_inst_i_4 
       (.I0(\REGS_reg[7] [29]),
        .I1(\REGS_reg[6] [29]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [29]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [29]),
        .O(\QA_OBUF[29]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[2]_inst 
       (.I(QA_OBUF[2]),
        .O(QA[2]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[2]_inst_i_1 
       (.I0(\REGS[0] [2]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[2]),
        .I4(eqOp),
        .O(QA_OBUF[2]));
  MUXF7 \QA_OBUF[2]_inst_i_2 
       (.I0(\QA_OBUF[2]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[2]_inst_i_4_n_0 ),
        .O(\REGS[0] [2]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[2]_inst_i_3 
       (.I0(\REGS_reg[3] [2]),
        .I1(\REGS_reg[2] [2]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [2]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[2]_inst_i_4 
       (.I0(\REGS_reg[7] [2]),
        .I1(\REGS_reg[6] [2]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [2]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [2]),
        .O(\QA_OBUF[2]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[30]_inst 
       (.I(QA_OBUF[30]),
        .O(QA[30]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[30]_inst_i_1 
       (.I0(\REGS[0] [30]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[30]),
        .I4(eqOp),
        .O(QA_OBUF[30]));
  MUXF7 \QA_OBUF[30]_inst_i_2 
       (.I0(\QA_OBUF[30]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[30]_inst_i_4_n_0 ),
        .O(\REGS[0] [30]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[30]_inst_i_3 
       (.I0(\REGS_reg[3] [30]),
        .I1(\REGS_reg[2] [30]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [30]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[30]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[30]_inst_i_4 
       (.I0(\REGS_reg[7] [30]),
        .I1(\REGS_reg[6] [30]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [30]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [30]),
        .O(\QA_OBUF[30]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[31]_inst 
       (.I(QA_OBUF[31]),
        .O(QA[31]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[31]_inst_i_1 
       (.I0(\REGS[0] [31]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[31]),
        .I4(eqOp),
        .O(QA_OBUF[31]));
  MUXF7 \QA_OBUF[31]_inst_i_2 
       (.I0(\QA_OBUF[31]_inst_i_5_n_0 ),
        .I1(\QA_OBUF[31]_inst_i_6_n_0 ),
        .O(\REGS[0] [31]),
        .S(ADR_A_IBUF[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \QA_OBUF[31]_inst_i_3 
       (.I0(ADR_A_IBUF[0]),
        .I1(ADR_W_IBUF[0]),
        .I2(ADR_W_IBUF[2]),
        .I3(ADR_A_IBUF[2]),
        .I4(ADR_W_IBUF[1]),
        .I5(ADR_A_IBUF[1]),
        .O(eqOp0_out));
  LUT3 #(
    .INIT(8'h01)) 
    \QA_OBUF[31]_inst_i_4 
       (.I0(ADR_A_IBUF[2]),
        .I1(ADR_A_IBUF[0]),
        .I2(ADR_A_IBUF[1]),
        .O(eqOp));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[31]_inst_i_5 
       (.I0(\REGS_reg[3] [31]),
        .I1(\REGS_reg[2] [31]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [31]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[31]_inst_i_6 
       (.I0(\REGS_reg[7] [31]),
        .I1(\REGS_reg[6] [31]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [31]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [31]),
        .O(\QA_OBUF[31]_inst_i_6_n_0 ));
  OBUF \QA_OBUF[3]_inst 
       (.I(QA_OBUF[3]),
        .O(QA[3]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[3]_inst_i_1 
       (.I0(\REGS[0] [3]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[3]),
        .I4(eqOp),
        .O(QA_OBUF[3]));
  MUXF7 \QA_OBUF[3]_inst_i_2 
       (.I0(\QA_OBUF[3]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[3]_inst_i_4_n_0 ),
        .O(\REGS[0] [3]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[3]_inst_i_3 
       (.I0(\REGS_reg[3] [3]),
        .I1(\REGS_reg[2] [3]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [3]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[3]_inst_i_4 
       (.I0(\REGS_reg[7] [3]),
        .I1(\REGS_reg[6] [3]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [3]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [3]),
        .O(\QA_OBUF[3]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[4]_inst 
       (.I(QA_OBUF[4]),
        .O(QA[4]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[4]_inst_i_1 
       (.I0(\REGS[0] [4]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[4]),
        .I4(eqOp),
        .O(QA_OBUF[4]));
  MUXF7 \QA_OBUF[4]_inst_i_2 
       (.I0(\QA_OBUF[4]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[4]_inst_i_4_n_0 ),
        .O(\REGS[0] [4]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[4]_inst_i_3 
       (.I0(\REGS_reg[3] [4]),
        .I1(\REGS_reg[2] [4]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [4]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[4]_inst_i_4 
       (.I0(\REGS_reg[7] [4]),
        .I1(\REGS_reg[6] [4]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [4]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [4]),
        .O(\QA_OBUF[4]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[5]_inst 
       (.I(QA_OBUF[5]),
        .O(QA[5]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[5]_inst_i_1 
       (.I0(\REGS[0] [5]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[5]),
        .I4(eqOp),
        .O(QA_OBUF[5]));
  MUXF7 \QA_OBUF[5]_inst_i_2 
       (.I0(\QA_OBUF[5]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[5]_inst_i_4_n_0 ),
        .O(\REGS[0] [5]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[5]_inst_i_3 
       (.I0(\REGS_reg[3] [5]),
        .I1(\REGS_reg[2] [5]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [5]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[5]_inst_i_4 
       (.I0(\REGS_reg[7] [5]),
        .I1(\REGS_reg[6] [5]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [5]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [5]),
        .O(\QA_OBUF[5]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[6]_inst 
       (.I(QA_OBUF[6]),
        .O(QA[6]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[6]_inst_i_1 
       (.I0(\REGS[0] [6]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[6]),
        .I4(eqOp),
        .O(QA_OBUF[6]));
  MUXF7 \QA_OBUF[6]_inst_i_2 
       (.I0(\QA_OBUF[6]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[6]_inst_i_4_n_0 ),
        .O(\REGS[0] [6]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[6]_inst_i_3 
       (.I0(\REGS_reg[3] [6]),
        .I1(\REGS_reg[2] [6]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [6]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[6]_inst_i_4 
       (.I0(\REGS_reg[7] [6]),
        .I1(\REGS_reg[6] [6]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [6]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [6]),
        .O(\QA_OBUF[6]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[7]_inst 
       (.I(QA_OBUF[7]),
        .O(QA[7]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[7]_inst_i_1 
       (.I0(\REGS[0] [7]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[7]),
        .I4(eqOp),
        .O(QA_OBUF[7]));
  MUXF7 \QA_OBUF[7]_inst_i_2 
       (.I0(\QA_OBUF[7]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[7]_inst_i_4_n_0 ),
        .O(\REGS[0] [7]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[7]_inst_i_3 
       (.I0(\REGS_reg[3] [7]),
        .I1(\REGS_reg[2] [7]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [7]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[7]_inst_i_4 
       (.I0(\REGS_reg[7] [7]),
        .I1(\REGS_reg[6] [7]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [7]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [7]),
        .O(\QA_OBUF[7]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[8]_inst 
       (.I(QA_OBUF[8]),
        .O(QA[8]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[8]_inst_i_1 
       (.I0(\REGS[0] [8]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[8]),
        .I4(eqOp),
        .O(QA_OBUF[8]));
  MUXF7 \QA_OBUF[8]_inst_i_2 
       (.I0(\QA_OBUF[8]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[8]_inst_i_4_n_0 ),
        .O(\REGS[0] [8]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[8]_inst_i_3 
       (.I0(\REGS_reg[3] [8]),
        .I1(\REGS_reg[2] [8]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [8]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[8]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[8]_inst_i_4 
       (.I0(\REGS_reg[7] [8]),
        .I1(\REGS_reg[6] [8]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [8]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [8]),
        .O(\QA_OBUF[8]_inst_i_4_n_0 ));
  OBUF \QA_OBUF[9]_inst 
       (.I(QA_OBUF[9]),
        .O(QA[9]));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    \QA_OBUF[9]_inst_i_1 
       (.I0(\REGS[0] [9]),
        .I1(W_IBUF),
        .I2(eqOp0_out),
        .I3(D_IBUF[9]),
        .I4(eqOp),
        .O(QA_OBUF[9]));
  MUXF7 \QA_OBUF[9]_inst_i_2 
       (.I0(\QA_OBUF[9]_inst_i_3_n_0 ),
        .I1(\QA_OBUF[9]_inst_i_4_n_0 ),
        .O(\REGS[0] [9]),
        .S(ADR_A_IBUF[2]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QA_OBUF[9]_inst_i_3 
       (.I0(\REGS_reg[3] [9]),
        .I1(\REGS_reg[2] [9]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[1] [9]),
        .I4(ADR_A_IBUF[0]),
        .O(\QA_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QA_OBUF[9]_inst_i_4 
       (.I0(\REGS_reg[7] [9]),
        .I1(\REGS_reg[6] [9]),
        .I2(ADR_A_IBUF[1]),
        .I3(\REGS_reg[5] [9]),
        .I4(ADR_A_IBUF[0]),
        .I5(\REGS_reg[4] [9]),
        .O(\QA_OBUF[9]_inst_i_4_n_0 ));
  OBUF \QB_OBUF[0]_inst 
       (.I(QB_OBUF[0]),
        .O(QB[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[0]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[0]_inst_i_3_n_0 ),
        .O(QB_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[0]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[0]_inst_i_3_n_0 ),
        .O(QB_OBUF[0]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[0]_inst_i_3 
       (.I0(D_IBUF[0]),
        .I1(\QB_OBUF[0]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[0]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[0]_inst_i_4 
       (.I0(\REGS_reg[7] [0]),
        .I1(\REGS_reg[6] [0]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [0]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [0]),
        .O(\QB_OBUF[0]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[0]_inst_i_5 
       (.I0(\REGS_reg[3] [0]),
        .I1(\REGS_reg[2] [0]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [0]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[0]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[10]_inst 
       (.I(QB_OBUF[10]),
        .O(QB[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[10]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[10]_inst_i_3_n_0 ),
        .O(QB_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[10]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[10]_inst_i_3_n_0 ),
        .O(QB_OBUF[10]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[10]_inst_i_3 
       (.I0(D_IBUF[10]),
        .I1(\QB_OBUF[10]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[10]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[10]_inst_i_4 
       (.I0(\REGS_reg[7] [10]),
        .I1(\REGS_reg[6] [10]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [10]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [10]),
        .O(\QB_OBUF[10]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[10]_inst_i_5 
       (.I0(\REGS_reg[3] [10]),
        .I1(\REGS_reg[2] [10]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [10]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[10]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[11]_inst 
       (.I(QB_OBUF[11]),
        .O(QB[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[11]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[11]_inst_i_3_n_0 ),
        .O(QB_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[11]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[11]_inst_i_3_n_0 ),
        .O(QB_OBUF[11]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[11]_inst_i_3 
       (.I0(D_IBUF[11]),
        .I1(\QB_OBUF[11]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[11]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[11]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[11]_inst_i_4 
       (.I0(\REGS_reg[7] [11]),
        .I1(\REGS_reg[6] [11]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [11]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [11]),
        .O(\QB_OBUF[11]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[11]_inst_i_5 
       (.I0(\REGS_reg[3] [11]),
        .I1(\REGS_reg[2] [11]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [11]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[11]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[12]_inst 
       (.I(QB_OBUF[12]),
        .O(QB[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[12]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[12]_inst_i_3_n_0 ),
        .O(QB_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[12]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[12]_inst_i_3_n_0 ),
        .O(QB_OBUF[12]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[12]_inst_i_3 
       (.I0(D_IBUF[12]),
        .I1(\QB_OBUF[12]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[12]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[12]_inst_i_4 
       (.I0(\REGS_reg[7] [12]),
        .I1(\REGS_reg[6] [12]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [12]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [12]),
        .O(\QB_OBUF[12]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[12]_inst_i_5 
       (.I0(\REGS_reg[3] [12]),
        .I1(\REGS_reg[2] [12]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [12]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[12]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[13]_inst 
       (.I(QB_OBUF[13]),
        .O(QB[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[13]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[13]_inst_i_3_n_0 ),
        .O(QB_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[13]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[13]_inst_i_3_n_0 ),
        .O(QB_OBUF[13]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[13]_inst_i_3 
       (.I0(D_IBUF[13]),
        .I1(\QB_OBUF[13]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[13]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[13]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[13]_inst_i_4 
       (.I0(\REGS_reg[7] [13]),
        .I1(\REGS_reg[6] [13]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [13]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [13]),
        .O(\QB_OBUF[13]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[13]_inst_i_5 
       (.I0(\REGS_reg[3] [13]),
        .I1(\REGS_reg[2] [13]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [13]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[13]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[14]_inst 
       (.I(QB_OBUF[14]),
        .O(QB[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[14]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[14]_inst_i_3_n_0 ),
        .O(QB_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[14]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[14]_inst_i_3_n_0 ),
        .O(QB_OBUF[14]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[14]_inst_i_3 
       (.I0(D_IBUF[14]),
        .I1(\QB_OBUF[14]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[14]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[14]_inst_i_4 
       (.I0(\REGS_reg[7] [14]),
        .I1(\REGS_reg[6] [14]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [14]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [14]),
        .O(\QB_OBUF[14]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[14]_inst_i_5 
       (.I0(\REGS_reg[3] [14]),
        .I1(\REGS_reg[2] [14]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [14]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[14]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[15]_inst 
       (.I(QB_OBUF[15]),
        .O(QB[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[15]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[15]_inst_i_3_n_0 ),
        .O(QB_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[15]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[15]_inst_i_3_n_0 ),
        .O(QB_OBUF[15]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[15]_inst_i_3 
       (.I0(D_IBUF[15]),
        .I1(\QB_OBUF[15]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[15]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[15]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[15]_inst_i_4 
       (.I0(\REGS_reg[7] [15]),
        .I1(\REGS_reg[6] [15]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [15]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [15]),
        .O(\QB_OBUF[15]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[15]_inst_i_5 
       (.I0(\REGS_reg[3] [15]),
        .I1(\REGS_reg[2] [15]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [15]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[15]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[16]_inst 
       (.I(QB_OBUF[16]),
        .O(QB[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[16]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[16]_inst_i_3_n_0 ),
        .O(QB_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[16]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[16]_inst_i_3_n_0 ),
        .O(QB_OBUF[16]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[16]_inst_i_3 
       (.I0(D_IBUF[16]),
        .I1(\QB_OBUF[16]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[16]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[16]_inst_i_4 
       (.I0(\REGS_reg[7] [16]),
        .I1(\REGS_reg[6] [16]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [16]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [16]),
        .O(\QB_OBUF[16]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[16]_inst_i_5 
       (.I0(\REGS_reg[3] [16]),
        .I1(\REGS_reg[2] [16]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [16]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[16]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[17]_inst 
       (.I(QB_OBUF[17]),
        .O(QB[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[17]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[17]_inst_i_3_n_0 ),
        .O(QB_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[17]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[17]_inst_i_3_n_0 ),
        .O(QB_OBUF[17]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[17]_inst_i_3 
       (.I0(D_IBUF[17]),
        .I1(\QB_OBUF[17]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[17]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[17]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[17]_inst_i_4 
       (.I0(\REGS_reg[7] [17]),
        .I1(\REGS_reg[6] [17]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [17]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [17]),
        .O(\QB_OBUF[17]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[17]_inst_i_5 
       (.I0(\REGS_reg[3] [17]),
        .I1(\REGS_reg[2] [17]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [17]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[17]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[18]_inst 
       (.I(QB_OBUF[18]),
        .O(QB[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[18]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[18]_inst_i_3_n_0 ),
        .O(QB_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[18]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[18]_inst_i_3_n_0 ),
        .O(QB_OBUF[18]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[18]_inst_i_3 
       (.I0(D_IBUF[18]),
        .I1(\QB_OBUF[18]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[18]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[18]_inst_i_4 
       (.I0(\REGS_reg[7] [18]),
        .I1(\REGS_reg[6] [18]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [18]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [18]),
        .O(\QB_OBUF[18]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[18]_inst_i_5 
       (.I0(\REGS_reg[3] [18]),
        .I1(\REGS_reg[2] [18]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [18]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[18]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[19]_inst 
       (.I(QB_OBUF[19]),
        .O(QB[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[19]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[19]_inst_i_3_n_0 ),
        .O(QB_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[19]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[19]_inst_i_3_n_0 ),
        .O(QB_OBUF[19]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[19]_inst_i_3 
       (.I0(D_IBUF[19]),
        .I1(\QB_OBUF[19]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[19]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[19]_inst_i_4 
       (.I0(\REGS_reg[7] [19]),
        .I1(\REGS_reg[6] [19]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [19]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [19]),
        .O(\QB_OBUF[19]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[19]_inst_i_5 
       (.I0(\REGS_reg[3] [19]),
        .I1(\REGS_reg[2] [19]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [19]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[19]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[1]_inst 
       (.I(QB_OBUF[1]),
        .O(QB[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[1]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[1]_inst_i_3_n_0 ),
        .O(QB_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[1]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[1]_inst_i_3_n_0 ),
        .O(QB_OBUF[1]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[1]_inst_i_3 
       (.I0(D_IBUF[1]),
        .I1(\QB_OBUF[1]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[1]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[1]_inst_i_4 
       (.I0(\REGS_reg[7] [1]),
        .I1(\REGS_reg[6] [1]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [1]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [1]),
        .O(\QB_OBUF[1]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[1]_inst_i_5 
       (.I0(\REGS_reg[3] [1]),
        .I1(\REGS_reg[2] [1]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [1]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[1]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[20]_inst 
       (.I(QB_OBUF[20]),
        .O(QB[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[20]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[20]_inst_i_3_n_0 ),
        .O(QB_OBUF[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[20]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[20]_inst_i_3_n_0 ),
        .O(QB_OBUF[20]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[20]_inst_i_3 
       (.I0(D_IBUF[20]),
        .I1(\QB_OBUF[20]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[20]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[20]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[20]_inst_i_4 
       (.I0(\REGS_reg[7] [20]),
        .I1(\REGS_reg[6] [20]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [20]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [20]),
        .O(\QB_OBUF[20]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[20]_inst_i_5 
       (.I0(\REGS_reg[3] [20]),
        .I1(\REGS_reg[2] [20]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [20]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[20]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[21]_inst 
       (.I(QB_OBUF[21]),
        .O(QB[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[21]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[21]_inst_i_3_n_0 ),
        .O(QB_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[21]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[21]_inst_i_3_n_0 ),
        .O(QB_OBUF[21]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[21]_inst_i_3 
       (.I0(D_IBUF[21]),
        .I1(\QB_OBUF[21]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[21]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[21]_inst_i_4 
       (.I0(\REGS_reg[7] [21]),
        .I1(\REGS_reg[6] [21]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [21]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [21]),
        .O(\QB_OBUF[21]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[21]_inst_i_5 
       (.I0(\REGS_reg[3] [21]),
        .I1(\REGS_reg[2] [21]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [21]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[21]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[22]_inst 
       (.I(QB_OBUF[22]),
        .O(QB[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[22]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[22]_inst_i_3_n_0 ),
        .O(QB_OBUF[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[22]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[22]_inst_i_3_n_0 ),
        .O(QB_OBUF[22]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[22]_inst_i_3 
       (.I0(D_IBUF[22]),
        .I1(\QB_OBUF[22]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[22]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[22]_inst_i_4 
       (.I0(\REGS_reg[7] [22]),
        .I1(\REGS_reg[6] [22]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [22]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [22]),
        .O(\QB_OBUF[22]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[22]_inst_i_5 
       (.I0(\REGS_reg[3] [22]),
        .I1(\REGS_reg[2] [22]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [22]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[22]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[23]_inst 
       (.I(QB_OBUF[23]),
        .O(QB[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[23]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[23]_inst_i_3_n_0 ),
        .O(QB_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[23]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[23]_inst_i_3_n_0 ),
        .O(QB_OBUF[23]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[23]_inst_i_3 
       (.I0(D_IBUF[23]),
        .I1(\QB_OBUF[23]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[23]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[23]_inst_i_4 
       (.I0(\REGS_reg[7] [23]),
        .I1(\REGS_reg[6] [23]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [23]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [23]),
        .O(\QB_OBUF[23]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[23]_inst_i_5 
       (.I0(\REGS_reg[3] [23]),
        .I1(\REGS_reg[2] [23]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [23]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[23]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[24]_inst 
       (.I(QB_OBUF[24]),
        .O(QB[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[24]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[24]_inst_i_3_n_0 ),
        .O(QB_OBUF[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[24]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[24]_inst_i_3_n_0 ),
        .O(QB_OBUF[24]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[24]_inst_i_3 
       (.I0(D_IBUF[24]),
        .I1(\QB_OBUF[24]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[24]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[24]_inst_i_4 
       (.I0(\REGS_reg[7] [24]),
        .I1(\REGS_reg[6] [24]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [24]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [24]),
        .O(\QB_OBUF[24]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[24]_inst_i_5 
       (.I0(\REGS_reg[3] [24]),
        .I1(\REGS_reg[2] [24]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [24]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[24]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[25]_inst 
       (.I(QB_OBUF[25]),
        .O(QB[25]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[25]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[25]_inst_i_3_n_0 ),
        .O(QB_OBUF[25]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[25]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[25]_inst_i_3_n_0 ),
        .O(QB_OBUF[25]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[25]_inst_i_3 
       (.I0(D_IBUF[25]),
        .I1(\QB_OBUF[25]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[25]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[25]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[25]_inst_i_4 
       (.I0(\REGS_reg[7] [25]),
        .I1(\REGS_reg[6] [25]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [25]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [25]),
        .O(\QB_OBUF[25]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[25]_inst_i_5 
       (.I0(\REGS_reg[3] [25]),
        .I1(\REGS_reg[2] [25]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [25]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[25]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[26]_inst 
       (.I(QB_OBUF[26]),
        .O(QB[26]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[26]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[26]_inst_i_3_n_0 ),
        .O(QB_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[26]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[26]_inst_i_3_n_0 ),
        .O(QB_OBUF[26]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[26]_inst_i_3 
       (.I0(D_IBUF[26]),
        .I1(\QB_OBUF[26]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[26]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[26]_inst_i_4 
       (.I0(\REGS_reg[7] [26]),
        .I1(\REGS_reg[6] [26]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [26]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [26]),
        .O(\QB_OBUF[26]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[26]_inst_i_5 
       (.I0(\REGS_reg[3] [26]),
        .I1(\REGS_reg[2] [26]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [26]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[26]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[27]_inst 
       (.I(QB_OBUF[27]),
        .O(QB[27]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[27]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[27]_inst_i_3_n_0 ),
        .O(QB_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[27]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[27]_inst_i_3_n_0 ),
        .O(QB_OBUF[27]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[27]_inst_i_3 
       (.I0(D_IBUF[27]),
        .I1(\QB_OBUF[27]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[27]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[27]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[27]_inst_i_4 
       (.I0(\REGS_reg[7] [27]),
        .I1(\REGS_reg[6] [27]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [27]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [27]),
        .O(\QB_OBUF[27]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[27]_inst_i_5 
       (.I0(\REGS_reg[3] [27]),
        .I1(\REGS_reg[2] [27]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [27]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[27]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[28]_inst 
       (.I(QB_OBUF[28]),
        .O(QB[28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[28]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[28]_inst_i_3_n_0 ),
        .O(QB_OBUF[28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[28]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[28]_inst_i_3_n_0 ),
        .O(QB_OBUF[28]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[28]_inst_i_3 
       (.I0(D_IBUF[28]),
        .I1(\QB_OBUF[28]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[28]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[28]_inst_i_4 
       (.I0(\REGS_reg[7] [28]),
        .I1(\REGS_reg[6] [28]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [28]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [28]),
        .O(\QB_OBUF[28]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[28]_inst_i_5 
       (.I0(\REGS_reg[3] [28]),
        .I1(\REGS_reg[2] [28]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [28]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[28]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[29]_inst 
       (.I(QB_OBUF[29]),
        .O(QB[29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[29]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[29]_inst_i_3_n_0 ),
        .O(QB_OBUF[29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[29]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[29]_inst_i_3_n_0 ),
        .O(QB_OBUF[29]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[29]_inst_i_3 
       (.I0(D_IBUF[29]),
        .I1(\QB_OBUF[29]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[29]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[29]_inst_i_4 
       (.I0(\REGS_reg[7] [29]),
        .I1(\REGS_reg[6] [29]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [29]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [29]),
        .O(\QB_OBUF[29]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[29]_inst_i_5 
       (.I0(\REGS_reg[3] [29]),
        .I1(\REGS_reg[2] [29]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [29]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[29]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[2]_inst 
       (.I(QB_OBUF[2]),
        .O(QB[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[2]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[2]_inst_i_3_n_0 ),
        .O(QB_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[2]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[2]_inst_i_3_n_0 ),
        .O(QB_OBUF[2]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[2]_inst_i_3 
       (.I0(D_IBUF[2]),
        .I1(\QB_OBUF[2]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[2]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[2]_inst_i_4 
       (.I0(\REGS_reg[7] [2]),
        .I1(\REGS_reg[6] [2]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [2]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [2]),
        .O(\QB_OBUF[2]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[2]_inst_i_5 
       (.I0(\REGS_reg[3] [2]),
        .I1(\REGS_reg[2] [2]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [2]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[2]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[30]_inst 
       (.I(QB_OBUF[30]),
        .O(QB[30]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[30]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[30]_inst_i_3_n_0 ),
        .O(QB_OBUF[30]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[30]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[30]_inst_i_3_n_0 ),
        .O(QB_OBUF[30]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[30]_inst_i_3 
       (.I0(D_IBUF[30]),
        .I1(\QB_OBUF[30]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[30]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[30]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[30]_inst_i_4 
       (.I0(\REGS_reg[7] [30]),
        .I1(\REGS_reg[6] [30]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [30]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [30]),
        .O(\QB_OBUF[30]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[30]_inst_i_5 
       (.I0(\REGS_reg[3] [30]),
        .I1(\REGS_reg[2] [30]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [30]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[30]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[31]_inst 
       (.I(QB_OBUF[31]),
        .O(QB[31]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[31]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[31]_inst_i_3_n_0 ),
        .O(QB_OBUF[31]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[31]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[31]_inst_i_3_n_0 ),
        .O(QB_OBUF[31]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[31]_inst_i_3 
       (.I0(D_IBUF[31]),
        .I1(\QB_OBUF[31]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[31]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[31]_inst_i_4 
       (.I0(\REGS_reg[7] [31]),
        .I1(\REGS_reg[6] [31]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [31]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [31]),
        .O(\QB_OBUF[31]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[31]_inst_i_5 
       (.I0(\REGS_reg[3] [31]),
        .I1(\REGS_reg[2] [31]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [31]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \QB_OBUF[31]_inst_i_6 
       (.I0(ADR_B_IBUF[0]),
        .I1(ADR_W_IBUF[0]),
        .I2(ADR_W_IBUF[2]),
        .I3(ADR_B_IBUF[2]),
        .I4(ADR_W_IBUF[1]),
        .I5(ADR_B_IBUF[1]),
        .O(\QB_OBUF[31]_inst_i_6_n_0 ));
  OBUF \QB_OBUF[3]_inst 
       (.I(QB_OBUF[3]),
        .O(QB[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[3]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[3]_inst_i_3_n_0 ),
        .O(QB_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[3]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[3]_inst_i_3_n_0 ),
        .O(QB_OBUF[3]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[3]_inst_i_3 
       (.I0(D_IBUF[3]),
        .I1(\QB_OBUF[3]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[3]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[3]_inst_i_4 
       (.I0(\REGS_reg[7] [3]),
        .I1(\REGS_reg[6] [3]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [3]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [3]),
        .O(\QB_OBUF[3]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[3]_inst_i_5 
       (.I0(\REGS_reg[3] [3]),
        .I1(\REGS_reg[2] [3]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [3]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[3]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[4]_inst 
       (.I(QB_OBUF[4]),
        .O(QB[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[4]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[4]_inst_i_3_n_0 ),
        .O(QB_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[4]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[4]_inst_i_3_n_0 ),
        .O(QB_OBUF[4]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[4]_inst_i_3 
       (.I0(D_IBUF[4]),
        .I1(\QB_OBUF[4]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[4]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[4]_inst_i_4 
       (.I0(\REGS_reg[7] [4]),
        .I1(\REGS_reg[6] [4]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [4]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [4]),
        .O(\QB_OBUF[4]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[4]_inst_i_5 
       (.I0(\REGS_reg[3] [4]),
        .I1(\REGS_reg[2] [4]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [4]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[4]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[5]_inst 
       (.I(QB_OBUF[5]),
        .O(QB[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[5]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[5]_inst_i_3_n_0 ),
        .O(QB_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[5]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[5]_inst_i_3_n_0 ),
        .O(QB_OBUF[5]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[5]_inst_i_3 
       (.I0(D_IBUF[5]),
        .I1(\QB_OBUF[5]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[5]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[5]_inst_i_4 
       (.I0(\REGS_reg[7] [5]),
        .I1(\REGS_reg[6] [5]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [5]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [5]),
        .O(\QB_OBUF[5]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[5]_inst_i_5 
       (.I0(\REGS_reg[3] [5]),
        .I1(\REGS_reg[2] [5]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [5]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[5]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[6]_inst 
       (.I(QB_OBUF[6]),
        .O(QB[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[6]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[6]_inst_i_3_n_0 ),
        .O(QB_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[6]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[6]_inst_i_3_n_0 ),
        .O(QB_OBUF[6]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[6]_inst_i_3 
       (.I0(D_IBUF[6]),
        .I1(\QB_OBUF[6]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[6]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[6]_inst_i_4 
       (.I0(\REGS_reg[7] [6]),
        .I1(\REGS_reg[6] [6]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [6]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [6]),
        .O(\QB_OBUF[6]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[6]_inst_i_5 
       (.I0(\REGS_reg[3] [6]),
        .I1(\REGS_reg[2] [6]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [6]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[6]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[7]_inst 
       (.I(QB_OBUF[7]),
        .O(QB[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[7]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[7]_inst_i_3_n_0 ),
        .O(QB_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[7]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[7]_inst_i_3_n_0 ),
        .O(QB_OBUF[7]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[7]_inst_i_3 
       (.I0(D_IBUF[7]),
        .I1(\QB_OBUF[7]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[7]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[7]_inst_i_4 
       (.I0(\REGS_reg[7] [7]),
        .I1(\REGS_reg[6] [7]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [7]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [7]),
        .O(\QB_OBUF[7]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[7]_inst_i_5 
       (.I0(\REGS_reg[3] [7]),
        .I1(\REGS_reg[2] [7]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [7]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[7]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[8]_inst 
       (.I(QB_OBUF[8]),
        .O(QB[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[8]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[8]_inst_i_3_n_0 ),
        .O(QB_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[8]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[8]_inst_i_3_n_0 ),
        .O(QB_OBUF[8]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[8]_inst_i_3 
       (.I0(D_IBUF[8]),
        .I1(\QB_OBUF[8]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[8]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[8]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[8]_inst_i_4 
       (.I0(\REGS_reg[7] [8]),
        .I1(\REGS_reg[6] [8]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [8]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [8]),
        .O(\QB_OBUF[8]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[8]_inst_i_5 
       (.I0(\REGS_reg[3] [8]),
        .I1(\REGS_reg[2] [8]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [8]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[8]_inst_i_5_n_0 ));
  OBUF \QB_OBUF[9]_inst 
       (.I(QB_OBUF[9]),
        .O(QB[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[9]_inst_i_1 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[9]_inst_i_3_n_0 ),
        .O(QB_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \QB_OBUF[9]_inst_i_2 
       (.I0(ADR_B_IBUF[1]),
        .I1(ADR_B_IBUF[2]),
        .I2(ADR_B_IBUF[0]),
        .I3(\QB_OBUF[9]_inst_i_3_n_0 ),
        .O(QB_OBUF[9]));
  LUT6 #(
    .INIT(64'hCFC0CFC0AAAACFC0)) 
    \QB_OBUF[9]_inst_i_3 
       (.I0(D_IBUF[9]),
        .I1(\QB_OBUF[9]_inst_i_4_n_0 ),
        .I2(ADR_B_IBUF[2]),
        .I3(\QB_OBUF[9]_inst_i_5_n_0 ),
        .I4(\QB_OBUF[31]_inst_i_6_n_0 ),
        .I5(W_IBUF),
        .O(\QB_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \QB_OBUF[9]_inst_i_4 
       (.I0(\REGS_reg[7] [9]),
        .I1(\REGS_reg[6] [9]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[5] [9]),
        .I4(ADR_B_IBUF[0]),
        .I5(\REGS_reg[4] [9]),
        .O(\QB_OBUF[9]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \QB_OBUF[9]_inst_i_5 
       (.I0(\REGS_reg[3] [9]),
        .I1(\REGS_reg[2] [9]),
        .I2(ADR_B_IBUF[1]),
        .I3(\REGS_reg[1] [9]),
        .I4(ADR_B_IBUF[0]),
        .O(\QB_OBUF[9]_inst_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \REGS[1][31]_i_1 
       (.I0(RST_IBUF),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \REGS[1][31]_i_2 
       (.I0(W_IBUF),
        .I1(ADR_W_IBUF[1]),
        .I2(ADR_W_IBUF[0]),
        .I3(ADR_W_IBUF[2]),
        .O(\REGS[1] ));
  LUT4 #(
    .INIT(16'h0010)) 
    \REGS[2][31]_i_1 
       (.I0(W_IBUF),
        .I1(ADR_W_IBUF[2]),
        .I2(ADR_W_IBUF[1]),
        .I3(ADR_W_IBUF[0]),
        .O(\REGS[2] ));
  LUT4 #(
    .INIT(16'h1000)) 
    \REGS[3][31]_i_1 
       (.I0(W_IBUF),
        .I1(ADR_W_IBUF[2]),
        .I2(ADR_W_IBUF[0]),
        .I3(ADR_W_IBUF[1]),
        .O(\REGS[3] ));
  LUT4 #(
    .INIT(16'h0010)) 
    \REGS[4][31]_i_1 
       (.I0(W_IBUF),
        .I1(ADR_W_IBUF[1]),
        .I2(ADR_W_IBUF[2]),
        .I3(ADR_W_IBUF[0]),
        .O(\REGS[4] ));
  LUT4 #(
    .INIT(16'h1000)) 
    \REGS[5][31]_i_1 
       (.I0(W_IBUF),
        .I1(ADR_W_IBUF[1]),
        .I2(ADR_W_IBUF[0]),
        .I3(ADR_W_IBUF[2]),
        .O(\REGS[5] ));
  LUT4 #(
    .INIT(16'h1000)) 
    \REGS[6][31]_i_1 
       (.I0(W_IBUF),
        .I1(ADR_W_IBUF[0]),
        .I2(ADR_W_IBUF[2]),
        .I3(ADR_W_IBUF[1]),
        .O(\REGS[6] ));
  LUT4 #(
    .INIT(16'h4000)) 
    \REGS[7][31]_i_1 
       (.I0(W_IBUF),
        .I1(ADR_W_IBUF[0]),
        .I2(ADR_W_IBUF[2]),
        .I3(ADR_W_IBUF[1]),
        .O(\REGS[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[0]),
        .Q(\REGS_reg[1] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[10]),
        .Q(\REGS_reg[1] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[11]),
        .Q(\REGS_reg[1] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[12]),
        .Q(\REGS_reg[1] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[13]),
        .Q(\REGS_reg[1] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[14]),
        .Q(\REGS_reg[1] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[15]),
        .Q(\REGS_reg[1] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[16]),
        .Q(\REGS_reg[1] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[17]),
        .Q(\REGS_reg[1] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[18]),
        .Q(\REGS_reg[1] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[19]),
        .Q(\REGS_reg[1] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[1]),
        .Q(\REGS_reg[1] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[20]),
        .Q(\REGS_reg[1] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[21]),
        .Q(\REGS_reg[1] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[22]),
        .Q(\REGS_reg[1] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[23]),
        .Q(\REGS_reg[1] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[24]),
        .Q(\REGS_reg[1] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[25]),
        .Q(\REGS_reg[1] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[26]),
        .Q(\REGS_reg[1] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[27]),
        .Q(\REGS_reg[1] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[28]),
        .Q(\REGS_reg[1] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[29]),
        .Q(\REGS_reg[1] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[2]),
        .Q(\REGS_reg[1] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[30]),
        .Q(\REGS_reg[1] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[31]),
        .Q(\REGS_reg[1] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[3]),
        .Q(\REGS_reg[1] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[4]),
        .Q(\REGS_reg[1] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[5]),
        .Q(\REGS_reg[1] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[6]),
        .Q(\REGS_reg[1] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[7]),
        .Q(\REGS_reg[1] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[8]),
        .Q(\REGS_reg[1] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[1][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[1] ),
        .D(D_IBUF[9]),
        .Q(\REGS_reg[1] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[0]),
        .Q(\REGS_reg[2] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[10]),
        .Q(\REGS_reg[2] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[11]),
        .Q(\REGS_reg[2] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[12]),
        .Q(\REGS_reg[2] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[13]),
        .Q(\REGS_reg[2] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[14]),
        .Q(\REGS_reg[2] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[15]),
        .Q(\REGS_reg[2] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[16]),
        .Q(\REGS_reg[2] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[17]),
        .Q(\REGS_reg[2] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[18]),
        .Q(\REGS_reg[2] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[19]),
        .Q(\REGS_reg[2] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[1]),
        .Q(\REGS_reg[2] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[20]),
        .Q(\REGS_reg[2] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[21]),
        .Q(\REGS_reg[2] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[22]),
        .Q(\REGS_reg[2] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[23]),
        .Q(\REGS_reg[2] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[24]),
        .Q(\REGS_reg[2] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[25]),
        .Q(\REGS_reg[2] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[26]),
        .Q(\REGS_reg[2] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[27]),
        .Q(\REGS_reg[2] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[28]),
        .Q(\REGS_reg[2] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[29]),
        .Q(\REGS_reg[2] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[2]),
        .Q(\REGS_reg[2] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[30]),
        .Q(\REGS_reg[2] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[31]),
        .Q(\REGS_reg[2] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[3]),
        .Q(\REGS_reg[2] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[4]),
        .Q(\REGS_reg[2] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[5]),
        .Q(\REGS_reg[2] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[6]),
        .Q(\REGS_reg[2] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[7]),
        .Q(\REGS_reg[2] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[8]),
        .Q(\REGS_reg[2] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[2][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[2] ),
        .D(D_IBUF[9]),
        .Q(\REGS_reg[2] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[0]),
        .Q(\REGS_reg[3] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[10]),
        .Q(\REGS_reg[3] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[11]),
        .Q(\REGS_reg[3] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[12]),
        .Q(\REGS_reg[3] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[13]),
        .Q(\REGS_reg[3] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[14]),
        .Q(\REGS_reg[3] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[15]),
        .Q(\REGS_reg[3] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[16]),
        .Q(\REGS_reg[3] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[17]),
        .Q(\REGS_reg[3] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[18]),
        .Q(\REGS_reg[3] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[19]),
        .Q(\REGS_reg[3] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[1]),
        .Q(\REGS_reg[3] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[20]),
        .Q(\REGS_reg[3] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[21]),
        .Q(\REGS_reg[3] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[22]),
        .Q(\REGS_reg[3] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[23]),
        .Q(\REGS_reg[3] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[24]),
        .Q(\REGS_reg[3] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[25]),
        .Q(\REGS_reg[3] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[26]),
        .Q(\REGS_reg[3] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[27]),
        .Q(\REGS_reg[3] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[28]),
        .Q(\REGS_reg[3] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[29]),
        .Q(\REGS_reg[3] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[2]),
        .Q(\REGS_reg[3] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[30]),
        .Q(\REGS_reg[3] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[31]),
        .Q(\REGS_reg[3] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[3]),
        .Q(\REGS_reg[3] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[4]),
        .Q(\REGS_reg[3] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[5]),
        .Q(\REGS_reg[3] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[6]),
        .Q(\REGS_reg[3] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[7]),
        .Q(\REGS_reg[3] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[8]),
        .Q(\REGS_reg[3] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[3][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[3] ),
        .D(D_IBUF[9]),
        .Q(\REGS_reg[3] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[0]),
        .Q(\REGS_reg[4] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[10]),
        .Q(\REGS_reg[4] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[11]),
        .Q(\REGS_reg[4] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[12]),
        .Q(\REGS_reg[4] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[13]),
        .Q(\REGS_reg[4] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[14]),
        .Q(\REGS_reg[4] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[15]),
        .Q(\REGS_reg[4] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[16]),
        .Q(\REGS_reg[4] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[17]),
        .Q(\REGS_reg[4] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[18]),
        .Q(\REGS_reg[4] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[19]),
        .Q(\REGS_reg[4] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[1]),
        .Q(\REGS_reg[4] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[20]),
        .Q(\REGS_reg[4] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[21]),
        .Q(\REGS_reg[4] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[22]),
        .Q(\REGS_reg[4] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[23]),
        .Q(\REGS_reg[4] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[24]),
        .Q(\REGS_reg[4] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[25]),
        .Q(\REGS_reg[4] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[26]),
        .Q(\REGS_reg[4] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[27]),
        .Q(\REGS_reg[4] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[28]),
        .Q(\REGS_reg[4] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[29]),
        .Q(\REGS_reg[4] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[2]),
        .Q(\REGS_reg[4] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[30]),
        .Q(\REGS_reg[4] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[31]),
        .Q(\REGS_reg[4] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[3]),
        .Q(\REGS_reg[4] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[4]),
        .Q(\REGS_reg[4] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[5]),
        .Q(\REGS_reg[4] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[6]),
        .Q(\REGS_reg[4] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[7]),
        .Q(\REGS_reg[4] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[8]),
        .Q(\REGS_reg[4] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[4][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[4] ),
        .D(D_IBUF[9]),
        .Q(\REGS_reg[4] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[0]),
        .Q(\REGS_reg[5] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[10]),
        .Q(\REGS_reg[5] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[11]),
        .Q(\REGS_reg[5] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[12]),
        .Q(\REGS_reg[5] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[13]),
        .Q(\REGS_reg[5] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[14]),
        .Q(\REGS_reg[5] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[15]),
        .Q(\REGS_reg[5] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[16]),
        .Q(\REGS_reg[5] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[17]),
        .Q(\REGS_reg[5] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[18]),
        .Q(\REGS_reg[5] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[19]),
        .Q(\REGS_reg[5] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[1]),
        .Q(\REGS_reg[5] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[20]),
        .Q(\REGS_reg[5] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[21]),
        .Q(\REGS_reg[5] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[22]),
        .Q(\REGS_reg[5] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[23]),
        .Q(\REGS_reg[5] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[24]),
        .Q(\REGS_reg[5] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[25]),
        .Q(\REGS_reg[5] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[26]),
        .Q(\REGS_reg[5] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[27]),
        .Q(\REGS_reg[5] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[28]),
        .Q(\REGS_reg[5] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[29]),
        .Q(\REGS_reg[5] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[2]),
        .Q(\REGS_reg[5] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[30]),
        .Q(\REGS_reg[5] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[31]),
        .Q(\REGS_reg[5] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[3]),
        .Q(\REGS_reg[5] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[4]),
        .Q(\REGS_reg[5] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[5]),
        .Q(\REGS_reg[5] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[6]),
        .Q(\REGS_reg[5] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[7]),
        .Q(\REGS_reg[5] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[8]),
        .Q(\REGS_reg[5] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[5][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[5] ),
        .D(D_IBUF[9]),
        .Q(\REGS_reg[5] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[0]),
        .Q(\REGS_reg[6] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[10]),
        .Q(\REGS_reg[6] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[11]),
        .Q(\REGS_reg[6] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[12]),
        .Q(\REGS_reg[6] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[13]),
        .Q(\REGS_reg[6] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[14]),
        .Q(\REGS_reg[6] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[15]),
        .Q(\REGS_reg[6] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[16]),
        .Q(\REGS_reg[6] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[17]),
        .Q(\REGS_reg[6] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[18]),
        .Q(\REGS_reg[6] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[19]),
        .Q(\REGS_reg[6] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[1]),
        .Q(\REGS_reg[6] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[20]),
        .Q(\REGS_reg[6] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[21]),
        .Q(\REGS_reg[6] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[22]),
        .Q(\REGS_reg[6] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[23]),
        .Q(\REGS_reg[6] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[24]),
        .Q(\REGS_reg[6] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[25]),
        .Q(\REGS_reg[6] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[26]),
        .Q(\REGS_reg[6] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[27]),
        .Q(\REGS_reg[6] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[28]),
        .Q(\REGS_reg[6] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[29]),
        .Q(\REGS_reg[6] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[2]),
        .Q(\REGS_reg[6] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[30]),
        .Q(\REGS_reg[6] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[31]),
        .Q(\REGS_reg[6] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[3]),
        .Q(\REGS_reg[6] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[4]),
        .Q(\REGS_reg[6] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[5]),
        .Q(\REGS_reg[6] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[6]),
        .Q(\REGS_reg[6] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[7]),
        .Q(\REGS_reg[6] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[8]),
        .Q(\REGS_reg[6] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[6][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[6] ),
        .D(D_IBUF[9]),
        .Q(\REGS_reg[6] [9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[0]),
        .Q(\REGS_reg[7] [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[10]),
        .Q(\REGS_reg[7] [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[11]),
        .Q(\REGS_reg[7] [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[12]),
        .Q(\REGS_reg[7] [12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[13]),
        .Q(\REGS_reg[7] [13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[14]),
        .Q(\REGS_reg[7] [14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[15]),
        .Q(\REGS_reg[7] [15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[16]),
        .Q(\REGS_reg[7] [16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[17]),
        .Q(\REGS_reg[7] [17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[18]),
        .Q(\REGS_reg[7] [18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[19]),
        .Q(\REGS_reg[7] [19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[1]),
        .Q(\REGS_reg[7] [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[20]),
        .Q(\REGS_reg[7] [20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[21]),
        .Q(\REGS_reg[7] [21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[22]),
        .Q(\REGS_reg[7] [22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[23]),
        .Q(\REGS_reg[7] [23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][24] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[24]),
        .Q(\REGS_reg[7] [24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][25] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[25]),
        .Q(\REGS_reg[7] [25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][26] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[26]),
        .Q(\REGS_reg[7] [26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][27] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[27]),
        .Q(\REGS_reg[7] [27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][28] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[28]),
        .Q(\REGS_reg[7] [28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][29] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[29]),
        .Q(\REGS_reg[7] [29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[2]),
        .Q(\REGS_reg[7] [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][30] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[30]),
        .Q(\REGS_reg[7] [30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][31] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[31]),
        .Q(\REGS_reg[7] [31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[3]),
        .Q(\REGS_reg[7] [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[4]),
        .Q(\REGS_reg[7] [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[5]),
        .Q(\REGS_reg[7] [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[6]),
        .Q(\REGS_reg[7] [6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[7]),
        .Q(\REGS_reg[7] [7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[8]),
        .Q(\REGS_reg[7] [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \REGS_reg[7][9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\REGS[7] ),
        .D(D_IBUF[9]),
        .Q(\REGS_reg[7] [9]),
        .R(p_0_in));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  IBUF W_IBUF_inst
       (.I(W),
        .O(W_IBUF));
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
