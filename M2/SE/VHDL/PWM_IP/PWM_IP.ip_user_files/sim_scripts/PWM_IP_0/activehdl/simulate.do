transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+PWM_IP_0  -L xil_defaultlib -L secureip -O2 xil_defaultlib.PWM_IP_0

do {PWM_IP_0.udo}

run

endsim

quit -force
