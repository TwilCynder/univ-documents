---------------------------------------
-- PWM test architecture
-- F.Thiebolt
-- 
-- For GHDL users:
-- ghdl -a --ieee=synopsys -fexplicit pwm.vhd test_pwm.vhd
-- ghdl -e --ieee=synopsys -fexplicit test_pwm
-- ghdl -r --ieee=synopsys -fexplicit test_pwm --wave=output.ghw
-- gtkwave output.ghw
--
---------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- component definition
entity test_pwm is
end test_pwm;

-- architecture definition
architecture behaviour of test_pwm is

    -- constant defintions
    constant clkpulse   : Time := 4 ns; -- 1/2 periode horloge (125MHz)
    --constant clkpulse   : Time := 500 ns; -- 1/2 periode horloge
	constant TIMEOUT 	: time := clkpulse*1000; -- simulation timeout

    constant sys_freq   : natural := conv_integer((1 sec)/(clkpulse*2));
    --constant pwm_freq   : natural := 1; -- 1Hz
    constant pwm_freq   : natural := sys_freq / 20;
    constant duty_res   : natural := 4;
    -- types/subtypes definitions

    -- signal definitions
    signal E_CLK,E_EN,E_P   : std_logic;
    signal E_DUTY           : std_logic_vector(duty_res-1 downto 0);
    signal E_RST            : std_logic; -- active low

begin

--------------------------
-- definition de l'horloge
P_E_CLK: process
begin
	E_CLK <= '1';
	wait for clkpulse;
	E_CLK <= '0';
	wait for clkpulse;
end process P_E_CLK;

-----------------------------------------
-- definition du timeout de la simulation
P_TIMEOUT: process
begin
	wait for TIMEOUT;
	assert FALSE report "SIMULATION TIMEOUT!!!" severity FAILURE;
end process P_TIMEOUT;

--------------------------------------------------
-- instantiation et mapping du composant registres
--pwm0 : entity work.pwm(behaviour) --behavioural simulation
--			generic map (sys_clk => sys_freq,
--                            pwm_freq => pwm_freq,
--                            duty_res => duty_res)
pwm0 : entity work.pwm(structure) --post-synthesis functional simulation
			port map (CLK => E_CLK,
                        RST => E_RST,
                        EN => E_EN,
                        DUTY => E_DUTY,
                        P => E_P);

-----------------------------
-- Test process
P_TEST: process
begin

	-- initialisations
	E_RST <= '1';
    E_EN <= '0';
    E_DUTY <= (others=>'0');
    -- E_CLK <= '0'; DON'T DO THAT ... guess why ???

	-- sequence RESET
	E_RST <= '1';
	wait for clkpulse*3;
	E_RST <= '0';
	wait for clkpulse/2;

    -- wait a bit before starting
    wait for clkpulse*8;
    assert E_P='0' report "Error P ought not get set" severity FAILURE;
    
    -- start a new cycle
    -- with DUTY=min value
    wait until E_CLK='0';
    wait for clkpulse/2;
    E_EN <= '0';
    wait until E_CLK='1';
    wait for clkpulse/2;
    E_DUTY <= conv_std_logic_vector(1,duty_res);    -- set minimal value
    wait for clkpulse*2;
    E_EN <= '1';
    wait until E_CLK='1';
    wait until E_P='1';

    -- change duty_cycle during current cycle
    wait for clkpulse*3;
    wait until E_CLK='0';
    E_DUTY <= (E_DUTY'high=>'0', others=>'1');    -- set mid value
    wait for clkpulse*3;
    wait until E_CLK='0';

    -- wait for next pulse output rising edge
	wait until (E_P='1');

    -- wait a bit before changing duty_cycle
    wait for clkpulse*5;
    wait until E_CLK='0';
    E_DUTY <= (others=>'1');    -- set max value
    wait for clkpulse*3;
    wait until E_CLK='0';

    -- wait for next pulse output rising edge
	wait until (E_P='1');

    -- wait before simulation ending
    wait for clkpulse*((sys_freq/pwm_freq)*2+1);


	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='0'); wait for clkpulse*3;
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behaviour;

