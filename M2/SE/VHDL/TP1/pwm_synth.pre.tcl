# set generic parameter for synthesis
#set_property generic {SYS_CLK=125000000 PWM_FREQ=50 DUTY_RES=4} [current_fileset]

# set generic parameters intended to post-synthesis simulation pwm_clk = sys_clk / 20
set_property generic {SYS_CLK=125000000 PWM_FREQ=6250000 DUTY_RES=4} [current_fileset]