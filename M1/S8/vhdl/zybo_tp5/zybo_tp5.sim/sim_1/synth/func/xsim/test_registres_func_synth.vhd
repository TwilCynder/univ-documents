-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Feb 10 10:50:14 2023
-- Host        : pc-u3-305-04 running 64-bit Debian GNU/Linux 11 (bullseye)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/tnt3192a/documents/work/M1/S8/vhdl/zybo_tp5/zybo_tp5.sim/sim_1/synth/func/xsim/test_registres_func_synth.vhd
-- Design      : registres
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010iclg225-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity registres is
  port (
    CLK : in STD_LOGIC;
    W : in STD_LOGIC;
    RST : in STD_LOGIC;
    ADR_A : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADR_B : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADR_W : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    QA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    QB : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of registres : entity is true;
  attribute ABUS_WIDTH : integer;
  attribute ABUS_WIDTH of registres : entity is 3;
  attribute DBUS_WIDTH : integer;
  attribute DBUS_WIDTH of registres : entity is 32;
end registres;

architecture STRUCTURE of registres is
  signal ADR_A_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ADR_B_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ADR_W_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal D_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal QA_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \QA_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[16]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[16]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[17]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[17]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[18]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[18]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[19]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[19]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[20]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[20]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[21]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[21]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[22]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[22]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[23]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[23]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[24]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[24]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[25]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[25]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[26]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[26]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[27]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[27]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[28]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[28]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[29]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[29]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[30]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[30]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[31]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QA_OBUF[31]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QA_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal QB_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \QB_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[13]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[16]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[16]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[16]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[17]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[17]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[17]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[18]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[18]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[18]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[19]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[19]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[19]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[20]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[20]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[20]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[21]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[21]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[21]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[22]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[22]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[22]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[23]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[23]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[23]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[24]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[24]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[24]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[25]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[25]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[25]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[26]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[26]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[26]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[27]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[27]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[27]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[28]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[28]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[28]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[29]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[29]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[29]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[30]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[30]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[30]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[31]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[31]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[31]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[31]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QB_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \REGS[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS[1]\ : STD_LOGIC;
  signal \REGS[2]\ : STD_LOGIC;
  signal \REGS[3]\ : STD_LOGIC;
  signal \REGS[4]\ : STD_LOGIC;
  signal \REGS[5]\ : STD_LOGIC;
  signal \REGS[6]\ : STD_LOGIC;
  signal \REGS[7]\ : STD_LOGIC;
  signal \REGS_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[4]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[5]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[6]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[7]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RST_IBUF : STD_LOGIC;
  signal W_IBUF : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal eqOp0_out : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \QB_OBUF[0]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \QB_OBUF[0]_inst_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \QB_OBUF[10]_inst_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \QB_OBUF[10]_inst_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \QB_OBUF[11]_inst_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \QB_OBUF[11]_inst_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \QB_OBUF[12]_inst_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \QB_OBUF[12]_inst_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \QB_OBUF[13]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \QB_OBUF[13]_inst_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \QB_OBUF[14]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \QB_OBUF[14]_inst_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \QB_OBUF[15]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \QB_OBUF[15]_inst_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \QB_OBUF[16]_inst_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \QB_OBUF[16]_inst_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \QB_OBUF[17]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \QB_OBUF[17]_inst_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \QB_OBUF[18]_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \QB_OBUF[18]_inst_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \QB_OBUF[19]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \QB_OBUF[19]_inst_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \QB_OBUF[1]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \QB_OBUF[1]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \QB_OBUF[20]_inst_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \QB_OBUF[20]_inst_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \QB_OBUF[21]_inst_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \QB_OBUF[21]_inst_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \QB_OBUF[22]_inst_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \QB_OBUF[22]_inst_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \QB_OBUF[23]_inst_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \QB_OBUF[23]_inst_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \QB_OBUF[24]_inst_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \QB_OBUF[24]_inst_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \QB_OBUF[25]_inst_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \QB_OBUF[25]_inst_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \QB_OBUF[26]_inst_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \QB_OBUF[26]_inst_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \QB_OBUF[27]_inst_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \QB_OBUF[27]_inst_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \QB_OBUF[28]_inst_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \QB_OBUF[28]_inst_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \QB_OBUF[29]_inst_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \QB_OBUF[29]_inst_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \QB_OBUF[2]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \QB_OBUF[2]_inst_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \QB_OBUF[30]_inst_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \QB_OBUF[30]_inst_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \QB_OBUF[31]_inst_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \QB_OBUF[31]_inst_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \QB_OBUF[3]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \QB_OBUF[3]_inst_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \QB_OBUF[4]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \QB_OBUF[4]_inst_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \QB_OBUF[5]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \QB_OBUF[5]_inst_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \QB_OBUF[6]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \QB_OBUF[6]_inst_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \QB_OBUF[7]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \QB_OBUF[7]_inst_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \QB_OBUF[8]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \QB_OBUF[8]_inst_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \QB_OBUF[9]_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \QB_OBUF[9]_inst_i_2\ : label is "soft_lutpair9";
begin
\ADR_A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR_A(0),
      O => ADR_A_IBUF(0)
    );
\ADR_A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR_A(1),
      O => ADR_A_IBUF(1)
    );
\ADR_A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR_A(2),
      O => ADR_A_IBUF(2)
    );
\ADR_B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR_B(0),
      O => ADR_B_IBUF(0)
    );
\ADR_B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR_B(1),
      O => ADR_B_IBUF(1)
    );
\ADR_B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR_B(2),
      O => ADR_B_IBUF(2)
    );
\ADR_W_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR_W(0),
      O => ADR_W_IBUF(0)
    );
\ADR_W_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR_W(1),
      O => ADR_W_IBUF(1)
    );
\ADR_W_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR_W(2),
      O => ADR_W_IBUF(2)
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\D_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(0),
      O => D_IBUF(0)
    );
\D_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(10),
      O => D_IBUF(10)
    );
\D_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(11),
      O => D_IBUF(11)
    );
\D_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(12),
      O => D_IBUF(12)
    );
\D_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(13),
      O => D_IBUF(13)
    );
\D_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(14),
      O => D_IBUF(14)
    );
\D_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(15),
      O => D_IBUF(15)
    );
\D_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(16),
      O => D_IBUF(16)
    );
\D_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(17),
      O => D_IBUF(17)
    );
\D_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(18),
      O => D_IBUF(18)
    );
\D_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(19),
      O => D_IBUF(19)
    );
\D_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(1),
      O => D_IBUF(1)
    );
\D_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(20),
      O => D_IBUF(20)
    );
\D_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(21),
      O => D_IBUF(21)
    );
\D_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(22),
      O => D_IBUF(22)
    );
\D_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(23),
      O => D_IBUF(23)
    );
\D_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(24),
      O => D_IBUF(24)
    );
\D_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(25),
      O => D_IBUF(25)
    );
\D_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(26),
      O => D_IBUF(26)
    );
\D_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(27),
      O => D_IBUF(27)
    );
\D_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(28),
      O => D_IBUF(28)
    );
\D_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(29),
      O => D_IBUF(29)
    );
\D_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(2),
      O => D_IBUF(2)
    );
\D_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(30),
      O => D_IBUF(30)
    );
\D_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(31),
      O => D_IBUF(31)
    );
\D_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(3),
      O => D_IBUF(3)
    );
\D_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(4),
      O => D_IBUF(4)
    );
\D_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(5),
      O => D_IBUF(5)
    );
\D_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(6),
      O => D_IBUF(6)
    );
\D_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(7),
      O => D_IBUF(7)
    );
\D_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(8),
      O => D_IBUF(8)
    );
\D_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => D(9),
      O => D_IBUF(9)
    );
\QA_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(0),
      O => QA(0)
    );
\QA_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(0),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(0),
      I4 => eqOp,
      O => QA_OBUF(0)
    );
\QA_OBUF[0]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[0]_inst_i_3_n_0\,
      I1 => \QA_OBUF[0]_inst_i_4_n_0\,
      O => \REGS[0]\(0),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(0),
      I1 => \REGS_reg[2]\(0),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(0),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[0]_inst_i_3_n_0\
    );
\QA_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(0),
      I1 => \REGS_reg[6]\(0),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(0),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(0),
      O => \QA_OBUF[0]_inst_i_4_n_0\
    );
\QA_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(10),
      O => QA(10)
    );
\QA_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(10),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(10),
      I4 => eqOp,
      O => QA_OBUF(10)
    );
\QA_OBUF[10]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[10]_inst_i_3_n_0\,
      I1 => \QA_OBUF[10]_inst_i_4_n_0\,
      O => \REGS[0]\(10),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(10),
      I1 => \REGS_reg[2]\(10),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(10),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[10]_inst_i_3_n_0\
    );
\QA_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(10),
      I1 => \REGS_reg[6]\(10),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(10),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(10),
      O => \QA_OBUF[10]_inst_i_4_n_0\
    );
\QA_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(11),
      O => QA(11)
    );
\QA_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(11),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(11),
      I4 => eqOp,
      O => QA_OBUF(11)
    );
\QA_OBUF[11]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[11]_inst_i_3_n_0\,
      I1 => \QA_OBUF[11]_inst_i_4_n_0\,
      O => \REGS[0]\(11),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(11),
      I1 => \REGS_reg[2]\(11),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(11),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[11]_inst_i_3_n_0\
    );
\QA_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(11),
      I1 => \REGS_reg[6]\(11),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(11),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(11),
      O => \QA_OBUF[11]_inst_i_4_n_0\
    );
\QA_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(12),
      O => QA(12)
    );
\QA_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(12),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(12),
      I4 => eqOp,
      O => QA_OBUF(12)
    );
