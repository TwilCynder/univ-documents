------------------------------------------------------------------
-- Fichier de test de SSRAM
-- THIEBOLT Francois 
------------------------------------------------------------------

------------------------------------------------------------------
-- Test une seule ssram
--
-- VHDL'93 ONLY
-- On ne redeclare pas les composants utilises
------------------------------------------------------------------

-- Definition des librairies
library IEEE;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

-- Definition de l'entite
entity test_ssram is
end test_ssram;

-- Definition de l'architecture
architecture behavior of test_ssram is

-- definition des constantes
	constant S_ADR		: positive := 3; -- taille du bus d'adresse
	constant S_DATA	: positive := 8; -- taille du bus de donnes
	constant D_CS		: positive := 4; -- latence en nombre de cycles
	constant D_I2Q		: time := 2 ns; -- delai entre une nouvelle adresse et l'evolution de la sortie
--	constant RWFRONT 	: std_logic := '0'; -- front actif pour lecture/ecriture
	constant TIMEOUT 	: time := 500 ns; -- timeout de la simulation

-- definition de constantes
constant clkpulse : Time := 5 ns; -- 1/2 periode horloge

-- definition de types

-- definition de ressources externes
signal E_CLK		: std_logic;
signal E_RST,E_CS	: std_logic; -- actifs a l'etat bas
signal E_RW			: std_logic; -- W* actif a l'etat bas
signal E_DBUS		: std_logic_vector(S_DATA-1 downto 0);
signal E_ABUS		: std_logic_vector(S_ADR-1 downto 0);

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
-- instanciation et mapping du composant ssram
ssram1 : entity work.ssram(behavior)
			generic map (S_ADR,S_DATA,D_CS,D_I2Q)
			port map (E_RW,E_CS,E_RST,E_CLK,E_ABUS,E_DBUS);

------------------------------------------------------------------
-- debut sequence de test
P_TEST: process
begin

	-- initialisations
	E_RST <= '0';
	E_CS <= '1';
	E_RW <= '1';
	E_ABUS <= (others=>'Z');
	E_DBUS <= (others=>'Z');

	-- sequence RESET
	wait for clkpulse/8;
	E_RST <= '0';
	wait for clkpulse*3;
	E_RST <= '1';
	wait for clkpulse/2;

	-- ecriture dans ssram
	wait until (E_CLK='1'); -- front montant horloge
	E_RW <= '0';
	E_ABUS <= conv_std_logic_vector(16#F880#,S_ADR); -- LADR=0
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	E_CS <= '0';
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	E_ABUS <= (others => 'Z');
	wait for clkpulse*2*(D_CS-2);

	for i in 1 to 2**S_ADR+1 loop -- pour etre sur de deborder
		E_DBUS <= conv_std_logic_vector(i,S_DATA);
		wait until (E_CLK='1'); -- front montant horloge
		wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	end loop;

	-- fin acces
	E_CS <= '1';
	E_DBUS <= (others => 'Z');
	wait for clkpulse*2; -- on attend une periode d'horloge
	wait until (E_CLK='1'); -- front montant horloge

	-- lecture ssram
	wait until (E_CLK='1'); -- front montant horloge
	E_RW <= '1';
	E_ABUS <= conv_std_logic_vector(16#F88F#,S_ADR); -- LADR=7
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	E_CS <= '0';
	wait for clkpulse;
	E_ABUS <= (others => 'Z');
	wait until (E_CLK='1'); -- front montant
	wait until (E_CLK='1'); -- front montant
	wait for clkpulse*2*(D_CS-2);
	wait until (E_CLK='1'); -- front montant horloge
		assert (E_DBUS = conv_std_logic_vector(8,S_DATA))
			report "E_DBUS wrong value"
			severity ERROR;
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
--		assert (E_DBUS = conv_std_logic_vector('Z',S_DATA))
		assert (E_DBUS = ('Z','Z','Z','Z','Z','Z','Z','Z'))
			report "E_DBUS wrong value, must be 'Z'"
			severity ERROR;
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	
	-- fin acces
	E_CS <= '1';

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='1'); -- front montant
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;
	-- assert (NOW < TIMEOUT) report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behavior;
