-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Feb 17 10:55:44 2023
-- Host        : pc-u3-305-01 running 64-bit Debian GNU/Linux 11 (bullseye)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/tnt3192a/documents/work/M1/S8/vhdl/zybo_tp6/zybo_tp6.sim/sim_1/synth/func/xsim/test_memory_func_synth.vhd
-- Design      : memory
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity memory is
  port (
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC;
    WEN : in STD_LOGIC;
    ADR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DO : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of memory : entity is true;
  attribute DBUS_WIDTH : integer;
  attribute DBUS_WIDTH of memory : entity is 32;
  attribute MEM_SIZE : integer;
  attribute MEM_SIZE of memory : entity is 32;
end memory;

architecture STRUCTURE of memory is
  signal ADR_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DI_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DO_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \DO_OBUFT[31]_inst_i_2_n_0\ : STD_LOGIC;
  signal \DO_TRI[0]\ : STD_LOGIC;
  signal \DO_tristate_oe[0]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[0]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[0]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[0]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[0]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[0]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[0]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[0]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[0]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[10]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[10]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[10]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[10]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[10]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[10]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[10]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[10]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[10]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[11]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[11]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[11]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[11]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[11]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[11]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[11]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[11]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[11]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[12]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[12]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[12]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[12]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[12]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[12]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[12]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[12]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[12]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[13]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[13]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[13]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[13]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[13]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[13]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[13]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[13]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[13]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[14]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[14]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[14]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[14]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[14]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[14]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[14]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[14]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[14]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[15]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[15]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[15]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[15]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[15]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[15]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[15]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[15]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[15]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[16]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[16]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[16]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[16]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[16]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[16]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[16]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[16]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[16]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[17]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[17]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[17]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[17]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[17]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[17]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[17]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[17]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[17]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[18]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[18]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[18]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[18]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[18]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[18]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[18]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[18]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[18]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[19]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[19]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[19]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[19]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[19]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[19]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[19]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[19]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[19]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[1]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[1]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[1]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[1]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[1]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[1]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[1]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[1]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[1]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[20]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[20]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[20]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[20]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[20]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[20]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[20]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[20]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[20]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[21]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[21]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[21]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[21]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[21]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[21]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[21]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[21]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[21]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[22]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[22]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[22]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[22]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[22]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[22]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[22]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[22]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[22]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[23]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[23]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[23]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[23]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[23]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[23]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[23]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[23]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[23]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[24]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[24]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[24]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[24]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[24]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[24]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[24]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[24]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[24]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[25]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[25]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[25]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[25]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[25]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[25]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[25]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[25]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[25]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[26]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[26]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[26]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[26]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[26]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[26]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[26]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[26]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[26]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[27]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[27]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[27]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[27]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[27]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[27]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[27]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[27]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[27]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[28]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[28]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[28]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[28]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[28]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[28]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[28]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[28]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[28]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[29]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[29]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[29]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[29]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[29]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[29]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[29]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[29]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[29]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[2]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[2]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[2]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[2]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[2]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[2]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[2]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[2]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[2]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[30]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[30]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[30]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[30]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[30]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[30]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[30]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[30]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[30]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[31]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[3]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[3]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[3]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[3]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[3]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[3]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[3]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[3]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[3]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[4]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[4]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[4]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[4]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[4]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[4]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[4]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[4]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[4]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[5]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[5]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[5]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[5]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[5]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[5]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[5]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[5]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[5]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[6]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[6]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[6]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[6]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[6]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[6]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[6]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[6]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[6]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[7]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[7]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[7]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[7]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[7]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[7]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[7]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[7]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[7]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[8]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[8]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[8]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[8]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[8]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[8]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[8]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[8]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[8]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[9]_i_10_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[9]_i_11_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[9]_i_12_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[9]_i_13_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[9]_i_14_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[9]_i_15_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[9]_i_1_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[9]_i_8_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe[9]_i_9_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[10]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[12]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[13]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[13]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[13]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[14]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[14]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[16]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[16]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[17]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[17]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[17]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[17]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[18]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[18]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[18]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[18]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[19]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[20]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[20]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[20]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[20]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[21]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[21]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[21]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[21]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[22]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[22]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[22]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[22]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[24]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[24]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[24]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[24]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[25]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[25]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[25]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[25]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[26]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[26]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[26]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[26]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[27]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[28]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[28]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[28]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[28]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[29]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[29]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[29]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[29]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[30]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[30]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[30]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[30]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \DO_tristate_oe_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal EN_IBUF : STD_LOGIC;
  signal \REGS[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \REGS[10]\ : STD_LOGIC;
  signal \REGS[10][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[11]\ : STD_LOGIC;
  signal \REGS[12]\ : STD_LOGIC;
  signal \REGS[12][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[13]\ : STD_LOGIC;
  signal \REGS[14]\ : STD_LOGIC;
  signal \REGS[15]\ : STD_LOGIC;
  signal \REGS[16]\ : STD_LOGIC;
  signal \REGS[16][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[17]\ : STD_LOGIC;
  signal \REGS[17][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[18]\ : STD_LOGIC;
  signal \REGS[18][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[19]\ : STD_LOGIC;
  signal \REGS[1]\ : STD_LOGIC;
  signal \REGS[1][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[20]\ : STD_LOGIC;
  signal \REGS[20][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[21]\ : STD_LOGIC;
  signal \REGS[22]\ : STD_LOGIC;
  signal \REGS[23]\ : STD_LOGIC;
  signal \REGS[24]\ : STD_LOGIC;
  signal \REGS[24][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[25]\ : STD_LOGIC;
  signal \REGS[26]\ : STD_LOGIC;
  signal \REGS[27]\ : STD_LOGIC;
  signal \REGS[28]\ : STD_LOGIC;
  signal \REGS[29]\ : STD_LOGIC;
  signal \REGS[2]\ : STD_LOGIC;
  signal \REGS[2][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[30]\ : STD_LOGIC;
  signal \REGS[31]\ : STD_LOGIC;
  signal \REGS[3]\ : STD_LOGIC;
  signal \REGS[3][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[4]\ : STD_LOGIC;
  signal \REGS[4][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[5]\ : STD_LOGIC;
  signal \REGS[5][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[6]\ : STD_LOGIC;
  signal \REGS[6][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[7]\ : STD_LOGIC;
  signal \REGS[8]\ : STD_LOGIC;
  signal \REGS[8][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS[9]\ : STD_LOGIC;
  signal \REGS[9][31]_i_2_n_0\ : STD_LOGIC;
  signal \REGS_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[10]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[11]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[12]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[13]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[14]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[15]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[16]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[17]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[18]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[19]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[20]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[21]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[22]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[23]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[24]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[25]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[26]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[27]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[28]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[29]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[30]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[4]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[5]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[6]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[7]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[8]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \REGS_reg[9]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RST_IBUF : STD_LOGIC;
  signal WEN_IBUF : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \REGS[17][31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \REGS[18][31]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \REGS[20][31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \REGS[3][31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \REGS[5][31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \REGS[6][31]_i_2\ : label is "soft_lutpair1";
begin
\ADR_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR(0),
      O => ADR_IBUF(0)
    );
\ADR_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR(1),
      O => ADR_IBUF(1)
    );
\ADR_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR(2),
      O => ADR_IBUF(2)
    );
\ADR_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR(3),
      O => ADR_IBUF(3)
    );
\ADR_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ADR(4),
      O => ADR_IBUF(4)
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
\DI_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(0),
      O => DI_IBUF(0)
    );
\DI_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(10),
      O => DI_IBUF(10)
    );
\DI_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(11),
      O => DI_IBUF(11)
    );
\DI_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(12),
      O => DI_IBUF(12)
    );
\DI_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(13),
      O => DI_IBUF(13)
    );
\DI_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(14),
      O => DI_IBUF(14)
    );
\DI_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(15),
      O => DI_IBUF(15)
    );
\DI_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(16),
      O => DI_IBUF(16)
    );
\DI_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(17),
      O => DI_IBUF(17)
    );
\DI_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(18),
      O => DI_IBUF(18)
    );
\DI_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(19),
      O => DI_IBUF(19)
    );
\DI_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(1),
      O => DI_IBUF(1)
    );
\DI_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(20),
      O => DI_IBUF(20)
    );
\DI_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(21),
      O => DI_IBUF(21)
    );
\DI_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(22),
      O => DI_IBUF(22)
    );
\DI_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(23),
      O => DI_IBUF(23)
    );
\DI_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(24),
      O => DI_IBUF(24)
    );
\DI_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(25),
      O => DI_IBUF(25)
    );
\DI_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(26),
      O => DI_IBUF(26)
    );
\DI_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(27),
      O => DI_IBUF(27)
    );
\DI_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(28),
      O => DI_IBUF(28)
    );
\DI_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(29),
      O => DI_IBUF(29)
    );
\DI_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(2),
      O => DI_IBUF(2)
    );
\DI_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(30),
      O => DI_IBUF(30)
    );
\DI_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(31),
      O => DI_IBUF(31)
    );
\DI_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(3),
      O => DI_IBUF(3)
    );
\DI_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(4),
      O => DI_IBUF(4)
    );
\DI_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(5),
      O => DI_IBUF(5)
    );
\DI_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(6),
      O => DI_IBUF(6)
    );
\DI_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(7),
      O => DI_IBUF(7)
    );
\DI_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(8),
      O => DI_IBUF(8)
    );
\DI_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DI(9),
      O => DI_IBUF(9)
    );
\DO_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(0),
      O => DO(0),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[10]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(10),
      O => DO(10),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[11]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(11),
      O => DO(11),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[12]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(12),
      O => DO(12),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[13]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(13),
      O => DO(13),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[14]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(14),
      O => DO(14),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[15]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(15),
      O => DO(15),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[16]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(16),
      O => DO(16),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[17]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(17),
      O => DO(17),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[18]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(18),
      O => DO(18),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[19]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(19),
      O => DO(19),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(1),
      O => DO(1),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[20]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(20),
      O => DO(20),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[21]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(21),
      O => DO(21),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[22]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(22),
      O => DO(22),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[23]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(23),
      O => DO(23),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[24]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(24),
      O => DO(24),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[25]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(25),
      O => DO(25),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[26]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(26),
      O => DO(26),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[27]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(27),
      O => DO(27),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[28]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(28),
      O => DO(28),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[29]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(29),
      O => DO(29),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(2),
      O => DO(2),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[30]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(30),
      O => DO(30),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[31]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(31),
      O => DO(31),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[31]_inst_i_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_OBUFT[31]_inst_i_2_n_0\,
      Q => \DO_TRI[0]\,
      R => '0'
    );
\DO_OBUFT[31]_inst_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => EN_IBUF,
      O => \DO_OBUFT[31]_inst_i_2_n_0\
    );
\DO_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(3),
      O => DO(3),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(4),
      O => DO(4),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(5),
      O => DO(5),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(6),
      O => DO(6),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(7),
      O => DO(7),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[8]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(8),
      O => DO(8),
      T => \DO_TRI[0]\
    );
\DO_OBUFT[9]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => DO_OBUF(9),
      O => DO(9),
      T => \DO_TRI[0]\
    );
\DO_tristate_oe[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(0),
      I1 => \DO_tristate_oe_reg[0]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[0]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[0]_i_1_n_0\
    );
\DO_tristate_oe[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(0),
      I1 => \REGS_reg[26]\(0),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(0),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(0),
      O => \DO_tristate_oe[0]_i_10_n_0\
    );
\DO_tristate_oe[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(0),
      I1 => \REGS_reg[30]\(0),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(0),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(0),
      O => \DO_tristate_oe[0]_i_11_n_0\
    );
\DO_tristate_oe[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(0),
      I1 => \REGS_reg[2]\(0),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(0),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(0),
      O => \DO_tristate_oe[0]_i_12_n_0\
    );
\DO_tristate_oe[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(0),
      I1 => \REGS_reg[6]\(0),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(0),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(0),
      O => \DO_tristate_oe[0]_i_13_n_0\
    );
\DO_tristate_oe[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(0),
      I1 => \REGS_reg[10]\(0),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(0),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(0),
      O => \DO_tristate_oe[0]_i_14_n_0\
    );
\DO_tristate_oe[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(0),
      I1 => \REGS_reg[14]\(0),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(0),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(0),
      O => \DO_tristate_oe[0]_i_15_n_0\
    );
\DO_tristate_oe[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(0),
      I1 => \REGS_reg[18]\(0),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(0),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(0),
      O => \DO_tristate_oe[0]_i_8_n_0\
    );
\DO_tristate_oe[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(0),
      I1 => \REGS_reg[22]\(0),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(0),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(0),
      O => \DO_tristate_oe[0]_i_9_n_0\
    );
\DO_tristate_oe[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(10),
      I1 => \DO_tristate_oe_reg[10]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[10]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[10]_i_1_n_0\
    );
\DO_tristate_oe[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(10),
      I1 => \REGS_reg[26]\(10),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(10),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(10),
      O => \DO_tristate_oe[10]_i_10_n_0\
    );
\DO_tristate_oe[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(10),
      I1 => \REGS_reg[30]\(10),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(10),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(10),
      O => \DO_tristate_oe[10]_i_11_n_0\
    );
\DO_tristate_oe[10]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(10),
      I1 => \REGS_reg[2]\(10),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(10),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(10),
      O => \DO_tristate_oe[10]_i_12_n_0\
    );
\DO_tristate_oe[10]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(10),
      I1 => \REGS_reg[6]\(10),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(10),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(10),
      O => \DO_tristate_oe[10]_i_13_n_0\
    );
\DO_tristate_oe[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(10),
      I1 => \REGS_reg[10]\(10),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(10),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(10),
      O => \DO_tristate_oe[10]_i_14_n_0\
    );
\DO_tristate_oe[10]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(10),
      I1 => \REGS_reg[14]\(10),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(10),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(10),
      O => \DO_tristate_oe[10]_i_15_n_0\
    );
\DO_tristate_oe[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(10),
      I1 => \REGS_reg[18]\(10),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(10),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(10),
      O => \DO_tristate_oe[10]_i_8_n_0\
    );
\DO_tristate_oe[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(10),
      I1 => \REGS_reg[22]\(10),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(10),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(10),
      O => \DO_tristate_oe[10]_i_9_n_0\
    );
\DO_tristate_oe[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(11),
      I1 => \DO_tristate_oe_reg[11]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[11]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[11]_i_1_n_0\
    );
\DO_tristate_oe[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(11),
      I1 => \REGS_reg[26]\(11),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(11),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(11),
      O => \DO_tristate_oe[11]_i_10_n_0\
    );
\DO_tristate_oe[11]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(11),
      I1 => \REGS_reg[30]\(11),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(11),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(11),
      O => \DO_tristate_oe[11]_i_11_n_0\
    );
\DO_tristate_oe[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(11),
      I1 => \REGS_reg[2]\(11),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(11),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(11),
      O => \DO_tristate_oe[11]_i_12_n_0\
    );
\DO_tristate_oe[11]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(11),
      I1 => \REGS_reg[6]\(11),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(11),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(11),
      O => \DO_tristate_oe[11]_i_13_n_0\
    );
\DO_tristate_oe[11]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(11),
      I1 => \REGS_reg[10]\(11),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(11),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(11),
      O => \DO_tristate_oe[11]_i_14_n_0\
    );
\DO_tristate_oe[11]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(11),
      I1 => \REGS_reg[14]\(11),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(11),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(11),
      O => \DO_tristate_oe[11]_i_15_n_0\
    );
\DO_tristate_oe[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(11),
      I1 => \REGS_reg[18]\(11),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(11),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(11),
      O => \DO_tristate_oe[11]_i_8_n_0\
    );
\DO_tristate_oe[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(11),
      I1 => \REGS_reg[22]\(11),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(11),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(11),
      O => \DO_tristate_oe[11]_i_9_n_0\
    );
\DO_tristate_oe[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(12),
      I1 => \DO_tristate_oe_reg[12]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[12]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[12]_i_1_n_0\
    );
\DO_tristate_oe[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(12),
      I1 => \REGS_reg[26]\(12),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(12),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(12),
      O => \DO_tristate_oe[12]_i_10_n_0\
    );
\DO_tristate_oe[12]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(12),
      I1 => \REGS_reg[30]\(12),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(12),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(12),
      O => \DO_tristate_oe[12]_i_11_n_0\
    );
\DO_tristate_oe[12]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(12),
      I1 => \REGS_reg[2]\(12),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(12),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(12),
      O => \DO_tristate_oe[12]_i_12_n_0\
    );
\DO_tristate_oe[12]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(12),
      I1 => \REGS_reg[6]\(12),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(12),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(12),
      O => \DO_tristate_oe[12]_i_13_n_0\
    );
\DO_tristate_oe[12]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(12),
      I1 => \REGS_reg[10]\(12),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(12),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(12),
      O => \DO_tristate_oe[12]_i_14_n_0\
    );
\DO_tristate_oe[12]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(12),
      I1 => \REGS_reg[14]\(12),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(12),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(12),
      O => \DO_tristate_oe[12]_i_15_n_0\
    );
\DO_tristate_oe[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(12),
      I1 => \REGS_reg[18]\(12),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(12),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(12),
      O => \DO_tristate_oe[12]_i_8_n_0\
    );
\DO_tristate_oe[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(12),
      I1 => \REGS_reg[22]\(12),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(12),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(12),
      O => \DO_tristate_oe[12]_i_9_n_0\
    );
\DO_tristate_oe[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(13),
      I1 => \DO_tristate_oe_reg[13]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[13]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[13]_i_1_n_0\
    );
\DO_tristate_oe[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(13),
      I1 => \REGS_reg[26]\(13),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(13),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(13),
      O => \DO_tristate_oe[13]_i_10_n_0\
    );
\DO_tristate_oe[13]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(13),
      I1 => \REGS_reg[30]\(13),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(13),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(13),
      O => \DO_tristate_oe[13]_i_11_n_0\
    );
\DO_tristate_oe[13]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(13),
      I1 => \REGS_reg[2]\(13),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(13),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(13),
      O => \DO_tristate_oe[13]_i_12_n_0\
    );
\DO_tristate_oe[13]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(13),
      I1 => \REGS_reg[6]\(13),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(13),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(13),
      O => \DO_tristate_oe[13]_i_13_n_0\
    );
\DO_tristate_oe[13]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(13),
      I1 => \REGS_reg[10]\(13),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(13),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(13),
      O => \DO_tristate_oe[13]_i_14_n_0\
    );
\DO_tristate_oe[13]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(13),
      I1 => \REGS_reg[14]\(13),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(13),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(13),
      O => \DO_tristate_oe[13]_i_15_n_0\
    );
\DO_tristate_oe[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(13),
      I1 => \REGS_reg[18]\(13),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(13),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(13),
      O => \DO_tristate_oe[13]_i_8_n_0\
    );
\DO_tristate_oe[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(13),
      I1 => \REGS_reg[22]\(13),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(13),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(13),
      O => \DO_tristate_oe[13]_i_9_n_0\
    );
\DO_tristate_oe[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(14),
      I1 => \DO_tristate_oe_reg[14]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[14]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[14]_i_1_n_0\
    );
\DO_tristate_oe[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(14),
      I1 => \REGS_reg[26]\(14),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(14),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(14),
      O => \DO_tristate_oe[14]_i_10_n_0\
    );
\DO_tristate_oe[14]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(14),
      I1 => \REGS_reg[30]\(14),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(14),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(14),
      O => \DO_tristate_oe[14]_i_11_n_0\
    );
\DO_tristate_oe[14]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(14),
      I1 => \REGS_reg[2]\(14),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(14),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(14),
      O => \DO_tristate_oe[14]_i_12_n_0\
    );
\DO_tristate_oe[14]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(14),
      I1 => \REGS_reg[6]\(14),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(14),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(14),
      O => \DO_tristate_oe[14]_i_13_n_0\
    );
\DO_tristate_oe[14]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(14),
      I1 => \REGS_reg[10]\(14),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(14),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(14),
      O => \DO_tristate_oe[14]_i_14_n_0\
    );
\DO_tristate_oe[14]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(14),
      I1 => \REGS_reg[14]\(14),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(14),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(14),
      O => \DO_tristate_oe[14]_i_15_n_0\
    );
\DO_tristate_oe[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(14),
      I1 => \REGS_reg[18]\(14),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(14),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(14),
      O => \DO_tristate_oe[14]_i_8_n_0\
    );
\DO_tristate_oe[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(14),
      I1 => \REGS_reg[22]\(14),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(14),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(14),
      O => \DO_tristate_oe[14]_i_9_n_0\
    );
\DO_tristate_oe[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(15),
      I1 => \DO_tristate_oe_reg[15]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[15]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[15]_i_1_n_0\
    );
\DO_tristate_oe[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(15),
      I1 => \REGS_reg[26]\(15),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(15),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(15),
      O => \DO_tristate_oe[15]_i_10_n_0\
    );
\DO_tristate_oe[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(15),
      I1 => \REGS_reg[30]\(15),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(15),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(15),
      O => \DO_tristate_oe[15]_i_11_n_0\
    );
\DO_tristate_oe[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(15),
      I1 => \REGS_reg[2]\(15),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(15),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(15),
      O => \DO_tristate_oe[15]_i_12_n_0\
    );
\DO_tristate_oe[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(15),
      I1 => \REGS_reg[6]\(15),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(15),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(15),
      O => \DO_tristate_oe[15]_i_13_n_0\
    );
\DO_tristate_oe[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(15),
      I1 => \REGS_reg[10]\(15),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(15),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(15),
      O => \DO_tristate_oe[15]_i_14_n_0\
    );
\DO_tristate_oe[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(15),
      I1 => \REGS_reg[14]\(15),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(15),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(15),
      O => \DO_tristate_oe[15]_i_15_n_0\
    );
\DO_tristate_oe[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(15),
      I1 => \REGS_reg[18]\(15),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(15),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(15),
      O => \DO_tristate_oe[15]_i_8_n_0\
    );
