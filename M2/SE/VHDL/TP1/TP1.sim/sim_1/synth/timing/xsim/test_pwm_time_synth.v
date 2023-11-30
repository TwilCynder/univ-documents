// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Nov 29 17:51:09 2023
// Host        : secil1.siame.univ-tlse3.fr running 64-bit unknown
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/TP1/TP1.sim/sim_1/synth/timing/xsim/test_pwm_time_synth.v
// Design      : pwm
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* duty_res = "4" *) (* pwm_freq = "6250000" *) (* sys_clk = "125000000" *) 
(* NotValidForBitStream *)
module pwm
   (RST,
    EN,
    CLK,
    DUTY,
    P);
  input RST;
  input EN;
  input CLK;
  input [3:0]DUTY;
  output P;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [3:0]DUTY;
  wire [3:0]DUTY_IBUF;
  wire EN;
  wire EN_IBUF;
  wire P;
  wire P_OBUF;
  wire P_i_1_n_0;
  wire P_i_2_n_0;
  wire P_i_3_n_0;
  wire RST;
  wire RST_IBUF;
  wire [4:0]cpt;
  wire \cpt[0]_i_1_n_0 ;
  wire \cpt[1]_i_1_n_0 ;
  wire \cpt[2]_i_1_n_0 ;
  wire \cpt[2]_i_2_n_0 ;
  wire \cpt[3]_i_1_n_0 ;
  wire \cpt[4]_i_1_n_0 ;
  wire \duty_threshold[2]_i_1_n_0 ;
  wire \duty_threshold[4]_i_1_n_0 ;
  wire \duty_threshold[4]_i_2_n_0 ;
  wire \duty_threshold_reg_n_0_[0] ;
  wire \duty_threshold_reg_n_0_[1] ;
  wire \duty_threshold_reg_n_0_[2] ;
  wire \duty_threshold_reg_n_0_[3] ;
  wire \duty_threshold_reg_n_0_[4] ;
  wire [4:0]p_1_in;