\QA_OBUF[12]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[12]_inst_i_3_n_0\,
      I1 => \QA_OBUF[12]_inst_i_4_n_0\,
      O => \REGS[0]\(12),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(12),
      I1 => \REGS_reg[2]\(12),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(12),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[12]_inst_i_3_n_0\
    );
\QA_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(12),
      I1 => \REGS_reg[6]\(12),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(12),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(12),
      O => \QA_OBUF[12]_inst_i_4_n_0\
    );
\QA_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(13),
      O => QA(13)
    );
\QA_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(13),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(13),
      I4 => eqOp,
      O => QA_OBUF(13)
    );
\QA_OBUF[13]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[13]_inst_i_3_n_0\,
      I1 => \QA_OBUF[13]_inst_i_4_n_0\,
      O => \REGS[0]\(13),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(13),
      I1 => \REGS_reg[2]\(13),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(13),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[13]_inst_i_3_n_0\
    );
\QA_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(13),
      I1 => \REGS_reg[6]\(13),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(13),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(13),
      O => \QA_OBUF[13]_inst_i_4_n_0\
    );
\QA_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(14),
      O => QA(14)
    );
\QA_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(14),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(14),
      I4 => eqOp,
      O => QA_OBUF(14)
    );
\QA_OBUF[14]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[14]_inst_i_3_n_0\,
      I1 => \QA_OBUF[14]_inst_i_4_n_0\,
      O => \REGS[0]\(14),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(14),
      I1 => \REGS_reg[2]\(14),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(14),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[14]_inst_i_3_n_0\
    );
\QA_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(14),
      I1 => \REGS_reg[6]\(14),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(14),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(14),
      O => \QA_OBUF[14]_inst_i_4_n_0\
    );
\QA_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(15),
      O => QA(15)
    );
\QA_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(15),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(15),
      I4 => eqOp,
      O => QA_OBUF(15)
    );
\QA_OBUF[15]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[15]_inst_i_3_n_0\,
      I1 => \QA_OBUF[15]_inst_i_4_n_0\,
      O => \REGS[0]\(15),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(15),
      I1 => \REGS_reg[2]\(15),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(15),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[15]_inst_i_3_n_0\
    );
\QA_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(15),
      I1 => \REGS_reg[6]\(15),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(15),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(15),
      O => \QA_OBUF[15]_inst_i_4_n_0\
    );
\QA_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(16),
      O => QA(16)
    );
\QA_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(16),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(16),
      I4 => eqOp,
      O => QA_OBUF(16)
    );
\QA_OBUF[16]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[16]_inst_i_3_n_0\,
      I1 => \QA_OBUF[16]_inst_i_4_n_0\,
      O => \REGS[0]\(16),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[16]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(16),
      I1 => \REGS_reg[2]\(16),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(16),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[16]_inst_i_3_n_0\
    );
\QA_OBUF[16]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(16),
      I1 => \REGS_reg[6]\(16),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(16),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(16),
      O => \QA_OBUF[16]_inst_i_4_n_0\
    );
\QA_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(17),
      O => QA(17)
    );
\QA_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(17),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(17),
      I4 => eqOp,
      O => QA_OBUF(17)
    );
\QA_OBUF[17]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[17]_inst_i_3_n_0\,
      I1 => \QA_OBUF[17]_inst_i_4_n_0\,
      O => \REGS[0]\(17),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[17]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(17),
      I1 => \REGS_reg[2]\(17),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(17),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[17]_inst_i_3_n_0\
    );
\QA_OBUF[17]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(17),
      I1 => \REGS_reg[6]\(17),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(17),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(17),
      O => \QA_OBUF[17]_inst_i_4_n_0\
    );
\QA_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(18),
      O => QA(18)
    );
\QA_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(18),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(18),
      I4 => eqOp,
      O => QA_OBUF(18)
    );
\QA_OBUF[18]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[18]_inst_i_3_n_0\,
      I1 => \QA_OBUF[18]_inst_i_4_n_0\,
      O => \REGS[0]\(18),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[18]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(18),
      I1 => \REGS_reg[2]\(18),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(18),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[18]_inst_i_3_n_0\
    );
\QA_OBUF[18]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(18),
      I1 => \REGS_reg[6]\(18),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(18),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(18),
      O => \QA_OBUF[18]_inst_i_4_n_0\
    );
\QA_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(19),
      O => QA(19)
    );
\QA_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(19),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(19),
      I4 => eqOp,
      O => QA_OBUF(19)
    );
\QA_OBUF[19]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[19]_inst_i_3_n_0\,
      I1 => \QA_OBUF[19]_inst_i_4_n_0\,
      O => \REGS[0]\(19),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[19]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(19),
      I1 => \REGS_reg[2]\(19),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(19),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[19]_inst_i_3_n_0\
    );
\QA_OBUF[19]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(19),
      I1 => \REGS_reg[6]\(19),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(19),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(19),
      O => \QA_OBUF[19]_inst_i_4_n_0\
    );
\QA_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(1),
      O => QA(1)
    );
\QA_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(1),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(1),
      I4 => eqOp,
      O => QA_OBUF(1)
    );
\QA_OBUF[1]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[1]_inst_i_3_n_0\,
      I1 => \QA_OBUF[1]_inst_i_4_n_0\,
      O => \REGS[0]\(1),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(1),
      I1 => \REGS_reg[2]\(1),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(1),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[1]_inst_i_3_n_0\
    );
\QA_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(1),
      I1 => \REGS_reg[6]\(1),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(1),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(1),
      O => \QA_OBUF[1]_inst_i_4_n_0\
    );
\QA_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(20),
      O => QA(20)
    );
\QA_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(20),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(20),
      I4 => eqOp,
      O => QA_OBUF(20)
    );
\QA_OBUF[20]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[20]_inst_i_3_n_0\,
      I1 => \QA_OBUF[20]_inst_i_4_n_0\,
      O => \REGS[0]\(20),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[20]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(20),
      I1 => \REGS_reg[2]\(20),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(20),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[20]_inst_i_3_n_0\
    );
\QA_OBUF[20]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(20),
      I1 => \REGS_reg[6]\(20),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(20),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(20),
      O => \QA_OBUF[20]_inst_i_4_n_0\
    );
\QA_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(21),
      O => QA(21)
    );
\QA_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(21),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(21),
      I4 => eqOp,
      O => QA_OBUF(21)
    );
\QA_OBUF[21]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[21]_inst_i_3_n_0\,
      I1 => \QA_OBUF[21]_inst_i_4_n_0\,
      O => \REGS[0]\(21),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[21]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(21),
      I1 => \REGS_reg[2]\(21),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(21),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[21]_inst_i_3_n_0\
    );
\QA_OBUF[21]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(21),
      I1 => \REGS_reg[6]\(21),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(21),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(21),
      O => \QA_OBUF[21]_inst_i_4_n_0\
    );
\QA_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(22),
      O => QA(22)
    );
\QA_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(22),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(22),
      I4 => eqOp,
      O => QA_OBUF(22)
    );
\QA_OBUF[22]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[22]_inst_i_3_n_0\,
      I1 => \QA_OBUF[22]_inst_i_4_n_0\,
      O => \REGS[0]\(22),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[22]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(22),
      I1 => \REGS_reg[2]\(22),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(22),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[22]_inst_i_3_n_0\
    );
\QA_OBUF[22]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(22),
      I1 => \REGS_reg[6]\(22),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(22),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(22),
      O => \QA_OBUF[22]_inst_i_4_n_0\
    );
\QA_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(23),
      O => QA(23)
    );
\QA_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(23),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(23),
      I4 => eqOp,
      O => QA_OBUF(23)
    );
\QA_OBUF[23]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[23]_inst_i_3_n_0\,
      I1 => \QA_OBUF[23]_inst_i_4_n_0\,
      O => \REGS[0]\(23),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[23]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(23),
      I1 => \REGS_reg[2]\(23),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(23),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[23]_inst_i_3_n_0\
    );
\QA_OBUF[23]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(23),
      I1 => \REGS_reg[6]\(23),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(23),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(23),
      O => \QA_OBUF[23]_inst_i_4_n_0\
    );
\QA_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(24),
      O => QA(24)
    );
\QA_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(24),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(24),
      I4 => eqOp,
      O => QA_OBUF(24)
    );
\QA_OBUF[24]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[24]_inst_i_3_n_0\,
      I1 => \QA_OBUF[24]_inst_i_4_n_0\,
      O => \REGS[0]\(24),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[24]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(24),
      I1 => \REGS_reg[2]\(24),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(24),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[24]_inst_i_3_n_0\
    );
\QA_OBUF[24]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(24),
      I1 => \REGS_reg[6]\(24),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(24),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(24),
      O => \QA_OBUF[24]_inst_i_4_n_0\
    );
\QA_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(25),
      O => QA(25)
    );
\QA_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(25),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(25),
      I4 => eqOp,
      O => QA_OBUF(25)
    );
\QA_OBUF[25]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[25]_inst_i_3_n_0\,
      I1 => \QA_OBUF[25]_inst_i_4_n_0\,
      O => \REGS[0]\(25),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[25]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(25),
      I1 => \REGS_reg[2]\(25),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(25),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[25]_inst_i_3_n_0\
    );
\QA_OBUF[25]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(25),
      I1 => \REGS_reg[6]\(25),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(25),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(25),
      O => \QA_OBUF[25]_inst_i_4_n_0\
    );
\QA_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(26),
      O => QA(26)
    );
\QA_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(26),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(26),
      I4 => eqOp,
      O => QA_OBUF(26)
    );
\QA_OBUF[26]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[26]_inst_i_3_n_0\,
      I1 => \QA_OBUF[26]_inst_i_4_n_0\,
      O => \REGS[0]\(26),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[26]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(26),
      I1 => \REGS_reg[2]\(26),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(26),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[26]_inst_i_3_n_0\
    );