\DO_tristate_oe[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(15),
      I1 => \REGS_reg[22]\(15),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(15),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(15),
      O => \DO_tristate_oe[15]_i_9_n_0\
    );
\DO_tristate_oe[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(16),
      I1 => \DO_tristate_oe_reg[16]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[16]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[16]_i_1_n_0\
    );
\DO_tristate_oe[16]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(16),
      I1 => \REGS_reg[26]\(16),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(16),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(16),
      O => \DO_tristate_oe[16]_i_10_n_0\
    );
\DO_tristate_oe[16]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(16),
      I1 => \REGS_reg[30]\(16),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(16),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(16),
      O => \DO_tristate_oe[16]_i_11_n_0\
    );
\DO_tristate_oe[16]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(16),
      I1 => \REGS_reg[2]\(16),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(16),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(16),
      O => \DO_tristate_oe[16]_i_12_n_0\
    );
\DO_tristate_oe[16]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(16),
      I1 => \REGS_reg[6]\(16),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(16),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(16),
      O => \DO_tristate_oe[16]_i_13_n_0\
    );
\DO_tristate_oe[16]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(16),
      I1 => \REGS_reg[10]\(16),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(16),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(16),
      O => \DO_tristate_oe[16]_i_14_n_0\
    );
\DO_tristate_oe[16]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(16),
      I1 => \REGS_reg[14]\(16),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(16),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(16),
      O => \DO_tristate_oe[16]_i_15_n_0\
    );
\DO_tristate_oe[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(16),
      I1 => \REGS_reg[18]\(16),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(16),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(16),
      O => \DO_tristate_oe[16]_i_8_n_0\
    );
\DO_tristate_oe[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(16),
      I1 => \REGS_reg[22]\(16),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(16),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(16),
      O => \DO_tristate_oe[16]_i_9_n_0\
    );
\DO_tristate_oe[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(17),
      I1 => \DO_tristate_oe_reg[17]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[17]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[17]_i_1_n_0\
    );
\DO_tristate_oe[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(17),
      I1 => \REGS_reg[26]\(17),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(17),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(17),
      O => \DO_tristate_oe[17]_i_10_n_0\
    );
\DO_tristate_oe[17]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(17),
      I1 => \REGS_reg[30]\(17),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(17),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(17),
      O => \DO_tristate_oe[17]_i_11_n_0\
    );
\DO_tristate_oe[17]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(17),
      I1 => \REGS_reg[2]\(17),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(17),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(17),
      O => \DO_tristate_oe[17]_i_12_n_0\
    );
\DO_tristate_oe[17]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(17),
      I1 => \REGS_reg[6]\(17),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(17),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(17),
      O => \DO_tristate_oe[17]_i_13_n_0\
    );
\DO_tristate_oe[17]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(17),
      I1 => \REGS_reg[10]\(17),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(17),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(17),
      O => \DO_tristate_oe[17]_i_14_n_0\
    );
\DO_tristate_oe[17]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(17),
      I1 => \REGS_reg[14]\(17),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(17),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(17),
      O => \DO_tristate_oe[17]_i_15_n_0\
    );
\DO_tristate_oe[17]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(17),
      I1 => \REGS_reg[18]\(17),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(17),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(17),
      O => \DO_tristate_oe[17]_i_8_n_0\
    );
\DO_tristate_oe[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(17),
      I1 => \REGS_reg[22]\(17),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(17),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(17),
      O => \DO_tristate_oe[17]_i_9_n_0\
    );
\DO_tristate_oe[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(18),
      I1 => \DO_tristate_oe_reg[18]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[18]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[18]_i_1_n_0\
    );
\DO_tristate_oe[18]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(18),
      I1 => \REGS_reg[26]\(18),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(18),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(18),
      O => \DO_tristate_oe[18]_i_10_n_0\
    );
\DO_tristate_oe[18]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(18),
      I1 => \REGS_reg[30]\(18),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(18),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(18),
      O => \DO_tristate_oe[18]_i_11_n_0\
    );
\DO_tristate_oe[18]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(18),
      I1 => \REGS_reg[2]\(18),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(18),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(18),
      O => \DO_tristate_oe[18]_i_12_n_0\
    );
\DO_tristate_oe[18]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(18),
      I1 => \REGS_reg[6]\(18),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(18),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(18),
      O => \DO_tristate_oe[18]_i_13_n_0\
    );
\DO_tristate_oe[18]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(18),
      I1 => \REGS_reg[10]\(18),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(18),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(18),
      O => \DO_tristate_oe[18]_i_14_n_0\
    );
\DO_tristate_oe[18]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(18),
      I1 => \REGS_reg[14]\(18),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(18),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(18),
      O => \DO_tristate_oe[18]_i_15_n_0\
    );
\DO_tristate_oe[18]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(18),
      I1 => \REGS_reg[18]\(18),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(18),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(18),
      O => \DO_tristate_oe[18]_i_8_n_0\
    );
\DO_tristate_oe[18]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(18),
      I1 => \REGS_reg[22]\(18),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(18),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(18),
      O => \DO_tristate_oe[18]_i_9_n_0\
    );
\DO_tristate_oe[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(19),
      I1 => \DO_tristate_oe_reg[19]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[19]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[19]_i_1_n_0\
    );
\DO_tristate_oe[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(19),
      I1 => \REGS_reg[26]\(19),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(19),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(19),
      O => \DO_tristate_oe[19]_i_10_n_0\
    );
\DO_tristate_oe[19]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(19),
      I1 => \REGS_reg[30]\(19),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(19),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(19),
      O => \DO_tristate_oe[19]_i_11_n_0\
    );
\DO_tristate_oe[19]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(19),
      I1 => \REGS_reg[2]\(19),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(19),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(19),
      O => \DO_tristate_oe[19]_i_12_n_0\
    );
\DO_tristate_oe[19]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(19),
      I1 => \REGS_reg[6]\(19),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(19),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(19),
      O => \DO_tristate_oe[19]_i_13_n_0\
    );
\DO_tristate_oe[19]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(19),
      I1 => \REGS_reg[10]\(19),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(19),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(19),
      O => \DO_tristate_oe[19]_i_14_n_0\
    );
\DO_tristate_oe[19]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(19),
      I1 => \REGS_reg[14]\(19),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(19),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(19),
      O => \DO_tristate_oe[19]_i_15_n_0\
    );
\DO_tristate_oe[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(19),
      I1 => \REGS_reg[18]\(19),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(19),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(19),
      O => \DO_tristate_oe[19]_i_8_n_0\
    );
\DO_tristate_oe[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(19),
      I1 => \REGS_reg[22]\(19),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(19),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(19),
      O => \DO_tristate_oe[19]_i_9_n_0\
    );
\DO_tristate_oe[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(1),
      I1 => \DO_tristate_oe_reg[1]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[1]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[1]_i_1_n_0\
    );
\DO_tristate_oe[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(1),
      I1 => \REGS_reg[26]\(1),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(1),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(1),
      O => \DO_tristate_oe[1]_i_10_n_0\
    );
\DO_tristate_oe[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(1),
      I1 => \REGS_reg[30]\(1),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(1),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(1),
      O => \DO_tristate_oe[1]_i_11_n_0\
    );
\DO_tristate_oe[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(1),
      I1 => \REGS_reg[2]\(1),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(1),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(1),
      O => \DO_tristate_oe[1]_i_12_n_0\
    );
\DO_tristate_oe[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(1),
      I1 => \REGS_reg[6]\(1),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(1),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(1),
      O => \DO_tristate_oe[1]_i_13_n_0\
    );
\DO_tristate_oe[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(1),
      I1 => \REGS_reg[10]\(1),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(1),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(1),
      O => \DO_tristate_oe[1]_i_14_n_0\
    );
\DO_tristate_oe[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(1),
      I1 => \REGS_reg[14]\(1),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(1),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(1),
      O => \DO_tristate_oe[1]_i_15_n_0\
    );
\DO_tristate_oe[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(1),
      I1 => \REGS_reg[18]\(1),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(1),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(1),
      O => \DO_tristate_oe[1]_i_8_n_0\
    );
\DO_tristate_oe[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(1),
      I1 => \REGS_reg[22]\(1),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(1),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(1),
      O => \DO_tristate_oe[1]_i_9_n_0\
    );
\DO_tristate_oe[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(20),
      I1 => \DO_tristate_oe_reg[20]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[20]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[20]_i_1_n_0\
    );
\DO_tristate_oe[20]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(20),
      I1 => \REGS_reg[26]\(20),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(20),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(20),
      O => \DO_tristate_oe[20]_i_10_n_0\
    );
\DO_tristate_oe[20]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(20),
      I1 => \REGS_reg[30]\(20),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(20),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(20),
      O => \DO_tristate_oe[20]_i_11_n_0\
    );
\DO_tristate_oe[20]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(20),
      I1 => \REGS_reg[2]\(20),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(20),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(20),
      O => \DO_tristate_oe[20]_i_12_n_0\
    );
\DO_tristate_oe[20]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(20),
      I1 => \REGS_reg[6]\(20),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(20),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(20),
      O => \DO_tristate_oe[20]_i_13_n_0\
    );
\DO_tristate_oe[20]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(20),
      I1 => \REGS_reg[10]\(20),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(20),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(20),
      O => \DO_tristate_oe[20]_i_14_n_0\
    );
\DO_tristate_oe[20]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(20),
      I1 => \REGS_reg[14]\(20),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(20),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(20),
      O => \DO_tristate_oe[20]_i_15_n_0\
    );
\DO_tristate_oe[20]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(20),
      I1 => \REGS_reg[18]\(20),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(20),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(20),
      O => \DO_tristate_oe[20]_i_8_n_0\
    );
\DO_tristate_oe[20]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(20),
      I1 => \REGS_reg[22]\(20),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(20),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(20),
      O => \DO_tristate_oe[20]_i_9_n_0\
    );
\DO_tristate_oe[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(21),
      I1 => \DO_tristate_oe_reg[21]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[21]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[21]_i_1_n_0\
    );
\DO_tristate_oe[21]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(21),
      I1 => \REGS_reg[26]\(21),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(21),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(21),
      O => \DO_tristate_oe[21]_i_10_n_0\
    );
\DO_tristate_oe[21]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(21),
      I1 => \REGS_reg[30]\(21),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(21),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(21),
      O => \DO_tristate_oe[21]_i_11_n_0\
    );
\DO_tristate_oe[21]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(21),
      I1 => \REGS_reg[2]\(21),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(21),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(21),
      O => \DO_tristate_oe[21]_i_12_n_0\
    );
\DO_tristate_oe[21]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(21),
      I1 => \REGS_reg[6]\(21),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(21),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(21),
      O => \DO_tristate_oe[21]_i_13_n_0\
    );
\DO_tristate_oe[21]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(21),
      I1 => \REGS_reg[10]\(21),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(21),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(21),
      O => \DO_tristate_oe[21]_i_14_n_0\
    );
\DO_tristate_oe[21]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(21),
      I1 => \REGS_reg[14]\(21),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(21),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(21),
      O => \DO_tristate_oe[21]_i_15_n_0\
    );
\DO_tristate_oe[21]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(21),
      I1 => \REGS_reg[18]\(21),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(21),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(21),
      O => \DO_tristate_oe[21]_i_8_n_0\
    );
\DO_tristate_oe[21]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(21),
      I1 => \REGS_reg[22]\(21),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(21),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(21),
      O => \DO_tristate_oe[21]_i_9_n_0\
    );
\DO_tristate_oe[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(22),
      I1 => \DO_tristate_oe_reg[22]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[22]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[22]_i_1_n_0\
    );
\DO_tristate_oe[22]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(22),
      I1 => \REGS_reg[26]\(22),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(22),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(22),
      O => \DO_tristate_oe[22]_i_10_n_0\
    );
\DO_tristate_oe[22]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(22),
      I1 => \REGS_reg[30]\(22),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(22),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(22),
      O => \DO_tristate_oe[22]_i_11_n_0\
    );
\DO_tristate_oe[22]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(22),
      I1 => \REGS_reg[2]\(22),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(22),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(22),
      O => \DO_tristate_oe[22]_i_12_n_0\
    );
\DO_tristate_oe[22]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(22),
      I1 => \REGS_reg[6]\(22),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(22),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(22),
      O => \DO_tristate_oe[22]_i_13_n_0\
    );
\DO_tristate_oe[22]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(22),
      I1 => \REGS_reg[10]\(22),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(22),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(22),
      O => \DO_tristate_oe[22]_i_14_n_0\
    );
\DO_tristate_oe[22]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(22),
      I1 => \REGS_reg[14]\(22),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(22),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(22),
      O => \DO_tristate_oe[22]_i_15_n_0\
    );
\DO_tristate_oe[22]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(22),
      I1 => \REGS_reg[18]\(22),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(22),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(22),
      O => \DO_tristate_oe[22]_i_8_n_0\
    );
\DO_tristate_oe[22]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(22),
      I1 => \REGS_reg[22]\(22),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(22),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(22),
      O => \DO_tristate_oe[22]_i_9_n_0\
    );
\DO_tristate_oe[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(23),
      I1 => \DO_tristate_oe_reg[23]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[23]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[23]_i_1_n_0\
    );
\DO_tristate_oe[23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(23),
      I1 => \REGS_reg[26]\(23),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(23),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(23),
      O => \DO_tristate_oe[23]_i_10_n_0\
    );
\DO_tristate_oe[23]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(23),
      I1 => \REGS_reg[30]\(23),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(23),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(23),
      O => \DO_tristate_oe[23]_i_11_n_0\
    );
\DO_tristate_oe[23]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(23),
      I1 => \REGS_reg[2]\(23),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(23),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(23),
      O => \DO_tristate_oe[23]_i_12_n_0\
    );
\DO_tristate_oe[23]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(23),
      I1 => \REGS_reg[6]\(23),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(23),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(23),
      O => \DO_tristate_oe[23]_i_13_n_0\
    );
\DO_tristate_oe[23]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(23),
      I1 => \REGS_reg[10]\(23),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(23),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(23),
      O => \DO_tristate_oe[23]_i_14_n_0\
    );
\DO_tristate_oe[23]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(23),
      I1 => \REGS_reg[14]\(23),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(23),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(23),
      O => \DO_tristate_oe[23]_i_15_n_0\
    );
\DO_tristate_oe[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(23),
      I1 => \REGS_reg[18]\(23),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(23),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(23),
      O => \DO_tristate_oe[23]_i_8_n_0\
    );
\DO_tristate_oe[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(23),
      I1 => \REGS_reg[22]\(23),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(23),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(23),
      O => \DO_tristate_oe[23]_i_9_n_0\
    );
\DO_tristate_oe[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(24),
      I1 => \DO_tristate_oe_reg[24]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[24]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[24]_i_1_n_0\
    );
\DO_tristate_oe[24]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(24),
      I1 => \REGS_reg[26]\(24),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(24),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(24),
      O => \DO_tristate_oe[24]_i_10_n_0\
    );
\DO_tristate_oe[24]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(24),
      I1 => \REGS_reg[30]\(24),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(24),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(24),
      O => \DO_tristate_oe[24]_i_11_n_0\
    );
\DO_tristate_oe[24]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(24),
      I1 => \REGS_reg[2]\(24),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(24),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(24),
      O => \DO_tristate_oe[24]_i_12_n_0\
    );
\DO_tristate_oe[24]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(24),
      I1 => \REGS_reg[6]\(24),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(24),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(24),
      O => \DO_tristate_oe[24]_i_13_n_0\
    );
\DO_tristate_oe[24]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(24),
      I1 => \REGS_reg[10]\(24),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(24),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(24),
      O => \DO_tristate_oe[24]_i_14_n_0\
    );
\DO_tristate_oe[24]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(24),
      I1 => \REGS_reg[14]\(24),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(24),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(24),
      O => \DO_tristate_oe[24]_i_15_n_0\
    );
\DO_tristate_oe[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(24),
      I1 => \REGS_reg[18]\(24),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(24),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(24),
      O => \DO_tristate_oe[24]_i_8_n_0\
    );
\DO_tristate_oe[24]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(24),
      I1 => \REGS_reg[22]\(24),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(24),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(24),
      O => \DO_tristate_oe[24]_i_9_n_0\
    );
\DO_tristate_oe[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(25),
      I1 => \DO_tristate_oe_reg[25]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[25]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[25]_i_1_n_0\
    );
\DO_tristate_oe[25]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(25),
      I1 => \REGS_reg[26]\(25),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(25),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(25),
      O => \DO_tristate_oe[25]_i_10_n_0\
    );
\DO_tristate_oe[25]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(25),
      I1 => \REGS_reg[30]\(25),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(25),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(25),
      O => \DO_tristate_oe[25]_i_11_n_0\
    );
\DO_tristate_oe[25]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(25),
      I1 => \REGS_reg[2]\(25),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(25),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(25),
      O => \DO_tristate_oe[25]_i_12_n_0\
    );
\DO_tristate_oe[25]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(25),
      I1 => \REGS_reg[6]\(25),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(25),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(25),
      O => \DO_tristate_oe[25]_i_13_n_0\
    );
\DO_tristate_oe[25]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(25),
      I1 => \REGS_reg[10]\(25),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(25),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(25),
      O => \DO_tristate_oe[25]_i_14_n_0\
    );
\DO_tristate_oe[25]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(25),
      I1 => \REGS_reg[14]\(25),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(25),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(25),
      O => \DO_tristate_oe[25]_i_15_n_0\
    );
\DO_tristate_oe[25]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(25),
      I1 => \REGS_reg[18]\(25),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(25),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(25),
      O => \DO_tristate_oe[25]_i_8_n_0\
    );
\DO_tristate_oe[25]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(25),
      I1 => \REGS_reg[22]\(25),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(25),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(25),
      O => \DO_tristate_oe[25]_i_9_n_0\
    );
\DO_tristate_oe[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(26),
      I1 => \DO_tristate_oe_reg[26]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[26]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[26]_i_1_n_0\
    );
\DO_tristate_oe[26]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(26),
      I1 => \REGS_reg[26]\(26),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(26),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(26),
      O => \DO_tristate_oe[26]_i_10_n_0\
    );
\DO_tristate_oe[26]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(26),
      I1 => \REGS_reg[30]\(26),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(26),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(26),
      O => \DO_tristate_oe[26]_i_11_n_0\
    );
\DO_tristate_oe[26]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(26),
      I1 => \REGS_reg[2]\(26),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(26),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(26),
      O => \DO_tristate_oe[26]_i_12_n_0\
    );
\DO_tristate_oe[26]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(26),
      I1 => \REGS_reg[6]\(26),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(26),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(26),
      O => \DO_tristate_oe[26]_i_13_n_0\
    );
\DO_tristate_oe[26]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(26),
      I1 => \REGS_reg[10]\(26),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(26),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(26),
      O => \DO_tristate_oe[26]_i_14_n_0\
    );
\DO_tristate_oe[26]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(26),
      I1 => \REGS_reg[14]\(26),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(26),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(26),
      O => \DO_tristate_oe[26]_i_15_n_0\
    );
\DO_tristate_oe[26]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(26),
      I1 => \REGS_reg[18]\(26),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(26),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(26),
      O => \DO_tristate_oe[26]_i_8_n_0\
    );
\DO_tristate_oe[26]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(26),
      I1 => \REGS_reg[22]\(26),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(26),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(26),
      O => \DO_tristate_oe[26]_i_9_n_0\
    );
\DO_tristate_oe[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(27),
      I1 => \DO_tristate_oe_reg[27]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[27]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[27]_i_1_n_0\
    );
\DO_tristate_oe[27]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(27),
      I1 => \REGS_reg[26]\(27),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(27),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(27),
      O => \DO_tristate_oe[27]_i_10_n_0\
    );
\DO_tristate_oe[27]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(27),
      I1 => \REGS_reg[30]\(27),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(27),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(27),
      O => \DO_tristate_oe[27]_i_11_n_0\
    );
\DO_tristate_oe[27]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(27),
      I1 => \REGS_reg[2]\(27),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(27),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(27),
      O => \DO_tristate_oe[27]_i_12_n_0\
    );
\DO_tristate_oe[27]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(27),
      I1 => \REGS_reg[6]\(27),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(27),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(27),
      O => \DO_tristate_oe[27]_i_13_n_0\
    );
\DO_tristate_oe[27]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(27),
      I1 => \REGS_reg[10]\(27),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(27),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(27),
      O => \DO_tristate_oe[27]_i_14_n_0\
    );
\DO_tristate_oe[27]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(27),
      I1 => \REGS_reg[14]\(27),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(27),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(27),
      O => \DO_tristate_oe[27]_i_15_n_0\
    );
\DO_tristate_oe[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(27),
      I1 => \REGS_reg[18]\(27),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(27),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(27),
      O => \DO_tristate_oe[27]_i_8_n_0\
    );
\DO_tristate_oe[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(27),
      I1 => \REGS_reg[22]\(27),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(27),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(27),
      O => \DO_tristate_oe[27]_i_9_n_0\
    );
\DO_tristate_oe[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(28),
      I1 => \DO_tristate_oe_reg[28]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[28]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[28]_i_1_n_0\
    );
\DO_tristate_oe[28]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(28),
      I1 => \REGS_reg[26]\(28),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(28),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(28),
      O => \DO_tristate_oe[28]_i_10_n_0\
    );
\DO_tristate_oe[28]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(28),
      I1 => \REGS_reg[30]\(28),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(28),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(28),
      O => \DO_tristate_oe[28]_i_11_n_0\
    );
\DO_tristate_oe[28]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(28),
      I1 => \REGS_reg[2]\(28),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(28),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(28),
      O => \DO_tristate_oe[28]_i_12_n_0\
    );
\DO_tristate_oe[28]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(28),
      I1 => \REGS_reg[6]\(28),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(28),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(28),
      O => \DO_tristate_oe[28]_i_13_n_0\
    );
\DO_tristate_oe[28]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(28),
      I1 => \REGS_reg[10]\(28),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(28),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(28),
      O => \DO_tristate_oe[28]_i_14_n_0\
    );
