vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../../PWM_IP.gen/sources_1/ip/PWM_IP_0/hdl/PWM_IP_v1_0_S00_AXI.vhd" \
"../../../../PWM_IP.gen/sources_1/ip/PWM_IP_0/hdl/PWM_IP_v1_0.vhd" \
"../../../../PWM_IP.gen/sources_1/ip/PWM_IP_0/src/pwm.vhd" \
"../../../../PWM_IP.gen/sources_1/ip/PWM_IP_0/sim/PWM_IP_0.vhd" \