\QA_OBUF[26]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(26),
      I1 => \REGS_reg[6]\(26),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(26),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(26),
      O => \QA_OBUF[26]_inst_i_4_n_0\
    );
\QA_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(27),
      O => QA(27)
    );
\QA_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(27),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(27),
      I4 => eqOp,
      O => QA_OBUF(27)
    );
\QA_OBUF[27]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[27]_inst_i_3_n_0\,
      I1 => \QA_OBUF[27]_inst_i_4_n_0\,
      O => \REGS[0]\(27),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[27]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(27),
      I1 => \REGS_reg[2]\(27),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(27),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[27]_inst_i_3_n_0\
    );
\QA_OBUF[27]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(27),
      I1 => \REGS_reg[6]\(27),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(27),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(27),
      O => \QA_OBUF[27]_inst_i_4_n_0\
    );
\QA_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(28),
      O => QA(28)
    );
\QA_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(28),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(28),
      I4 => eqOp,
      O => QA_OBUF(28)
    );
\QA_OBUF[28]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[28]_inst_i_3_n_0\,
      I1 => \QA_OBUF[28]_inst_i_4_n_0\,
      O => \REGS[0]\(28),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[28]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(28),
      I1 => \REGS_reg[2]\(28),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(28),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[28]_inst_i_3_n_0\
    );
\QA_OBUF[28]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(28),
      I1 => \REGS_reg[6]\(28),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(28),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(28),
      O => \QA_OBUF[28]_inst_i_4_n_0\
    );
\QA_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(29),
      O => QA(29)
    );
\QA_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(29),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(29),
      I4 => eqOp,
      O => QA_OBUF(29)
    );
\QA_OBUF[29]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[29]_inst_i_3_n_0\,
      I1 => \QA_OBUF[29]_inst_i_4_n_0\,
      O => \REGS[0]\(29),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[29]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(29),
      I1 => \REGS_reg[2]\(29),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(29),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[29]_inst_i_3_n_0\
    );
\QA_OBUF[29]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(29),
      I1 => \REGS_reg[6]\(29),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(29),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(29),
      O => \QA_OBUF[29]_inst_i_4_n_0\
    );
\QA_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(2),
      O => QA(2)
    );
\QA_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(2),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(2),
      I4 => eqOp,
      O => QA_OBUF(2)
    );
\QA_OBUF[2]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[2]_inst_i_3_n_0\,
      I1 => \QA_OBUF[2]_inst_i_4_n_0\,
      O => \REGS[0]\(2),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(2),
      I1 => \REGS_reg[2]\(2),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(2),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[2]_inst_i_3_n_0\
    );
\QA_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(2),
      I1 => \REGS_reg[6]\(2),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(2),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(2),
      O => \QA_OBUF[2]_inst_i_4_n_0\
    );
\QA_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(30),
      O => QA(30)
    );
\QA_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(30),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(30),
      I4 => eqOp,
      O => QA_OBUF(30)
    );
\QA_OBUF[30]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[30]_inst_i_3_n_0\,
      I1 => \QA_OBUF[30]_inst_i_4_n_0\,
      O => \REGS[0]\(30),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[30]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(30),
      I1 => \REGS_reg[2]\(30),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(30),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[30]_inst_i_3_n_0\
    );
\QA_OBUF[30]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(30),
      I1 => \REGS_reg[6]\(30),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(30),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(30),
      O => \QA_OBUF[30]_inst_i_4_n_0\
    );
\QA_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(31),
      O => QA(31)
    );
\QA_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(31),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(31),
      I4 => eqOp,
      O => QA_OBUF(31)
    );
\QA_OBUF[31]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[31]_inst_i_5_n_0\,
      I1 => \QA_OBUF[31]_inst_i_6_n_0\,
      O => \REGS[0]\(31),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[31]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ADR_A_IBUF(0),
      I1 => ADR_W_IBUF(0),
      I2 => ADR_W_IBUF(2),
      I3 => ADR_A_IBUF(2),
      I4 => ADR_W_IBUF(1),
      I5 => ADR_A_IBUF(1),
      O => eqOp0_out
    );
\QA_OBUF[31]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ADR_A_IBUF(2),
      I1 => ADR_A_IBUF(0),
      I2 => ADR_A_IBUF(1),
      O => eqOp
    );
\QA_OBUF[31]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(31),
      I1 => \REGS_reg[2]\(31),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(31),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[31]_inst_i_5_n_0\
    );
\QA_OBUF[31]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(31),
      I1 => \REGS_reg[6]\(31),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(31),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(31),
      O => \QA_OBUF[31]_inst_i_6_n_0\
    );
\QA_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(3),
      O => QA(3)
    );
\QA_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(3),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(3),
      I4 => eqOp,
      O => QA_OBUF(3)
    );
\QA_OBUF[3]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[3]_inst_i_3_n_0\,
      I1 => \QA_OBUF[3]_inst_i_4_n_0\,
      O => \REGS[0]\(3),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(3),
      I1 => \REGS_reg[2]\(3),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(3),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[3]_inst_i_3_n_0\
    );
\QA_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(3),
      I1 => \REGS_reg[6]\(3),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(3),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(3),
      O => \QA_OBUF[3]_inst_i_4_n_0\
    );
\QA_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(4),
      O => QA(4)
    );
\QA_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(4),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(4),
      I4 => eqOp,
      O => QA_OBUF(4)
    );
\QA_OBUF[4]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[4]_inst_i_3_n_0\,
      I1 => \QA_OBUF[4]_inst_i_4_n_0\,
      O => \REGS[0]\(4),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(4),
      I1 => \REGS_reg[2]\(4),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(4),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[4]_inst_i_3_n_0\
    );
\QA_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(4),
      I1 => \REGS_reg[6]\(4),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(4),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(4),
      O => \QA_OBUF[4]_inst_i_4_n_0\
    );
\QA_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(5),
      O => QA(5)
    );
\QA_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(5),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(5),
      I4 => eqOp,
      O => QA_OBUF(5)
    );
\QA_OBUF[5]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[5]_inst_i_3_n_0\,
      I1 => \QA_OBUF[5]_inst_i_4_n_0\,
      O => \REGS[0]\(5),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(5),
      I1 => \REGS_reg[2]\(5),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(5),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[5]_inst_i_3_n_0\
    );
\QA_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(5),
      I1 => \REGS_reg[6]\(5),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(5),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(5),
      O => \QA_OBUF[5]_inst_i_4_n_0\
    );
\QA_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(6),
      O => QA(6)
    );
\QA_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(6),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(6),
      I4 => eqOp,
      O => QA_OBUF(6)
    );
\QA_OBUF[6]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[6]_inst_i_3_n_0\,
      I1 => \QA_OBUF[6]_inst_i_4_n_0\,
      O => \REGS[0]\(6),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(6),
      I1 => \REGS_reg[2]\(6),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(6),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[6]_inst_i_3_n_0\
    );
\QA_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(6),
      I1 => \REGS_reg[6]\(6),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(6),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(6),
      O => \QA_OBUF[6]_inst_i_4_n_0\
    );
\QA_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(7),
      O => QA(7)
    );
\QA_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(7),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(7),
      I4 => eqOp,
      O => QA_OBUF(7)
    );
\QA_OBUF[7]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[7]_inst_i_3_n_0\,
      I1 => \QA_OBUF[7]_inst_i_4_n_0\,
      O => \REGS[0]\(7),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(7),
      I1 => \REGS_reg[2]\(7),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(7),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[7]_inst_i_3_n_0\
    );
\QA_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(7),
      I1 => \REGS_reg[6]\(7),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(7),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(7),
      O => \QA_OBUF[7]_inst_i_4_n_0\
    );
\QA_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(8),
      O => QA(8)
    );
\QA_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(8),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(8),
      I4 => eqOp,
      O => QA_OBUF(8)
    );
\QA_OBUF[8]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[8]_inst_i_3_n_0\,
      I1 => \QA_OBUF[8]_inst_i_4_n_0\,
      O => \REGS[0]\(8),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(8),
      I1 => \REGS_reg[2]\(8),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(8),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[8]_inst_i_3_n_0\
    );
\QA_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(8),
      I1 => \REGS_reg[6]\(8),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(8),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(8),
      O => \QA_OBUF[8]_inst_i_4_n_0\
    );
\QA_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(9),
      O => QA(9)
    );
\QA_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \REGS[0]\(9),
      I1 => W_IBUF,
      I2 => eqOp0_out,
      I3 => D_IBUF(9),
      I4 => eqOp,
      O => QA_OBUF(9)
    );
\QA_OBUF[9]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[9]_inst_i_3_n_0\,
      I1 => \QA_OBUF[9]_inst_i_4_n_0\,
      O => \REGS[0]\(9),
      S => ADR_A_IBUF(2)
    );
\QA_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(9),
      I1 => \REGS_reg[2]\(9),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[1]\(9),
      I4 => ADR_A_IBUF(0),
      O => \QA_OBUF[9]_inst_i_3_n_0\
    );
\QA_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(9),
      I1 => \REGS_reg[6]\(9),
      I2 => ADR_A_IBUF(1),
      I3 => \REGS_reg[5]\(9),
      I4 => ADR_A_IBUF(0),
      I5 => \REGS_reg[4]\(9),
      O => \QA_OBUF[9]_inst_i_4_n_0\
    );
\QB_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(0),
      O => QB(0)
    );
\QB_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[0]_inst_i_3_n_0\,
      O => QB_OBUF(0)
    );
\QB_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[0]_inst_i_3_n_0\,
      O => QB_OBUF(0)
    );