\DO_tristate_oe[28]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(28),
      I1 => \REGS_reg[14]\(28),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(28),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(28),
      O => \DO_tristate_oe[28]_i_15_n_0\
    );
\DO_tristate_oe[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(28),
      I1 => \REGS_reg[18]\(28),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(28),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(28),
      O => \DO_tristate_oe[28]_i_8_n_0\
    );
\DO_tristate_oe[28]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(28),
      I1 => \REGS_reg[22]\(28),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(28),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(28),
      O => \DO_tristate_oe[28]_i_9_n_0\
    );
\DO_tristate_oe[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(29),
      I1 => \DO_tristate_oe_reg[29]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[29]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[29]_i_1_n_0\
    );
\DO_tristate_oe[29]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(29),
      I1 => \REGS_reg[26]\(29),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(29),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(29),
      O => \DO_tristate_oe[29]_i_10_n_0\
    );
\DO_tristate_oe[29]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(29),
      I1 => \REGS_reg[30]\(29),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(29),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(29),
      O => \DO_tristate_oe[29]_i_11_n_0\
    );
\DO_tristate_oe[29]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(29),
      I1 => \REGS_reg[2]\(29),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(29),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(29),
      O => \DO_tristate_oe[29]_i_12_n_0\
    );
\DO_tristate_oe[29]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(29),
      I1 => \REGS_reg[6]\(29),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(29),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(29),
      O => \DO_tristate_oe[29]_i_13_n_0\
    );
\DO_tristate_oe[29]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(29),
      I1 => \REGS_reg[10]\(29),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(29),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(29),
      O => \DO_tristate_oe[29]_i_14_n_0\
    );
\DO_tristate_oe[29]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(29),
      I1 => \REGS_reg[14]\(29),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(29),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(29),
      O => \DO_tristate_oe[29]_i_15_n_0\
    );
\DO_tristate_oe[29]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(29),
      I1 => \REGS_reg[18]\(29),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(29),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(29),
      O => \DO_tristate_oe[29]_i_8_n_0\
    );
\DO_tristate_oe[29]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(29),
      I1 => \REGS_reg[22]\(29),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(29),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(29),
      O => \DO_tristate_oe[29]_i_9_n_0\
    );
\DO_tristate_oe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(2),
      I1 => \DO_tristate_oe_reg[2]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[2]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[2]_i_1_n_0\
    );
\DO_tristate_oe[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(2),
      I1 => \REGS_reg[26]\(2),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(2),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(2),
      O => \DO_tristate_oe[2]_i_10_n_0\
    );
\DO_tristate_oe[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(2),
      I1 => \REGS_reg[30]\(2),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(2),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(2),
      O => \DO_tristate_oe[2]_i_11_n_0\
    );
\DO_tristate_oe[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(2),
      I1 => \REGS_reg[2]\(2),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(2),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(2),
      O => \DO_tristate_oe[2]_i_12_n_0\
    );
\DO_tristate_oe[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(2),
      I1 => \REGS_reg[6]\(2),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(2),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(2),
      O => \DO_tristate_oe[2]_i_13_n_0\
    );
\DO_tristate_oe[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(2),
      I1 => \REGS_reg[10]\(2),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(2),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(2),
      O => \DO_tristate_oe[2]_i_14_n_0\
    );
\DO_tristate_oe[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(2),
      I1 => \REGS_reg[14]\(2),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(2),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(2),
      O => \DO_tristate_oe[2]_i_15_n_0\
    );
\DO_tristate_oe[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(2),
      I1 => \REGS_reg[18]\(2),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(2),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(2),
      O => \DO_tristate_oe[2]_i_8_n_0\
    );
\DO_tristate_oe[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(2),
      I1 => \REGS_reg[22]\(2),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(2),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(2),
      O => \DO_tristate_oe[2]_i_9_n_0\
    );
\DO_tristate_oe[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(30),
      I1 => \DO_tristate_oe_reg[30]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[30]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[30]_i_1_n_0\
    );
\DO_tristate_oe[30]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(30),
      I1 => \REGS_reg[26]\(30),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(30),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(30),
      O => \DO_tristate_oe[30]_i_10_n_0\
    );
\DO_tristate_oe[30]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(30),
      I1 => \REGS_reg[30]\(30),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(30),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(30),
      O => \DO_tristate_oe[30]_i_11_n_0\
    );
\DO_tristate_oe[30]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(30),
      I1 => \REGS_reg[2]\(30),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(30),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(30),
      O => \DO_tristate_oe[30]_i_12_n_0\
    );
\DO_tristate_oe[30]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(30),
      I1 => \REGS_reg[6]\(30),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(30),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(30),
      O => \DO_tristate_oe[30]_i_13_n_0\
    );
\DO_tristate_oe[30]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(30),
      I1 => \REGS_reg[10]\(30),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(30),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(30),
      O => \DO_tristate_oe[30]_i_14_n_0\
    );
\DO_tristate_oe[30]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(30),
      I1 => \REGS_reg[14]\(30),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(30),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(30),
      O => \DO_tristate_oe[30]_i_15_n_0\
    );
\DO_tristate_oe[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(30),
      I1 => \REGS_reg[18]\(30),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(30),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(30),
      O => \DO_tristate_oe[30]_i_8_n_0\
    );
\DO_tristate_oe[30]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(30),
      I1 => \REGS_reg[22]\(30),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(30),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(30),
      O => \DO_tristate_oe[30]_i_9_n_0\
    );
\DO_tristate_oe[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(31),
      I1 => \DO_tristate_oe_reg[31]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[31]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[31]_i_1_n_0\
    );
\DO_tristate_oe[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(31),
      I1 => \REGS_reg[26]\(31),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(31),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(31),
      O => \DO_tristate_oe[31]_i_10_n_0\
    );
\DO_tristate_oe[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(31),
      I1 => \REGS_reg[30]\(31),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(31),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(31),
      O => \DO_tristate_oe[31]_i_11_n_0\
    );
\DO_tristate_oe[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(31),
      I1 => \REGS_reg[2]\(31),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(31),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(31),
      O => \DO_tristate_oe[31]_i_12_n_0\
    );
\DO_tristate_oe[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(31),
      I1 => \REGS_reg[6]\(31),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(31),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(31),
      O => \DO_tristate_oe[31]_i_13_n_0\
    );
\DO_tristate_oe[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(31),
      I1 => \REGS_reg[10]\(31),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(31),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(31),
      O => \DO_tristate_oe[31]_i_14_n_0\
    );
\DO_tristate_oe[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(31),
      I1 => \REGS_reg[14]\(31),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(31),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(31),
      O => \DO_tristate_oe[31]_i_15_n_0\
    );
\DO_tristate_oe[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(31),
      I1 => \REGS_reg[18]\(31),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(31),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(31),
      O => \DO_tristate_oe[31]_i_8_n_0\
    );
\DO_tristate_oe[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(31),
      I1 => \REGS_reg[22]\(31),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(31),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(31),
      O => \DO_tristate_oe[31]_i_9_n_0\
    );
\DO_tristate_oe[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(3),
      I1 => \DO_tristate_oe_reg[3]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[3]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[3]_i_1_n_0\
    );
\DO_tristate_oe[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(3),
      I1 => \REGS_reg[26]\(3),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(3),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(3),
      O => \DO_tristate_oe[3]_i_10_n_0\
    );
\DO_tristate_oe[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(3),
      I1 => \REGS_reg[30]\(3),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(3),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(3),
      O => \DO_tristate_oe[3]_i_11_n_0\
    );
\DO_tristate_oe[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(3),
      I1 => \REGS_reg[2]\(3),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(3),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(3),
      O => \DO_tristate_oe[3]_i_12_n_0\
    );
\DO_tristate_oe[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(3),
      I1 => \REGS_reg[6]\(3),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(3),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(3),
      O => \DO_tristate_oe[3]_i_13_n_0\
    );
\DO_tristate_oe[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(3),
      I1 => \REGS_reg[10]\(3),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(3),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(3),
      O => \DO_tristate_oe[3]_i_14_n_0\
    );
\DO_tristate_oe[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(3),
      I1 => \REGS_reg[14]\(3),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(3),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(3),
      O => \DO_tristate_oe[3]_i_15_n_0\
    );
\DO_tristate_oe[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(3),
      I1 => \REGS_reg[18]\(3),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(3),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(3),
      O => \DO_tristate_oe[3]_i_8_n_0\
    );
\DO_tristate_oe[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(3),
      I1 => \REGS_reg[22]\(3),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(3),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(3),
      O => \DO_tristate_oe[3]_i_9_n_0\
    );
\DO_tristate_oe[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(4),
      I1 => \DO_tristate_oe_reg[4]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[4]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[4]_i_1_n_0\
    );
\DO_tristate_oe[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(4),
      I1 => \REGS_reg[26]\(4),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(4),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(4),
      O => \DO_tristate_oe[4]_i_10_n_0\
    );
\DO_tristate_oe[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(4),
      I1 => \REGS_reg[30]\(4),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(4),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(4),
      O => \DO_tristate_oe[4]_i_11_n_0\
    );
\DO_tristate_oe[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(4),
      I1 => \REGS_reg[2]\(4),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(4),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(4),
      O => \DO_tristate_oe[4]_i_12_n_0\
    );
\DO_tristate_oe[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(4),
      I1 => \REGS_reg[6]\(4),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(4),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(4),
      O => \DO_tristate_oe[4]_i_13_n_0\
    );
\DO_tristate_oe[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(4),
      I1 => \REGS_reg[10]\(4),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(4),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(4),
      O => \DO_tristate_oe[4]_i_14_n_0\
    );
\DO_tristate_oe[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(4),
      I1 => \REGS_reg[14]\(4),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(4),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(4),
      O => \DO_tristate_oe[4]_i_15_n_0\
    );
\DO_tristate_oe[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(4),
      I1 => \REGS_reg[18]\(4),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(4),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(4),
      O => \DO_tristate_oe[4]_i_8_n_0\
    );
\DO_tristate_oe[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(4),
      I1 => \REGS_reg[22]\(4),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(4),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(4),
      O => \DO_tristate_oe[4]_i_9_n_0\
    );
\DO_tristate_oe[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(5),
      I1 => \DO_tristate_oe_reg[5]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[5]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[5]_i_1_n_0\
    );
\DO_tristate_oe[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(5),
      I1 => \REGS_reg[26]\(5),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(5),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(5),
      O => \DO_tristate_oe[5]_i_10_n_0\
    );
\DO_tristate_oe[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(5),
      I1 => \REGS_reg[30]\(5),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(5),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(5),
      O => \DO_tristate_oe[5]_i_11_n_0\
    );
\DO_tristate_oe[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(5),
      I1 => \REGS_reg[2]\(5),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(5),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(5),
      O => \DO_tristate_oe[5]_i_12_n_0\
    );
\DO_tristate_oe[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(5),
      I1 => \REGS_reg[6]\(5),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(5),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(5),
      O => \DO_tristate_oe[5]_i_13_n_0\
    );
\DO_tristate_oe[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(5),
      I1 => \REGS_reg[10]\(5),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(5),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(5),
      O => \DO_tristate_oe[5]_i_14_n_0\
    );
\DO_tristate_oe[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(5),
      I1 => \REGS_reg[14]\(5),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(5),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(5),
      O => \DO_tristate_oe[5]_i_15_n_0\
    );
\DO_tristate_oe[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(5),
      I1 => \REGS_reg[18]\(5),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(5),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(5),
      O => \DO_tristate_oe[5]_i_8_n_0\
    );
\DO_tristate_oe[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(5),
      I1 => \REGS_reg[22]\(5),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(5),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(5),
      O => \DO_tristate_oe[5]_i_9_n_0\
    );
\DO_tristate_oe[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(6),
      I1 => \DO_tristate_oe_reg[6]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[6]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[6]_i_1_n_0\
    );
\DO_tristate_oe[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(6),
      I1 => \REGS_reg[26]\(6),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(6),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(6),
      O => \DO_tristate_oe[6]_i_10_n_0\
    );
\DO_tristate_oe[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(6),
      I1 => \REGS_reg[30]\(6),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(6),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(6),
      O => \DO_tristate_oe[6]_i_11_n_0\
    );
\DO_tristate_oe[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(6),
      I1 => \REGS_reg[2]\(6),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(6),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(6),
      O => \DO_tristate_oe[6]_i_12_n_0\
    );
\DO_tristate_oe[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(6),
      I1 => \REGS_reg[6]\(6),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(6),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(6),
      O => \DO_tristate_oe[6]_i_13_n_0\
    );
\DO_tristate_oe[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(6),
      I1 => \REGS_reg[10]\(6),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(6),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(6),
      O => \DO_tristate_oe[6]_i_14_n_0\
    );
\DO_tristate_oe[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(6),
      I1 => \REGS_reg[14]\(6),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(6),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(6),
      O => \DO_tristate_oe[6]_i_15_n_0\
    );
\DO_tristate_oe[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(6),
      I1 => \REGS_reg[18]\(6),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(6),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(6),
      O => \DO_tristate_oe[6]_i_8_n_0\
    );
\DO_tristate_oe[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(6),
      I1 => \REGS_reg[22]\(6),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(6),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(6),
      O => \DO_tristate_oe[6]_i_9_n_0\
    );
\DO_tristate_oe[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(7),
      I1 => \DO_tristate_oe_reg[7]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[7]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[7]_i_1_n_0\
    );
\DO_tristate_oe[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(7),
      I1 => \REGS_reg[26]\(7),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(7),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(7),
      O => \DO_tristate_oe[7]_i_10_n_0\
    );
\DO_tristate_oe[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(7),
      I1 => \REGS_reg[30]\(7),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(7),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(7),
      O => \DO_tristate_oe[7]_i_11_n_0\
    );
\DO_tristate_oe[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(7),
      I1 => \REGS_reg[2]\(7),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(7),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(7),
      O => \DO_tristate_oe[7]_i_12_n_0\
    );
\DO_tristate_oe[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(7),
      I1 => \REGS_reg[6]\(7),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(7),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(7),
      O => \DO_tristate_oe[7]_i_13_n_0\
    );
\DO_tristate_oe[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(7),
      I1 => \REGS_reg[10]\(7),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(7),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(7),
      O => \DO_tristate_oe[7]_i_14_n_0\
    );
\DO_tristate_oe[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(7),
      I1 => \REGS_reg[14]\(7),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(7),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(7),
      O => \DO_tristate_oe[7]_i_15_n_0\
    );
\DO_tristate_oe[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(7),
      I1 => \REGS_reg[18]\(7),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(7),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(7),
      O => \DO_tristate_oe[7]_i_8_n_0\
    );
\DO_tristate_oe[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(7),
      I1 => \REGS_reg[22]\(7),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(7),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(7),
      O => \DO_tristate_oe[7]_i_9_n_0\
    );
\DO_tristate_oe[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(8),
      I1 => \DO_tristate_oe_reg[8]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[8]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[8]_i_1_n_0\
    );
\DO_tristate_oe[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(8),
      I1 => \REGS_reg[26]\(8),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(8),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(8),
      O => \DO_tristate_oe[8]_i_10_n_0\
    );
\DO_tristate_oe[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(8),
      I1 => \REGS_reg[30]\(8),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(8),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(8),
      O => \DO_tristate_oe[8]_i_11_n_0\
    );
\DO_tristate_oe[8]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(8),
      I1 => \REGS_reg[2]\(8),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(8),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(8),
      O => \DO_tristate_oe[8]_i_12_n_0\
    );
\DO_tristate_oe[8]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(8),
      I1 => \REGS_reg[6]\(8),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(8),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(8),
      O => \DO_tristate_oe[8]_i_13_n_0\
    );
\DO_tristate_oe[8]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(8),
      I1 => \REGS_reg[10]\(8),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(8),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(8),
      O => \DO_tristate_oe[8]_i_14_n_0\
    );
\DO_tristate_oe[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(8),
      I1 => \REGS_reg[14]\(8),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(8),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(8),
      O => \DO_tristate_oe[8]_i_15_n_0\
    );
\DO_tristate_oe[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(8),
      I1 => \REGS_reg[18]\(8),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(8),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(8),
      O => \DO_tristate_oe[8]_i_8_n_0\
    );
\DO_tristate_oe[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(8),
      I1 => \REGS_reg[22]\(8),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(8),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(8),
      O => \DO_tristate_oe[8]_i_9_n_0\
    );
\DO_tristate_oe[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => DI_IBUF(9),
      I1 => \DO_tristate_oe_reg[9]_i_2_n_0\,
      I2 => ADR_IBUF(4),
      I3 => \DO_tristate_oe_reg[9]_i_3_n_0\,
      I4 => WEN_IBUF,
      O => \DO_tristate_oe[9]_i_1_n_0\
    );
\DO_tristate_oe[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[27]\(9),
      I1 => \REGS_reg[26]\(9),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[25]\(9),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[24]\(9),
      O => \DO_tristate_oe[9]_i_10_n_0\
    );
\DO_tristate_oe[9]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[31]\(9),
      I1 => \REGS_reg[30]\(9),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[29]\(9),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[28]\(9),
      O => \DO_tristate_oe[9]_i_11_n_0\
    );
\DO_tristate_oe[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[3]\(9),
      I1 => \REGS_reg[2]\(9),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[1]\(9),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[0]\(9),
      O => \DO_tristate_oe[9]_i_12_n_0\
    );
\DO_tristate_oe[9]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[7]\(9),
      I1 => \REGS_reg[6]\(9),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[5]\(9),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[4]\(9),
      O => \DO_tristate_oe[9]_i_13_n_0\
    );
\DO_tristate_oe[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[11]\(9),
      I1 => \REGS_reg[10]\(9),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[9]\(9),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[8]\(9),
      O => \DO_tristate_oe[9]_i_14_n_0\
    );
\DO_tristate_oe[9]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[15]\(9),
      I1 => \REGS_reg[14]\(9),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[13]\(9),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[12]\(9),
      O => \DO_tristate_oe[9]_i_15_n_0\
    );
\DO_tristate_oe[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[19]\(9),
      I1 => \REGS_reg[18]\(9),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[17]\(9),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[16]\(9),
      O => \DO_tristate_oe[9]_i_8_n_0\
    );
\DO_tristate_oe[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \REGS_reg[23]\(9),
      I1 => \REGS_reg[22]\(9),
      I2 => ADR_IBUF(1),
      I3 => \REGS_reg[21]\(9),
      I4 => ADR_IBUF(0),
      I5 => \REGS_reg[20]\(9),
      O => \DO_tristate_oe[9]_i_9_n_0\
    );
\DO_tristate_oe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[0]_i_1_n_0\,
      Q => DO_OBUF(0),
      R => '0'
    );
\DO_tristate_oe_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[0]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[0]_i_5_n_0\,
      O => \DO_tristate_oe_reg[0]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[0]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[0]_i_7_n_0\,
      O => \DO_tristate_oe_reg[0]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[0]_i_8_n_0\,
      I1 => \DO_tristate_oe[0]_i_9_n_0\,
      O => \DO_tristate_oe_reg[0]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[0]_i_10_n_0\,
      I1 => \DO_tristate_oe[0]_i_11_n_0\,
      O => \DO_tristate_oe_reg[0]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[0]_i_12_n_0\,
      I1 => \DO_tristate_oe[0]_i_13_n_0\,
      O => \DO_tristate_oe_reg[0]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[0]_i_14_n_0\,
      I1 => \DO_tristate_oe[0]_i_15_n_0\,
      O => \DO_tristate_oe_reg[0]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[10]_i_1_n_0\,
      Q => DO_OBUF(10),
      R => '0'
    );
\DO_tristate_oe_reg[10]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[10]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[10]_i_5_n_0\,
      O => \DO_tristate_oe_reg[10]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[10]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[10]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[10]_i_7_n_0\,
      O => \DO_tristate_oe_reg[10]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[10]_i_8_n_0\,
      I1 => \DO_tristate_oe[10]_i_9_n_0\,
      O => \DO_tristate_oe_reg[10]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[10]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[10]_i_10_n_0\,
      I1 => \DO_tristate_oe[10]_i_11_n_0\,
      O => \DO_tristate_oe_reg[10]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[10]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[10]_i_12_n_0\,
      I1 => \DO_tristate_oe[10]_i_13_n_0\,
      O => \DO_tristate_oe_reg[10]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[10]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[10]_i_14_n_0\,
      I1 => \DO_tristate_oe[10]_i_15_n_0\,
      O => \DO_tristate_oe_reg[10]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[11]_i_1_n_0\,
      Q => DO_OBUF(11),
      R => '0'
    );
\DO_tristate_oe_reg[11]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[11]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[11]_i_5_n_0\,
      O => \DO_tristate_oe_reg[11]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[11]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[11]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[11]_i_7_n_0\,
      O => \DO_tristate_oe_reg[11]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[11]_i_8_n_0\,
      I1 => \DO_tristate_oe[11]_i_9_n_0\,
      O => \DO_tristate_oe_reg[11]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[11]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[11]_i_10_n_0\,
      I1 => \DO_tristate_oe[11]_i_11_n_0\,
      O => \DO_tristate_oe_reg[11]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[11]_i_12_n_0\,
      I1 => \DO_tristate_oe[11]_i_13_n_0\,
      O => \DO_tristate_oe_reg[11]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[11]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[11]_i_14_n_0\,
      I1 => \DO_tristate_oe[11]_i_15_n_0\,
      O => \DO_tristate_oe_reg[11]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[12]_i_1_n_0\,
      Q => DO_OBUF(12),
      R => '0'
    );
\DO_tristate_oe_reg[12]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[12]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[12]_i_5_n_0\,
      O => \DO_tristate_oe_reg[12]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[12]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[12]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[12]_i_7_n_0\,
      O => \DO_tristate_oe_reg[12]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[12]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[12]_i_8_n_0\,
      I1 => \DO_tristate_oe[12]_i_9_n_0\,
      O => \DO_tristate_oe_reg[12]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[12]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[12]_i_10_n_0\,
      I1 => \DO_tristate_oe[12]_i_11_n_0\,
      O => \DO_tristate_oe_reg[12]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[12]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[12]_i_12_n_0\,
      I1 => \DO_tristate_oe[12]_i_13_n_0\,
      O => \DO_tristate_oe_reg[12]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[12]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[12]_i_14_n_0\,
      I1 => \DO_tristate_oe[12]_i_15_n_0\,
      O => \DO_tristate_oe_reg[12]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[13]_i_1_n_0\,
      Q => DO_OBUF(13),
      R => '0'
    );
