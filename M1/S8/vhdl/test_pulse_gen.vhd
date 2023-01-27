---------------------------------------
-- Pulse generator test architecture
--
-- For GHDL users:
-- ghdl -a --ieee=synopsys -fexplicit pulse_gen.vhd test_pulse_gen.vhd
-- ghdl -e --ieee=synopsys -fexplicit test_pulse_gen
-- ghdl -r --ieee=synopsys -fexplicit test_pulse_gen --wave=test_pulse_gen.ghw
-- gtkwave test_pulse_gen.ghw
--
-- F.Thiebolt
---------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- component definition
entity test_pulse_gen is
end test_pulse_gen;

-- architecture definition
architecture behaviour of test_pulse_gen is

    -- constant defintions
	constant TIMEOUT 	: time := 2500 ms; -- simulation timeout
    constant clkpulse   : Time := 500 ns; -- 1/2 periode horloge

    -- types/subtypes definitions

    -- signal definitions
    signal E_CLK,E_P    : std_logic;
    signal E_RST        : std_logic; -- active low

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
pgen0 : entity work.pulse_gen(behaviour)
--			generic map (10)
			port map (MCLK => E_CLK,
                        RST => E_RST,
                        P => E_P);

-----------------------------
-- Test process
P_TEST: process
begin

	-- initialisations
	E_RST <= '0';
    E_CLK <= '0'; -- DON'T DO THAT ... guess why ???

	-- sequence RESET
	E_RST <= '0';
	wait for clkpulse*3;
	E_RST <= '1';
	wait for clkpulse/2;

    -- wait for pulse output
	wait until (E_P='1');

    -- wait for pulse output
	wait until (E_P='1');

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='0'); wait for clkpulse*3;
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behaviour;