\QB_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(0),
      I1 => \QB_OBUF[0]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[0]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[0]_inst_i_3_n_0\
    );
\QB_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(0),
      I1 => \REGS_reg[6]\(0),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(0),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(0),
      O => \QB_OBUF[0]_inst_i_4_n_0\
    );
\QB_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(0),
      I1 => \REGS_reg[2]\(0),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(0),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[0]_inst_i_5_n_0\
    );
\QB_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(10),
      O => QB(10)
    );
\QB_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[10]_inst_i_3_n_0\,
      O => QB_OBUF(10)
    );
\QB_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[10]_inst_i_3_n_0\,
      O => QB_OBUF(10)
    );
\QB_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(10),
      I1 => \QB_OBUF[10]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[10]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[10]_inst_i_3_n_0\
    );
\QB_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(10),
      I1 => \REGS_reg[6]\(10),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(10),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(10),
      O => \QB_OBUF[10]_inst_i_4_n_0\
    );
\QB_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(10),
      I1 => \REGS_reg[2]\(10),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(10),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[10]_inst_i_5_n_0\
    );
\QB_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(11),
      O => QB(11)
    );
\QB_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[11]_inst_i_3_n_0\,
      O => QB_OBUF(11)
    );
\QB_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[11]_inst_i_3_n_0\,
      O => QB_OBUF(11)
    );
\QB_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(11),
      I1 => \QB_OBUF[11]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[11]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[11]_inst_i_3_n_0\
    );
\QB_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(11),
      I1 => \REGS_reg[6]\(11),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(11),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(11),
      O => \QB_OBUF[11]_inst_i_4_n_0\
    );
\QB_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(11),
      I1 => \REGS_reg[2]\(11),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(11),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[11]_inst_i_5_n_0\
    );
\QB_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(12),
      O => QB(12)
    );
\QB_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[12]_inst_i_3_n_0\,
      O => QB_OBUF(12)
    );
\QB_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[12]_inst_i_3_n_0\,
      O => QB_OBUF(12)
    );
\QB_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(12),
      I1 => \QB_OBUF[12]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[12]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[12]_inst_i_3_n_0\
    );
\QB_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(12),
      I1 => \REGS_reg[6]\(12),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(12),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(12),
      O => \QB_OBUF[12]_inst_i_4_n_0\
    );
\QB_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(12),
      I1 => \REGS_reg[2]\(12),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(12),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[12]_inst_i_5_n_0\
    );
\QB_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(13),
      O => QB(13)
    );
\QB_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[13]_inst_i_3_n_0\,
      O => QB_OBUF(13)
    );
\QB_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[13]_inst_i_3_n_0\,
      O => QB_OBUF(13)
    );
\QB_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(13),
      I1 => \QB_OBUF[13]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[13]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[13]_inst_i_3_n_0\
    );
\QB_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(13),
      I1 => \REGS_reg[6]\(13),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(13),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(13),
      O => \QB_OBUF[13]_inst_i_4_n_0\
    );
\QB_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(13),
      I1 => \REGS_reg[2]\(13),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(13),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[13]_inst_i_5_n_0\
    );
\QB_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(14),
      O => QB(14)
    );
\QB_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[14]_inst_i_3_n_0\,
      O => QB_OBUF(14)
    );
\QB_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[14]_inst_i_3_n_0\,
      O => QB_OBUF(14)
    );
\QB_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(14),
      I1 => \QB_OBUF[14]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[14]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[14]_inst_i_3_n_0\
    );
\QB_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(14),
      I1 => \REGS_reg[6]\(14),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(14),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(14),
      O => \QB_OBUF[14]_inst_i_4_n_0\
    );
\QB_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(14),
      I1 => \REGS_reg[2]\(14),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(14),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[14]_inst_i_5_n_0\
    );
\QB_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(15),
      O => QB(15)
    );
\QB_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[15]_inst_i_3_n_0\,
      O => QB_OBUF(15)
    );
\QB_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[15]_inst_i_3_n_0\,
      O => QB_OBUF(15)
    );
\QB_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(15),
      I1 => \QB_OBUF[15]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[15]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[15]_inst_i_3_n_0\
    );
\QB_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(15),
      I1 => \REGS_reg[6]\(15),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(15),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(15),
      O => \QB_OBUF[15]_inst_i_4_n_0\
    );
\QB_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(15),
      I1 => \REGS_reg[2]\(15),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(15),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[15]_inst_i_5_n_0\
    );
\QB_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(16),
      O => QB(16)
    );
\QB_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[16]_inst_i_3_n_0\,
      O => QB_OBUF(16)
    );
\QB_OBUF[16]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[16]_inst_i_3_n_0\,
      O => QB_OBUF(16)
    );
\QB_OBUF[16]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(16),
      I1 => \QB_OBUF[16]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[16]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[16]_inst_i_3_n_0\
    );
\QB_OBUF[16]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(16),
      I1 => \REGS_reg[6]\(16),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(16),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(16),
      O => \QB_OBUF[16]_inst_i_4_n_0\
    );
\QB_OBUF[16]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(16),
      I1 => \REGS_reg[2]\(16),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(16),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[16]_inst_i_5_n_0\
    );
\QB_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(17),
      O => QB(17)
    );
\QB_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[17]_inst_i_3_n_0\,
      O => QB_OBUF(17)
    );
\QB_OBUF[17]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[17]_inst_i_3_n_0\,
      O => QB_OBUF(17)
    );
\QB_OBUF[17]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(17),
      I1 => \QB_OBUF[17]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[17]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[17]_inst_i_3_n_0\
    );
\QB_OBUF[17]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(17),
      I1 => \REGS_reg[6]\(17),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(17),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(17),
      O => \QB_OBUF[17]_inst_i_4_n_0\
    );
\QB_OBUF[17]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(17),
      I1 => \REGS_reg[2]\(17),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(17),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[17]_inst_i_5_n_0\
    );
\QB_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(18),
      O => QB(18)
    );
\QB_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[18]_inst_i_3_n_0\,
      O => QB_OBUF(18)
    );
\QB_OBUF[18]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[18]_inst_i_3_n_0\,
      O => QB_OBUF(18)
    );
\QB_OBUF[18]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(18),
      I1 => \QB_OBUF[18]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[18]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[18]_inst_i_3_n_0\
    );
\QB_OBUF[18]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(18),
      I1 => \REGS_reg[6]\(18),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(18),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(18),
      O => \QB_OBUF[18]_inst_i_4_n_0\
    );
\QB_OBUF[18]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(18),
      I1 => \REGS_reg[2]\(18),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(18),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[18]_inst_i_5_n_0\
    );
\QB_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(19),
      O => QB(19)
    );
\QB_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[19]_inst_i_3_n_0\,
      O => QB_OBUF(19)
    );
\QB_OBUF[19]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[19]_inst_i_3_n_0\,
      O => QB_OBUF(19)
    );
\QB_OBUF[19]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(19),
      I1 => \QB_OBUF[19]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[19]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[19]_inst_i_3_n_0\
    );
\QB_OBUF[19]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(19),
      I1 => \REGS_reg[6]\(19),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(19),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(19),
      O => \QB_OBUF[19]_inst_i_4_n_0\
    );
\QB_OBUF[19]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(19),
      I1 => \REGS_reg[2]\(19),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(19),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[19]_inst_i_5_n_0\
    );
\QB_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(1),
      O => QB(1)
    );
\QB_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[1]_inst_i_3_n_0\,
      O => QB_OBUF(1)
    );
\QB_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[1]_inst_i_3_n_0\,
      O => QB_OBUF(1)
    );
\QB_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(1),
      I1 => \QB_OBUF[1]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[1]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[1]_inst_i_3_n_0\
    );
\QB_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(1),
      I1 => \REGS_reg[6]\(1),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(1),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(1),
      O => \QB_OBUF[1]_inst_i_4_n_0\
    );
\QB_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(1),
      I1 => \REGS_reg[2]\(1),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(1),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[1]_inst_i_5_n_0\
    );
\QB_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(20),
      O => QB(20)
    );
\QB_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[20]_inst_i_3_n_0\,
      O => QB_OBUF(20)
    );
\QB_OBUF[20]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[20]_inst_i_3_n_0\,
      O => QB_OBUF(20)
    );
\QB_OBUF[20]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(20),
      I1 => \QB_OBUF[20]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[20]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[20]_inst_i_3_n_0\
    );
\QB_OBUF[20]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(20),
      I1 => \REGS_reg[6]\(20),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(20),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(20),
      O => \QB_OBUF[20]_inst_i_4_n_0\
    );
\QB_OBUF[20]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(20),
      I1 => \REGS_reg[2]\(20),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(20),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[20]_inst_i_5_n_0\
    );
\QB_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(21),
      O => QB(21)
    );
\QB_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[21]_inst_i_3_n_0\,
      O => QB_OBUF(21)
    );
\QB_OBUF[21]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[21]_inst_i_3_n_0\,
      O => QB_OBUF(21)
    );
\QB_OBUF[21]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(21),
      I1 => \QB_OBUF[21]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[21]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[21]_inst_i_3_n_0\
    );
\QB_OBUF[21]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(21),
      I1 => \REGS_reg[6]\(21),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(21),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(21),
      O => \QB_OBUF[21]_inst_i_4_n_0\
    );
\QB_OBUF[21]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(21),
      I1 => \REGS_reg[2]\(21),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(21),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[21]_inst_i_5_n_0\
    );
\QB_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(22),
      O => QB(22)
    );
\QB_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[22]_inst_i_3_n_0\,
      O => QB_OBUF(22)
    );
\QB_OBUF[22]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[22]_inst_i_3_n_0\,
      O => QB_OBUF(22)
    );