\DO_tristate_oe_reg[13]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[13]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[13]_i_5_n_0\,
      O => \DO_tristate_oe_reg[13]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[13]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[13]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[13]_i_7_n_0\,
      O => \DO_tristate_oe_reg[13]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[13]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[13]_i_8_n_0\,
      I1 => \DO_tristate_oe[13]_i_9_n_0\,
      O => \DO_tristate_oe_reg[13]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[13]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[13]_i_10_n_0\,
      I1 => \DO_tristate_oe[13]_i_11_n_0\,
      O => \DO_tristate_oe_reg[13]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[13]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[13]_i_12_n_0\,
      I1 => \DO_tristate_oe[13]_i_13_n_0\,
      O => \DO_tristate_oe_reg[13]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[13]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[13]_i_14_n_0\,
      I1 => \DO_tristate_oe[13]_i_15_n_0\,
      O => \DO_tristate_oe_reg[13]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[14]_i_1_n_0\,
      Q => DO_OBUF(14),
      R => '0'
    );
\DO_tristate_oe_reg[14]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[14]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[14]_i_5_n_0\,
      O => \DO_tristate_oe_reg[14]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[14]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[14]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[14]_i_7_n_0\,
      O => \DO_tristate_oe_reg[14]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[14]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[14]_i_8_n_0\,
      I1 => \DO_tristate_oe[14]_i_9_n_0\,
      O => \DO_tristate_oe_reg[14]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[14]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[14]_i_10_n_0\,
      I1 => \DO_tristate_oe[14]_i_11_n_0\,
      O => \DO_tristate_oe_reg[14]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[14]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[14]_i_12_n_0\,
      I1 => \DO_tristate_oe[14]_i_13_n_0\,
      O => \DO_tristate_oe_reg[14]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[14]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[14]_i_14_n_0\,
      I1 => \DO_tristate_oe[14]_i_15_n_0\,
      O => \DO_tristate_oe_reg[14]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[15]_i_1_n_0\,
      Q => DO_OBUF(15),
      R => '0'
    );
\DO_tristate_oe_reg[15]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[15]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[15]_i_5_n_0\,
      O => \DO_tristate_oe_reg[15]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[15]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[15]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[15]_i_7_n_0\,
      O => \DO_tristate_oe_reg[15]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[15]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[15]_i_8_n_0\,
      I1 => \DO_tristate_oe[15]_i_9_n_0\,
      O => \DO_tristate_oe_reg[15]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[15]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[15]_i_10_n_0\,
      I1 => \DO_tristate_oe[15]_i_11_n_0\,
      O => \DO_tristate_oe_reg[15]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[15]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[15]_i_12_n_0\,
      I1 => \DO_tristate_oe[15]_i_13_n_0\,
      O => \DO_tristate_oe_reg[15]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[15]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[15]_i_14_n_0\,
      I1 => \DO_tristate_oe[15]_i_15_n_0\,
      O => \DO_tristate_oe_reg[15]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[16]_i_1_n_0\,
      Q => DO_OBUF(16),
      R => '0'
    );
\DO_tristate_oe_reg[16]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[16]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[16]_i_5_n_0\,
      O => \DO_tristate_oe_reg[16]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[16]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[16]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[16]_i_7_n_0\,
      O => \DO_tristate_oe_reg[16]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[16]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[16]_i_8_n_0\,
      I1 => \DO_tristate_oe[16]_i_9_n_0\,
      O => \DO_tristate_oe_reg[16]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[16]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[16]_i_10_n_0\,
      I1 => \DO_tristate_oe[16]_i_11_n_0\,
      O => \DO_tristate_oe_reg[16]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[16]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[16]_i_12_n_0\,
      I1 => \DO_tristate_oe[16]_i_13_n_0\,
      O => \DO_tristate_oe_reg[16]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[16]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[16]_i_14_n_0\,
      I1 => \DO_tristate_oe[16]_i_15_n_0\,
      O => \DO_tristate_oe_reg[16]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[17]_i_1_n_0\,
      Q => DO_OBUF(17),
      R => '0'
    );
\DO_tristate_oe_reg[17]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[17]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[17]_i_5_n_0\,
      O => \DO_tristate_oe_reg[17]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[17]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[17]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[17]_i_7_n_0\,
      O => \DO_tristate_oe_reg[17]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[17]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[17]_i_8_n_0\,
      I1 => \DO_tristate_oe[17]_i_9_n_0\,
      O => \DO_tristate_oe_reg[17]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[17]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[17]_i_10_n_0\,
      I1 => \DO_tristate_oe[17]_i_11_n_0\,
      O => \DO_tristate_oe_reg[17]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[17]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[17]_i_12_n_0\,
      I1 => \DO_tristate_oe[17]_i_13_n_0\,
      O => \DO_tristate_oe_reg[17]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[17]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[17]_i_14_n_0\,
      I1 => \DO_tristate_oe[17]_i_15_n_0\,
      O => \DO_tristate_oe_reg[17]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[18]_i_1_n_0\,
      Q => DO_OBUF(18),
      R => '0'
    );
\DO_tristate_oe_reg[18]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[18]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[18]_i_5_n_0\,
      O => \DO_tristate_oe_reg[18]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[18]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[18]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[18]_i_7_n_0\,
      O => \DO_tristate_oe_reg[18]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[18]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[18]_i_8_n_0\,
      I1 => \DO_tristate_oe[18]_i_9_n_0\,
      O => \DO_tristate_oe_reg[18]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[18]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[18]_i_10_n_0\,
      I1 => \DO_tristate_oe[18]_i_11_n_0\,
      O => \DO_tristate_oe_reg[18]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[18]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[18]_i_12_n_0\,
      I1 => \DO_tristate_oe[18]_i_13_n_0\,
      O => \DO_tristate_oe_reg[18]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[18]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[18]_i_14_n_0\,
      I1 => \DO_tristate_oe[18]_i_15_n_0\,
      O => \DO_tristate_oe_reg[18]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[19]_i_1_n_0\,
      Q => DO_OBUF(19),
      R => '0'
    );
\DO_tristate_oe_reg[19]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[19]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[19]_i_5_n_0\,
      O => \DO_tristate_oe_reg[19]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[19]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[19]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[19]_i_7_n_0\,
      O => \DO_tristate_oe_reg[19]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[19]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[19]_i_8_n_0\,
      I1 => \DO_tristate_oe[19]_i_9_n_0\,
      O => \DO_tristate_oe_reg[19]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[19]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[19]_i_10_n_0\,
      I1 => \DO_tristate_oe[19]_i_11_n_0\,
      O => \DO_tristate_oe_reg[19]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[19]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[19]_i_12_n_0\,
      I1 => \DO_tristate_oe[19]_i_13_n_0\,
      O => \DO_tristate_oe_reg[19]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[19]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[19]_i_14_n_0\,
      I1 => \DO_tristate_oe[19]_i_15_n_0\,
      O => \DO_tristate_oe_reg[19]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[1]_i_1_n_0\,
      Q => DO_OBUF(1),
      R => '0'
    );
\DO_tristate_oe_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[1]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[1]_i_5_n_0\,
      O => \DO_tristate_oe_reg[1]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[1]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[1]_i_7_n_0\,
      O => \DO_tristate_oe_reg[1]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[1]_i_8_n_0\,
      I1 => \DO_tristate_oe[1]_i_9_n_0\,
      O => \DO_tristate_oe_reg[1]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[1]_i_10_n_0\,
      I1 => \DO_tristate_oe[1]_i_11_n_0\,
      O => \DO_tristate_oe_reg[1]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[1]_i_12_n_0\,
      I1 => \DO_tristate_oe[1]_i_13_n_0\,
      O => \DO_tristate_oe_reg[1]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[1]_i_14_n_0\,
      I1 => \DO_tristate_oe[1]_i_15_n_0\,
      O => \DO_tristate_oe_reg[1]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[20]_i_1_n_0\,
      Q => DO_OBUF(20),
      R => '0'
    );
\DO_tristate_oe_reg[20]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[20]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[20]_i_5_n_0\,
      O => \DO_tristate_oe_reg[20]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[20]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[20]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[20]_i_7_n_0\,
      O => \DO_tristate_oe_reg[20]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[20]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[20]_i_8_n_0\,
      I1 => \DO_tristate_oe[20]_i_9_n_0\,
      O => \DO_tristate_oe_reg[20]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[20]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[20]_i_10_n_0\,
      I1 => \DO_tristate_oe[20]_i_11_n_0\,
      O => \DO_tristate_oe_reg[20]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[20]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[20]_i_12_n_0\,
      I1 => \DO_tristate_oe[20]_i_13_n_0\,
      O => \DO_tristate_oe_reg[20]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[20]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[20]_i_14_n_0\,
      I1 => \DO_tristate_oe[20]_i_15_n_0\,
      O => \DO_tristate_oe_reg[20]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[21]_i_1_n_0\,
      Q => DO_OBUF(21),
      R => '0'
    );
\DO_tristate_oe_reg[21]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[21]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[21]_i_5_n_0\,
      O => \DO_tristate_oe_reg[21]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[21]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[21]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[21]_i_7_n_0\,
      O => \DO_tristate_oe_reg[21]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[21]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[21]_i_8_n_0\,
      I1 => \DO_tristate_oe[21]_i_9_n_0\,
      O => \DO_tristate_oe_reg[21]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[21]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[21]_i_10_n_0\,
      I1 => \DO_tristate_oe[21]_i_11_n_0\,
      O => \DO_tristate_oe_reg[21]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[21]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[21]_i_12_n_0\,
      I1 => \DO_tristate_oe[21]_i_13_n_0\,
      O => \DO_tristate_oe_reg[21]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[21]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[21]_i_14_n_0\,
      I1 => \DO_tristate_oe[21]_i_15_n_0\,
      O => \DO_tristate_oe_reg[21]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[22]_i_1_n_0\,
      Q => DO_OBUF(22),
      R => '0'
    );
\DO_tristate_oe_reg[22]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[22]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[22]_i_5_n_0\,
      O => \DO_tristate_oe_reg[22]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[22]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[22]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[22]_i_7_n_0\,
      O => \DO_tristate_oe_reg[22]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[22]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[22]_i_8_n_0\,
      I1 => \DO_tristate_oe[22]_i_9_n_0\,
      O => \DO_tristate_oe_reg[22]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[22]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[22]_i_10_n_0\,
      I1 => \DO_tristate_oe[22]_i_11_n_0\,
      O => \DO_tristate_oe_reg[22]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[22]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[22]_i_12_n_0\,
      I1 => \DO_tristate_oe[22]_i_13_n_0\,
      O => \DO_tristate_oe_reg[22]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[22]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[22]_i_14_n_0\,
      I1 => \DO_tristate_oe[22]_i_15_n_0\,
      O => \DO_tristate_oe_reg[22]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[23]_i_1_n_0\,
      Q => DO_OBUF(23),
      R => '0'
    );
\DO_tristate_oe_reg[23]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[23]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[23]_i_5_n_0\,
      O => \DO_tristate_oe_reg[23]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[23]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[23]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[23]_i_7_n_0\,
      O => \DO_tristate_oe_reg[23]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[23]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[23]_i_8_n_0\,
      I1 => \DO_tristate_oe[23]_i_9_n_0\,
      O => \DO_tristate_oe_reg[23]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[23]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[23]_i_10_n_0\,
      I1 => \DO_tristate_oe[23]_i_11_n_0\,
      O => \DO_tristate_oe_reg[23]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[23]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[23]_i_12_n_0\,
      I1 => \DO_tristate_oe[23]_i_13_n_0\,
      O => \DO_tristate_oe_reg[23]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[23]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[23]_i_14_n_0\,
      I1 => \DO_tristate_oe[23]_i_15_n_0\,
      O => \DO_tristate_oe_reg[23]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[24]_i_1_n_0\,
      Q => DO_OBUF(24),
      R => '0'
    );
\DO_tristate_oe_reg[24]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[24]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[24]_i_5_n_0\,
      O => \DO_tristate_oe_reg[24]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[24]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[24]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[24]_i_7_n_0\,
      O => \DO_tristate_oe_reg[24]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[24]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[24]_i_8_n_0\,
      I1 => \DO_tristate_oe[24]_i_9_n_0\,
      O => \DO_tristate_oe_reg[24]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[24]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[24]_i_10_n_0\,
      I1 => \DO_tristate_oe[24]_i_11_n_0\,
      O => \DO_tristate_oe_reg[24]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[24]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[24]_i_12_n_0\,
      I1 => \DO_tristate_oe[24]_i_13_n_0\,
      O => \DO_tristate_oe_reg[24]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[24]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[24]_i_14_n_0\,
      I1 => \DO_tristate_oe[24]_i_15_n_0\,
      O => \DO_tristate_oe_reg[24]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[25]_i_1_n_0\,
      Q => DO_OBUF(25),
      R => '0'
    );
\DO_tristate_oe_reg[25]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[25]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[25]_i_5_n_0\,
      O => \DO_tristate_oe_reg[25]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[25]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[25]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[25]_i_7_n_0\,
      O => \DO_tristate_oe_reg[25]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[25]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[25]_i_8_n_0\,
      I1 => \DO_tristate_oe[25]_i_9_n_0\,
      O => \DO_tristate_oe_reg[25]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[25]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[25]_i_10_n_0\,
      I1 => \DO_tristate_oe[25]_i_11_n_0\,
      O => \DO_tristate_oe_reg[25]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[25]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[25]_i_12_n_0\,
      I1 => \DO_tristate_oe[25]_i_13_n_0\,
      O => \DO_tristate_oe_reg[25]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[25]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[25]_i_14_n_0\,
      I1 => \DO_tristate_oe[25]_i_15_n_0\,
      O => \DO_tristate_oe_reg[25]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[26]_i_1_n_0\,
      Q => DO_OBUF(26),
      R => '0'
    );
\DO_tristate_oe_reg[26]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[26]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[26]_i_5_n_0\,
      O => \DO_tristate_oe_reg[26]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[26]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[26]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[26]_i_7_n_0\,
      O => \DO_tristate_oe_reg[26]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[26]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[26]_i_8_n_0\,
      I1 => \DO_tristate_oe[26]_i_9_n_0\,
      O => \DO_tristate_oe_reg[26]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[26]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[26]_i_10_n_0\,
      I1 => \DO_tristate_oe[26]_i_11_n_0\,
      O => \DO_tristate_oe_reg[26]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[26]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[26]_i_12_n_0\,
      I1 => \DO_tristate_oe[26]_i_13_n_0\,
      O => \DO_tristate_oe_reg[26]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[26]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[26]_i_14_n_0\,
      I1 => \DO_tristate_oe[26]_i_15_n_0\,
      O => \DO_tristate_oe_reg[26]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[27]_i_1_n_0\,
      Q => DO_OBUF(27),
      R => '0'
    );
\DO_tristate_oe_reg[27]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[27]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[27]_i_5_n_0\,
      O => \DO_tristate_oe_reg[27]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[27]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[27]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[27]_i_7_n_0\,
      O => \DO_tristate_oe_reg[27]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[27]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[27]_i_8_n_0\,
      I1 => \DO_tristate_oe[27]_i_9_n_0\,
      O => \DO_tristate_oe_reg[27]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[27]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[27]_i_10_n_0\,
      I1 => \DO_tristate_oe[27]_i_11_n_0\,
      O => \DO_tristate_oe_reg[27]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[27]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[27]_i_12_n_0\,
      I1 => \DO_tristate_oe[27]_i_13_n_0\,
      O => \DO_tristate_oe_reg[27]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[27]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[27]_i_14_n_0\,
      I1 => \DO_tristate_oe[27]_i_15_n_0\,
      O => \DO_tristate_oe_reg[27]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[28]_i_1_n_0\,
      Q => DO_OBUF(28),
      R => '0'
    );
\DO_tristate_oe_reg[28]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[28]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[28]_i_5_n_0\,
      O => \DO_tristate_oe_reg[28]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[28]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[28]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[28]_i_7_n_0\,
      O => \DO_tristate_oe_reg[28]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[28]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[28]_i_8_n_0\,
      I1 => \DO_tristate_oe[28]_i_9_n_0\,
      O => \DO_tristate_oe_reg[28]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[28]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[28]_i_10_n_0\,
      I1 => \DO_tristate_oe[28]_i_11_n_0\,
      O => \DO_tristate_oe_reg[28]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[28]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[28]_i_12_n_0\,
      I1 => \DO_tristate_oe[28]_i_13_n_0\,
      O => \DO_tristate_oe_reg[28]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[28]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[28]_i_14_n_0\,
      I1 => \DO_tristate_oe[28]_i_15_n_0\,
      O => \DO_tristate_oe_reg[28]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[29]_i_1_n_0\,
      Q => DO_OBUF(29),
      R => '0'
    );
\DO_tristate_oe_reg[29]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[29]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[29]_i_5_n_0\,
      O => \DO_tristate_oe_reg[29]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[29]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[29]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[29]_i_7_n_0\,
      O => \DO_tristate_oe_reg[29]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[29]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[29]_i_8_n_0\,
      I1 => \DO_tristate_oe[29]_i_9_n_0\,
      O => \DO_tristate_oe_reg[29]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[29]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[29]_i_10_n_0\,
      I1 => \DO_tristate_oe[29]_i_11_n_0\,
      O => \DO_tristate_oe_reg[29]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[29]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[29]_i_12_n_0\,
      I1 => \DO_tristate_oe[29]_i_13_n_0\,
      O => \DO_tristate_oe_reg[29]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[29]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[29]_i_14_n_0\,
      I1 => \DO_tristate_oe[29]_i_15_n_0\,
      O => \DO_tristate_oe_reg[29]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[2]_i_1_n_0\,
      Q => DO_OBUF(2),
      R => '0'
    );
\DO_tristate_oe_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[2]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[2]_i_5_n_0\,
      O => \DO_tristate_oe_reg[2]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[2]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[2]_i_7_n_0\,
      O => \DO_tristate_oe_reg[2]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[2]_i_8_n_0\,
      I1 => \DO_tristate_oe[2]_i_9_n_0\,
      O => \DO_tristate_oe_reg[2]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[2]_i_10_n_0\,
      I1 => \DO_tristate_oe[2]_i_11_n_0\,
      O => \DO_tristate_oe_reg[2]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[2]_i_12_n_0\,
      I1 => \DO_tristate_oe[2]_i_13_n_0\,
      O => \DO_tristate_oe_reg[2]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[2]_i_14_n_0\,
      I1 => \DO_tristate_oe[2]_i_15_n_0\,
      O => \DO_tristate_oe_reg[2]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[30]_i_1_n_0\,
      Q => DO_OBUF(30),
      R => '0'
    );
\DO_tristate_oe_reg[30]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[30]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[30]_i_5_n_0\,
      O => \DO_tristate_oe_reg[30]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[30]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[30]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[30]_i_7_n_0\,
      O => \DO_tristate_oe_reg[30]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[30]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[30]_i_8_n_0\,
      I1 => \DO_tristate_oe[30]_i_9_n_0\,
      O => \DO_tristate_oe_reg[30]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[30]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[30]_i_10_n_0\,
      I1 => \DO_tristate_oe[30]_i_11_n_0\,
      O => \DO_tristate_oe_reg[30]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[30]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[30]_i_12_n_0\,
      I1 => \DO_tristate_oe[30]_i_13_n_0\,
      O => \DO_tristate_oe_reg[30]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[30]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[30]_i_14_n_0\,
      I1 => \DO_tristate_oe[30]_i_15_n_0\,
      O => \DO_tristate_oe_reg[30]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[31]_i_1_n_0\,
      Q => DO_OBUF(31),
      R => '0'
    );
\DO_tristate_oe_reg[31]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[31]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[31]_i_5_n_0\,
      O => \DO_tristate_oe_reg[31]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[31]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[31]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[31]_i_7_n_0\,
      O => \DO_tristate_oe_reg[31]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[31]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[31]_i_8_n_0\,
      I1 => \DO_tristate_oe[31]_i_9_n_0\,
      O => \DO_tristate_oe_reg[31]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[31]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[31]_i_10_n_0\,
      I1 => \DO_tristate_oe[31]_i_11_n_0\,
      O => \DO_tristate_oe_reg[31]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[31]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[31]_i_12_n_0\,
      I1 => \DO_tristate_oe[31]_i_13_n_0\,
      O => \DO_tristate_oe_reg[31]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[31]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[31]_i_14_n_0\,
      I1 => \DO_tristate_oe[31]_i_15_n_0\,
      O => \DO_tristate_oe_reg[31]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[3]_i_1_n_0\,
      Q => DO_OBUF(3),
      R => '0'
    );
\DO_tristate_oe_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[3]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[3]_i_5_n_0\,
      O => \DO_tristate_oe_reg[3]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[3]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[3]_i_7_n_0\,
      O => \DO_tristate_oe_reg[3]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[3]_i_8_n_0\,
      I1 => \DO_tristate_oe[3]_i_9_n_0\,
      O => \DO_tristate_oe_reg[3]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[3]_i_10_n_0\,
      I1 => \DO_tristate_oe[3]_i_11_n_0\,
      O => \DO_tristate_oe_reg[3]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[3]_i_12_n_0\,
      I1 => \DO_tristate_oe[3]_i_13_n_0\,
      O => \DO_tristate_oe_reg[3]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[3]_i_14_n_0\,
      I1 => \DO_tristate_oe[3]_i_15_n_0\,
      O => \DO_tristate_oe_reg[3]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[4]_i_1_n_0\,
      Q => DO_OBUF(4),
      R => '0'
    );