initial begin
 $sdf_annotate("test_pwm_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF \DUTY_IBUF[0]_inst 
       (.I(DUTY[0]),
        .O(DUTY_IBUF[0]));
  IBUF \DUTY_IBUF[1]_inst 
       (.I(DUTY[1]),
        .O(DUTY_IBUF[1]));
  IBUF \DUTY_IBUF[2]_inst 
       (.I(DUTY[2]),
        .O(DUTY_IBUF[2]));
  IBUF \DUTY_IBUF[3]_inst 
       (.I(DUTY[3]),
        .O(DUTY_IBUF[3]));
  IBUF EN_IBUF_inst
       (.I(EN),
        .O(EN_IBUF));
  OBUF P_OBUF_inst
       (.I(P_OBUF),
        .O(P));
  LUT2 #(
    .INIT(4'hB)) 
    P_i_1
       (.I0(EN_IBUF),
        .I1(RST_IBUF),
        .O(P_i_1_n_0));
  LUT6 #(
    .INIT(64'hBAFBBABAFBFBBAFB)) 
    P_i_2
       (.I0(\cpt[2]_i_2_n_0 ),
        .I1(cpt[4]),
        .I2(\duty_threshold_reg_n_0_[4] ),
        .I3(cpt[3]),
        .I4(\duty_threshold_reg_n_0_[3] ),
        .I5(P_i_3_n_0),
        .O(P_i_2_n_0));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    P_i_3
       (.I0(\duty_threshold_reg_n_0_[0] ),
        .I1(cpt[0]),
        .I2(\duty_threshold_reg_n_0_[1] ),
        .I3(cpt[1]),
        .I4(\duty_threshold_reg_n_0_[2] ),
        .I5(cpt[2]),
        .O(P_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    P_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(P_i_2_n_0),
        .Q(P_OBUF),
        .R(P_i_1_n_0));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF1F)) 
    \cpt[0]_i_1 
       (.I0(\cpt[2]_i_2_n_0 ),
        .I1(cpt[0]),
        .I2(RST_IBUF),
        .I3(EN_IBUF),
        .O(\cpt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF14FF)) 
    \cpt[1]_i_1 
       (.I0(\cpt[2]_i_2_n_0 ),
        .I1(cpt[0]),
        .I2(cpt[1]),
        .I3(RST_IBUF),
        .I4(EN_IBUF),
        .O(\cpt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000006A00000000)) 
    \cpt[2]_i_1 
       (.I0(cpt[2]),
        .I1(cpt[1]),
        .I2(cpt[0]),
        .I3(\cpt[2]_i_2_n_0 ),
        .I4(EN_IBUF),
        .I5(RST_IBUF),
        .O(\cpt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA888)) 
    \cpt[2]_i_2 
       (.I0(cpt[4]),
        .I1(cpt[3]),
        .I2(cpt[0]),
        .I3(cpt[1]),
        .I4(cpt[2]),
        .O(\cpt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000014444444)) 
    \cpt[3]_i_1 
       (.I0(cpt[4]),
        .I1(cpt[3]),
        .I2(cpt[0]),
        .I3(cpt[1]),
        .I4(cpt[2]),
        .I5(P_i_1_n_0),
        .O(\cpt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000222)) 
    \cpt[4]_i_1 
       (.I0(cpt[4]),
        .I1(cpt[3]),
        .I2(cpt[0]),
        .I3(cpt[1]),
        .I4(cpt[2]),
        .I5(P_i_1_n_0),
        .O(\cpt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\cpt[0]_i_1_n_0 ),
        .Q(cpt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\cpt[1]_i_1_n_0 ),
        .Q(cpt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\cpt[2]_i_1_n_0 ),
        .Q(cpt[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\cpt[3]_i_1_n_0 ),
        .Q(cpt[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\cpt[4]_i_1_n_0 ),
        .Q(cpt[4]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \duty_threshold[0]_i_1 
       (.I0(DUTY_IBUF[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \duty_threshold[1]_i_1 
       (.I0(DUTY_IBUF[0]),
        .I1(DUTY_IBUF[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \duty_threshold[2]_i_1 
       (.I0(DUTY_IBUF[0]),
        .I1(DUTY_IBUF[1]),
        .I2(DUTY_IBUF[2]),
        .O(\duty_threshold[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \duty_threshold[3]_i_1 
       (.I0(DUTY_IBUF[1]),
        .I1(DUTY_IBUF[0]),
        .I2(DUTY_IBUF[2]),
        .I3(DUTY_IBUF[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \duty_threshold[4]_i_1 
       (.I0(DUTY_IBUF[3]),
        .I1(DUTY_IBUF[2]),
        .I2(DUTY_IBUF[0]),
        .I3(DUTY_IBUF[1]),
        .I4(\cpt[2]_i_2_n_0 ),
        .I5(P_i_1_n_0),
        .O(\duty_threshold[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \duty_threshold[4]_i_2 
       (.I0(\cpt[2]_i_2_n_0 ),
        .I1(RST_IBUF),
        .I2(EN_IBUF),
        .O(\duty_threshold[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \duty_threshold[4]_i_3 
       (.I0(DUTY_IBUF[3]),
        .I1(DUTY_IBUF[1]),
        .I2(DUTY_IBUF[0]),
        .I3(DUTY_IBUF[2]),
        .O(p_1_in[4]));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\duty_threshold[4]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(\duty_threshold_reg_n_0_[0] ),
        .S(\duty_threshold[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\duty_threshold[4]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(\duty_threshold_reg_n_0_[1] ),
        .S(\duty_threshold[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\duty_threshold[4]_i_2_n_0 ),
        .D(\duty_threshold[2]_i_1_n_0 ),
        .Q(\duty_threshold_reg_n_0_[2] ),
        .R(\duty_threshold[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\duty_threshold[4]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(\duty_threshold_reg_n_0_[3] ),
        .R(\duty_threshold[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\duty_threshold[4]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(\duty_threshold_reg_n_0_[4] ),
        .S(\duty_threshold[4]_i_1_n_0 ));
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
