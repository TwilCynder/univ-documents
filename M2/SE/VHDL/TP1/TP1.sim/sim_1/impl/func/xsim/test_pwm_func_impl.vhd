-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Wed Dec  6 15:39:24 2023
-- Host        : secil1.siame.univ-tlse3.fr running 64-bit unknown
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/TP1/TP1.sim/sim_1/impl/func/xsim/test_pwm_func_impl.vhd
-- Design      : pwm
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm is
  port (
    RST : in STD_LOGIC;
    EN : in STD_LOGIC;
    CLK : in STD_LOGIC;
    DUTY : in STD_LOGIC_VECTOR ( 3 downto 0 );
    P : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of pwm : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of pwm : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of pwm : entity is "2342052";
  attribute duty_res : integer;
  attribute duty_res of pwm : entity is 4;
  attribute pwm_freq : integer;
  attribute pwm_freq of pwm : entity is 6250000;
  attribute sys_clk : integer;
  attribute sys_clk of pwm : entity is 125000000;
end pwm;

architecture STRUCTURE of pwm is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DUTY_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EN_IBUF : STD_LOGIC;
  signal P_OBUF : STD_LOGIC;
  signal P_i_1_n_0 : STD_LOGIC;
  signal P_i_2_n_0 : STD_LOGIC;
  signal P_i_3_n_0 : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal cpt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cpt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cpt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cpt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cpt[2]_i_2_n_0\ : STD_LOGIC;
  signal \cpt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cpt[4]_i_1_n_0\ : STD_LOGIC;
  signal \duty_threshold[2]_i_1_n_0\ : STD_LOGIC;
  signal \duty_threshold[4]_i_1_n_0\ : STD_LOGIC;
  signal \duty_threshold[4]_i_2_n_0\ : STD_LOGIC;
  signal \duty_threshold_reg_n_0_[0]\ : STD_LOGIC;
  signal \duty_threshold_reg_n_0_[1]\ : STD_LOGIC;
  signal \duty_threshold_reg_n_0_[2]\ : STD_LOGIC;
  signal \duty_threshold_reg_n_0_[3]\ : STD_LOGIC;
  signal \duty_threshold_reg_n_0_[4]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cpt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cpt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \duty_threshold[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \duty_threshold[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \duty_threshold[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \duty_threshold[4]_i_3\ : label is "soft_lutpair2";
begin
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
\DUTY_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DUTY(0),
      O => DUTY_IBUF(0)
    );
\DUTY_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DUTY(1),
      O => DUTY_IBUF(1)
    );
\DUTY_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DUTY(2),
      O => DUTY_IBUF(2)
    );
\DUTY_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DUTY(3),
      O => DUTY_IBUF(3)
    );
EN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => EN,
      O => EN_IBUF
    );
P_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => P_OBUF,
      O => P
    );
P_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RST_IBUF,
      I1 => EN_IBUF,
      O => P_i_1_n_0
    );
P_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFBBABAFBFBBAFB"
    )
        port map (
      I0 => \cpt[2]_i_2_n_0\,
      I1 => cpt(4),
      I2 => \duty_threshold_reg_n_0_[4]\,
      I3 => cpt(3),
      I4 => \duty_threshold_reg_n_0_[3]\,
      I5 => P_i_3_n_0,
      O => P_i_2_n_0
    );
P_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \duty_threshold_reg_n_0_[0]\,
      I1 => cpt(0),
      I2 => \duty_threshold_reg_n_0_[1]\,
      I3 => cpt(1),
      I4 => \duty_threshold_reg_n_0_[2]\,
      I5 => cpt(2),
      O => P_i_3_n_0
    );
P_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => P_i_2_n_0,
      Q => P_OBUF,
      R => P_i_1_n_0
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
\cpt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1F"
    )
        port map (
      I0 => \cpt[2]_i_2_n_0\,
      I1 => cpt(0),
      I2 => EN_IBUF,
      I3 => RST_IBUF,
      O => \cpt[0]_i_1_n_0\
    );
\cpt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF14FF"
    )
        port map (
      I0 => \cpt[2]_i_2_n_0\,
      I1 => cpt(0),
      I2 => cpt(1),
      I3 => EN_IBUF,
      I4 => RST_IBUF,
      O => \cpt[1]_i_1_n_0\
    );