\DO_tristate_oe_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[4]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[4]_i_5_n_0\,
      O => \DO_tristate_oe_reg[4]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[4]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[4]_i_7_n_0\,
      O => \DO_tristate_oe_reg[4]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[4]_i_8_n_0\,
      I1 => \DO_tristate_oe[4]_i_9_n_0\,
      O => \DO_tristate_oe_reg[4]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[4]_i_10_n_0\,
      I1 => \DO_tristate_oe[4]_i_11_n_0\,
      O => \DO_tristate_oe_reg[4]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[4]_i_12_n_0\,
      I1 => \DO_tristate_oe[4]_i_13_n_0\,
      O => \DO_tristate_oe_reg[4]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[4]_i_14_n_0\,
      I1 => \DO_tristate_oe[4]_i_15_n_0\,
      O => \DO_tristate_oe_reg[4]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[5]_i_1_n_0\,
      Q => DO_OBUF(5),
      R => '0'
    );
\DO_tristate_oe_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[5]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[5]_i_5_n_0\,
      O => \DO_tristate_oe_reg[5]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[5]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[5]_i_7_n_0\,
      O => \DO_tristate_oe_reg[5]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[5]_i_8_n_0\,
      I1 => \DO_tristate_oe[5]_i_9_n_0\,
      O => \DO_tristate_oe_reg[5]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[5]_i_10_n_0\,
      I1 => \DO_tristate_oe[5]_i_11_n_0\,
      O => \DO_tristate_oe_reg[5]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[5]_i_12_n_0\,
      I1 => \DO_tristate_oe[5]_i_13_n_0\,
      O => \DO_tristate_oe_reg[5]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[5]_i_14_n_0\,
      I1 => \DO_tristate_oe[5]_i_15_n_0\,
      O => \DO_tristate_oe_reg[5]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[6]_i_1_n_0\,
      Q => DO_OBUF(6),
      R => '0'
    );
\DO_tristate_oe_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[6]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[6]_i_5_n_0\,
      O => \DO_tristate_oe_reg[6]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[6]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[6]_i_7_n_0\,
      O => \DO_tristate_oe_reg[6]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[6]_i_8_n_0\,
      I1 => \DO_tristate_oe[6]_i_9_n_0\,
      O => \DO_tristate_oe_reg[6]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[6]_i_10_n_0\,
      I1 => \DO_tristate_oe[6]_i_11_n_0\,
      O => \DO_tristate_oe_reg[6]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[6]_i_12_n_0\,
      I1 => \DO_tristate_oe[6]_i_13_n_0\,
      O => \DO_tristate_oe_reg[6]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[6]_i_14_n_0\,
      I1 => \DO_tristate_oe[6]_i_15_n_0\,
      O => \DO_tristate_oe_reg[6]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[7]_i_1_n_0\,
      Q => DO_OBUF(7),
      R => '0'
    );
\DO_tristate_oe_reg[7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[7]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[7]_i_5_n_0\,
      O => \DO_tristate_oe_reg[7]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[7]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[7]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[7]_i_7_n_0\,
      O => \DO_tristate_oe_reg[7]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[7]_i_8_n_0\,
      I1 => \DO_tristate_oe[7]_i_9_n_0\,
      O => \DO_tristate_oe_reg[7]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[7]_i_10_n_0\,
      I1 => \DO_tristate_oe[7]_i_11_n_0\,
      O => \DO_tristate_oe_reg[7]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[7]_i_12_n_0\,
      I1 => \DO_tristate_oe[7]_i_13_n_0\,
      O => \DO_tristate_oe_reg[7]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[7]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[7]_i_14_n_0\,
      I1 => \DO_tristate_oe[7]_i_15_n_0\,
      O => \DO_tristate_oe_reg[7]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[8]_i_1_n_0\,
      Q => DO_OBUF(8),
      R => '0'
    );
\DO_tristate_oe_reg[8]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[8]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[8]_i_5_n_0\,
      O => \DO_tristate_oe_reg[8]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[8]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[8]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[8]_i_7_n_0\,
      O => \DO_tristate_oe_reg[8]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[8]_i_8_n_0\,
      I1 => \DO_tristate_oe[8]_i_9_n_0\,
      O => \DO_tristate_oe_reg[8]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[8]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[8]_i_10_n_0\,
      I1 => \DO_tristate_oe[8]_i_11_n_0\,
      O => \DO_tristate_oe_reg[8]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[8]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[8]_i_12_n_0\,
      I1 => \DO_tristate_oe[8]_i_13_n_0\,
      O => \DO_tristate_oe_reg[8]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[8]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[8]_i_14_n_0\,
      I1 => \DO_tristate_oe[8]_i_15_n_0\,
      O => \DO_tristate_oe_reg[8]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => RST_IBUF,
      D => \DO_tristate_oe[9]_i_1_n_0\,
      Q => DO_OBUF(9),
      R => '0'
    );
\DO_tristate_oe_reg[9]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[9]_i_4_n_0\,
      I1 => \DO_tristate_oe_reg[9]_i_5_n_0\,
      O => \DO_tristate_oe_reg[9]_i_2_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[9]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DO_tristate_oe_reg[9]_i_6_n_0\,
      I1 => \DO_tristate_oe_reg[9]_i_7_n_0\,
      O => \DO_tristate_oe_reg[9]_i_3_n_0\,
      S => ADR_IBUF(3)
    );
\DO_tristate_oe_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[9]_i_8_n_0\,
      I1 => \DO_tristate_oe[9]_i_9_n_0\,
      O => \DO_tristate_oe_reg[9]_i_4_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[9]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[9]_i_10_n_0\,
      I1 => \DO_tristate_oe[9]_i_11_n_0\,
      O => \DO_tristate_oe_reg[9]_i_5_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[9]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[9]_i_12_n_0\,
      I1 => \DO_tristate_oe[9]_i_13_n_0\,
      O => \DO_tristate_oe_reg[9]_i_6_n_0\,
      S => ADR_IBUF(2)
    );
\DO_tristate_oe_reg[9]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DO_tristate_oe[9]_i_14_n_0\,
      I1 => \DO_tristate_oe[9]_i_15_n_0\,
      O => \DO_tristate_oe_reg[9]_i_7_n_0\,
      S => ADR_IBUF(2)
    );
EN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => EN,
      O => EN_IBUF
    );
\REGS[0][31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_IBUF,
      O => p_0_in
    );
\REGS[0][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[0][31]_i_3_n_0\,
      O => \REGS[0][31]_i_2_n_0\
    );
\REGS[0][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(3),
      I2 => ADR_IBUF(2),
      I3 => ADR_IBUF(0),
      I4 => ADR_IBUF(1),
      I5 => ADR_IBUF(4),
      O => \REGS[0][31]_i_3_n_0\
    );
\REGS[10][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[10][31]_i_2_n_0\,
      O => \REGS[10]\
    );
\REGS[10][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => ADR_IBUF(0),
      I3 => ADR_IBUF(1),
      I4 => ADR_IBUF(3),
      I5 => ADR_IBUF(2),
      O => \REGS[10][31]_i_2_n_0\
    );
\REGS[11][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(2),
      I2 => ADR_IBUF(3),
      I3 => \REGS[3][31]_i_2_n_0\,
      I4 => ADR_IBUF(4),
      I5 => WEN_IBUF,
      O => \REGS[11]\
    );
\REGS[12][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[12][31]_i_2_n_0\,
      O => \REGS[12]\
    );
\REGS[12][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => ADR_IBUF(0),
      I3 => ADR_IBUF(2),
      I4 => ADR_IBUF(3),
      I5 => ADR_IBUF(1),
      O => \REGS[12][31]_i_2_n_0\
    );
\REGS[13][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(1),
      I2 => ADR_IBUF(3),
      I3 => \REGS[5][31]_i_2_n_0\,
      I4 => ADR_IBUF(4),
      I5 => WEN_IBUF,
      O => \REGS[13]\
    );
\REGS[14][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(0),
      I2 => ADR_IBUF(3),
      I3 => \REGS[6][31]_i_2_n_0\,
      I4 => ADR_IBUF(4),
      I5 => WEN_IBUF,
      O => \REGS[14]\
    );
\REGS[15][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(2),
      I2 => \REGS[3][31]_i_2_n_0\,
      I3 => ADR_IBUF(3),
      I4 => ADR_IBUF(4),
      I5 => WEN_IBUF,
      O => \REGS[15]\
    );
\REGS[16][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[16][31]_i_2_n_0\,
      O => \REGS[16]\
    );
\REGS[16][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(3),
      I2 => ADR_IBUF(1),
      I3 => ADR_IBUF(4),
      I4 => ADR_IBUF(0),
      I5 => ADR_IBUF(2),
      O => \REGS[16][31]_i_2_n_0\
    );
\REGS[17][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(2),
      I2 => \REGS[17][31]_i_2_n_0\,
      I3 => ADR_IBUF(1),
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[17]\
    );
\REGS[17][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ADR_IBUF(0),
      I1 => ADR_IBUF(4),
      O => \REGS[17][31]_i_2_n_0\
    );
\REGS[18][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(2),
      I2 => \REGS[18][31]_i_2_n_0\,
      I3 => ADR_IBUF(0),
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[18]\
    );
\REGS[18][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ADR_IBUF(1),
      I1 => ADR_IBUF(4),
      O => \REGS[18][31]_i_2_n_0\
    );
\REGS[19][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(2),
      I2 => ADR_IBUF(4),
      I3 => \REGS[3][31]_i_2_n_0\,
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[19]\
    );
\REGS[1][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[1][31]_i_2_n_0\,
      O => \REGS[1]\
    );
\REGS[1][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(3),
      I2 => ADR_IBUF(2),
      I3 => ADR_IBUF(0),
      I4 => ADR_IBUF(1),
      I5 => ADR_IBUF(4),
      O => \REGS[1][31]_i_2_n_0\
    );
\REGS[20][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(1),
      I2 => \REGS[20][31]_i_2_n_0\,
      I3 => ADR_IBUF(0),
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[20]\
    );
\REGS[20][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ADR_IBUF(2),
      I1 => ADR_IBUF(4),
      O => \REGS[20][31]_i_2_n_0\
    );
\REGS[21][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(1),
      I2 => ADR_IBUF(4),
      I3 => \REGS[5][31]_i_2_n_0\,
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[21]\
    );
\REGS[22][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(0),
      I2 => ADR_IBUF(4),
      I3 => \REGS[6][31]_i_2_n_0\,
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[22]\
    );
\REGS[23][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(2),
      I2 => \REGS[3][31]_i_2_n_0\,
      I3 => ADR_IBUF(4),
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[23]\
    );
\REGS[24][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[24][31]_i_2_n_0\,
      O => \REGS[24]\
    );
\REGS[24][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(2),
      I2 => ADR_IBUF(0),
      I3 => ADR_IBUF(4),
      I4 => ADR_IBUF(3),
      I5 => ADR_IBUF(1),
      O => \REGS[24][31]_i_2_n_0\
    );
\REGS[25][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(1),
      I2 => ADR_IBUF(3),
      I3 => \REGS[17][31]_i_2_n_0\,
      I4 => ADR_IBUF(2),
      I5 => WEN_IBUF,
      O => \REGS[25]\
    );
\REGS[26][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(0),
      I2 => ADR_IBUF(3),
      I3 => \REGS[18][31]_i_2_n_0\,
      I4 => ADR_IBUF(2),
      I5 => WEN_IBUF,
      O => \REGS[26]\
    );
\REGS[27][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => \REGS[3][31]_i_2_n_0\,
      I3 => ADR_IBUF(3),
      I4 => ADR_IBUF(2),
      I5 => WEN_IBUF,
      O => \REGS[27]\
    );
\REGS[28][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(0),
      I2 => ADR_IBUF(3),
      I3 => \REGS[20][31]_i_2_n_0\,
      I4 => ADR_IBUF(1),
      I5 => WEN_IBUF,
      O => \REGS[28]\
    );
\REGS[29][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => \REGS[5][31]_i_2_n_0\,
      I3 => ADR_IBUF(3),
      I4 => ADR_IBUF(1),
      I5 => WEN_IBUF,
      O => \REGS[29]\
    );
\REGS[2][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[2][31]_i_2_n_0\,
      O => \REGS[2]\
    );
\REGS[2][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(3),
      I2 => ADR_IBUF(2),
      I3 => ADR_IBUF(1),
      I4 => ADR_IBUF(0),
      I5 => ADR_IBUF(4),
      O => \REGS[2][31]_i_2_n_0\
    );
\REGS[30][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => \REGS[6][31]_i_2_n_0\,
      I3 => ADR_IBUF(3),
      I4 => ADR_IBUF(0),
      I5 => WEN_IBUF,
      O => \REGS[30]\
    );
\REGS[31][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(3),
      I2 => ADR_IBUF(4),
      I3 => \REGS[3][31]_i_2_n_0\,
      I4 => ADR_IBUF(2),
      I5 => WEN_IBUF,
      O => \REGS[31]\
    );
\REGS[3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => \REGS[3][31]_i_2_n_0\,
      I3 => ADR_IBUF(2),
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[3]\
    );
\REGS[3][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ADR_IBUF(0),
      I1 => ADR_IBUF(1),
      O => \REGS[3][31]_i_2_n_0\
    );
\REGS[4][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[4][31]_i_2_n_0\,
      O => \REGS[4]\
    );
\REGS[4][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(3),
      I2 => ADR_IBUF(1),
      I3 => ADR_IBUF(2),
      I4 => ADR_IBUF(0),
      I5 => ADR_IBUF(4),
      O => \REGS[4][31]_i_2_n_0\
    );
\REGS[5][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => \REGS[5][31]_i_2_n_0\,
      I3 => ADR_IBUF(1),
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[5]\
    );
\REGS[5][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ADR_IBUF(0),
      I1 => ADR_IBUF(2),
      O => \REGS[5][31]_i_2_n_0\
    );
\REGS[6][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => \REGS[6][31]_i_2_n_0\,
      I3 => ADR_IBUF(0),
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[6]\
    );
\REGS[6][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ADR_IBUF(1),
      I1 => ADR_IBUF(2),
      O => \REGS[6][31]_i_2_n_0\
    );
\REGS[7][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => EN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => ADR_IBUF(2),
      I3 => \REGS[3][31]_i_2_n_0\,
      I4 => ADR_IBUF(3),
      I5 => WEN_IBUF,
      O => \REGS[7]\
    );
\REGS[8][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[8][31]_i_2_n_0\,
      O => \REGS[8]\
    );
\REGS[8][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => ADR_IBUF(1),
      I3 => ADR_IBUF(3),
      I4 => ADR_IBUF(0),
      I5 => ADR_IBUF(2),
      O => \REGS[8][31]_i_2_n_0\
    );
\REGS[9][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => EN_IBUF,
      I1 => \REGS[9][31]_i_2_n_0\,
      O => \REGS[9]\
    );
\REGS[9][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => WEN_IBUF,
      I1 => ADR_IBUF(4),
      I2 => ADR_IBUF(1),
      I3 => ADR_IBUF(0),
      I4 => ADR_IBUF(3),
      I5 => ADR_IBUF(2),
      O => \REGS[9][31]_i_2_n_0\
    );
\REGS_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(0),
      Q => \REGS_reg[0]\(0),
      R => p_0_in
    );
\REGS_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(10),
      Q => \REGS_reg[0]\(10),
      R => p_0_in
    );
\REGS_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(11),
      Q => \REGS_reg[0]\(11),
      R => p_0_in
    );
\REGS_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(12),
      Q => \REGS_reg[0]\(12),
      R => p_0_in
    );
\REGS_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(13),
      Q => \REGS_reg[0]\(13),
      R => p_0_in
    );
\REGS_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(14),
      Q => \REGS_reg[0]\(14),
      R => p_0_in
    );
\REGS_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(15),
      Q => \REGS_reg[0]\(15),
      R => p_0_in
    );
\REGS_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(16),
      Q => \REGS_reg[0]\(16),
      R => p_0_in
    );
\REGS_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(17),
      Q => \REGS_reg[0]\(17),
      R => p_0_in
    );
\REGS_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(18),
      Q => \REGS_reg[0]\(18),
      R => p_0_in
    );
\REGS_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(19),
      Q => \REGS_reg[0]\(19),
      R => p_0_in
    );
\REGS_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(1),
      Q => \REGS_reg[0]\(1),
      R => p_0_in
    );
\REGS_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(20),
      Q => \REGS_reg[0]\(20),
      R => p_0_in
    );
\REGS_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(21),
      Q => \REGS_reg[0]\(21),
      R => p_0_in
    );
\REGS_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(22),
      Q => \REGS_reg[0]\(22),
      R => p_0_in
    );
\REGS_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(23),
      Q => \REGS_reg[0]\(23),
      R => p_0_in
    );
\REGS_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(24),
      Q => \REGS_reg[0]\(24),
      R => p_0_in
    );
\REGS_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(25),
      Q => \REGS_reg[0]\(25),
      R => p_0_in
    );
\REGS_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(26),
      Q => \REGS_reg[0]\(26),
      R => p_0_in
    );
\REGS_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(27),
      Q => \REGS_reg[0]\(27),
      R => p_0_in
    );
\REGS_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(28),
      Q => \REGS_reg[0]\(28),
      R => p_0_in
    );
\REGS_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(29),
      Q => \REGS_reg[0]\(29),
      R => p_0_in
    );
\REGS_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(2),
      Q => \REGS_reg[0]\(2),
      R => p_0_in
    );
\REGS_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(30),
      Q => \REGS_reg[0]\(30),
      R => p_0_in
    );
\REGS_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(31),
      Q => \REGS_reg[0]\(31),
      R => p_0_in
    );
\REGS_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(3),
      Q => \REGS_reg[0]\(3),
      R => p_0_in
    );
\REGS_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(4),
      Q => \REGS_reg[0]\(4),
      R => p_0_in
    );
\REGS_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(5),
      Q => \REGS_reg[0]\(5),
      R => p_0_in
    );
\REGS_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(6),
      Q => \REGS_reg[0]\(6),
      R => p_0_in
    );
\REGS_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(7),
      Q => \REGS_reg[0]\(7),
      R => p_0_in
    );
\REGS_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(8),
      Q => \REGS_reg[0]\(8),
      R => p_0_in
    );
\REGS_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[0][31]_i_2_n_0\,
      D => DI_IBUF(9),
      Q => \REGS_reg[0]\(9),
      R => p_0_in
    );
\REGS_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[10]\(0),
      R => p_0_in
    );
\REGS_reg[10][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[10]\(10),
      R => p_0_in
    );
\REGS_reg[10][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[10]\(11),
      R => p_0_in
    );
\REGS_reg[10][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[10]\(12),
      R => p_0_in
    );
\REGS_reg[10][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[10]\(13),
      R => p_0_in
    );
\REGS_reg[10][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[10]\(14),
      R => p_0_in
    );
\REGS_reg[10][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[10]\(15),
      R => p_0_in
    );
\REGS_reg[10][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[10]\(16),
      R => p_0_in
    );
\REGS_reg[10][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[10]\(17),
      R => p_0_in
    );
\REGS_reg[10][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[10]\(18),
      R => p_0_in
    );
\REGS_reg[10][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[10]\(19),
      R => p_0_in
    );
\REGS_reg[10][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[10]\(1),
      S => p_0_in
    );
\REGS_reg[10][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[10]\(20),
      R => p_0_in
    );
\REGS_reg[10][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[10]\(21),
      R => p_0_in
    );
\REGS_reg[10][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[10]\(22),
      R => p_0_in
    );
\REGS_reg[10][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[10]\(23),
      R => p_0_in
    );
\REGS_reg[10][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[10]\(24),
      R => p_0_in
    );
\REGS_reg[10][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[10]\(25),
      R => p_0_in
    );
\REGS_reg[10][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[10]\(26),
      R => p_0_in
    );
\REGS_reg[10][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[10]\(27),
      R => p_0_in
    );
\REGS_reg[10][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[10]\(28),
      R => p_0_in
    );
\REGS_reg[10][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[10]\(29),
      R => p_0_in
    );
\REGS_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[10]\(2),
      R => p_0_in
    );
\REGS_reg[10][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[10]\(30),
      R => p_0_in
    );
\REGS_reg[10][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[10]\(31),
      R => p_0_in
    );
\REGS_reg[10][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[10]\(3),
      S => p_0_in
    );
\REGS_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[10]\(4),
      R => p_0_in
    );
\REGS_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[10]\(5),
      R => p_0_in
    );
\REGS_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[10]\(6),
      R => p_0_in
    );
\REGS_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[10]\(7),
      R => p_0_in
    );
\REGS_reg[10][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[10]\(8),
      R => p_0_in
    );
\REGS_reg[10][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[10]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[10]\(9),
      R => p_0_in
    );
\REGS_reg[11][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[11]\(0),
      S => p_0_in
    );
\REGS_reg[11][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[11]\(10),
      R => p_0_in
    );
\REGS_reg[11][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[11]\(11),
      R => p_0_in
    );
\REGS_reg[11][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[11]\(12),
      R => p_0_in
    );
\REGS_reg[11][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[11]\(13),
      R => p_0_in
    );
\REGS_reg[11][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[11]\(14),
      R => p_0_in
    );
\REGS_reg[11][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[11]\(15),
      R => p_0_in
    );
\REGS_reg[11][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[11]\(16),
      R => p_0_in
    );
\REGS_reg[11][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[11]\(17),
      R => p_0_in
    );
\REGS_reg[11][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[11]\(18),
      R => p_0_in
    );
\REGS_reg[11][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[11]\(19),
      R => p_0_in
    );
\REGS_reg[11][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[11]\(1),
      S => p_0_in
    );
\REGS_reg[11][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[11]\(20),
      R => p_0_in
    );
\REGS_reg[11][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[11]\(21),
      R => p_0_in
    );
\REGS_reg[11][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[11]\(22),
      R => p_0_in
    );
\REGS_reg[11][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[11]\(23),
      R => p_0_in
    );
\REGS_reg[11][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[11]\(24),
      R => p_0_in
    );
