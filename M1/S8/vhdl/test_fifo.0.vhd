------------------------------------------------------------------
-- Fichier de test de FIFO
--
-- For GHDL users:
-- ghdl -a --ieee=synopsys -fexplicit fifo.0.vhd test_fifo.0.vhd
-- ghdl -e --ieee=synopsys -fexplicit test_fifo
-- ghdl -r --ieee=synopsys -fexplicit test_fifo --wave=output.ghw
-- gtkwave output.ghw
--
-- F.Thiebolt
------------------------------------------------------------------

------------------------------------------------------------------
-- Note : Si l'on ajoute la librairie std_logic_unsigned, alors
-- il y a une surcharge des operateurs qui provoque alors un
-- warning a la comparaison entre un vecteur de 'Z' et un bus.
------------------------------------------------------------------

-- Definition des librairies
library IEEE;
library WORK;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
-- use IEEE.std_logic_unsigned.all; -- si ops sur unsigned int.

-- Definition de l'entite
entity test_fifo is
end test_fifo;

-- Definition de l'architecture
architecture behavior of test_fifo is

-- definition des constantes
	constant W_DATA	: positive:=4; -- taille du bus de donnes
	constant W_ADR		: positive:=2; -- taille du bus d'adresse, soit 2**W_ADR mots
--	constant RWFRONT 	: std_logic := '0'; -- front actif pour lecture/ecriture
	constant TIMEOUT 	: time := 300 ns; -- timeout de la simulation

-- definition de constantes
constant clkpulse : Time := 5 ns; -- 1/2 periode horloge

-- definition de types

-- definition de ressources externes
signal E_CLK,E_RST				: std_logic;
signal E_REN,E_WEN				: std_logic;
signal E_DI,E_DO				: std_logic_vector(W_DATA-1 downto 0);
signal E_EMPTY,E_MID,E_FULL	    : std_logic;

begin

------------------------------------------------------------------
-- definition de l'horloge
P_E_CLK: process
begin
	E_CLK <= '1';
	wait for clkpulse;
	E_CLK <= '0';
	wait for clkpulse;
end process P_E_CLK;

------------------------------------------------------------------
-- definition du timeout de la simulation
P_TIMEOUT: process
begin
	wait for TIMEOUT;
	assert FALSE report "TIMEOUT SIMULATION !!!" severity FAILURE;
end process P_TIMEOUT;

------------------------------------------------------------------
-- instanciation et mapping du composant fifo
fifo1 : entity work.fifo(behavior)  -- behavioural simulation
			generic map (W_DATA,W_ADR)
--fifo1 : entity work.fifo(behavior)  -- post-synthesis functional simulation
			port map (E_CLK,E_RST,E_REN,E_WEN,E_DI,E_DO,E_EMPTY,E_MID,E_FULL);