\QB_OBUF[22]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(22),
      I1 => \QB_OBUF[22]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[22]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[22]_inst_i_3_n_0\
    );
\QB_OBUF[22]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(22),
      I1 => \REGS_reg[6]\(22),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(22),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(22),
      O => \QB_OBUF[22]_inst_i_4_n_0\
    );
\QB_OBUF[22]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(22),
      I1 => \REGS_reg[2]\(22),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(22),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[22]_inst_i_5_n_0\
    );
\QB_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(23),
      O => QB(23)
    );
\QB_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[23]_inst_i_3_n_0\,
      O => QB_OBUF(23)
    );
\QB_OBUF[23]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[23]_inst_i_3_n_0\,
      O => QB_OBUF(23)
    );
\QB_OBUF[23]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(23),
      I1 => \QB_OBUF[23]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[23]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[23]_inst_i_3_n_0\
    );
\QB_OBUF[23]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(23),
      I1 => \REGS_reg[6]\(23),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(23),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(23),
      O => \QB_OBUF[23]_inst_i_4_n_0\
    );
\QB_OBUF[23]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(23),
      I1 => \REGS_reg[2]\(23),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(23),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[23]_inst_i_5_n_0\
    );
\QB_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(24),
      O => QB(24)
    );
\QB_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[24]_inst_i_3_n_0\,
      O => QB_OBUF(24)
    );
\QB_OBUF[24]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[24]_inst_i_3_n_0\,
      O => QB_OBUF(24)
    );
\QB_OBUF[24]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(24),
      I1 => \QB_OBUF[24]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[24]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[24]_inst_i_3_n_0\
    );
\QB_OBUF[24]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(24),
      I1 => \REGS_reg[6]\(24),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(24),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(24),
      O => \QB_OBUF[24]_inst_i_4_n_0\
    );
\QB_OBUF[24]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(24),
      I1 => \REGS_reg[2]\(24),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(24),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[24]_inst_i_5_n_0\
    );
\QB_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(25),
      O => QB(25)
    );
\QB_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[25]_inst_i_3_n_0\,
      O => QB_OBUF(25)
    );
\QB_OBUF[25]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[25]_inst_i_3_n_0\,
      O => QB_OBUF(25)
    );
\QB_OBUF[25]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(25),
      I1 => \QB_OBUF[25]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[25]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[25]_inst_i_3_n_0\
    );
\QB_OBUF[25]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(25),
      I1 => \REGS_reg[6]\(25),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(25),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(25),
      O => \QB_OBUF[25]_inst_i_4_n_0\
    );
\QB_OBUF[25]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(25),
      I1 => \REGS_reg[2]\(25),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(25),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[25]_inst_i_5_n_0\
    );
\QB_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(26),
      O => QB(26)
    );
\QB_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[26]_inst_i_3_n_0\,
      O => QB_OBUF(26)
    );
\QB_OBUF[26]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[26]_inst_i_3_n_0\,
      O => QB_OBUF(26)
    );
\QB_OBUF[26]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(26),
      I1 => \QB_OBUF[26]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[26]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[26]_inst_i_3_n_0\
    );
\QB_OBUF[26]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(26),
      I1 => \REGS_reg[6]\(26),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(26),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(26),
      O => \QB_OBUF[26]_inst_i_4_n_0\
    );
\QB_OBUF[26]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(26),
      I1 => \REGS_reg[2]\(26),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(26),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[26]_inst_i_5_n_0\
    );
\QB_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(27),
      O => QB(27)
    );
\QB_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[27]_inst_i_3_n_0\,
      O => QB_OBUF(27)
    );
\QB_OBUF[27]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[27]_inst_i_3_n_0\,
      O => QB_OBUF(27)
    );
\QB_OBUF[27]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(27),
      I1 => \QB_OBUF[27]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[27]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[27]_inst_i_3_n_0\
    );
\QB_OBUF[27]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(27),
      I1 => \REGS_reg[6]\(27),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(27),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(27),
      O => \QB_OBUF[27]_inst_i_4_n_0\
    );
\QB_OBUF[27]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(27),
      I1 => \REGS_reg[2]\(27),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(27),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[27]_inst_i_5_n_0\
    );
\QB_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(28),
      O => QB(28)
    );
\QB_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[28]_inst_i_3_n_0\,
      O => QB_OBUF(28)
    );
\QB_OBUF[28]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[28]_inst_i_3_n_0\,
      O => QB_OBUF(28)
    );
\QB_OBUF[28]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(28),
      I1 => \QB_OBUF[28]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[28]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[28]_inst_i_3_n_0\
    );
\QB_OBUF[28]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(28),
      I1 => \REGS_reg[6]\(28),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(28),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(28),
      O => \QB_OBUF[28]_inst_i_4_n_0\
    );
\QB_OBUF[28]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(28),
      I1 => \REGS_reg[2]\(28),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(28),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[28]_inst_i_5_n_0\
    );
\QB_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(29),
      O => QB(29)
    );
\QB_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[29]_inst_i_3_n_0\,
      O => QB_OBUF(29)
    );
\QB_OBUF[29]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[29]_inst_i_3_n_0\,
      O => QB_OBUF(29)
    );
\QB_OBUF[29]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(29),
      I1 => \QB_OBUF[29]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[29]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[29]_inst_i_3_n_0\
    );
\QB_OBUF[29]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(29),
      I1 => \REGS_reg[6]\(29),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(29),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(29),
      O => \QB_OBUF[29]_inst_i_4_n_0\
    );
\QB_OBUF[29]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(29),
      I1 => \REGS_reg[2]\(29),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(29),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[29]_inst_i_5_n_0\
    );
\QB_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(2),
      O => QB(2)
    );
\QB_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[2]_inst_i_3_n_0\,
      O => QB_OBUF(2)
    );
\QB_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[2]_inst_i_3_n_0\,
      O => QB_OBUF(2)
    );
\QB_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(2),
      I1 => \QB_OBUF[2]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[2]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[2]_inst_i_3_n_0\
    );
\QB_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(2),
      I1 => \REGS_reg[6]\(2),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(2),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(2),
      O => \QB_OBUF[2]_inst_i_4_n_0\
    );
\QB_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(2),
      I1 => \REGS_reg[2]\(2),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(2),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[2]_inst_i_5_n_0\
    );
\QB_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(30),
      O => QB(30)
    );
\QB_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[30]_inst_i_3_n_0\,
      O => QB_OBUF(30)
    );
\QB_OBUF[30]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[30]_inst_i_3_n_0\,
      O => QB_OBUF(30)
    );
\QB_OBUF[30]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(30),
      I1 => \QB_OBUF[30]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[30]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[30]_inst_i_3_n_0\
    );
\QB_OBUF[30]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(30),
      I1 => \REGS_reg[6]\(30),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(30),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(30),
      O => \QB_OBUF[30]_inst_i_4_n_0\
    );
\QB_OBUF[30]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(30),
      I1 => \REGS_reg[2]\(30),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(30),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[30]_inst_i_5_n_0\
    );
\QB_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(31),
      O => QB(31)
    );
\QB_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[31]_inst_i_3_n_0\,
      O => QB_OBUF(31)
    );
\QB_OBUF[31]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[31]_inst_i_3_n_0\,
      O => QB_OBUF(31)
    );
\QB_OBUF[31]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(31),
      I1 => \QB_OBUF[31]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[31]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[31]_inst_i_3_n_0\
    );
\QB_OBUF[31]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(31),
      I1 => \REGS_reg[6]\(31),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(31),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(31),
      O => \QB_OBUF[31]_inst_i_4_n_0\
    );
\QB_OBUF[31]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(31),
      I1 => \REGS_reg[2]\(31),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(31),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[31]_inst_i_5_n_0\
    );
\QB_OBUF[31]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ADR_B_IBUF(0),
      I1 => ADR_W_IBUF(0),
      I2 => ADR_W_IBUF(2),
      I3 => ADR_B_IBUF(2),
      I4 => ADR_W_IBUF(1),
      I5 => ADR_B_IBUF(1),
      O => \QB_OBUF[31]_inst_i_6_n_0\
    );
\QB_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(3),
      O => QB(3)
    );
\QB_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[3]_inst_i_3_n_0\,
      O => QB_OBUF(3)
    );
\QB_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[3]_inst_i_3_n_0\,
      O => QB_OBUF(3)
    );
\QB_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(3),
      I1 => \QB_OBUF[3]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[3]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[3]_inst_i_3_n_0\
    );
\QB_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(3),
      I1 => \REGS_reg[6]\(3),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(3),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(3),
      O => \QB_OBUF[3]_inst_i_4_n_0\
    );
\QB_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(3),
      I1 => \REGS_reg[2]\(3),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(3),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[3]_inst_i_5_n_0\
    );
\QB_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(4),
      O => QB(4)
    );
\QB_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[4]_inst_i_3_n_0\,
      O => QB_OBUF(4)
    );
\QB_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[4]_inst_i_3_n_0\,
      O => QB_OBUF(4)
    );
\QB_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(4),
      I1 => \QB_OBUF[4]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[4]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[4]_inst_i_3_n_0\
    );
\QB_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(4),
      I1 => \REGS_reg[6]\(4),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(4),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(4),
      O => \QB_OBUF[4]_inst_i_4_n_0\
    );
\QB_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(4),
      I1 => \REGS_reg[2]\(4),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(4),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[4]_inst_i_5_n_0\
    );
\QB_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(5),
      O => QB(5)
    );
\QB_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[5]_inst_i_3_n_0\,
      O => QB_OBUF(5)
    );
\QB_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[5]_inst_i_3_n_0\,
      O => QB_OBUF(5)
    );
\QB_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(5),
      I1 => \QB_OBUF[5]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[5]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[5]_inst_i_3_n_0\
    );
