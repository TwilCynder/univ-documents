// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Jan  9 15:58:37 2024
// Host        : secil1.siame.univ-tlse3.fr running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PWM_IP_0_0_sim_netlist.v
// Design      : design_1_PWM_IP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_IP_v1_0
   (S_AXI_AWREADY,
    P,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output P;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire P;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_IP_v1_0_S00_AXI PWM_IP_v1_0_S00_AXI_inst
       (.P(P),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_IP_v1_0_S00_AXI
   (S_AXI_AWREADY,
    P,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output P;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire EN;
  wire P;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg2[0]),
        .I1(slv_reg3[0]),
        .I2(\slv_reg0_reg_n_0_[0] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg2[10]),
        .I1(slv_reg3[10]),
        .I2(\slv_reg0_reg_n_0_[10] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg2[11]),
        .I1(slv_reg3[11]),
        .I2(\slv_reg0_reg_n_0_[11] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg2[12]),
        .I1(slv_reg3[12]),
        .I2(\slv_reg0_reg_n_0_[12] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg2[13]),
        .I1(slv_reg3[13]),
        .I2(\slv_reg0_reg_n_0_[13] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg2[14]),
        .I1(slv_reg3[14]),
        .I2(\slv_reg0_reg_n_0_[14] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg2[15]),
        .I1(slv_reg3[15]),
        .I2(\slv_reg0_reg_n_0_[15] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg2[16]),
        .I1(slv_reg3[16]),
        .I2(\slv_reg0_reg_n_0_[16] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg2[17]),
        .I1(slv_reg3[17]),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg2[18]),
        .I1(slv_reg3[18]),
        .I2(\slv_reg0_reg_n_0_[18] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg2[19]),
        .I1(slv_reg3[19]),
        .I2(\slv_reg0_reg_n_0_[19] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg2[1]),
        .I1(slv_reg3[1]),
        .I2(\slv_reg0_reg_n_0_[1] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg2[20]),
        .I1(slv_reg3[20]),
        .I2(\slv_reg0_reg_n_0_[20] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg2[21]),
        .I1(slv_reg3[21]),
        .I2(\slv_reg0_reg_n_0_[21] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg2[22]),
        .I1(slv_reg3[22]),
        .I2(\slv_reg0_reg_n_0_[22] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg2[23]),
        .I1(slv_reg3[23]),
        .I2(\slv_reg0_reg_n_0_[23] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg2[24]),
        .I1(slv_reg3[24]),
        .I2(\slv_reg0_reg_n_0_[24] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg2[25]),
        .I1(slv_reg3[25]),
        .I2(\slv_reg0_reg_n_0_[25] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg2[26]),
        .I1(slv_reg3[26]),
        .I2(\slv_reg0_reg_n_0_[26] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg2[27]),
        .I1(slv_reg3[27]),
        .I2(\slv_reg0_reg_n_0_[27] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg2[28]),
        .I1(slv_reg3[28]),
        .I2(\slv_reg0_reg_n_0_[28] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg2[29]),
        .I1(slv_reg3[29]),
        .I2(\slv_reg0_reg_n_0_[29] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg2[2]),
        .I1(slv_reg3[2]),
        .I2(\slv_reg0_reg_n_0_[2] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg2[30]),
        .I1(slv_reg3[30]),
        .I2(\slv_reg0_reg_n_0_[30] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg2[31]),
        .I1(slv_reg3[31]),
        .I2(EN),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg2[3]),
        .I1(slv_reg3[3]),
        .I2(\slv_reg0_reg_n_0_[3] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg2[4]),
        .I1(slv_reg3[4]),
        .I2(\slv_reg0_reg_n_0_[4] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg2[5]),
        .I1(slv_reg3[5]),
        .I2(\slv_reg0_reg_n_0_[5] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg2[6]),
        .I1(slv_reg3[6]),
        .I2(\slv_reg0_reg_n_0_[6] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg2[7]),
        .I1(slv_reg3[7]),
        .I2(\slv_reg0_reg_n_0_[7] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg2[8]),
        .I1(slv_reg3[8]),
        .I2(\slv_reg0_reg_n_0_[8] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg2[9]),
        .I1(slv_reg3[9]),
        .I2(\slv_reg0_reg_n_0_[9] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm pwm_inst
       (.P(P),
        .Q({EN,\slv_reg0_reg_n_0_[3] ,\slv_reg0_reg_n_0_[2] ,\slv_reg0_reg_n_0_[1] ,\slv_reg0_reg_n_0_[0] }),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(EN),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_PWM_IP_0_0,PWM_IP_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "PWM_IP_v1_0,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (P,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output P;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire P;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_IP_v1_0 U0
       (.P(P),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm
   (P,
    s00_axi_aclk,
    s00_axi_aresetn,
    Q);
  output P;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [4:0]Q;

  wire [4:0]B;
  wire P;
  wire P1;
  wire P1_carry__0_i_1_n_0;
  wire P1_carry__0_i_2_n_0;
  wire P1_carry__0_i_3_n_0;
  wire P1_carry__0_i_4_n_0;
  wire P1_carry__0_i_5_n_0;
  wire P1_carry__0_i_6_n_0;
  wire P1_carry__0_i_7_n_0;
  wire P1_carry__0_i_8_n_0;
  wire P1_carry__0_n_0;
  wire P1_carry__0_n_1;
  wire P1_carry__0_n_2;
  wire P1_carry__0_n_3;
  wire P1_carry__1_i_1_n_0;
  wire P1_carry__1_i_2_n_0;
  wire P1_carry__1_i_3_n_0;
  wire P1_carry__1_i_4_n_0;
  wire P1_carry__1_i_5_n_0;
  wire P1_carry__1_i_6_n_0;
  wire P1_carry__1_i_7_n_0;
  wire P1_carry__1_i_8_n_0;
  wire P1_carry__1_n_0;
  wire P1_carry__1_n_1;
  wire P1_carry__1_n_2;
  wire P1_carry__1_n_3;
  wire P1_carry__2_i_1_n_0;
  wire P1_carry__2_i_2_n_0;
  wire P1_carry_i_1_n_0;
  wire P1_carry_i_2_n_0;
  wire P1_carry_i_3_n_0;
  wire P1_carry_i_4_n_0;
  wire P1_carry_i_5_n_0;
  wire P1_carry_i_6_n_0;
  wire P1_carry_i_7_n_0;
  wire P1_carry_i_8_n_0;
  wire P1_carry_n_0;
  wire P1_carry_n_1;
  wire P1_carry_n_2;
  wire P1_carry_n_3;
  wire P_i_2_n_0;
  wire P_i_3_n_0;
  wire P_i_4_n_0;
  wire P_i_5_n_0;
  wire P_i_6_n_0;
  wire P_i_7_n_0;
  wire P_i_8_n_0;
  wire P_i_9_n_0;
  wire [4:0]Q;
  wire \cpt[0]_i_1_n_0 ;
  wire \cpt[12]_i_1_n_0 ;
  wire \cpt[13]_i_1_n_0 ;
  wire \cpt[14]_i_1_n_0 ;
  wire \cpt[15]_i_1_n_0 ;
  wire \cpt[17]_i_1_n_0 ;
  wire \cpt[19]_i_1_n_0 ;
  wire \cpt[1]_i_1_n_0 ;
  wire \cpt[20]_i_1_n_0 ;
  wire \cpt[21]_i_1_n_0 ;
  wire \cpt[22]_i_1_n_0 ;
  wire \cpt[23]_i_1_n_0 ;
  wire \cpt[24]_i_1_n_0 ;
  wire \cpt[25]_i_1_n_0 ;
  wire \cpt[2]_i_1_n_0 ;
  wire \cpt[3]_i_1_n_0 ;
  wire \cpt[4]_i_1_n_0 ;
  wire \cpt[5]_i_1_n_0 ;
  wire \cpt[6]_i_1_n_0 ;
  wire \cpt_reg[11]_i_1_n_0 ;
  wire \cpt_reg[11]_i_1_n_1 ;
  wire \cpt_reg[11]_i_1_n_2 ;
  wire \cpt_reg[11]_i_1_n_3 ;
  wire \cpt_reg[16]_i_1_n_0 ;
  wire \cpt_reg[16]_i_1_n_1 ;
  wire \cpt_reg[16]_i_1_n_2 ;
  wire \cpt_reg[16]_i_1_n_3 ;
  wire \cpt_reg[18]_i_1_n_0 ;
  wire \cpt_reg[18]_i_1_n_1 ;
  wire \cpt_reg[18]_i_1_n_2 ;
  wire \cpt_reg[18]_i_1_n_3 ;
  wire \cpt_reg[24]_i_2_n_0 ;
  wire \cpt_reg[24]_i_2_n_1 ;
  wire \cpt_reg[24]_i_2_n_2 ;
  wire \cpt_reg[24]_i_2_n_3 ;
  wire \cpt_reg[8]_i_1_n_0 ;
  wire \cpt_reg[8]_i_1_n_1 ;
  wire \cpt_reg[8]_i_1_n_2 ;
  wire \cpt_reg[8]_i_1_n_3 ;
  wire \cpt_reg[8]_i_2_n_0 ;
  wire \cpt_reg[8]_i_2_n_1 ;
  wire \cpt_reg[8]_i_2_n_2 ;
  wire \cpt_reg[8]_i_2_n_3 ;
  wire \cpt_reg_n_0_[0] ;
  wire \cpt_reg_n_0_[10] ;
  wire \cpt_reg_n_0_[11] ;
  wire \cpt_reg_n_0_[12] ;
  wire \cpt_reg_n_0_[13] ;
  wire \cpt_reg_n_0_[14] ;
  wire \cpt_reg_n_0_[15] ;
  wire \cpt_reg_n_0_[16] ;
  wire \cpt_reg_n_0_[17] ;
  wire \cpt_reg_n_0_[18] ;
  wire \cpt_reg_n_0_[19] ;
  wire \cpt_reg_n_0_[1] ;
  wire \cpt_reg_n_0_[20] ;
  wire \cpt_reg_n_0_[21] ;
  wire \cpt_reg_n_0_[22] ;
  wire \cpt_reg_n_0_[23] ;
  wire \cpt_reg_n_0_[24] ;
  wire \cpt_reg_n_0_[25] ;
  wire \cpt_reg_n_0_[2] ;
  wire \cpt_reg_n_0_[3] ;
  wire \cpt_reg_n_0_[4] ;
  wire \cpt_reg_n_0_[5] ;
  wire \cpt_reg_n_0_[6] ;
  wire \cpt_reg_n_0_[7] ;
  wire \cpt_reg_n_0_[8] ;
  wire \cpt_reg_n_0_[9] ;
  wire [25:0]duty_threshold;
  wire duty_threshold0_n_100;
  wire duty_threshold0_n_101;
  wire duty_threshold0_n_102;
  wire duty_threshold0_n_103;
  wire duty_threshold0_n_104;
  wire duty_threshold0_n_105;
  wire duty_threshold0_n_79;
  wire duty_threshold0_n_80;
  wire duty_threshold0_n_81;
  wire duty_threshold0_n_82;
  wire duty_threshold0_n_83;
  wire duty_threshold0_n_84;
  wire duty_threshold0_n_85;
  wire duty_threshold0_n_86;
  wire duty_threshold0_n_87;
  wire duty_threshold0_n_88;
  wire duty_threshold0_n_89;
  wire duty_threshold0_n_90;
  wire duty_threshold0_n_91;
  wire duty_threshold0_n_92;
  wire duty_threshold0_n_93;
  wire duty_threshold0_n_94;
  wire duty_threshold0_n_95;
  wire duty_threshold0_n_96;
  wire duty_threshold0_n_97;
  wire duty_threshold0_n_98;
  wire duty_threshold0_n_99;
  wire \duty_threshold[25]_i_1_n_0 ;
  wire \duty_threshold[25]_i_3_n_0 ;
  wire duty_threshold_0;
  wire p_1_in0;
  wire [25:1]p_2_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:0]NLW_P1_carry_O_UNCONNECTED;
  wire [3:0]NLW_P1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_P1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_P1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_P1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_cpt_reg[25]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_cpt_reg[25]_i_2_O_UNCONNECTED ;
  wire NLW_duty_threshold0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_duty_threshold0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_duty_threshold0_OVERFLOW_UNCONNECTED;
  wire NLW_duty_threshold0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_duty_threshold0_PATTERNDETECT_UNCONNECTED;
  wire NLW_duty_threshold0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_duty_threshold0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_duty_threshold0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_duty_threshold0_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_duty_threshold0_P_UNCONNECTED;
  wire [47:0]NLW_duty_threshold0_PCOUT_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 P1_carry
       (.CI(1'b0),
        .CO({P1_carry_n_0,P1_carry_n_1,P1_carry_n_2,P1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({P1_carry_i_1_n_0,P1_carry_i_2_n_0,P1_carry_i_3_n_0,P1_carry_i_4_n_0}),
        .O(NLW_P1_carry_O_UNCONNECTED[3:0]),
        .S({P1_carry_i_5_n_0,P1_carry_i_6_n_0,P1_carry_i_7_n_0,P1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 P1_carry__0
       (.CI(P1_carry_n_0),
        .CO({P1_carry__0_n_0,P1_carry__0_n_1,P1_carry__0_n_2,P1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({P1_carry__0_i_1_n_0,P1_carry__0_i_2_n_0,P1_carry__0_i_3_n_0,P1_carry__0_i_4_n_0}),
        .O(NLW_P1_carry__0_O_UNCONNECTED[3:0]),
        .S({P1_carry__0_i_5_n_0,P1_carry__0_i_6_n_0,P1_carry__0_i_7_n_0,P1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry__0_i_1
       (.I0(\cpt_reg_n_0_[14] ),
        .I1(duty_threshold[14]),
        .I2(duty_threshold[15]),
        .I3(\cpt_reg_n_0_[15] ),
        .O(P1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry__0_i_2
       (.I0(\cpt_reg_n_0_[12] ),
        .I1(duty_threshold[12]),
        .I2(duty_threshold[13]),
        .I3(\cpt_reg_n_0_[13] ),
        .O(P1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry__0_i_3
       (.I0(\cpt_reg_n_0_[10] ),
        .I1(duty_threshold[10]),
        .I2(duty_threshold[11]),
        .I3(\cpt_reg_n_0_[11] ),
        .O(P1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry__0_i_4
       (.I0(\cpt_reg_n_0_[8] ),
        .I1(duty_threshold[8]),
        .I2(duty_threshold[9]),
        .I3(\cpt_reg_n_0_[9] ),
        .O(P1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry__0_i_5
       (.I0(duty_threshold[15]),
        .I1(\cpt_reg_n_0_[15] ),
        .I2(duty_threshold[14]),
        .I3(\cpt_reg_n_0_[14] ),
        .O(P1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry__0_i_6
       (.I0(duty_threshold[13]),
        .I1(\cpt_reg_n_0_[13] ),
        .I2(duty_threshold[12]),
        .I3(\cpt_reg_n_0_[12] ),
        .O(P1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry__0_i_7
       (.I0(duty_threshold[11]),
        .I1(\cpt_reg_n_0_[11] ),
        .I2(duty_threshold[10]),
        .I3(\cpt_reg_n_0_[10] ),
        .O(P1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry__0_i_8
       (.I0(duty_threshold[9]),
        .I1(\cpt_reg_n_0_[9] ),
        .I2(duty_threshold[8]),
        .I3(\cpt_reg_n_0_[8] ),
        .O(P1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 P1_carry__1
       (.CI(P1_carry__0_n_0),
        .CO({P1_carry__1_n_0,P1_carry__1_n_1,P1_carry__1_n_2,P1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({P1_carry__1_i_1_n_0,P1_carry__1_i_2_n_0,P1_carry__1_i_3_n_0,P1_carry__1_i_4_n_0}),
        .O(NLW_P1_carry__1_O_UNCONNECTED[3:0]),
        .S({P1_carry__1_i_5_n_0,P1_carry__1_i_6_n_0,P1_carry__1_i_7_n_0,P1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry__1_i_1
       (.I0(\cpt_reg_n_0_[22] ),
        .I1(duty_threshold[22]),
        .I2(duty_threshold[23]),
        .I3(\cpt_reg_n_0_[23] ),
        .O(P1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry__1_i_2
       (.I0(\cpt_reg_n_0_[20] ),
        .I1(duty_threshold[20]),
        .I2(duty_threshold[21]),
        .I3(\cpt_reg_n_0_[21] ),
        .O(P1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry__1_i_3
       (.I0(\cpt_reg_n_0_[18] ),
        .I1(duty_threshold[18]),
        .I2(duty_threshold[19]),
        .I3(\cpt_reg_n_0_[19] ),
        .O(P1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry__1_i_4
       (.I0(\cpt_reg_n_0_[16] ),
        .I1(duty_threshold[16]),
        .I2(duty_threshold[17]),
        .I3(\cpt_reg_n_0_[17] ),
        .O(P1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry__1_i_5
       (.I0(duty_threshold[23]),
        .I1(\cpt_reg_n_0_[23] ),
        .I2(duty_threshold[22]),
        .I3(\cpt_reg_n_0_[22] ),
        .O(P1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry__1_i_6
       (.I0(duty_threshold[21]),
        .I1(\cpt_reg_n_0_[21] ),
        .I2(duty_threshold[20]),
        .I3(\cpt_reg_n_0_[20] ),
        .O(P1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry__1_i_7
       (.I0(duty_threshold[19]),
        .I1(\cpt_reg_n_0_[19] ),
        .I2(duty_threshold[18]),
        .I3(\cpt_reg_n_0_[18] ),
        .O(P1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry__1_i_8
       (.I0(duty_threshold[17]),
        .I1(\cpt_reg_n_0_[17] ),
        .I2(duty_threshold[16]),
        .I3(\cpt_reg_n_0_[16] ),
        .O(P1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 P1_carry__2
       (.CI(P1_carry__1_n_0),
        .CO({NLW_P1_carry__2_CO_UNCONNECTED[3:1],P1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,P1_carry__2_i_1_n_0}),
        .O(NLW_P1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,P1_carry__2_i_2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry__2_i_1
       (.I0(\cpt_reg_n_0_[24] ),
        .I1(duty_threshold[24]),
        .I2(duty_threshold[25]),
        .I3(\cpt_reg_n_0_[25] ),
        .O(P1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry__2_i_2
       (.I0(duty_threshold[25]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(duty_threshold[24]),
        .I3(\cpt_reg_n_0_[24] ),
        .O(P1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry_i_1
       (.I0(\cpt_reg_n_0_[6] ),
        .I1(duty_threshold[6]),
        .I2(duty_threshold[7]),
        .I3(\cpt_reg_n_0_[7] ),
        .O(P1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry_i_2
       (.I0(\cpt_reg_n_0_[4] ),
        .I1(duty_threshold[4]),
        .I2(duty_threshold[5]),
        .I3(\cpt_reg_n_0_[5] ),
        .O(P1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry_i_3
       (.I0(\cpt_reg_n_0_[2] ),
        .I1(duty_threshold[2]),
        .I2(duty_threshold[3]),
        .I3(\cpt_reg_n_0_[3] ),
        .O(P1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    P1_carry_i_4
       (.I0(\cpt_reg_n_0_[0] ),
        .I1(duty_threshold[0]),
        .I2(duty_threshold[1]),
        .I3(\cpt_reg_n_0_[1] ),
        .O(P1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry_i_5
       (.I0(duty_threshold[7]),
        .I1(\cpt_reg_n_0_[7] ),
        .I2(duty_threshold[6]),
        .I3(\cpt_reg_n_0_[6] ),
        .O(P1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry_i_6
       (.I0(duty_threshold[5]),
        .I1(\cpt_reg_n_0_[5] ),
        .I2(duty_threshold[4]),
        .I3(\cpt_reg_n_0_[4] ),
        .O(P1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry_i_7
       (.I0(duty_threshold[3]),
        .I1(\cpt_reg_n_0_[3] ),
        .I2(duty_threshold[2]),
        .I3(\cpt_reg_n_0_[2] ),
        .O(P1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    P1_carry_i_8
       (.I0(duty_threshold[1]),
        .I1(\cpt_reg_n_0_[1] ),
        .I2(duty_threshold[0]),
        .I3(\cpt_reg_n_0_[0] ),
        .O(P1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    P_i_1
       (.I0(s00_axi_aresetn),
        .I1(Q[4]),
        .O(p_1_in0));
  LUT6 #(
    .INIT(64'hF8F8F888FFFFFFFF)) 
    P_i_2
       (.I0(\cpt_reg_n_0_[25] ),
        .I1(\cpt_reg_n_0_[24] ),
        .I2(P_i_3_n_0),
        .I3(P_i_4_n_0),
        .I4(P_i_5_n_0),
        .I5(P1),
        .O(P_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    P_i_3
       (.I0(\cpt_reg_n_0_[20] ),
        .I1(\cpt_reg_n_0_[21] ),
        .I2(\cpt_reg_n_0_[25] ),
        .I3(\cpt_reg_n_0_[19] ),
        .I4(\cpt_reg_n_0_[23] ),
        .I5(\cpt_reg_n_0_[22] ),
        .O(P_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
    P_i_4
       (.I0(P_i_6_n_0),
        .I1(P_i_7_n_0),
        .I2(\cpt_reg_n_0_[10] ),
        .I3(\cpt_reg_n_0_[9] ),
        .I4(P_i_8_n_0),
        .I5(P_i_9_n_0),
        .O(P_i_4_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    P_i_5
       (.I0(\cpt_reg_n_0_[16] ),
        .I1(\cpt_reg_n_0_[17] ),
        .I2(\cpt_reg_n_0_[18] ),
        .O(P_i_5_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    P_i_6
       (.I0(\cpt_reg_n_0_[17] ),
        .I1(\cpt_reg_n_0_[12] ),
        .I2(\cpt_reg_n_0_[13] ),
        .I3(\cpt_reg_n_0_[15] ),
        .I4(\cpt_reg_n_0_[14] ),
        .O(P_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    P_i_7
       (.I0(\cpt_reg_n_0_[8] ),
        .I1(\cpt_reg_n_0_[7] ),
        .I2(\cpt_reg_n_0_[11] ),
        .O(P_i_7_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    P_i_8
       (.I0(\cpt_reg_n_0_[2] ),
        .I1(\cpt_reg_n_0_[1] ),
        .I2(\cpt_reg_n_0_[0] ),
        .O(P_i_8_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    P_i_9
       (.I0(\cpt_reg_n_0_[6] ),
        .I1(\cpt_reg_n_0_[5] ),
        .I2(\cpt_reg_n_0_[4] ),
        .I3(\cpt_reg_n_0_[3] ),
        .O(P_i_9_n_0));
  FDRE P_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(P_i_2_n_0),
        .Q(P),
        .R(p_1_in0));
  LUT6 #(
    .INIT(64'h0015001500151515)) 
    \cpt[0]_i_1 
       (.I0(\cpt_reg_n_0_[0] ),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[12]_i_1 
       (.I0(p_2_in[12]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[13]_i_1 
       (.I0(p_2_in[13]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[14]_i_1 
       (.I0(p_2_in[14]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[15]_i_1 
       (.I0(p_2_in[15]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[17]_i_1 
       (.I0(p_2_in[17]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[19]_i_1 
       (.I0(p_2_in[19]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[1]_i_1 
       (.I0(p_2_in[1]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[20]_i_1 
       (.I0(p_2_in[20]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[21]_i_1 
       (.I0(p_2_in[21]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[22]_i_1 
       (.I0(p_2_in[22]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[23]_i_1 
       (.I0(p_2_in[23]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFEAEAEA)) 
    \cpt[24]_i_1 
       (.I0(p_1_in0),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[25]_i_1 
       (.I0(p_2_in[25]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[2]_i_1 
       (.I0(p_2_in[2]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[3]_i_1 
       (.I0(p_2_in[3]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[4]_i_1 
       (.I0(p_2_in[4]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[5]_i_1 
       (.I0(p_2_in[5]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \cpt[6]_i_1 
       (.I0(p_2_in[6]),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\cpt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[0]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[0] ),
        .S(p_1_in0));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_in[10]),
        .Q(\cpt_reg_n_0_[10] ),
        .R(\cpt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_in[11]),
        .Q(\cpt_reg_n_0_[11] ),
        .R(\cpt[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cpt_reg[11]_i_1 
       (.CI(\cpt_reg[8]_i_1_n_0 ),
        .CO({\cpt_reg[11]_i_1_n_0 ,\cpt_reg[11]_i_1_n_1 ,\cpt_reg[11]_i_1_n_2 ,\cpt_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[12:9]),
        .S({\cpt_reg_n_0_[12] ,\cpt_reg_n_0_[11] ,\cpt_reg_n_0_[10] ,\cpt_reg_n_0_[9] }));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[12]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[12] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[13]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[13] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[14]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[14] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[15]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[15] ),
        .S(p_1_in0));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_in[16]),
        .Q(\cpt_reg_n_0_[16] ),
        .R(\cpt[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cpt_reg[16]_i_1 
       (.CI(\cpt_reg[11]_i_1_n_0 ),
        .CO({\cpt_reg[16]_i_1_n_0 ,\cpt_reg[16]_i_1_n_1 ,\cpt_reg[16]_i_1_n_2 ,\cpt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[16:13]),
        .S({\cpt_reg_n_0_[16] ,\cpt_reg_n_0_[15] ,\cpt_reg_n_0_[14] ,\cpt_reg_n_0_[13] }));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[17]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[17] ),
        .S(p_1_in0));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_in[18]),
        .Q(\cpt_reg_n_0_[18] ),
        .R(\cpt[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cpt_reg[18]_i_1 
       (.CI(\cpt_reg[16]_i_1_n_0 ),
        .CO({\cpt_reg[18]_i_1_n_0 ,\cpt_reg[18]_i_1_n_1 ,\cpt_reg[18]_i_1_n_2 ,\cpt_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[20:17]),
        .S({\cpt_reg_n_0_[20] ,\cpt_reg_n_0_[19] ,\cpt_reg_n_0_[18] ,\cpt_reg_n_0_[17] }));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[19]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[19] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[1]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[1] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[20]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[20] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[21]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[21] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[22]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[22] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[23]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[23] ),
        .S(p_1_in0));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_in[24]),
        .Q(\cpt_reg_n_0_[24] ),
        .R(\cpt[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cpt_reg[24]_i_2 
       (.CI(\cpt_reg[18]_i_1_n_0 ),
        .CO({\cpt_reg[24]_i_2_n_0 ,\cpt_reg[24]_i_2_n_1 ,\cpt_reg[24]_i_2_n_2 ,\cpt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[24:21]),
        .S({\cpt_reg_n_0_[24] ,\cpt_reg_n_0_[23] ,\cpt_reg_n_0_[22] ,\cpt_reg_n_0_[21] }));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[25]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[25] ),
        .S(p_1_in0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cpt_reg[25]_i_2 
       (.CI(\cpt_reg[24]_i_2_n_0 ),
        .CO(\NLW_cpt_reg[25]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cpt_reg[25]_i_2_O_UNCONNECTED [3:1],p_2_in[25]}),
        .S({1'b0,1'b0,1'b0,\cpt_reg_n_0_[25] }));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[2]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[2] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[3]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[3] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[4]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[4] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[5]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[5] ),
        .S(p_1_in0));
  FDSE #(
    .INIT(1'b0)) 
    \cpt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cpt[6]_i_1_n_0 ),
        .Q(\cpt_reg_n_0_[6] ),
        .S(p_1_in0));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_in[7]),
        .Q(\cpt_reg_n_0_[7] ),
        .R(\cpt[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_in[8]),
        .Q(\cpt_reg_n_0_[8] ),
        .R(\cpt[24]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cpt_reg[8]_i_1 
       (.CI(\cpt_reg[8]_i_2_n_0 ),
        .CO({\cpt_reg[8]_i_1_n_0 ,\cpt_reg[8]_i_1_n_1 ,\cpt_reg[8]_i_1_n_2 ,\cpt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[8:5]),
        .S({\cpt_reg_n_0_[8] ,\cpt_reg_n_0_[7] ,\cpt_reg_n_0_[6] ,\cpt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cpt_reg[8]_i_2 
       (.CI(1'b0),
        .CO({\cpt_reg[8]_i_2_n_0 ,\cpt_reg[8]_i_2_n_1 ,\cpt_reg[8]_i_2_n_2 ,\cpt_reg[8]_i_2_n_3 }),
        .CYINIT(\cpt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[4:1]),
        .S({\cpt_reg_n_0_[4] ,\cpt_reg_n_0_[3] ,\cpt_reg_n_0_[2] ,\cpt_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \cpt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_in[9]),
        .Q(\cpt_reg_n_0_[9] ),
        .R(\cpt[24]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    duty_threshold0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_duty_threshold0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_duty_threshold0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_duty_threshold0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_duty_threshold0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_duty_threshold0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_duty_threshold0_OVERFLOW_UNCONNECTED),
        .P({NLW_duty_threshold0_P_UNCONNECTED[47:27],duty_threshold0_n_79,duty_threshold0_n_80,duty_threshold0_n_81,duty_threshold0_n_82,duty_threshold0_n_83,duty_threshold0_n_84,duty_threshold0_n_85,duty_threshold0_n_86,duty_threshold0_n_87,duty_threshold0_n_88,duty_threshold0_n_89,duty_threshold0_n_90,duty_threshold0_n_91,duty_threshold0_n_92,duty_threshold0_n_93,duty_threshold0_n_94,duty_threshold0_n_95,duty_threshold0_n_96,duty_threshold0_n_97,duty_threshold0_n_98,duty_threshold0_n_99,duty_threshold0_n_100,duty_threshold0_n_101,duty_threshold0_n_102,duty_threshold0_n_103,duty_threshold0_n_104,duty_threshold0_n_105}),
        .PATTERNBDETECT(NLW_duty_threshold0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_duty_threshold0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_duty_threshold0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_duty_threshold0_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h8000)) 
    duty_threshold0_i_1
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(B[4]));
  LUT4 #(
    .INIT(16'h7F80)) 
    duty_threshold0_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(B[3]));
  LUT3 #(
    .INIT(8'h78)) 
    duty_threshold0_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(B[2]));
  LUT2 #(
    .INIT(4'h6)) 
    duty_threshold0_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(B[1]));
  LUT1 #(
    .INIT(2'h1)) 
    duty_threshold0_i_5
       (.I0(Q[0]),
        .O(B[0]));
  LUT6 #(
    .INIT(64'hAA80AA80AA808080)) 
    \duty_threshold[25]_i_1 
       (.I0(\duty_threshold[25]_i_3_n_0 ),
        .I1(\cpt_reg_n_0_[25] ),
        .I2(\cpt_reg_n_0_[24] ),
        .I3(P_i_3_n_0),
        .I4(P_i_4_n_0),
        .I5(P_i_5_n_0),
        .O(\duty_threshold[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8F8F888)) 
    \duty_threshold[25]_i_2 
       (.I0(\cpt_reg_n_0_[25] ),
        .I1(\cpt_reg_n_0_[24] ),
        .I2(P_i_3_n_0),
        .I3(P_i_4_n_0),
        .I4(P_i_5_n_0),
        .I5(p_1_in0),
        .O(duty_threshold_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \duty_threshold[25]_i_3 
       (.I0(s00_axi_aresetn),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\duty_threshold[25]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[0] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_105),
        .Q(duty_threshold[0]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[10] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_95),
        .Q(duty_threshold[10]),
        .R(\duty_threshold[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[11] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_94),
        .Q(duty_threshold[11]),
        .R(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[12] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_93),
        .Q(duty_threshold[12]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[13] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_92),
        .Q(duty_threshold[13]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[14] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_91),
        .Q(duty_threshold[14]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[15] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_90),
        .Q(duty_threshold[15]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[16] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_89),
        .Q(duty_threshold[16]),
        .R(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[17] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_88),
        .Q(duty_threshold[17]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[18] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_87),
        .Q(duty_threshold[18]),
        .R(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[19] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_86),
        .Q(duty_threshold[19]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[1] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_104),
        .Q(duty_threshold[1]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[20] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_85),
        .Q(duty_threshold[20]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[21] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_84),
        .Q(duty_threshold[21]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[22] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_83),
        .Q(duty_threshold[22]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[23] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_82),
        .Q(duty_threshold[23]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[24] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_81),
        .Q(duty_threshold[24]),
        .R(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[25] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_80),
        .Q(duty_threshold[25]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[2] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_103),
        .Q(duty_threshold[2]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[3] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_102),
        .Q(duty_threshold[3]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[4] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_101),
        .Q(duty_threshold[4]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[5] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_100),
        .Q(duty_threshold[5]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[6] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_99),
        .Q(duty_threshold[6]),
        .S(\duty_threshold[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[7] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_98),
        .Q(duty_threshold[7]),
        .R(\duty_threshold[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[8] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_97),
        .Q(duty_threshold[8]),
        .R(\duty_threshold[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[9] 
       (.C(s00_axi_aclk),
        .CE(duty_threshold_0),
        .D(duty_threshold0_n_96),
        .Q(duty_threshold[9]),
        .R(\duty_threshold[25]_i_1_n_0 ));
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