------------------------------------------------------------------
-- debut sequence de test
P_TEST: process
begin

	-- initialisations
	E_RST <= '0';
	E_REN <= '1';
	E_WEN <= '1';
	E_DI <= (others=>'Z');

	-- sequence RST
	E_RST <= '0';
	wait for clkpulse*3;
	E_RST <= '1';
	wait for clkpulse;
	wait until (E_CLK='1'); -- front montant

	-- tests des FLAGS apres RST et premiere lecture et ecriture (REGS 0) simultanee
	wait until (E_CLK='0'); -- front descendant
	assert (E_EMPTY='1' and E_MID='0' and E_FULL='0')
		report "Empty flag not set (or others wrong) !"
		severity ERROR;
	E_REN <= '0';
	E_WEN <= '0';
	E_DI <= conv_std_logic_vector(1,W_DATA);

	-- tests des FLAGS apres premiere ecriture et demande de lecture
	wait until (E_CLK='0'); -- front descendant
	assert (E_EMPTY='0' and E_MID='0' and E_FULL='0')
		report "Empty flag still set (or others wrong) !"
		severity ERROR;
	E_WEN <= '1';
	E_DI <= (others=>'Z');
	E_REN <= '0';

	-- tests des FLAGS et Q apres premiere lecture
	wait until (E_CLK='0'); -- front descendant
	E_REN <= '1';
	assert (E_EMPTY='1' and E_MID='0' and E_FULL='0')
		report "Empty flag not set (or others wrong) !"
		severity ERROR;
	assert (E_DO = conv_std_logic_vector(1,W_DATA))
		report "First element READ is wrong (must be 1) !"
		severity ERROR;

	-- ecriture data (REGS 1)
	wait until (E_CLK='0'); -- front descendant
	E_WEN <= '0';
	E_DI <= conv_std_logic_vector(2,W_DATA);

	-- ecriture data (REGS 2)
	wait until (E_CLK='0'); -- front descendant
	E_WEN <= '0';
	E_DI <= conv_std_logic_vector(3,W_DATA);

	-- ecriture data (REGS 3) et tests des FLAGS
	wait until (E_CLK='0'); -- front descendant
	assert (E_EMPTY='0' and E_MID='1' and E_FULL='0')
		report "Mid flag not set (or others wrong) !"
		severity ERROR;
	E_WEN <= '0';
	E_DI <= conv_std_logic_vector(4,W_DATA);

	-- ecriture data (REGS 0)
	wait until (E_CLK='0'); -- front descendant
	E_WEN <= '0';
	E_DI <= conv_std_logic_vector(5,W_DATA);

	-- test des FLAGS (normalement W_ADR = R_ADR = REGS 1)
	wait until (E_CLK='0'); -- front descendant
	E_WEN <= '1';
	E_DI <= (others=>'Z');
	assert (E_EMPTY='0' and E_MID='1' and E_FULL='1')
		report "Full flag not set (or others wrong) !"
		severity ERROR;

	-- ecriture data (REGS 1)
	wait until (E_CLK='0'); -- front descendant
	E_WEN <= '0';
	E_DI <= conv_std_logic_vector(6,W_DATA);

	-- test des FLAGS (normalement W_ADR = R_ADR = REGS 2)
	wait until (E_CLK='0'); -- front descendant
	E_WEN <= '1';
	E_DI <= (others=>'Z');
	assert (E_EMPTY='0' and E_MID='1' and E_FULL='1')
		report "Full flag not set (or others wrong) !"
		severity ERROR;

	-- lecture et ecriture data simultanees (REGS 2)
	wait until (E_CLK='0'); -- front descendant
	E_REN <= '0';
	E_WEN <= '0';
	E_DI <= conv_std_logic_vector(7,W_DATA);

	-- test des FLAGS et Q (normalement W_ADR = R_ADR = REGS 3)
	wait until (E_CLK='0'); -- front descendant
	E_REN <= '1';
	E_WEN <= '1';
	E_DI <= (others=>'Z');
	assert (E_EMPTY='0' and E_MID='1' and E_FULL='1')
		report "Full flag not set (or others wrong) !"
		severity ERROR;
	assert (E_DO = conv_std_logic_vector(3,W_DATA))
		report "Data element READ is wrong (must be 3) !"
		severity ERROR;

	-- lecture jusqu'a FIFO vide (on doit voir Q=4,5,6,7)
	wait until (E_CLK='0'); -- front descendant
	E_REN <= '0';
	wait until (E_EMPTY='1');

	-- test des FLAGS et lecture (normalement W_ADR = R_ADR = REGS 3)
	wait until (E_CLK='0'); -- front descendant
		-- E_REN toujours actif
	assert (E_EMPTY='1' and E_MID='0' and E_FULL='0')
		report "Empty flag not set (or others wrong) !"
		severity ERROR;

	-- lecture data et test FLAGS et Q (normalement Q=0)
	wait until (E_CLK='0'); -- front descendant
	E_REN <= '1';
	assert (E_EMPTY='1' and E_MID='0' and E_FULL='0')
		report "Empty flag not set (or others wrong) !"
		severity ERROR;
	assert (E_DO = conv_std_logic_vector(0,W_DATA))
		report "Data element READ is wrong (must be 0) !"
		severity ERROR;

	-- ni lecture ni ecriture (normalement Q=Z)
	wait until (E_CLK='0'); -- front descendant
	assert (E_DO = STD_LOGIC_VECTOR'("ZZZZ"))
	-- assert (E_Q = ('Z','Z','Z','Z'))
		report "Q output must be high impedance !"
		severity ERROR;

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='0'); -- front descendant
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;
	-- assert (NOW < TIMEOUT) report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behavior;