\QB_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(5),
      I1 => \REGS_reg[6]\(5),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(5),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(5),
      O => \QB_OBUF[5]_inst_i_4_n_0\
    );
\QB_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(5),
      I1 => \REGS_reg[2]\(5),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(5),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[5]_inst_i_5_n_0\
    );
\QB_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(6),
      O => QB(6)
    );
\QB_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[6]_inst_i_3_n_0\,
      O => QB_OBUF(6)
    );
\QB_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[6]_inst_i_3_n_0\,
      O => QB_OBUF(6)
    );
\QB_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(6),
      I1 => \QB_OBUF[6]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[6]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[6]_inst_i_3_n_0\
    );
\QB_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(6),
      I1 => \REGS_reg[6]\(6),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(6),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(6),
      O => \QB_OBUF[6]_inst_i_4_n_0\
    );
\QB_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(6),
      I1 => \REGS_reg[2]\(6),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(6),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[6]_inst_i_5_n_0\
    );
\QB_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(7),
      O => QB(7)
    );
\QB_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[7]_inst_i_3_n_0\,
      O => QB_OBUF(7)
    );
\QB_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[7]_inst_i_3_n_0\,
      O => QB_OBUF(7)
    );
\QB_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(7),
      I1 => \QB_OBUF[7]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[7]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[7]_inst_i_3_n_0\
    );
\QB_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(7),
      I1 => \REGS_reg[6]\(7),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(7),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(7),
      O => \QB_OBUF[7]_inst_i_4_n_0\
    );
\QB_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(7),
      I1 => \REGS_reg[2]\(7),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(7),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[7]_inst_i_5_n_0\
    );
\QB_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(8),
      O => QB(8)
    );
\QB_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[8]_inst_i_3_n_0\,
      O => QB_OBUF(8)
    );
\QB_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[8]_inst_i_3_n_0\,
      O => QB_OBUF(8)
    );
\QB_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(8),
      I1 => \QB_OBUF[8]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[8]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[8]_inst_i_3_n_0\
    );
\QB_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(8),
      I1 => \REGS_reg[6]\(8),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(8),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(8),
      O => \QB_OBUF[8]_inst_i_4_n_0\
    );
\QB_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(8),
      I1 => \REGS_reg[2]\(8),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(8),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[8]_inst_i_5_n_0\
    );
\QB_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(9),
      O => QB(9)
    );
\QB_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[9]_inst_i_3_n_0\,
      O => QB_OBUF(9)
    );
\QB_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => ADR_B_IBUF(1),
      I1 => ADR_B_IBUF(2),
      I2 => ADR_B_IBUF(0),
      I3 => \QB_OBUF[9]_inst_i_3_n_0\,
      O => QB_OBUF(9)
    );
\QB_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFC0AAAACFC0"
    )
        port map (
      I0 => D_IBUF(9),
      I1 => \QB_OBUF[9]_inst_i_4_n_0\,
      I2 => ADR_B_IBUF(2),
      I3 => \QB_OBUF[9]_inst_i_5_n_0\,
      I4 => \QB_OBUF[31]_inst_i_6_n_0\,
      I5 => W_IBUF,
      O => \QB_OBUF[9]_inst_i_3_n_0\
    );
\QB_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(9),
      I1 => \REGS_reg[6]\(9),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[5]\(9),
      I4 => ADR_B_IBUF(0),
      I5 => \REGS_reg[4]\(9),
      O => \QB_OBUF[9]_inst_i_4_n_0\
    );
\QB_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(9),
      I1 => \REGS_reg[2]\(9),
      I2 => ADR_B_IBUF(1),
      I3 => \REGS_reg[1]\(9),
      I4 => ADR_B_IBUF(0),
      O => \QB_OBUF[9]_inst_i_5_n_0\
    );
\REGS[1][31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_IBUF,
      O => p_0_in
    );
\REGS[1][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => W_IBUF,
      I1 => ADR_W_IBUF(1),
      I2 => ADR_W_IBUF(0),
      I3 => ADR_W_IBUF(2),
      O => \REGS[1]\
    );
\REGS[2][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => W_IBUF,
      I1 => ADR_W_IBUF(2),
      I2 => ADR_W_IBUF(1),
      I3 => ADR_W_IBUF(0),
      O => \REGS[2]\
    );
\REGS[3][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => W_IBUF,
      I1 => ADR_W_IBUF(2),
      I2 => ADR_W_IBUF(0),
      I3 => ADR_W_IBUF(1),
      O => \REGS[3]\
    );
\REGS[4][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => W_IBUF,
      I1 => ADR_W_IBUF(1),
      I2 => ADR_W_IBUF(2),
      I3 => ADR_W_IBUF(0),
      O => \REGS[4]\
    );
\REGS[5][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => W_IBUF,
      I1 => ADR_W_IBUF(1),
      I2 => ADR_W_IBUF(0),
      I3 => ADR_W_IBUF(2),
      O => \REGS[5]\
    );
\REGS[6][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => W_IBUF,
      I1 => ADR_W_IBUF(0),
      I2 => ADR_W_IBUF(2),
      I3 => ADR_W_IBUF(1),
      O => \REGS[6]\
    );
\REGS[7][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => W_IBUF,
      I1 => ADR_W_IBUF(0),
      I2 => ADR_W_IBUF(2),
      I3 => ADR_W_IBUF(1),
      O => \REGS[7]\
    );
\REGS_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(0),
      Q => \REGS_reg[1]\(0),
      R => p_0_in
    );
\REGS_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(10),
      Q => \REGS_reg[1]\(10),
      R => p_0_in
    );
\REGS_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(11),
      Q => \REGS_reg[1]\(11),
      R => p_0_in
    );
\REGS_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(12),
      Q => \REGS_reg[1]\(12),
      R => p_0_in
    );
\REGS_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(13),
      Q => \REGS_reg[1]\(13),
      R => p_0_in
    );
\REGS_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(14),
      Q => \REGS_reg[1]\(14),
      R => p_0_in
    );
\REGS_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(15),
      Q => \REGS_reg[1]\(15),
      R => p_0_in
    );
\REGS_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(16),
      Q => \REGS_reg[1]\(16),
      R => p_0_in
    );
\REGS_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(17),
      Q => \REGS_reg[1]\(17),
      R => p_0_in
    );
\REGS_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(18),
      Q => \REGS_reg[1]\(18),
      R => p_0_in
    );
\REGS_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(19),
      Q => \REGS_reg[1]\(19),
      R => p_0_in
    );
\REGS_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(1),
      Q => \REGS_reg[1]\(1),
      R => p_0_in
    );
\REGS_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(20),
      Q => \REGS_reg[1]\(20),
      R => p_0_in
    );
\REGS_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(21),
      Q => \REGS_reg[1]\(21),
      R => p_0_in
    );
\REGS_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(22),
      Q => \REGS_reg[1]\(22),
      R => p_0_in
    );
\REGS_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(23),
      Q => \REGS_reg[1]\(23),
      R => p_0_in
    );
\REGS_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(24),
      Q => \REGS_reg[1]\(24),
      R => p_0_in
    );
\REGS_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(25),
      Q => \REGS_reg[1]\(25),
      R => p_0_in
    );
\REGS_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(26),
      Q => \REGS_reg[1]\(26),
      R => p_0_in
    );
\REGS_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(27),
      Q => \REGS_reg[1]\(27),
      R => p_0_in
    );
\REGS_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(28),
      Q => \REGS_reg[1]\(28),
      R => p_0_in
    );
\REGS_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(29),
      Q => \REGS_reg[1]\(29),
      R => p_0_in
    );
\REGS_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(2),
      Q => \REGS_reg[1]\(2),
      R => p_0_in
    );
\REGS_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(30),
      Q => \REGS_reg[1]\(30),
      R => p_0_in
    );
\REGS_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(31),
      Q => \REGS_reg[1]\(31),
      R => p_0_in
    );
\REGS_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(3),
      Q => \REGS_reg[1]\(3),
      R => p_0_in
    );
\REGS_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(4),
      Q => \REGS_reg[1]\(4),
      R => p_0_in
    );
\REGS_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(5),
      Q => \REGS_reg[1]\(5),
      R => p_0_in
    );
\REGS_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(6),
      Q => \REGS_reg[1]\(6),
      R => p_0_in
    );
\REGS_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(7),
      Q => \REGS_reg[1]\(7),
      R => p_0_in
    );
\REGS_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(8),
      Q => \REGS_reg[1]\(8),
      R => p_0_in
    );
\REGS_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => D_IBUF(9),
      Q => \REGS_reg[1]\(9),
      R => p_0_in
    );
\REGS_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(0),
      Q => \REGS_reg[2]\(0),
      R => p_0_in
    );
\REGS_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(10),
      Q => \REGS_reg[2]\(10),
      R => p_0_in
    );
\REGS_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(11),
      Q => \REGS_reg[2]\(11),
      R => p_0_in
    );
\REGS_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(12),
      Q => \REGS_reg[2]\(12),
      R => p_0_in
    );
\REGS_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(13),
      Q => \REGS_reg[2]\(13),
      R => p_0_in
    );
\REGS_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(14),
      Q => \REGS_reg[2]\(14),
      R => p_0_in
    );
\REGS_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(15),
      Q => \REGS_reg[2]\(15),
      R => p_0_in
    );
\REGS_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(16),
      Q => \REGS_reg[2]\(16),
      R => p_0_in
    );
\REGS_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(17),
      Q => \REGS_reg[2]\(17),
      R => p_0_in
    );
\REGS_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(18),
      Q => \REGS_reg[2]\(18),
      R => p_0_in
    );
