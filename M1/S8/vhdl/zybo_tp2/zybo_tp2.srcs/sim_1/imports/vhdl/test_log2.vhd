---------------------------------------
-- Log2 component test architecture
-- F.Thiebolt
-- 
-- For GHDL users:
-- Note: as a first step, you won't need the 'log2_hw.vhd' file
-- [Compilation]
-- ghdl -a --ieee=synopsys -fexplicit cpu_package.0.vhd test_log2.vhd
-- ghdl -a --ieee=synopsys -fexplicit cpu_package.0.vhd log2_hw.vhd test_log2.vhd
-- [Elaborate]
-- ghdl -e --ieee=synopsys -fexplicit test_log2
-- [Simulation]
-- ghdl -r --ieee=synopsys -fexplicit test_log2 --wave=output.ghw
-- [Waves display]
-- gtkwave output.ghw
--
---------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- only required for log2 function from cpu_package
library work;
use work.cpu_package.all;

-- component definition
entity test_log2 is
end test_log2;

-- architecture definition
architecture behaviour of test_log2 is

    -- constant defintions
    constant BUS_WIDTH  : natural := 8;
	constant TIMEOUT 	: time := 2500 ms; -- simulation timeout
    constant clkpulse   : Time := 500 ns; -- 1/2 periode horloge

    -- types/subtypes definitions

    -- signal definitions
    signal E_IN     : std_logic_vector(BUS_WIDTH-1 downto 0);
    signal E_OUT    : std_logic_vector(BUS_WIDTH-1 downto 0);
    signal E_CLK    : std_logic;
    signal E_RST    : std_logic; -- active low

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

-------------------------------
-- function call
-- First behavioural simulation
E_OUT <= log2( E_IN );

---------------------------------------
-- component instantiation
-- For post-synthesis timing simulation
--clog2: entity work.log2_hw(_________)
--        ________
--        ________
--        ________
--        ________

-----------------------------
-- Test process
P_TEST: process
begin

	-- initialisations
	E_RST <= '0';
	E_IN <= (others=>'0');
	--E_IN <= 0;
    -- E_CLK <= '0'; DON'T DO THAT ... guess why ???

	-- sequence RESET
	E_RST <= '0';
	wait for clkpulse*3;
	E_RST <= '1';
	wait for clkpulse/2;

    -- wait for pulse output
    for i in 0 to (2**BUS_WIDTH)-1 loop
        E_IN <= conv_std_logic_vector(i,E_IN'length);
        wait until (E_CLK='1');
    end loop;

    -- wait for pulse output
	wait until (E_CLK='1');

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='0'); wait for clkpulse*3;
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behaviour;