\REGS_reg[11][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[11]\(25),
      R => p_0_in
    );
\REGS_reg[11][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[11]\(26),
      R => p_0_in
    );
\REGS_reg[11][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[11]\(27),
      R => p_0_in
    );
\REGS_reg[11][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[11]\(28),
      R => p_0_in
    );
\REGS_reg[11][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[11]\(29),
      R => p_0_in
    );
\REGS_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[11]\(2),
      R => p_0_in
    );
\REGS_reg[11][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[11]\(30),
      R => p_0_in
    );
\REGS_reg[11][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[11]\(31),
      R => p_0_in
    );
\REGS_reg[11][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[11]\(3),
      S => p_0_in
    );
\REGS_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[11]\(4),
      R => p_0_in
    );
\REGS_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[11]\(5),
      R => p_0_in
    );
\REGS_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[11]\(6),
      R => p_0_in
    );
\REGS_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[11]\(7),
      R => p_0_in
    );
\REGS_reg[11][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[11]\(8),
      R => p_0_in
    );
\REGS_reg[11][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[11]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[11]\(9),
      R => p_0_in
    );
\REGS_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[12]\(0),
      R => p_0_in
    );
\REGS_reg[12][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[12]\(10),
      R => p_0_in
    );
\REGS_reg[12][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[12]\(11),
      R => p_0_in
    );
\REGS_reg[12][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[12]\(12),
      R => p_0_in
    );
\REGS_reg[12][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[12]\(13),
      R => p_0_in
    );
\REGS_reg[12][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[12]\(14),
      R => p_0_in
    );
\REGS_reg[12][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[12]\(15),
      R => p_0_in
    );
\REGS_reg[12][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[12]\(16),
      R => p_0_in
    );
\REGS_reg[12][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[12]\(17),
      R => p_0_in
    );
\REGS_reg[12][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[12]\(18),
      R => p_0_in
    );
\REGS_reg[12][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[12]\(19),
      R => p_0_in
    );
\REGS_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[12]\(1),
      R => p_0_in
    );
\REGS_reg[12][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[12]\(20),
      R => p_0_in
    );
\REGS_reg[12][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[12]\(21),
      R => p_0_in
    );
\REGS_reg[12][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[12]\(22),
      R => p_0_in
    );
\REGS_reg[12][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[12]\(23),
      R => p_0_in
    );
\REGS_reg[12][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[12]\(24),
      R => p_0_in
    );
\REGS_reg[12][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[12]\(25),
      R => p_0_in
    );
\REGS_reg[12][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[12]\(26),
      R => p_0_in
    );
\REGS_reg[12][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[12]\(27),
      R => p_0_in
    );
\REGS_reg[12][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[12]\(28),
      R => p_0_in
    );
\REGS_reg[12][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[12]\(29),
      R => p_0_in
    );
\REGS_reg[12][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[12]\(2),
      S => p_0_in
    );
\REGS_reg[12][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[12]\(30),
      R => p_0_in
    );
\REGS_reg[12][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[12]\(31),
      R => p_0_in
    );
\REGS_reg[12][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[12]\(3),
      S => p_0_in
    );
\REGS_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[12]\(4),
      R => p_0_in
    );
\REGS_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[12]\(5),
      R => p_0_in
    );
\REGS_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[12]\(6),
      R => p_0_in
    );
\REGS_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[12]\(7),
      R => p_0_in
    );
\REGS_reg[12][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[12]\(8),
      R => p_0_in
    );
\REGS_reg[12][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[12]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[12]\(9),
      R => p_0_in
    );
\REGS_reg[13][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[13]\(0),
      S => p_0_in
    );
\REGS_reg[13][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[13]\(10),
      R => p_0_in
    );
\REGS_reg[13][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[13]\(11),
      R => p_0_in
    );
\REGS_reg[13][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[13]\(12),
      R => p_0_in
    );
\REGS_reg[13][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[13]\(13),
      R => p_0_in
    );
\REGS_reg[13][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[13]\(14),
      R => p_0_in
    );
\REGS_reg[13][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[13]\(15),
      R => p_0_in
    );
\REGS_reg[13][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[13]\(16),
      R => p_0_in
    );
\REGS_reg[13][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[13]\(17),
      R => p_0_in
    );
\REGS_reg[13][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[13]\(18),
      R => p_0_in
    );
\REGS_reg[13][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[13]\(19),
      R => p_0_in
    );
\REGS_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[13]\(1),
      R => p_0_in
    );
\REGS_reg[13][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[13]\(20),
      R => p_0_in
    );
\REGS_reg[13][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[13]\(21),
      R => p_0_in
    );
\REGS_reg[13][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[13]\(22),
      R => p_0_in
    );
\REGS_reg[13][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[13]\(23),
      R => p_0_in
    );
\REGS_reg[13][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[13]\(24),
      R => p_0_in
    );
\REGS_reg[13][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[13]\(25),
      R => p_0_in
    );
\REGS_reg[13][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[13]\(26),
      R => p_0_in
    );
\REGS_reg[13][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[13]\(27),
      R => p_0_in
    );
\REGS_reg[13][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[13]\(28),
      R => p_0_in
    );
\REGS_reg[13][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[13]\(29),
      R => p_0_in
    );
\REGS_reg[13][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[13]\(2),
      S => p_0_in
    );
\REGS_reg[13][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[13]\(30),
      R => p_0_in
    );
\REGS_reg[13][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[13]\(31),
      R => p_0_in
    );
\REGS_reg[13][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[13]\(3),
      S => p_0_in
    );
\REGS_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[13]\(4),
      R => p_0_in
    );
\REGS_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[13]\(5),
      R => p_0_in
    );
\REGS_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[13]\(6),
      R => p_0_in
    );
\REGS_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[13]\(7),
      R => p_0_in
    );
\REGS_reg[13][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[13]\(8),
      R => p_0_in
    );
\REGS_reg[13][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[13]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[13]\(9),
      R => p_0_in
    );
\REGS_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[14]\(0),
      R => p_0_in
    );
\REGS_reg[14][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[14]\(10),
      R => p_0_in
    );
\REGS_reg[14][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[14]\(11),
      R => p_0_in
    );
\REGS_reg[14][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[14]\(12),
      R => p_0_in
    );
\REGS_reg[14][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[14]\(13),
      R => p_0_in
    );
\REGS_reg[14][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[14]\(14),
      R => p_0_in
    );
\REGS_reg[14][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[14]\(15),
      R => p_0_in
    );
\REGS_reg[14][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[14]\(16),
      R => p_0_in
    );
\REGS_reg[14][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[14]\(17),
      R => p_0_in
    );
\REGS_reg[14][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[14]\(18),
      R => p_0_in
    );
\REGS_reg[14][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[14]\(19),
      R => p_0_in
    );
\REGS_reg[14][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[14]\(1),
      S => p_0_in
    );
\REGS_reg[14][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[14]\(20),
      R => p_0_in
    );
\REGS_reg[14][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[14]\(21),
      R => p_0_in
    );
\REGS_reg[14][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[14]\(22),
      R => p_0_in
    );
\REGS_reg[14][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[14]\(23),
      R => p_0_in
    );
\REGS_reg[14][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[14]\(24),
      R => p_0_in
    );
\REGS_reg[14][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[14]\(25),
      R => p_0_in
    );
\REGS_reg[14][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[14]\(26),
      R => p_0_in
    );
\REGS_reg[14][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[14]\(27),
      R => p_0_in
    );
\REGS_reg[14][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[14]\(28),
      R => p_0_in
    );
\REGS_reg[14][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[14]\(29),
      R => p_0_in
    );
\REGS_reg[14][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[14]\(2),
      S => p_0_in
    );
\REGS_reg[14][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[14]\(30),
      R => p_0_in
    );
\REGS_reg[14][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[14]\(31),
      R => p_0_in
    );
\REGS_reg[14][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[14]\(3),
      S => p_0_in
    );
\REGS_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[14]\(4),
      R => p_0_in
    );
\REGS_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[14]\(5),
      R => p_0_in
    );
\REGS_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[14]\(6),
      R => p_0_in
    );
\REGS_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[14]\(7),
      R => p_0_in
    );
\REGS_reg[14][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[14]\(8),
      R => p_0_in
    );
\REGS_reg[14][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[14]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[14]\(9),
      R => p_0_in
    );
\REGS_reg[15][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[15]\(0),
      S => p_0_in
    );
\REGS_reg[15][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[15]\(10),
      R => p_0_in
    );
\REGS_reg[15][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[15]\(11),
      R => p_0_in
    );
\REGS_reg[15][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[15]\(12),
      R => p_0_in
    );
\REGS_reg[15][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[15]\(13),
      R => p_0_in
    );
\REGS_reg[15][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[15]\(14),
      R => p_0_in
    );
\REGS_reg[15][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[15]\(15),
      R => p_0_in
    );
\REGS_reg[15][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[15]\(16),
      R => p_0_in
    );
\REGS_reg[15][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[15]\(17),
      R => p_0_in
    );
\REGS_reg[15][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[15]\(18),
      R => p_0_in
    );
\REGS_reg[15][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[15]\(19),
      R => p_0_in
    );
\REGS_reg[15][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[15]\(1),
      S => p_0_in
    );
\REGS_reg[15][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[15]\(20),
      R => p_0_in
    );
\REGS_reg[15][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[15]\(21),
      R => p_0_in
    );
\REGS_reg[15][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[15]\(22),
      R => p_0_in
    );
\REGS_reg[15][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[15]\(23),
      R => p_0_in
    );
\REGS_reg[15][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[15]\(24),
      R => p_0_in
    );
\REGS_reg[15][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[15]\(25),
      R => p_0_in
    );
\REGS_reg[15][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[15]\(26),
      R => p_0_in
    );
\REGS_reg[15][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[15]\(27),
      R => p_0_in
    );
\REGS_reg[15][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[15]\(28),
      R => p_0_in
    );
\REGS_reg[15][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[15]\(29),
      R => p_0_in
    );
\REGS_reg[15][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[15]\(2),
      S => p_0_in
    );
\REGS_reg[15][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[15]\(30),
      R => p_0_in
    );
\REGS_reg[15][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[15]\(31),
      R => p_0_in
    );
\REGS_reg[15][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[15]\(3),
      S => p_0_in
    );
\REGS_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[15]\(4),
      R => p_0_in
    );
\REGS_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[15]\(5),
      R => p_0_in
    );
\REGS_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[15]\(6),
      R => p_0_in
    );
\REGS_reg[15][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[15]\(7),
      R => p_0_in
    );
\REGS_reg[15][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[15]\(8),
      R => p_0_in
    );
\REGS_reg[15][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[15]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[15]\(9),
      R => p_0_in
    );
\REGS_reg[16][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[16]\(0),
      R => p_0_in
    );
\REGS_reg[16][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[16]\(10),
      R => p_0_in
    );
\REGS_reg[16][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[16]\(11),
      R => p_0_in
    );
\REGS_reg[16][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[16]\(12),
      R => p_0_in
    );
\REGS_reg[16][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[16]\(13),
      R => p_0_in
    );
\REGS_reg[16][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[16]\(14),
      R => p_0_in
    );
\REGS_reg[16][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[16]\(15),
      R => p_0_in
    );
\REGS_reg[16][16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[16]\(16),
      S => p_0_in
    );
\REGS_reg[16][17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[16]\(17),
      S => p_0_in
    );
\REGS_reg[16][18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[16]\(18),
      S => p_0_in
    );
\REGS_reg[16][19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[16]\(19),
      S => p_0_in
    );
\REGS_reg[16][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[16]\(1),
      R => p_0_in
    );
\REGS_reg[16][20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[16]\(20),
      S => p_0_in
    );
\REGS_reg[16][21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[16]\(21),
      S => p_0_in
    );
\REGS_reg[16][22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[16]\(22),
      S => p_0_in
    );
\REGS_reg[16][23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[16]\(23),
      S => p_0_in
    );
\REGS_reg[16][24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[16]\(24),
      S => p_0_in
    );
\REGS_reg[16][25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[16]\(25),
      S => p_0_in
    );
\REGS_reg[16][26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[16]\(26),
      S => p_0_in
    );
\REGS_reg[16][27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[16]\(27),
      S => p_0_in
    );
\REGS_reg[16][28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[16]\(28),
      S => p_0_in
    );
\REGS_reg[16][29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[16]\(29),
      S => p_0_in
    );
\REGS_reg[16][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[16]\(2),
      R => p_0_in
    );
\REGS_reg[16][30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[16]\(30),
      S => p_0_in
    );
\REGS_reg[16][31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[16]\(31),
      S => p_0_in
    );
\REGS_reg[16][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[16]\(3),
      R => p_0_in
    );
\REGS_reg[16][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[16]\(4),
      R => p_0_in
    );
\REGS_reg[16][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[16]\(5),
      R => p_0_in
    );
\REGS_reg[16][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[16]\(6),
      R => p_0_in
    );
\REGS_reg[16][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[16]\(7),
      R => p_0_in
    );
\REGS_reg[16][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[16]\(8),
      R => p_0_in
    );
\REGS_reg[16][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[16]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[16]\(9),
      R => p_0_in
    );
\REGS_reg[17][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[17]\(0),
      S => p_0_in
    );
\REGS_reg[17][10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[17]\(10),
      S => p_0_in
    );
\REGS_reg[17][11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[17]\(11),
      S => p_0_in
    );
\REGS_reg[17][12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[17]\(12),
      S => p_0_in
    );
\REGS_reg[17][13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[17]\(13),
      S => p_0_in
    );
\REGS_reg[17][14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[17]\(14),
      S => p_0_in
    );
\REGS_reg[17][15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[17]\(15),
      S => p_0_in
    );
\REGS_reg[17][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[17]\(16),
      R => p_0_in
    );
\REGS_reg[17][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[17]\(17),
      R => p_0_in
    );
\REGS_reg[17][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[17]\(18),
      R => p_0_in
    );
\REGS_reg[17][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[17]\(19),
      R => p_0_in
    );
\REGS_reg[17][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[17]\(1),
      S => p_0_in
    );
\REGS_reg[17][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[17]\(20),
      R => p_0_in
    );
\REGS_reg[17][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[17]\(21),
      R => p_0_in
    );
\REGS_reg[17][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[17]\(22),
      R => p_0_in
    );
\REGS_reg[17][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[17]\(23),
      R => p_0_in
    );
\REGS_reg[17][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[17]\(24),
      R => p_0_in
    );
\REGS_reg[17][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[17]\(25),
      R => p_0_in
    );
\REGS_reg[17][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[17]\(26),
      R => p_0_in
    );
\REGS_reg[17][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[17]\(27),
      R => p_0_in
    );
\REGS_reg[17][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[17]\(28),
      R => p_0_in
    );
\REGS_reg[17][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[17]\(29),
      R => p_0_in
    );
\REGS_reg[17][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[17]\(2),
      S => p_0_in
    );
\REGS_reg[17][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[17]\(30),
      R => p_0_in
    );
\REGS_reg[17][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[17]\(31),
      R => p_0_in
    );
\REGS_reg[17][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[17]\(3),
      S => p_0_in
    );
\REGS_reg[17][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[17]\(4),
      S => p_0_in
    );
\REGS_reg[17][5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[17]\(5),
      S => p_0_in
    );
\REGS_reg[17][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[17]\(6),
      S => p_0_in
    );
\REGS_reg[17][7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[17]\(7),
      S => p_0_in
    );
\REGS_reg[17][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[17]\(8),
      S => p_0_in
    );
\REGS_reg[17][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[17]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[17]\(9),
      S => p_0_in
    );
\REGS_reg[18][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[18]\(0),
      R => p_0_in
    );
\REGS_reg[18][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[18]\(10),
      R => p_0_in
    );
\REGS_reg[18][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[18]\(11),
      R => p_0_in
    );
\REGS_reg[18][12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[18]\(12),
      S => p_0_in
    );
\REGS_reg[18][13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[18]\(13),
      S => p_0_in
    );
\REGS_reg[18][14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[18]\(14),
      S => p_0_in
    );
\REGS_reg[18][15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[18]\(15),
      S => p_0_in
    );
\REGS_reg[18][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[18]\(16),
      R => p_0_in
    );
\REGS_reg[18][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[18]\(17),
      R => p_0_in
    );
\REGS_reg[18][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[18]\(18),
      R => p_0_in
    );
\REGS_reg[18][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[18]\(19),
      R => p_0_in
    );
\REGS_reg[18][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[18]\(1),
      R => p_0_in
    );
\REGS_reg[18][20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[18]\(20),
      S => p_0_in
    );
\REGS_reg[18][21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[18]\(21),
      S => p_0_in
    );
\REGS_reg[18][22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[18]\(22),
      S => p_0_in
    );
\REGS_reg[18][23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[18]\(23),
      S => p_0_in
    );
\REGS_reg[18][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[18]\(24),
      R => p_0_in
    );
\REGS_reg[18][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[18]\(25),
      R => p_0_in
    );
\REGS_reg[18][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[18]\(26),
      R => p_0_in
    );
\REGS_reg[18][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[18]\(27),
      R => p_0_in
    );
\REGS_reg[18][28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[18]\(28),
      S => p_0_in
    );
\REGS_reg[18][29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[18]\(29),
      S => p_0_in
    );
\REGS_reg[18][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[18]\(2),
      R => p_0_in
    );
\REGS_reg[18][30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[18]\(30),
      S => p_0_in
    );
\REGS_reg[18][31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[18]\(31),
      S => p_0_in
    );
\REGS_reg[18][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[18]\(3),
      R => p_0_in
    );
\REGS_reg[18][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[18]\(4),
      S => p_0_in
    );
\REGS_reg[18][5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[18]\(5),
      S => p_0_in
    );
\REGS_reg[18][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[18]\(6),
      S => p_0_in
    );
\REGS_reg[18][7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[18]\(7),
      S => p_0_in
    );
\REGS_reg[18][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[18]\(8),
      R => p_0_in
    );
\REGS_reg[18][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[18]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[18]\(9),
      R => p_0_in
    );
\REGS_reg[19][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[19]\(0),
      S => p_0_in
    );
\REGS_reg[19][10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[19]\(10),
      S => p_0_in
    );
\REGS_reg[19][11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[19]\(11),
      S => p_0_in
    );
\REGS_reg[19][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[19]\(12),
      R => p_0_in
    );
\REGS_reg[19][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[19]\(13),
      R => p_0_in
    );
\REGS_reg[19][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[19]\(14),
      R => p_0_in
    );
\REGS_reg[19][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[19]\(15),
      R => p_0_in
    );
\REGS_reg[19][16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[19]\(16),
      S => p_0_in
    );
\REGS_reg[19][17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[19]\(17),
      S => p_0_in
    );
\REGS_reg[19][18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[19]\(18),
      S => p_0_in
    );
\REGS_reg[19][19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[19]\(19),
      S => p_0_in
    );
\REGS_reg[19][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[19]\(1),
      S => p_0_in
    );
\REGS_reg[19][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[19]\(20),
      R => p_0_in
    );
\REGS_reg[19][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[19]\(21),
      R => p_0_in
    );
\REGS_reg[19][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[19]\(22),
      R => p_0_in
    );
\REGS_reg[19][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[19]\(23),
      R => p_0_in
    );
\REGS_reg[19][24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[19]\(24),
      S => p_0_in
    );
\REGS_reg[19][25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[19]\(25),
      S => p_0_in
    );
\REGS_reg[19][26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[19]\(26),
      S => p_0_in
    );
\REGS_reg[19][27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[19]\(27),
      S => p_0_in
    );
\REGS_reg[19][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[19]\(28),
      R => p_0_in
    );
\REGS_reg[19][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[19]\(29),
      R => p_0_in
    );
\REGS_reg[19][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[19]\(2),
      S => p_0_in
    );
\REGS_reg[19][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[19]\(30),
      R => p_0_in
    );
\REGS_reg[19][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[19]\(31),
      R => p_0_in
    );
\REGS_reg[19][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[19]\(3),
      S => p_0_in
    );
\REGS_reg[19][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[19]\(4),
      R => p_0_in
    );
\REGS_reg[19][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[19]\(5),
      R => p_0_in
    );
\REGS_reg[19][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[19]\(6),
      R => p_0_in
    );
\REGS_reg[19][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[19]\(7),
      R => p_0_in
    );
\REGS_reg[19][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[19]\(8),
      S => p_0_in
    );
\REGS_reg[19][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[19]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[19]\(9),
      S => p_0_in
    );
\REGS_reg[1][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[1]\(0),
      S => p_0_in
    );
\REGS_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[1]\,
      D => DI_IBUF(10),
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
      D => DI_IBUF(11),
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
      D => DI_IBUF(12),
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
      D => DI_IBUF(13),
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
      D => DI_IBUF(14),
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
      D => DI_IBUF(15),
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
      D => DI_IBUF(16),
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
      D => DI_IBUF(17),
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
      D => DI_IBUF(18),
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
      D => DI_IBUF(19),
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
      D => DI_IBUF(1),
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
      D => DI_IBUF(20),
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
      D => DI_IBUF(21),
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
      D => DI_IBUF(22),
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
      D => DI_IBUF(23),
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
      D => DI_IBUF(24),
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
      D => DI_IBUF(25),
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
      D => DI_IBUF(26),
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
      D => DI_IBUF(27),
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
      D => DI_IBUF(28),
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
      D => DI_IBUF(29),
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
      D => DI_IBUF(2),
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
      D => DI_IBUF(30),
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
      D => DI_IBUF(31),
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
      D => DI_IBUF(3),
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
      D => DI_IBUF(4),
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
      D => DI_IBUF(5),
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
      D => DI_IBUF(6),
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
      D => DI_IBUF(7),
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
      D => DI_IBUF(8),
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
      D => DI_IBUF(9),
      Q => \REGS_reg[1]\(9),
      R => p_0_in
    );
\REGS_reg[20][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[20]\(0),
      R => p_0_in
    );
\REGS_reg[20][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[20]\(10),
      R => p_0_in
    );
\REGS_reg[20][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[20]\(11),
      R => p_0_in
    );