\REGS_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(19),
      Q => \REGS_reg[2]\(19),
      R => p_0_in
    );
\REGS_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(1),
      Q => \REGS_reg[2]\(1),
      R => p_0_in
    );
\REGS_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(20),
      Q => \REGS_reg[2]\(20),
      R => p_0_in
    );
\REGS_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(21),
      Q => \REGS_reg[2]\(21),
      R => p_0_in
    );
\REGS_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(22),
      Q => \REGS_reg[2]\(22),
      R => p_0_in
    );
\REGS_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(23),
      Q => \REGS_reg[2]\(23),
      R => p_0_in
    );
\REGS_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(24),
      Q => \REGS_reg[2]\(24),
      R => p_0_in
    );
\REGS_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(25),
      Q => \REGS_reg[2]\(25),
      R => p_0_in
    );
\REGS_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(26),
      Q => \REGS_reg[2]\(26),
      R => p_0_in
    );
\REGS_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(27),
      Q => \REGS_reg[2]\(27),
      R => p_0_in
    );
\REGS_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(28),
      Q => \REGS_reg[2]\(28),
      R => p_0_in
    );
\REGS_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(29),
      Q => \REGS_reg[2]\(29),
      R => p_0_in
    );
\REGS_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(2),
      Q => \REGS_reg[2]\(2),
      R => p_0_in
    );
\REGS_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(30),
      Q => \REGS_reg[2]\(30),
      R => p_0_in
    );
\REGS_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(31),
      Q => \REGS_reg[2]\(31),
      R => p_0_in
    );
\REGS_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(3),
      Q => \REGS_reg[2]\(3),
      R => p_0_in
    );
\REGS_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(4),
      Q => \REGS_reg[2]\(4),
      R => p_0_in
    );
\REGS_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(5),
      Q => \REGS_reg[2]\(5),
      R => p_0_in
    );
\REGS_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(6),
      Q => \REGS_reg[2]\(6),
      R => p_0_in
    );
\REGS_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(7),
      Q => \REGS_reg[2]\(7),
      R => p_0_in
    );
\REGS_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(8),
      Q => \REGS_reg[2]\(8),
      R => p_0_in
    );
\REGS_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => D_IBUF(9),
      Q => \REGS_reg[2]\(9),
      R => p_0_in
    );
\REGS_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(0),
      Q => \REGS_reg[3]\(0),
      R => p_0_in
    );
\REGS_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(10),
      Q => \REGS_reg[3]\(10),
      R => p_0_in
    );
\REGS_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(11),
      Q => \REGS_reg[3]\(11),
      R => p_0_in
    );
\REGS_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(12),
      Q => \REGS_reg[3]\(12),
      R => p_0_in
    );
\REGS_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(13),
      Q => \REGS_reg[3]\(13),
      R => p_0_in
    );
\REGS_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(14),
      Q => \REGS_reg[3]\(14),
      R => p_0_in
    );
\REGS_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(15),
      Q => \REGS_reg[3]\(15),
      R => p_0_in
    );
\REGS_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(16),
      Q => \REGS_reg[3]\(16),
      R => p_0_in
    );
\REGS_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(17),
      Q => \REGS_reg[3]\(17),
      R => p_0_in
    );
\REGS_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(18),
      Q => \REGS_reg[3]\(18),
      R => p_0_in
    );
\REGS_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(19),
      Q => \REGS_reg[3]\(19),
      R => p_0_in
    );
\REGS_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(1),
      Q => \REGS_reg[3]\(1),
      R => p_0_in
    );
\REGS_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(20),
      Q => \REGS_reg[3]\(20),
      R => p_0_in
    );
\REGS_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(21),
      Q => \REGS_reg[3]\(21),
      R => p_0_in
    );
\REGS_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(22),
      Q => \REGS_reg[3]\(22),
      R => p_0_in
    );
\REGS_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(23),
      Q => \REGS_reg[3]\(23),
      R => p_0_in
    );
\REGS_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(24),
      Q => \REGS_reg[3]\(24),
      R => p_0_in
    );
\REGS_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(25),
      Q => \REGS_reg[3]\(25),
      R => p_0_in
    );
\REGS_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(26),
      Q => \REGS_reg[3]\(26),
      R => p_0_in
    );
\REGS_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(27),
      Q => \REGS_reg[3]\(27),
      R => p_0_in
    );
\REGS_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(28),
      Q => \REGS_reg[3]\(28),
      R => p_0_in
    );
\REGS_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(29),
      Q => \REGS_reg[3]\(29),
      R => p_0_in
    );
\REGS_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(2),
      Q => \REGS_reg[3]\(2),
      R => p_0_in
    );
\REGS_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(30),
      Q => \REGS_reg[3]\(30),
      R => p_0_in
    );
\REGS_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(31),
      Q => \REGS_reg[3]\(31),
      R => p_0_in
    );
\REGS_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(3),
      Q => \REGS_reg[3]\(3),
      R => p_0_in
    );
\REGS_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(4),
      Q => \REGS_reg[3]\(4),
      R => p_0_in
    );
\REGS_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(5),
      Q => \REGS_reg[3]\(5),
      R => p_0_in
    );
\REGS_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(6),
      Q => \REGS_reg[3]\(6),
      R => p_0_in
    );
\REGS_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(7),
      Q => \REGS_reg[3]\(7),
      R => p_0_in
    );
\REGS_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(8),
      Q => \REGS_reg[3]\(8),
      R => p_0_in
    );
\REGS_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => D_IBUF(9),
      Q => \REGS_reg[3]\(9),
      R => p_0_in
    );
\REGS_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(0),
      Q => \REGS_reg[4]\(0),
      R => p_0_in
    );
\REGS_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(10),
      Q => \REGS_reg[4]\(10),
      R => p_0_in
    );
\REGS_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(11),
      Q => \REGS_reg[4]\(11),
      R => p_0_in
    );
\REGS_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(12),
      Q => \REGS_reg[4]\(12),
      R => p_0_in
    );
\REGS_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(13),
      Q => \REGS_reg[4]\(13),
      R => p_0_in
    );
\REGS_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(14),
      Q => \REGS_reg[4]\(14),
      R => p_0_in
    );
\REGS_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(15),
      Q => \REGS_reg[4]\(15),
      R => p_0_in
    );
\REGS_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(16),
      Q => \REGS_reg[4]\(16),
      R => p_0_in
    );
\REGS_reg[4][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(17),
      Q => \REGS_reg[4]\(17),
      R => p_0_in
    );
\REGS_reg[4][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(18),
      Q => \REGS_reg[4]\(18),
      R => p_0_in
    );
\REGS_reg[4][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(19),
      Q => \REGS_reg[4]\(19),
      R => p_0_in
    );
\REGS_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(1),
      Q => \REGS_reg[4]\(1),
      R => p_0_in
    );
\REGS_reg[4][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(20),
      Q => \REGS_reg[4]\(20),
      R => p_0_in
    );
\REGS_reg[4][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(21),
      Q => \REGS_reg[4]\(21),
      R => p_0_in
    );
\REGS_reg[4][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(22),
      Q => \REGS_reg[4]\(22),
      R => p_0_in
    );
\REGS_reg[4][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(23),
      Q => \REGS_reg[4]\(23),
      R => p_0_in
    );
\REGS_reg[4][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(24),
      Q => \REGS_reg[4]\(24),
      R => p_0_in
    );
\REGS_reg[4][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(25),
      Q => \REGS_reg[4]\(25),
      R => p_0_in
    );
\REGS_reg[4][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(26),
      Q => \REGS_reg[4]\(26),
      R => p_0_in
    );
\REGS_reg[4][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(27),
      Q => \REGS_reg[4]\(27),
      R => p_0_in
    );
\REGS_reg[4][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(28),
      Q => \REGS_reg[4]\(28),
      R => p_0_in
    );
\REGS_reg[4][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(29),
      Q => \REGS_reg[4]\(29),
      R => p_0_in
    );
\REGS_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(2),
      Q => \REGS_reg[4]\(2),
      R => p_0_in
    );
\REGS_reg[4][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(30),
      Q => \REGS_reg[4]\(30),
      R => p_0_in
    );
\REGS_reg[4][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(31),
      Q => \REGS_reg[4]\(31),
      R => p_0_in
    );
\REGS_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(3),
      Q => \REGS_reg[4]\(3),
      R => p_0_in
    );
\REGS_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(4),
      Q => \REGS_reg[4]\(4),
      R => p_0_in
    );
\REGS_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(5),
      Q => \REGS_reg[4]\(5),
      R => p_0_in
    );
\REGS_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(6),
      Q => \REGS_reg[4]\(6),
      R => p_0_in
    );
\REGS_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(7),
      Q => \REGS_reg[4]\(7),
      R => p_0_in
    );
\REGS_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(8),
      Q => \REGS_reg[4]\(8),
      R => p_0_in
    );
\REGS_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => D_IBUF(9),
      Q => \REGS_reg[4]\(9),
      R => p_0_in
    );
\REGS_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(0),
      Q => \REGS_reg[5]\(0),
      R => p_0_in
    );
\REGS_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(10),
      Q => \REGS_reg[5]\(10),
      R => p_0_in
    );
\REGS_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(11),
      Q => \REGS_reg[5]\(11),
      R => p_0_in
    );
\REGS_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(12),
      Q => \REGS_reg[5]\(12),
      R => p_0_in
    );
\REGS_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(13),
      Q => \REGS_reg[5]\(13),
      R => p_0_in
    );
\REGS_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(14),
      Q => \REGS_reg[5]\(14),
      R => p_0_in
    );
\REGS_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(15),
      Q => \REGS_reg[5]\(15),
      R => p_0_in
    );
\REGS_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(16),
      Q => \REGS_reg[5]\(16),
      R => p_0_in
    );
