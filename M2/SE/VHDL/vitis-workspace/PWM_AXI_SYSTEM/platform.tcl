# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/vitis-workspace/PWM_AXI_SYSTEM/platform.tcl
# 
# OR launch xsct and run below command.
# source /nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/vitis-workspace/PWM_AXI_SYSTEM/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {PWM_AXI_SYSTEM}\
-hw {/nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/PWM_IP/PWM_AXI_SYSTEM.xsa}\
-out {/nfs/home/camsi13/Documents/univ-documents/M2/SE/VHDL/vitis-workspace}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {PWM_AXI_SYSTEM}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
