#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Feb 17 10:52:18 CET 2023
# SW Build 3526262 on Mon Apr 18 15:47:01 MDT 2022
#
# IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim test_memory_behav -key {Behavioral:sim_1:Functional:test_memory} -tclbatch test_memory.tcl -log simulate.log"
xsim test_memory_behav -key {Behavioral:sim_1:Functional:test_memory} -tclbatch test_memory.tcl -log simulate.log
