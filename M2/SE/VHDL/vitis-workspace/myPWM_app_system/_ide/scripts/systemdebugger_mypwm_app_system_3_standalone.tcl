# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/vitis-workspace/myPWM_app_system/_ide/scripts/systemdebugger_mypwm_app_system_3_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/vitis-workspace/myPWM_app_system/_ide/scripts/systemdebugger_mypwm_app_system_3_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B4835EA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B4835EA-23727093-0"}
fpga -file /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/vitis-workspace/myPWM_app/_ide/bitstream/PWM_AXI_SYSTEM.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/vitis-workspace/PWM_AXI_SYSTEM/export/PWM_AXI_SYSTEM/hw/PWM_AXI_SYSTEM.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/vitis-workspace/myPWM_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/vitis-workspace/myPWM_app/Debug/myPWM_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