\cpt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006A00000000"
    )
        port map (
      I0 => cpt(2),
      I1 => cpt(1),
      I2 => cpt(0),
      I3 => \cpt[2]_i_2_n_0\,
      I4 => RST_IBUF,
      I5 => EN_IBUF,
      O => \cpt[2]_i_1_n_0\
    );
\cpt[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA888"
    )
        port map (
      I0 => cpt(4),
      I1 => cpt(3),
      I2 => cpt(0),
      I3 => cpt(1),
      I4 => cpt(2),
      O => \cpt[2]_i_2_n_0\
    );
\cpt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000014444444"
    )
        port map (
      I0 => cpt(4),
      I1 => cpt(3),
      I2 => cpt(0),
      I3 => cpt(1),
      I4 => cpt(2),
      I5 => P_i_1_n_0,
      O => \cpt[3]_i_1_n_0\
    );
\cpt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000222"
    )
        port map (
      I0 => cpt(4),
      I1 => cpt(3),
      I2 => cpt(0),
      I3 => cpt(1),
      I4 => cpt(2),
      I5 => P_i_1_n_0,
      O => \cpt[4]_i_1_n_0\
    );
\cpt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \cpt[0]_i_1_n_0\,
      Q => cpt(0),
      R => '0'
    );
\cpt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \cpt[1]_i_1_n_0\,
      Q => cpt(1),
      R => '0'
    );
\cpt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \cpt[2]_i_1_n_0\,
      Q => cpt(2),
      R => '0'
    );
\cpt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \cpt[3]_i_1_n_0\,
      Q => cpt(3),
      R => '0'
    );
\cpt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \cpt[4]_i_1_n_0\,
      Q => cpt(4),
      R => '0'
    );
\duty_threshold[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DUTY_IBUF(0),
      O => p_1_in(0)
    );
\duty_threshold[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => DUTY_IBUF(0),
      I1 => DUTY_IBUF(1),
      O => p_1_in(1)
    );
\duty_threshold[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => DUTY_IBUF(0),
      I1 => DUTY_IBUF(1),
      I2 => DUTY_IBUF(2),
      O => \duty_threshold[2]_i_1_n_0\
    );
\duty_threshold[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => DUTY_IBUF(1),
      I1 => DUTY_IBUF(0),
      I2 => DUTY_IBUF(2),
      I3 => DUTY_IBUF(3),
      O => p_1_in(3)
    );
\duty_threshold[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => DUTY_IBUF(3),
      I1 => DUTY_IBUF(2),
      I2 => DUTY_IBUF(0),
      I3 => DUTY_IBUF(1),
      I4 => \cpt[2]_i_2_n_0\,
      I5 => P_i_1_n_0,
      O => \duty_threshold[4]_i_1_n_0\
    );
\duty_threshold[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \cpt[2]_i_2_n_0\,
      I1 => EN_IBUF,
      I2 => RST_IBUF,
      O => \duty_threshold[4]_i_2_n_0\
    );
\duty_threshold[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DUTY_IBUF(3),
      I1 => DUTY_IBUF(1),
      I2 => DUTY_IBUF(0),
      I3 => DUTY_IBUF(2),
      O => p_1_in(4)
    );
\duty_threshold_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \duty_threshold[4]_i_2_n_0\,
      D => p_1_in(0),
      Q => \duty_threshold_reg_n_0_[0]\,
      S => \duty_threshold[4]_i_1_n_0\
    );
\duty_threshold_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \duty_threshold[4]_i_2_n_0\,
      D => p_1_in(1),
      Q => \duty_threshold_reg_n_0_[1]\,
      S => \duty_threshold[4]_i_1_n_0\
    );
\duty_threshold_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \duty_threshold[4]_i_2_n_0\,
      D => \duty_threshold[2]_i_1_n_0\,
      Q => \duty_threshold_reg_n_0_[2]\,
      R => \duty_threshold[4]_i_1_n_0\
    );
\duty_threshold_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \duty_threshold[4]_i_2_n_0\,
      D => p_1_in(3),
      Q => \duty_threshold_reg_n_0_[3]\,
      R => \duty_threshold[4]_i_1_n_0\
    );
\duty_threshold_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \duty_threshold[4]_i_2_n_0\,
      D => p_1_in(4),
      Q => \duty_threshold_reg_n_0_[4]\,
      S => \duty_threshold[4]_i_1_n_0\
    );
end STRUCTURE;
