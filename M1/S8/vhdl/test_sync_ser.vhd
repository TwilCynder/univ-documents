------------------------------------------------------------------
-- Test architecture for sync_ser
-- F.Thiebolt
--
-- For GHDL users:
-- ghdl -a --ieee=synopsys -fexplicit sync_ser.vhd test_sync_ser.vhd
-- ghdl -e --ieee=synopsys -fexplicit test_sync_ser
-- ghdl -r --ieee=synopsys -fexplicit test_sync_ser --wave=output.ghw
-- gtkwave output.ghw
------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.sync_ser_package.all;

-- Definition de l'entite
entity test_sync_ser is
end test_sync_ser;

-- Definition de l'architecture
architecture behavior of test_sync_ser is

-- definition des constantes
	constant S_DATA		: positive := 4; 	-- taille en nombre de bits des mots à envoyer
	constant MY_PARITY	: PARITY_t := EVEN;	-- your selected parity
	-- constant MY_PARITY	: PARITY_t := NONE;	-- your selected parity
	constant TIMEOUT 	: time := 300 ns; 	-- timeout de la simulation

	constant VALUE1		: positive := 2#00100010#;
	constant VALUE2		: positive := 2#1#;

-- definition de constantes
constant clkpulse : Time := 5 ns; -- 1/2 periode horloge

-- definition de types

-- definition de ressources externes
signal E_DIN		: std_logic_vector(S_DATA-1 downto 0);
signal E_STROBE		: std_logic; -- active low
signal E_CLK		: std_logic;
signal E_RDY		: std_logic;
signal E_RST		: std_logic; -- active low
signal E_DOUT		: std_logic;

-- definition des ressources internes
signal I_ACK_EN		: std_logic; -- enable / disable ACK for received value

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
	assert FALSE report "TIMEOUT SIMULATION !!!" severity FAILURE;
end process P_TIMEOUT;

----------------------------------------
-- instanciation et mapping du composant
syncser1 : entity work.sync_ser(behavior)
			generic map (S_DATA, MY_PARITY)
			port map (DIN => E_DIN,
						Strobe => E_STROBE,
						RDY => E_RDY,
						RST => E_RST,
						CLK => E_CLK,
						DOUT => E_DOUT);

-----------------------------
-- debut sequence de test
P_TEST: process
	variable value : std_logic_vector(S_DATA-1 downto 0);
begin

	-- initialisations
	E_DIN <= (others => 'U');
	E_STROBE <= 'U';
	E_RST <= '0';
	wait until (E_CLK='1'); -- front montant

	-- sequence RESET
	wait until (E_CLK='1'); -- front montant horloge
	E_STROBE <= '1';
	wait for clkpulse/4;
	E_RST <= '1';
	
	-- start new word sequence WORD#1
	wait until (E_CLK='1'); -- front montant horloge
	E_STROBE <= '1';
	wait for clkpulse/2;
	E_DIN <= conv_std_logic_vector(value1,S_DATA);
	wait for clkpulse*2;
	E_STROBE <= '0';
	wait until (E_RDY='1');

	-- start new word sequence WORD#2
	wait until (E_CLK='1'); -- front montant horloge
	E_STROBE <= '1';
	wait until (E_CLK='1'); -- front montant horloge	
	wait for clkpulse/2;
	E_DIN <= conv_std_logic_vector(value2,S_DATA);
	wait for clkpulse*2;
	E_STROBE <= '0';
	wait until (E_RDY='1');

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='1'); -- front montant
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;
	-- assert (NOW < TIMEOUT) report "FIN DE SIMULATION" severity FAILURE;


end process P_TEST;

end behavior;