\REGS_reg[5][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(17),
      Q => \REGS_reg[5]\(17),
      R => p_0_in
    );
\REGS_reg[5][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(18),
      Q => \REGS_reg[5]\(18),
      R => p_0_in
    );
\REGS_reg[5][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(19),
      Q => \REGS_reg[5]\(19),
      R => p_0_in
    );
\REGS_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(1),
      Q => \REGS_reg[5]\(1),
      R => p_0_in
    );
\REGS_reg[5][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(20),
      Q => \REGS_reg[5]\(20),
      R => p_0_in
    );
\REGS_reg[5][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(21),
      Q => \REGS_reg[5]\(21),
      R => p_0_in
    );
\REGS_reg[5][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(22),
      Q => \REGS_reg[5]\(22),
      R => p_0_in
    );
\REGS_reg[5][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(23),
      Q => \REGS_reg[5]\(23),
      R => p_0_in
    );
\REGS_reg[5][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(24),
      Q => \REGS_reg[5]\(24),
      R => p_0_in
    );
\REGS_reg[5][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(25),
      Q => \REGS_reg[5]\(25),
      R => p_0_in
    );
\REGS_reg[5][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(26),
      Q => \REGS_reg[5]\(26),
      R => p_0_in
    );
\REGS_reg[5][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(27),
      Q => \REGS_reg[5]\(27),
      R => p_0_in
    );
\REGS_reg[5][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(28),
      Q => \REGS_reg[5]\(28),
      R => p_0_in
    );
\REGS_reg[5][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(29),
      Q => \REGS_reg[5]\(29),
      R => p_0_in
    );
\REGS_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(2),
      Q => \REGS_reg[5]\(2),
      R => p_0_in
    );
\REGS_reg[5][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(30),
      Q => \REGS_reg[5]\(30),
      R => p_0_in
    );
\REGS_reg[5][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(31),
      Q => \REGS_reg[5]\(31),
      R => p_0_in
    );
\REGS_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(3),
      Q => \REGS_reg[5]\(3),
      R => p_0_in
    );
\REGS_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(4),
      Q => \REGS_reg[5]\(4),
      R => p_0_in
    );
\REGS_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(5),
      Q => \REGS_reg[5]\(5),
      R => p_0_in
    );
\REGS_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(6),
      Q => \REGS_reg[5]\(6),
      R => p_0_in
    );
\REGS_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(7),
      Q => \REGS_reg[5]\(7),
      R => p_0_in
    );
\REGS_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(8),
      Q => \REGS_reg[5]\(8),
      R => p_0_in
    );
\REGS_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => D_IBUF(9),
      Q => \REGS_reg[5]\(9),
      R => p_0_in
    );
\REGS_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(0),
      Q => \REGS_reg[6]\(0),
      R => p_0_in
    );
\REGS_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(10),
      Q => \REGS_reg[6]\(10),
      R => p_0_in
    );
\REGS_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(11),
      Q => \REGS_reg[6]\(11),
      R => p_0_in
    );
\REGS_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(12),
      Q => \REGS_reg[6]\(12),
      R => p_0_in
    );
\REGS_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(13),
      Q => \REGS_reg[6]\(13),
      R => p_0_in
    );
\REGS_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(14),
      Q => \REGS_reg[6]\(14),
      R => p_0_in
    );
\REGS_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(15),
      Q => \REGS_reg[6]\(15),
      R => p_0_in
    );
\REGS_reg[6][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(16),
      Q => \REGS_reg[6]\(16),
      R => p_0_in
    );
\REGS_reg[6][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(17),
      Q => \REGS_reg[6]\(17),
      R => p_0_in
    );
\REGS_reg[6][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(18),
      Q => \REGS_reg[6]\(18),
      R => p_0_in
    );
\REGS_reg[6][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(19),
      Q => \REGS_reg[6]\(19),
      R => p_0_in
    );
\REGS_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(1),
      Q => \REGS_reg[6]\(1),
      R => p_0_in
    );
\REGS_reg[6][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(20),
      Q => \REGS_reg[6]\(20),
      R => p_0_in
    );
\REGS_reg[6][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(21),
      Q => \REGS_reg[6]\(21),
      R => p_0_in
    );
\REGS_reg[6][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(22),
      Q => \REGS_reg[6]\(22),
      R => p_0_in
    );
\REGS_reg[6][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(23),
      Q => \REGS_reg[6]\(23),
      R => p_0_in
    );
\REGS_reg[6][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(24),
      Q => \REGS_reg[6]\(24),
      R => p_0_in
    );
\REGS_reg[6][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(25),
      Q => \REGS_reg[6]\(25),
      R => p_0_in
    );
\REGS_reg[6][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(26),
      Q => \REGS_reg[6]\(26),
      R => p_0_in
    );
\REGS_reg[6][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(27),
      Q => \REGS_reg[6]\(27),
      R => p_0_in
    );
\REGS_reg[6][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(28),
      Q => \REGS_reg[6]\(28),
      R => p_0_in
    );
\REGS_reg[6][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(29),
      Q => \REGS_reg[6]\(29),
      R => p_0_in
    );
\REGS_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(2),
      Q => \REGS_reg[6]\(2),
      R => p_0_in
    );
\REGS_reg[6][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(30),
      Q => \REGS_reg[6]\(30),
      R => p_0_in
    );
\REGS_reg[6][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(31),
      Q => \REGS_reg[6]\(31),
      R => p_0_in
    );
\REGS_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(3),
      Q => \REGS_reg[6]\(3),
      R => p_0_in
    );
\REGS_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(4),
      Q => \REGS_reg[6]\(4),
      R => p_0_in
    );
\REGS_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(5),
      Q => \REGS_reg[6]\(5),
      R => p_0_in
    );
\REGS_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(6),
      Q => \REGS_reg[6]\(6),
      R => p_0_in
    );
\REGS_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(7),
      Q => \REGS_reg[6]\(7),
      R => p_0_in
    );
\REGS_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(8),
      Q => \REGS_reg[6]\(8),
      R => p_0_in
    );
\REGS_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => D_IBUF(9),
      Q => \REGS_reg[6]\(9),
      R => p_0_in
    );
\REGS_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(0),
      Q => \REGS_reg[7]\(0),
      R => p_0_in
    );
\REGS_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(10),
      Q => \REGS_reg[7]\(10),
      R => p_0_in
    );
\REGS_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(11),
      Q => \REGS_reg[7]\(11),
      R => p_0_in
    );
\REGS_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(12),
      Q => \REGS_reg[7]\(12),
      R => p_0_in
    );
\REGS_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(13),
      Q => \REGS_reg[7]\(13),
      R => p_0_in
    );
\REGS_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(14),
      Q => \REGS_reg[7]\(14),
      R => p_0_in
    );
\REGS_reg[7][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(15),
      Q => \REGS_reg[7]\(15),
      R => p_0_in
    );
\REGS_reg[7][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(16),
      Q => \REGS_reg[7]\(16),
      R => p_0_in
    );
\REGS_reg[7][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(17),
      Q => \REGS_reg[7]\(17),
      R => p_0_in
    );
\REGS_reg[7][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(18),
      Q => \REGS_reg[7]\(18),
      R => p_0_in
    );
\REGS_reg[7][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(19),
      Q => \REGS_reg[7]\(19),
      R => p_0_in
    );
\REGS_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(1),
      Q => \REGS_reg[7]\(1),
      R => p_0_in
    );
\REGS_reg[7][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(20),
      Q => \REGS_reg[7]\(20),
      R => p_0_in
    );
\REGS_reg[7][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(21),
      Q => \REGS_reg[7]\(21),
      R => p_0_in
    );
\REGS_reg[7][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(22),
      Q => \REGS_reg[7]\(22),
      R => p_0_in
    );
\REGS_reg[7][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(23),
      Q => \REGS_reg[7]\(23),
      R => p_0_in
    );
\REGS_reg[7][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(24),
      Q => \REGS_reg[7]\(24),
      R => p_0_in
    );
\REGS_reg[7][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(25),
      Q => \REGS_reg[7]\(25),
      R => p_0_in
    );
\REGS_reg[7][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(26),
      Q => \REGS_reg[7]\(26),
      R => p_0_in
    );
\REGS_reg[7][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(27),
      Q => \REGS_reg[7]\(27),
      R => p_0_in
    );
\REGS_reg[7][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(28),
      Q => \REGS_reg[7]\(28),
      R => p_0_in
    );
\REGS_reg[7][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(29),
      Q => \REGS_reg[7]\(29),
      R => p_0_in
    );
\REGS_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(2),
      Q => \REGS_reg[7]\(2),
      R => p_0_in
    );
\REGS_reg[7][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(30),
      Q => \REGS_reg[7]\(30),
      R => p_0_in
    );
\REGS_reg[7][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(31),
      Q => \REGS_reg[7]\(31),
      R => p_0_in
    );
\REGS_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(3),
      Q => \REGS_reg[7]\(3),
      R => p_0_in
    );
\REGS_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(4),
      Q => \REGS_reg[7]\(4),
      R => p_0_in
    );
\REGS_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(5),
      Q => \REGS_reg[7]\(5),
      R => p_0_in
    );
\REGS_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(6),
      Q => \REGS_reg[7]\(6),
      R => p_0_in
    );
\REGS_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(7),
      Q => \REGS_reg[7]\(7),
      R => p_0_in
    );
\REGS_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(8),
      Q => \REGS_reg[7]\(8),
      R => p_0_in
    );
\REGS_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => D_IBUF(9),
      Q => \REGS_reg[7]\(9),
      R => p_0_in
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
W_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => W,
      O => W_IBUF
    );
end STRUCTURE;