\REGS_reg[20][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[20]\(12),
      R => p_0_in
    );
\REGS_reg[20][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[20]\(13),
      R => p_0_in
    );
\REGS_reg[20][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[20]\(14),
      R => p_0_in
    );
\REGS_reg[20][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[20]\(15),
      R => p_0_in
    );
\REGS_reg[20][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[20]\(16),
      R => p_0_in
    );
\REGS_reg[20][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[20]\(17),
      R => p_0_in
    );
\REGS_reg[20][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[20]\(18),
      R => p_0_in
    );
\REGS_reg[20][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[20]\(19),
      R => p_0_in
    );
\REGS_reg[20][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[20]\(1),
      R => p_0_in
    );
\REGS_reg[20][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[20]\(20),
      R => p_0_in
    );
\REGS_reg[20][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[20]\(21),
      R => p_0_in
    );
\REGS_reg[20][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[20]\(22),
      R => p_0_in
    );
\REGS_reg[20][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[20]\(23),
      R => p_0_in
    );
\REGS_reg[20][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[20]\(24),
      R => p_0_in
    );
\REGS_reg[20][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[20]\(25),
      R => p_0_in
    );
\REGS_reg[20][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[20]\(26),
      R => p_0_in
    );
\REGS_reg[20][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[20]\(27),
      R => p_0_in
    );
\REGS_reg[20][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[20]\(28),
      R => p_0_in
    );
\REGS_reg[20][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[20]\(29),
      R => p_0_in
    );
\REGS_reg[20][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[20]\(2),
      R => p_0_in
    );
\REGS_reg[20][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[20]\(30),
      R => p_0_in
    );
\REGS_reg[20][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[20]\(31),
      R => p_0_in
    );
\REGS_reg[20][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[20]\(3),
      R => p_0_in
    );
\REGS_reg[20][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[20]\(4),
      R => p_0_in
    );
\REGS_reg[20][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[20]\(5),
      R => p_0_in
    );
\REGS_reg[20][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[20]\(6),
      R => p_0_in
    );
\REGS_reg[20][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[20]\(7),
      R => p_0_in
    );
\REGS_reg[20][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[20]\(8),
      R => p_0_in
    );
\REGS_reg[20][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[20]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[20]\(9),
      R => p_0_in
    );
\REGS_reg[21][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[21]\(0),
      R => p_0_in
    );
\REGS_reg[21][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[21]\(10),
      R => p_0_in
    );
\REGS_reg[21][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[21]\(11),
      R => p_0_in
    );
\REGS_reg[21][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[21]\(12),
      R => p_0_in
    );
\REGS_reg[21][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[21]\(13),
      R => p_0_in
    );
\REGS_reg[21][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[21]\(14),
      R => p_0_in
    );
\REGS_reg[21][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[21]\(15),
      R => p_0_in
    );
\REGS_reg[21][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[21]\(16),
      R => p_0_in
    );
\REGS_reg[21][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[21]\(17),
      R => p_0_in
    );
\REGS_reg[21][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[21]\(18),
      R => p_0_in
    );
\REGS_reg[21][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[21]\(19),
      R => p_0_in
    );
\REGS_reg[21][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[21]\(1),
      R => p_0_in
    );
\REGS_reg[21][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[21]\(20),
      R => p_0_in
    );
\REGS_reg[21][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[21]\(21),
      R => p_0_in
    );
\REGS_reg[21][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[21]\(22),
      R => p_0_in
    );
\REGS_reg[21][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[21]\(23),
      R => p_0_in
    );
\REGS_reg[21][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[21]\(24),
      R => p_0_in
    );
\REGS_reg[21][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[21]\(25),
      R => p_0_in
    );
\REGS_reg[21][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[21]\(26),
      R => p_0_in
    );
\REGS_reg[21][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[21]\(27),
      R => p_0_in
    );
\REGS_reg[21][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[21]\(28),
      R => p_0_in
    );
\REGS_reg[21][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[21]\(29),
      R => p_0_in
    );
\REGS_reg[21][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[21]\(2),
      R => p_0_in
    );
\REGS_reg[21][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[21]\(30),
      R => p_0_in
    );
\REGS_reg[21][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[21]\(31),
      R => p_0_in
    );
\REGS_reg[21][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[21]\(3),
      R => p_0_in
    );
\REGS_reg[21][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[21]\(4),
      R => p_0_in
    );
\REGS_reg[21][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[21]\(5),
      R => p_0_in
    );
\REGS_reg[21][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[21]\(6),
      R => p_0_in
    );
\REGS_reg[21][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[21]\(7),
      R => p_0_in
    );
\REGS_reg[21][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[21]\(8),
      R => p_0_in
    );
\REGS_reg[21][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[21]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[21]\(9),
      R => p_0_in
    );
\REGS_reg[22][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[22]\(0),
      R => p_0_in
    );
\REGS_reg[22][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[22]\(10),
      R => p_0_in
    );
\REGS_reg[22][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[22]\(11),
      R => p_0_in
    );
\REGS_reg[22][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[22]\(12),
      R => p_0_in
    );
\REGS_reg[22][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[22]\(13),
      R => p_0_in
    );
\REGS_reg[22][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[22]\(14),
      R => p_0_in
    );
\REGS_reg[22][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[22]\(15),
      R => p_0_in
    );
\REGS_reg[22][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[22]\(16),
      R => p_0_in
    );
\REGS_reg[22][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[22]\(17),
      R => p_0_in
    );
\REGS_reg[22][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[22]\(18),
      R => p_0_in
    );
\REGS_reg[22][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[22]\(19),
      R => p_0_in
    );
\REGS_reg[22][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[22]\(1),
      R => p_0_in
    );
\REGS_reg[22][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[22]\(20),
      R => p_0_in
    );
\REGS_reg[22][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[22]\(21),
      R => p_0_in
    );
\REGS_reg[22][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[22]\(22),
      R => p_0_in
    );
\REGS_reg[22][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[22]\(23),
      R => p_0_in
    );
\REGS_reg[22][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[22]\(24),
      R => p_0_in
    );
\REGS_reg[22][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[22]\(25),
      R => p_0_in
    );
\REGS_reg[22][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[22]\(26),
      R => p_0_in
    );
\REGS_reg[22][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[22]\(27),
      R => p_0_in
    );
\REGS_reg[22][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[22]\(28),
      R => p_0_in
    );
\REGS_reg[22][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[22]\(29),
      R => p_0_in
    );
\REGS_reg[22][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[22]\(2),
      R => p_0_in
    );
\REGS_reg[22][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[22]\(30),
      R => p_0_in
    );
\REGS_reg[22][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[22]\(31),
      R => p_0_in
    );
\REGS_reg[22][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[22]\(3),
      R => p_0_in
    );
\REGS_reg[22][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[22]\(4),
      R => p_0_in
    );
\REGS_reg[22][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[22]\(5),
      R => p_0_in
    );
\REGS_reg[22][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[22]\(6),
      R => p_0_in
    );
\REGS_reg[22][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[22]\(7),
      R => p_0_in
    );
\REGS_reg[22][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[22]\(8),
      R => p_0_in
    );
\REGS_reg[22][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[22]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[22]\(9),
      R => p_0_in
    );
\REGS_reg[23][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[23]\(0),
      R => p_0_in
    );
\REGS_reg[23][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[23]\(10),
      R => p_0_in
    );
\REGS_reg[23][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[23]\(11),
      R => p_0_in
    );
\REGS_reg[23][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[23]\(12),
      R => p_0_in
    );
\REGS_reg[23][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[23]\(13),
      R => p_0_in
    );
\REGS_reg[23][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[23]\(14),
      R => p_0_in
    );
\REGS_reg[23][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[23]\(15),
      R => p_0_in
    );
\REGS_reg[23][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[23]\(16),
      R => p_0_in
    );
\REGS_reg[23][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[23]\(17),
      R => p_0_in
    );
\REGS_reg[23][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[23]\(18),
      R => p_0_in
    );
\REGS_reg[23][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[23]\(19),
      R => p_0_in
    );
\REGS_reg[23][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[23]\(1),
      R => p_0_in
    );
\REGS_reg[23][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[23]\(20),
      R => p_0_in
    );
\REGS_reg[23][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[23]\(21),
      R => p_0_in
    );
\REGS_reg[23][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[23]\(22),
      R => p_0_in
    );
\REGS_reg[23][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[23]\(23),
      R => p_0_in
    );
\REGS_reg[23][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[23]\(24),
      R => p_0_in
    );
\REGS_reg[23][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[23]\(25),
      R => p_0_in
    );
\REGS_reg[23][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[23]\(26),
      R => p_0_in
    );
\REGS_reg[23][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[23]\(27),
      R => p_0_in
    );
\REGS_reg[23][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[23]\(28),
      R => p_0_in
    );
\REGS_reg[23][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[23]\(29),
      R => p_0_in
    );
\REGS_reg[23][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[23]\(2),
      R => p_0_in
    );
\REGS_reg[23][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[23]\(30),
      R => p_0_in
    );
\REGS_reg[23][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[23]\(31),
      R => p_0_in
    );
\REGS_reg[23][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[23]\(3),
      R => p_0_in
    );
\REGS_reg[23][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[23]\(4),
      R => p_0_in
    );
\REGS_reg[23][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[23]\(5),
      R => p_0_in
    );
\REGS_reg[23][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[23]\(6),
      R => p_0_in
    );
\REGS_reg[23][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[23]\(7),
      R => p_0_in
    );
\REGS_reg[23][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[23]\(8),
      R => p_0_in
    );
\REGS_reg[23][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[23]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[23]\(9),
      R => p_0_in
    );
\REGS_reg[24][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[24]\(0),
      R => p_0_in
    );
\REGS_reg[24][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[24]\(10),
      R => p_0_in
    );
\REGS_reg[24][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[24]\(11),
      R => p_0_in
    );
\REGS_reg[24][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[24]\(12),
      R => p_0_in
    );
\REGS_reg[24][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[24]\(13),
      R => p_0_in
    );
\REGS_reg[24][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[24]\(14),
      R => p_0_in
    );
\REGS_reg[24][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[24]\(15),
      R => p_0_in
    );
\REGS_reg[24][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[24]\(16),
      R => p_0_in
    );
\REGS_reg[24][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[24]\(17),
      R => p_0_in
    );
\REGS_reg[24][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[24]\(18),
      R => p_0_in
    );
\REGS_reg[24][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[24]\(19),
      R => p_0_in
    );
\REGS_reg[24][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[24]\(1),
      R => p_0_in
    );
\REGS_reg[24][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[24]\(20),
      R => p_0_in
    );
\REGS_reg[24][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[24]\(21),
      R => p_0_in
    );
\REGS_reg[24][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[24]\(22),
      R => p_0_in
    );
\REGS_reg[24][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[24]\(23),
      R => p_0_in
    );
\REGS_reg[24][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[24]\(24),
      R => p_0_in
    );
\REGS_reg[24][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[24]\(25),
      R => p_0_in
    );
\REGS_reg[24][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[24]\(26),
      R => p_0_in
    );
\REGS_reg[24][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[24]\(27),
      R => p_0_in
    );
\REGS_reg[24][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[24]\(28),
      R => p_0_in
    );
\REGS_reg[24][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[24]\(29),
      R => p_0_in
    );
\REGS_reg[24][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[24]\(2),
      R => p_0_in
    );
\REGS_reg[24][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[24]\(30),
      R => p_0_in
    );
\REGS_reg[24][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[24]\(31),
      R => p_0_in
    );
\REGS_reg[24][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[24]\(3),
      R => p_0_in
    );
\REGS_reg[24][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[24]\(4),
      R => p_0_in
    );
\REGS_reg[24][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[24]\(5),
      R => p_0_in
    );
\REGS_reg[24][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[24]\(6),
      R => p_0_in
    );
\REGS_reg[24][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[24]\(7),
      R => p_0_in
    );
\REGS_reg[24][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[24]\(8),
      R => p_0_in
    );
\REGS_reg[24][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[24]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[24]\(9),
      R => p_0_in
    );
\REGS_reg[25][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[25]\(0),
      R => p_0_in
    );
\REGS_reg[25][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[25]\(10),
      R => p_0_in
    );
\REGS_reg[25][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[25]\(11),
      R => p_0_in
    );
\REGS_reg[25][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[25]\(12),
      R => p_0_in
    );
\REGS_reg[25][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[25]\(13),
      R => p_0_in
    );
\REGS_reg[25][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[25]\(14),
      R => p_0_in
    );
\REGS_reg[25][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[25]\(15),
      R => p_0_in
    );
\REGS_reg[25][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[25]\(16),
      R => p_0_in
    );
\REGS_reg[25][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[25]\(17),
      R => p_0_in
    );
\REGS_reg[25][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[25]\(18),
      R => p_0_in
    );
\REGS_reg[25][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[25]\(19),
      R => p_0_in
    );
\REGS_reg[25][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[25]\(1),
      R => p_0_in
    );
\REGS_reg[25][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[25]\(20),
      R => p_0_in
    );
\REGS_reg[25][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[25]\(21),
      R => p_0_in
    );
\REGS_reg[25][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[25]\(22),
      R => p_0_in
    );
\REGS_reg[25][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[25]\(23),
      R => p_0_in
    );
\REGS_reg[25][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[25]\(24),
      R => p_0_in
    );
\REGS_reg[25][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[25]\(25),
      R => p_0_in
    );
\REGS_reg[25][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[25]\(26),
      R => p_0_in
    );
\REGS_reg[25][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[25]\(27),
      R => p_0_in
    );
\REGS_reg[25][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[25]\(28),
      R => p_0_in
    );
\REGS_reg[25][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[25]\(29),
      R => p_0_in
    );
\REGS_reg[25][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[25]\(2),
      R => p_0_in
    );
\REGS_reg[25][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[25]\(30),
      R => p_0_in
    );
\REGS_reg[25][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[25]\(31),
      R => p_0_in
    );
\REGS_reg[25][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[25]\(3),
      R => p_0_in
    );
\REGS_reg[25][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[25]\(4),
      R => p_0_in
    );
\REGS_reg[25][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[25]\(5),
      R => p_0_in
    );
\REGS_reg[25][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[25]\(6),
      R => p_0_in
    );
\REGS_reg[25][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[25]\(7),
      R => p_0_in
    );
\REGS_reg[25][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[25]\(8),
      R => p_0_in
    );
\REGS_reg[25][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[25]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[25]\(9),
      R => p_0_in
    );
\REGS_reg[26][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[26]\(0),
      R => p_0_in
    );
\REGS_reg[26][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[26]\(10),
      R => p_0_in
    );
\REGS_reg[26][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[26]\(11),
      R => p_0_in
    );
\REGS_reg[26][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[26]\(12),
      R => p_0_in
    );
\REGS_reg[26][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[26]\(13),
      R => p_0_in
    );
\REGS_reg[26][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[26]\(14),
      R => p_0_in
    );
\REGS_reg[26][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[26]\(15),
      R => p_0_in
    );
\REGS_reg[26][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[26]\(16),
      R => p_0_in
    );
\REGS_reg[26][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[26]\(17),
      R => p_0_in
    );
\REGS_reg[26][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[26]\(18),
      R => p_0_in
    );
\REGS_reg[26][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[26]\(19),
      R => p_0_in
    );
\REGS_reg[26][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[26]\(1),
      R => p_0_in
    );
\REGS_reg[26][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[26]\(20),
      R => p_0_in
    );
\REGS_reg[26][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[26]\(21),
      R => p_0_in
    );
\REGS_reg[26][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[26]\(22),
      R => p_0_in
    );
\REGS_reg[26][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[26]\(23),
      R => p_0_in
    );
\REGS_reg[26][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[26]\(24),
      R => p_0_in
    );
\REGS_reg[26][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[26]\(25),
      R => p_0_in
    );
\REGS_reg[26][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[26]\(26),
      R => p_0_in
    );
\REGS_reg[26][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[26]\(27),
      R => p_0_in
    );
\REGS_reg[26][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[26]\(28),
      R => p_0_in
    );
\REGS_reg[26][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[26]\(29),
      R => p_0_in
    );
\REGS_reg[26][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[26]\(2),
      R => p_0_in
    );
\REGS_reg[26][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[26]\(30),
      R => p_0_in
    );
\REGS_reg[26][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[26]\(31),
      R => p_0_in
    );
\REGS_reg[26][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[26]\(3),
      R => p_0_in
    );
\REGS_reg[26][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[26]\(4),
      R => p_0_in
    );
\REGS_reg[26][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[26]\(5),
      R => p_0_in
    );
\REGS_reg[26][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[26]\(6),
      R => p_0_in
    );
\REGS_reg[26][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[26]\(7),
      R => p_0_in
    );
\REGS_reg[26][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[26]\(8),
      R => p_0_in
    );
\REGS_reg[26][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[26]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[26]\(9),
      R => p_0_in
    );
\REGS_reg[27][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[27]\(0),
      R => p_0_in
    );
\REGS_reg[27][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[27]\(10),
      R => p_0_in
    );
\REGS_reg[27][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[27]\(11),
      R => p_0_in
    );
\REGS_reg[27][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[27]\(12),
      R => p_0_in
    );
\REGS_reg[27][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[27]\(13),
      R => p_0_in
    );
\REGS_reg[27][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[27]\(14),
      R => p_0_in
    );
\REGS_reg[27][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[27]\(15),
      R => p_0_in
    );
\REGS_reg[27][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[27]\(16),
      R => p_0_in
    );
\REGS_reg[27][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[27]\(17),
      R => p_0_in
    );
\REGS_reg[27][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[27]\(18),
      R => p_0_in
    );
\REGS_reg[27][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[27]\(19),
      R => p_0_in
    );
\REGS_reg[27][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[27]\(1),
      R => p_0_in
    );
\REGS_reg[27][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[27]\(20),
      R => p_0_in
    );
\REGS_reg[27][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[27]\(21),
      R => p_0_in
    );
\REGS_reg[27][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[27]\(22),
      R => p_0_in
    );
\REGS_reg[27][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[27]\(23),
      R => p_0_in
    );
\REGS_reg[27][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[27]\(24),
      R => p_0_in
    );
\REGS_reg[27][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[27]\(25),
      R => p_0_in
    );
\REGS_reg[27][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[27]\(26),
      R => p_0_in
    );
\REGS_reg[27][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[27]\(27),
      R => p_0_in
    );
\REGS_reg[27][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[27]\(28),
      R => p_0_in
    );
\REGS_reg[27][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[27]\(29),
      R => p_0_in
    );
\REGS_reg[27][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[27]\(2),
      R => p_0_in
    );
\REGS_reg[27][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[27]\(30),
      R => p_0_in
    );
\REGS_reg[27][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[27]\(31),
      R => p_0_in
    );
\REGS_reg[27][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[27]\(3),
      R => p_0_in
    );
\REGS_reg[27][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[27]\(4),
      R => p_0_in
    );
\REGS_reg[27][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[27]\(5),
      R => p_0_in
    );
\REGS_reg[27][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[27]\(6),
      R => p_0_in
    );
\REGS_reg[27][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[27]\(7),
      R => p_0_in
    );
\REGS_reg[27][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[27]\(8),
      R => p_0_in
    );
\REGS_reg[27][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[27]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[27]\(9),
      R => p_0_in
    );
\REGS_reg[28][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[28]\(0),
      R => p_0_in
    );
\REGS_reg[28][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[28]\(10),
      R => p_0_in
    );
\REGS_reg[28][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[28]\(11),
      R => p_0_in
    );
\REGS_reg[28][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[28]\(12),
      R => p_0_in
    );
\REGS_reg[28][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[28]\(13),
      R => p_0_in
    );
\REGS_reg[28][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[28]\(14),
      R => p_0_in
    );
\REGS_reg[28][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[28]\(15),
      R => p_0_in
    );
\REGS_reg[28][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[28]\(16),
      R => p_0_in
    );
\REGS_reg[28][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[28]\(17),
      R => p_0_in
    );
\REGS_reg[28][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[28]\(18),
      R => p_0_in
    );
\REGS_reg[28][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[28]\(19),
      R => p_0_in
    );
\REGS_reg[28][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[28]\(1),
      R => p_0_in
    );
\REGS_reg[28][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[28]\(20),
      R => p_0_in
    );
\REGS_reg[28][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[28]\(21),
      R => p_0_in
    );
\REGS_reg[28][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[28]\(22),
      R => p_0_in
    );
\REGS_reg[28][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[28]\(23),
      R => p_0_in
    );
\REGS_reg[28][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[28]\(24),
      R => p_0_in
    );
\REGS_reg[28][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[28]\(25),
      R => p_0_in
    );
\REGS_reg[28][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[28]\(26),
      R => p_0_in
    );
\REGS_reg[28][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[28]\(27),
      R => p_0_in
    );
\REGS_reg[28][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[28]\(28),
      R => p_0_in
    );
\REGS_reg[28][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[28]\(29),
      R => p_0_in
    );
\REGS_reg[28][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[28]\(2),
      R => p_0_in
    );
\REGS_reg[28][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[28]\(30),
      R => p_0_in
    );
\REGS_reg[28][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[28]\(31),
      R => p_0_in
    );
\REGS_reg[28][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[28]\(3),
      R => p_0_in
    );
\REGS_reg[28][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[28]\(4),
      R => p_0_in
    );
\REGS_reg[28][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[28]\(5),
      R => p_0_in
    );
\REGS_reg[28][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[28]\(6),
      R => p_0_in
    );
\REGS_reg[28][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[28]\(7),
      R => p_0_in
    );
\REGS_reg[28][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[28]\(8),
      R => p_0_in
    );
\REGS_reg[28][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[28]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[28]\(9),
      R => p_0_in
    );
\REGS_reg[29][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[29]\(0),
      R => p_0_in
    );
\REGS_reg[29][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[29]\(10),
      R => p_0_in
    );
\REGS_reg[29][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[29]\(11),
      R => p_0_in
    );
\REGS_reg[29][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[29]\(12),
      R => p_0_in
    );
\REGS_reg[29][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[29]\(13),
      R => p_0_in
    );
