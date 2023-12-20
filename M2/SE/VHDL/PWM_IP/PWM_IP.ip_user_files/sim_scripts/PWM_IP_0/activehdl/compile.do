transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../../PWM_IP.gen/sources_1/ip/PWM_IP_0/hdl/PWM_IP_v1_0_S00_AXI.vhd" \
"../../../../PWM_IP.gen/sources_1/ip/PWM_IP_0/hdl/PWM_IP_v1_0.vhd" \
"../../../../PWM_IP.gen/sources_1/ip/PWM_IP_0/src/pwm.vhd" \
"../../../../PWM_IP.gen/sources_1/ip/PWM_IP_0/sim/PWM_IP_0.vhd" \