\REGS_reg[29][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[29]\(14),
      R => p_0_in
    );
\REGS_reg[29][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[29]\(15),
      R => p_0_in
    );
\REGS_reg[29][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[29]\(16),
      R => p_0_in
    );
\REGS_reg[29][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[29]\(17),
      R => p_0_in
    );
\REGS_reg[29][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[29]\(18),
      R => p_0_in
    );
\REGS_reg[29][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[29]\(19),
      R => p_0_in
    );
\REGS_reg[29][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[29]\(1),
      R => p_0_in
    );
\REGS_reg[29][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[29]\(20),
      R => p_0_in
    );
\REGS_reg[29][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[29]\(21),
      R => p_0_in
    );
\REGS_reg[29][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[29]\(22),
      R => p_0_in
    );
\REGS_reg[29][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[29]\(23),
      R => p_0_in
    );
\REGS_reg[29][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[29]\(24),
      R => p_0_in
    );
\REGS_reg[29][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[29]\(25),
      R => p_0_in
    );
\REGS_reg[29][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[29]\(26),
      R => p_0_in
    );
\REGS_reg[29][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[29]\(27),
      R => p_0_in
    );
\REGS_reg[29][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[29]\(28),
      R => p_0_in
    );
\REGS_reg[29][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[29]\(29),
      R => p_0_in
    );
\REGS_reg[29][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[29]\(2),
      R => p_0_in
    );
\REGS_reg[29][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[29]\(30),
      R => p_0_in
    );
\REGS_reg[29][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[29]\(31),
      R => p_0_in
    );
\REGS_reg[29][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[29]\(3),
      R => p_0_in
    );
\REGS_reg[29][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[29]\(4),
      R => p_0_in
    );
\REGS_reg[29][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[29]\(5),
      R => p_0_in
    );
\REGS_reg[29][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[29]\(6),
      R => p_0_in
    );
\REGS_reg[29][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[29]\(7),
      R => p_0_in
    );
\REGS_reg[29][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[29]\(8),
      R => p_0_in
    );
\REGS_reg[29][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[29]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[29]\(9),
      R => p_0_in
    );
\REGS_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => DI_IBUF(0),
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
      D => DI_IBUF(10),
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
      D => DI_IBUF(11),
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
      D => DI_IBUF(12),
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
      D => DI_IBUF(13),
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
      D => DI_IBUF(14),
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
      D => DI_IBUF(15),
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
      D => DI_IBUF(16),
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
      D => DI_IBUF(17),
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
      D => DI_IBUF(18),
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
      D => DI_IBUF(19),
      Q => \REGS_reg[2]\(19),
      R => p_0_in
    );
\REGS_reg[2][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[2]\(1),
      S => p_0_in
    );
\REGS_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[2]\,
      D => DI_IBUF(20),
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
      D => DI_IBUF(21),
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
      D => DI_IBUF(22),
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
      D => DI_IBUF(23),
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
      D => DI_IBUF(24),
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
      D => DI_IBUF(25),
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
      D => DI_IBUF(26),
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
      D => DI_IBUF(27),
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
      D => DI_IBUF(28),
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
      D => DI_IBUF(29),
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
      D => DI_IBUF(2),
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
      D => DI_IBUF(30),
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
      D => DI_IBUF(31),
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
      D => DI_IBUF(3),
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
      D => DI_IBUF(4),
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
      D => DI_IBUF(5),
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
      D => DI_IBUF(6),
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
      D => DI_IBUF(7),
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
      D => DI_IBUF(8),
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
      D => DI_IBUF(9),
      Q => \REGS_reg[2]\(9),
      R => p_0_in
    );
\REGS_reg[30][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[30]\(0),
      R => p_0_in
    );
\REGS_reg[30][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[30]\(10),
      R => p_0_in
    );
\REGS_reg[30][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[30]\(11),
      R => p_0_in
    );
\REGS_reg[30][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[30]\(12),
      R => p_0_in
    );
\REGS_reg[30][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[30]\(13),
      R => p_0_in
    );
\REGS_reg[30][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[30]\(14),
      R => p_0_in
    );
\REGS_reg[30][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[30]\(15),
      R => p_0_in
    );
\REGS_reg[30][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[30]\(16),
      R => p_0_in
    );
\REGS_reg[30][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[30]\(17),
      R => p_0_in
    );
\REGS_reg[30][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[30]\(18),
      R => p_0_in
    );
\REGS_reg[30][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[30]\(19),
      R => p_0_in
    );
\REGS_reg[30][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[30]\(1),
      R => p_0_in
    );
\REGS_reg[30][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[30]\(20),
      R => p_0_in
    );
\REGS_reg[30][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[30]\(21),
      R => p_0_in
    );
\REGS_reg[30][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[30]\(22),
      R => p_0_in
    );
\REGS_reg[30][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[30]\(23),
      R => p_0_in
    );
\REGS_reg[30][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[30]\(24),
      R => p_0_in
    );
\REGS_reg[30][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[30]\(25),
      R => p_0_in
    );
\REGS_reg[30][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[30]\(26),
      R => p_0_in
    );
\REGS_reg[30][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[30]\(27),
      R => p_0_in
    );
\REGS_reg[30][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[30]\(28),
      R => p_0_in
    );
\REGS_reg[30][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[30]\(29),
      R => p_0_in
    );
\REGS_reg[30][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[30]\(2),
      R => p_0_in
    );
\REGS_reg[30][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[30]\(30),
      R => p_0_in
    );
\REGS_reg[30][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[30]\(31),
      R => p_0_in
    );
\REGS_reg[30][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[30]\(3),
      R => p_0_in
    );
\REGS_reg[30][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[30]\(4),
      R => p_0_in
    );
\REGS_reg[30][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[30]\(5),
      R => p_0_in
    );
\REGS_reg[30][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[30]\(6),
      R => p_0_in
    );
\REGS_reg[30][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[30]\(7),
      R => p_0_in
    );
\REGS_reg[30][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[30]\(8),
      R => p_0_in
    );
\REGS_reg[30][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[30]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[30]\(9),
      R => p_0_in
    );
\REGS_reg[31][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[31]\(0),
      R => p_0_in
    );
\REGS_reg[31][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[31]\(10),
      R => p_0_in
    );
\REGS_reg[31][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[31]\(11),
      R => p_0_in
    );
\REGS_reg[31][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[31]\(12),
      R => p_0_in
    );
\REGS_reg[31][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[31]\(13),
      R => p_0_in
    );
\REGS_reg[31][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[31]\(14),
      R => p_0_in
    );
\REGS_reg[31][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[31]\(15),
      R => p_0_in
    );
\REGS_reg[31][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[31]\(16),
      R => p_0_in
    );
\REGS_reg[31][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[31]\(17),
      R => p_0_in
    );
\REGS_reg[31][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[31]\(18),
      R => p_0_in
    );
\REGS_reg[31][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[31]\(19),
      R => p_0_in
    );
\REGS_reg[31][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[31]\(1),
      R => p_0_in
    );
\REGS_reg[31][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[31]\(20),
      R => p_0_in
    );
\REGS_reg[31][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[31]\(21),
      R => p_0_in
    );
\REGS_reg[31][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[31]\(22),
      R => p_0_in
    );
\REGS_reg[31][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[31]\(23),
      R => p_0_in
    );
\REGS_reg[31][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[31]\(24),
      R => p_0_in
    );
\REGS_reg[31][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[31]\(25),
      R => p_0_in
    );
\REGS_reg[31][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[31]\(26),
      R => p_0_in
    );
\REGS_reg[31][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[31]\(27),
      R => p_0_in
    );
\REGS_reg[31][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[31]\(28),
      R => p_0_in
    );
\REGS_reg[31][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[31]\(29),
      R => p_0_in
    );
\REGS_reg[31][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[31]\(2),
      R => p_0_in
    );
\REGS_reg[31][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[31]\(30),
      R => p_0_in
    );
\REGS_reg[31][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[31]\(31),
      R => p_0_in
    );
\REGS_reg[31][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[31]\(3),
      R => p_0_in
    );
\REGS_reg[31][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[31]\(4),
      R => p_0_in
    );
\REGS_reg[31][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[31]\(5),
      R => p_0_in
    );
\REGS_reg[31][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[31]\(6),
      R => p_0_in
    );
\REGS_reg[31][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[31]\(7),
      R => p_0_in
    );
\REGS_reg[31][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[31]\(8),
      R => p_0_in
    );
\REGS_reg[31][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[31]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[31]\(9),
      R => p_0_in
    );
\REGS_reg[3][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[3]\(0),
      S => p_0_in
    );
\REGS_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => DI_IBUF(10),
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
      D => DI_IBUF(11),
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
      D => DI_IBUF(12),
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
      D => DI_IBUF(13),
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
      D => DI_IBUF(14),
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
      D => DI_IBUF(15),
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
      D => DI_IBUF(16),
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
      D => DI_IBUF(17),
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
      D => DI_IBUF(18),
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
      D => DI_IBUF(19),
      Q => \REGS_reg[3]\(19),
      R => p_0_in
    );
\REGS_reg[3][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[3]\(1),
      S => p_0_in
    );
\REGS_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[3]\,
      D => DI_IBUF(20),
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
      D => DI_IBUF(21),
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
      D => DI_IBUF(22),
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
      D => DI_IBUF(23),
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
      D => DI_IBUF(24),
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
      D => DI_IBUF(25),
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
      D => DI_IBUF(26),
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
      D => DI_IBUF(27),
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
      D => DI_IBUF(28),
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
      D => DI_IBUF(29),
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
      D => DI_IBUF(2),
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
      D => DI_IBUF(30),
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
      D => DI_IBUF(31),
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
      D => DI_IBUF(3),
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
      D => DI_IBUF(4),
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
      D => DI_IBUF(5),
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
      D => DI_IBUF(6),
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
      D => DI_IBUF(7),
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
      D => DI_IBUF(8),
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
      D => DI_IBUF(9),
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
      D => DI_IBUF(0),
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
      D => DI_IBUF(10),
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
      D => DI_IBUF(11),
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
      D => DI_IBUF(12),
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
      D => DI_IBUF(13),
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
      D => DI_IBUF(14),
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
      D => DI_IBUF(15),
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
      D => DI_IBUF(16),
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
      D => DI_IBUF(17),
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
      D => DI_IBUF(18),
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
      D => DI_IBUF(19),
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
      D => DI_IBUF(1),
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
      D => DI_IBUF(20),
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
      D => DI_IBUF(21),
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
      D => DI_IBUF(22),
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
      D => DI_IBUF(23),
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
      D => DI_IBUF(24),
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
      D => DI_IBUF(25),
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
      D => DI_IBUF(26),
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
      D => DI_IBUF(27),
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
      D => DI_IBUF(28),
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
      D => DI_IBUF(29),
      Q => \REGS_reg[4]\(29),
      R => p_0_in
    );
\REGS_reg[4][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[4]\(2),
      S => p_0_in
    );
\REGS_reg[4][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[4]\,
      D => DI_IBUF(30),
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
      D => DI_IBUF(31),
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
      D => DI_IBUF(3),
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
      D => DI_IBUF(4),
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
      D => DI_IBUF(5),
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
      D => DI_IBUF(6),
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
      D => DI_IBUF(7),
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
      D => DI_IBUF(8),
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
      D => DI_IBUF(9),
      Q => \REGS_reg[4]\(9),
      R => p_0_in
    );
\REGS_reg[5][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[5]\(0),
      S => p_0_in
    );
\REGS_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => DI_IBUF(10),
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
      D => DI_IBUF(11),
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
      D => DI_IBUF(12),
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
      D => DI_IBUF(13),
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
      D => DI_IBUF(14),
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
      D => DI_IBUF(15),
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
      D => DI_IBUF(16),
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
      D => DI_IBUF(17),
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
      D => DI_IBUF(18),
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
      D => DI_IBUF(19),
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
      D => DI_IBUF(1),
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
      D => DI_IBUF(20),
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
      D => DI_IBUF(21),
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
      D => DI_IBUF(22),
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
      D => DI_IBUF(23),
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
      D => DI_IBUF(24),
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
      D => DI_IBUF(25),
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
      D => DI_IBUF(26),
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
      D => DI_IBUF(27),
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
      D => DI_IBUF(28),
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
      D => DI_IBUF(29),
      Q => \REGS_reg[5]\(29),
      R => p_0_in
    );
\REGS_reg[5][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[5]\(2),
      S => p_0_in
    );
\REGS_reg[5][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[5]\,
      D => DI_IBUF(30),
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
      D => DI_IBUF(31),
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
      D => DI_IBUF(3),
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
      D => DI_IBUF(4),
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
      D => DI_IBUF(5),
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
      D => DI_IBUF(6),
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
      D => DI_IBUF(7),
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
      D => DI_IBUF(8),
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
      D => DI_IBUF(9),
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
      D => DI_IBUF(0),
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
      D => DI_IBUF(10),
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
      D => DI_IBUF(11),
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
      D => DI_IBUF(12),
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
      D => DI_IBUF(13),
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
      D => DI_IBUF(14),
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
      D => DI_IBUF(15),
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
      D => DI_IBUF(16),
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
      D => DI_IBUF(17),
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
      D => DI_IBUF(18),
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
      D => DI_IBUF(19),
      Q => \REGS_reg[6]\(19),
      R => p_0_in
    );
\REGS_reg[6][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[6]\(1),
      S => p_0_in
    );
\REGS_reg[6][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => DI_IBUF(20),
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
      D => DI_IBUF(21),
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
      D => DI_IBUF(22),
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
      D => DI_IBUF(23),
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
      D => DI_IBUF(24),
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
      D => DI_IBUF(25),
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
      D => DI_IBUF(26),
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
      D => DI_IBUF(27),
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
      D => DI_IBUF(28),
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
      D => DI_IBUF(29),
      Q => \REGS_reg[6]\(29),
      R => p_0_in
    );
\REGS_reg[6][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[6]\(2),
      S => p_0_in
    );
\REGS_reg[6][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[6]\,
      D => DI_IBUF(30),
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
      D => DI_IBUF(31),
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
      D => DI_IBUF(3),
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
      D => DI_IBUF(4),
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
      D => DI_IBUF(5),
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
      D => DI_IBUF(6),
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
      D => DI_IBUF(7),
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
      D => DI_IBUF(8),
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
      D => DI_IBUF(9),
      Q => \REGS_reg[6]\(9),
      R => p_0_in
    );
\REGS_reg[7][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[7]\(0),
      S => p_0_in
    );
\REGS_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => DI_IBUF(10),
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
      D => DI_IBUF(11),
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
      D => DI_IBUF(12),
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
      D => DI_IBUF(13),
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
      D => DI_IBUF(14),
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
      D => DI_IBUF(15),
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
      D => DI_IBUF(16),
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
      D => DI_IBUF(17),
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
      D => DI_IBUF(18),
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
      D => DI_IBUF(19),
      Q => \REGS_reg[7]\(19),
      R => p_0_in
    );
\REGS_reg[7][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[7]\(1),
      S => p_0_in
    );
\REGS_reg[7][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => DI_IBUF(20),
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
      D => DI_IBUF(21),
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
      D => DI_IBUF(22),
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
      D => DI_IBUF(23),
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
      D => DI_IBUF(24),
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
      D => DI_IBUF(25),
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
      D => DI_IBUF(26),
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
      D => DI_IBUF(27),
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
      D => DI_IBUF(28),
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
      D => DI_IBUF(29),
      Q => \REGS_reg[7]\(29),
      R => p_0_in
    );
\REGS_reg[7][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[7]\(2),
      S => p_0_in
    );
\REGS_reg[7][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[7]\,
      D => DI_IBUF(30),
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
      D => DI_IBUF(31),
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
      D => DI_IBUF(3),
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
      D => DI_IBUF(4),
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
      D => DI_IBUF(5),
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
      D => DI_IBUF(6),
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
      D => DI_IBUF(7),
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
      D => DI_IBUF(8),
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
      D => DI_IBUF(9),
      Q => \REGS_reg[7]\(9),
      R => p_0_in
    );
\REGS_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[8]\(0),
      R => p_0_in
    );
\REGS_reg[8][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[8]\(10),
      R => p_0_in
    );
\REGS_reg[8][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[8]\(11),
      R => p_0_in
    );
\REGS_reg[8][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[8]\(12),
      R => p_0_in
    );
\REGS_reg[8][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[8]\(13),
      R => p_0_in
    );
\REGS_reg[8][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[8]\(14),
      R => p_0_in
    );
\REGS_reg[8][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[8]\(15),
      R => p_0_in
    );
\REGS_reg[8][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[8]\(16),
      R => p_0_in
    );
\REGS_reg[8][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[8]\(17),
      R => p_0_in
    );
\REGS_reg[8][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[8]\(18),
      R => p_0_in
    );
\REGS_reg[8][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[8]\(19),
      R => p_0_in
    );
\REGS_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[8]\(1),
      R => p_0_in
    );
\REGS_reg[8][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[8]\(20),
      R => p_0_in
    );
\REGS_reg[8][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[8]\(21),
      R => p_0_in
    );
\REGS_reg[8][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[8]\(22),
      R => p_0_in
    );
\REGS_reg[8][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[8]\(23),
      R => p_0_in
    );
\REGS_reg[8][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[8]\(24),
      R => p_0_in
    );
\REGS_reg[8][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[8]\(25),
      R => p_0_in
    );
\REGS_reg[8][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[8]\(26),
      R => p_0_in
    );
\REGS_reg[8][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[8]\(27),
      R => p_0_in
    );
\REGS_reg[8][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[8]\(28),
      R => p_0_in
    );
\REGS_reg[8][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[8]\(29),
      R => p_0_in
    );
\REGS_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[8]\(2),
      R => p_0_in
    );
\REGS_reg[8][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[8]\(30),
      R => p_0_in
    );
\REGS_reg[8][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[8]\(31),
      R => p_0_in
    );
\REGS_reg[8][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[8]\(3),
      S => p_0_in
    );
\REGS_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[8]\(4),
      R => p_0_in
    );
\REGS_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[8]\(5),
      R => p_0_in
    );
\REGS_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[8]\(6),
      R => p_0_in
    );
\REGS_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[8]\(7),
      R => p_0_in
    );
\REGS_reg[8][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[8]\(8),
      R => p_0_in
    );
\REGS_reg[8][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[8]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[8]\(9),
      R => p_0_in
    );
\REGS_reg[9][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(0),
      Q => \REGS_reg[9]\(0),
      S => p_0_in
    );
\REGS_reg[9][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(10),
      Q => \REGS_reg[9]\(10),
      R => p_0_in
    );
\REGS_reg[9][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(11),
      Q => \REGS_reg[9]\(11),
      R => p_0_in
    );
\REGS_reg[9][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(12),
      Q => \REGS_reg[9]\(12),
      R => p_0_in
    );
\REGS_reg[9][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(13),
      Q => \REGS_reg[9]\(13),
      R => p_0_in
    );
\REGS_reg[9][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(14),
      Q => \REGS_reg[9]\(14),
      R => p_0_in
    );
\REGS_reg[9][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(15),
      Q => \REGS_reg[9]\(15),
      R => p_0_in
    );
\REGS_reg[9][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(16),
      Q => \REGS_reg[9]\(16),
      R => p_0_in
    );
\REGS_reg[9][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(17),
      Q => \REGS_reg[9]\(17),
      R => p_0_in
    );
\REGS_reg[9][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(18),
      Q => \REGS_reg[9]\(18),
      R => p_0_in
    );
\REGS_reg[9][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(19),
      Q => \REGS_reg[9]\(19),
      R => p_0_in
    );
\REGS_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(1),
      Q => \REGS_reg[9]\(1),
      R => p_0_in
    );
\REGS_reg[9][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(20),
      Q => \REGS_reg[9]\(20),
      R => p_0_in
    );
\REGS_reg[9][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(21),
      Q => \REGS_reg[9]\(21),
      R => p_0_in
    );
\REGS_reg[9][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(22),
      Q => \REGS_reg[9]\(22),
      R => p_0_in
    );
\REGS_reg[9][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(23),
      Q => \REGS_reg[9]\(23),
      R => p_0_in
    );
\REGS_reg[9][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(24),
      Q => \REGS_reg[9]\(24),
      R => p_0_in
    );
\REGS_reg[9][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(25),
      Q => \REGS_reg[9]\(25),
      R => p_0_in
    );
\REGS_reg[9][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(26),
      Q => \REGS_reg[9]\(26),
      R => p_0_in
    );
\REGS_reg[9][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(27),
      Q => \REGS_reg[9]\(27),
      R => p_0_in
    );
\REGS_reg[9][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(28),
      Q => \REGS_reg[9]\(28),
      R => p_0_in
    );
\REGS_reg[9][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(29),
      Q => \REGS_reg[9]\(29),
      R => p_0_in
    );
\REGS_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(2),
      Q => \REGS_reg[9]\(2),
      R => p_0_in
    );
\REGS_reg[9][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(30),
      Q => \REGS_reg[9]\(30),
      R => p_0_in
    );
\REGS_reg[9][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(31),
      Q => \REGS_reg[9]\(31),
      R => p_0_in
    );
\REGS_reg[9][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(3),
      Q => \REGS_reg[9]\(3),
      S => p_0_in
    );
\REGS_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(4),
      Q => \REGS_reg[9]\(4),
      R => p_0_in
    );
\REGS_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(5),
      Q => \REGS_reg[9]\(5),
      R => p_0_in
    );
\REGS_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(6),
      Q => \REGS_reg[9]\(6),
      R => p_0_in
    );
\REGS_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(7),
      Q => \REGS_reg[9]\(7),
      R => p_0_in
    );
\REGS_reg[9][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(8),
      Q => \REGS_reg[9]\(8),
      R => p_0_in
    );
\REGS_reg[9][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \REGS[9]\,
      D => DI_IBUF(9),
      Q => \REGS_reg[9]\(9),
      R => p_0_in
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
WEN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => WEN,
      O => WEN_IBUF
    );
end STRUCTURE;
