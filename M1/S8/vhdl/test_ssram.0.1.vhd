------------------------------------------------------------------
-- Fichier de test de SSRAM
-- THIEBOLT Francois
------------------------------------------------------------------

------------------------------------------------------------------
-- Test une architecture comprenant plusieurs SSRAM organises en
--	parallele pour atteindre une taille de bus 16 bits
--	Le processeur hote possede les caracteristiques suivantes :
--		16 bits data bus
--		16 bits adresse bus
-- Chaque SSRAMs possede les caracteristiques suivantes :
--		8 bits data bus
--		3 bits adresse bus (donc 8 mots)
--		4 cycles de latence (4 front montant CLK apres activation CS*)
--		2ns de delai sur la sortie des donnes en lecture
--
-- VHDL'93 ONLY
-- On ne redeclare pas les composants utilises
------------------------------------------------------------------

-- Definition des librairies
library IEEE;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Definition de l'entite
entity test_ssram is
end test_ssram;

-- Definition de l'architecture
architecture behavior of test_ssram is

-- definition des constantes
constant S_CPU_ADR		: positive := 16; -- taille du bus d'adresse CPU (A15 --> A1)
constant S_CPU_DATA		: positive := 16; -- taille du bus de donnes SSRAM
constant S_SSRAM_ADR		: positive := 3; -- taille du bus d'adresse SSRAM
constant S_SSRAM_DATA	: positive := 8; -- taille du bus de donnes SSRAM
constant D_SSRAM_CS		: positive := 4; -- latence en nombre de cycles SSRAM
constant D_SSRAM_I2Q		: time := 2 ns; -- delai entre une nouvelle adresse et l'evolution de la sortie
--	constant RWFRONT 	: std_logic := '0'; -- front actif pour lecture/ecriture
constant TIMEOUT 			: time := 500 ns; -- timeout de la simulation

-- definition de types
subtype T_UDATA is std_logic_vector(S_CPU_DATA-1 downto S_CPU_DATA/2); -- upper data bus part
subtype T_LDATA is std_logic_vector((S_CPU_DATA/2)-1 downto 0); -- lower data bus part
subtype T_RAMADR is std_logic_vector(S_SSRAM_ADR-1 downto 0);
subtype T_CSRAMADR is std_logic_vector(S_CPU_ADR-1 downto S_SSRAM_ADR);

-- definition de constantes
constant clkpulse 		: Time := 5 ns; -- 1/2 periode horloge
constant SSRAM_BADR		: std_logic_vector := conv_std_logic_vector(16#100#,S_CPU_ADR); -- adresse de base des ssrams

-- definition de ressources externes
signal E_CLK		: std_logic;
signal E_RST,E_CS	: std_logic; -- actifs a l'etat bas
signal E_RW			: std_logic; -- W* actif a l'etat bas
signal E_DBUS		: std_logic_vector(S_CPU_DATA-1 downto 0);
signal E_ABUS		: std_logic_vector(S_CPU_ADR-1 downto 0);

-- definition de ressources internes
signal I_CS			: std_logic; -- CS pour les SSRAM

begin

------------------------------------------------------------------
-- affectations du chip select interne
P_I_CS: process(E_RST,E_CS)
begin
	______
	______
	______
	______
	______

end process P_I_CS;

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
ssramU : entity work.ssram(behavior)
			generic map (S_SSRAM_ADR,S_SSRAM_DATA,D_SSRAM_CS,D_SSRAM_I2Q)
			port map (__________________________________________);
ssramL : entity work.ssram(behavior)
			generic map (S_SSRAM_ADR,S_SSRAM_DATA,D_SSRAM_CS,D_SSRAM_I2Q)
			port map (__________________________________________);

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
	E_ABUS <= SSRAM_BADR;
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	E_CS <= '0';
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	E_ABUS <= (others => 'Z');
	wait for clkpulse*2*(D_SSRAM_CS-2);

	for i in 1 to 2**S_SSRAM_ADR+1 loop -- pour etre sur de deborder
		E_DBUS <= conv_std_logic_vector(2**i,S_CPU_DATA);
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
	E_ABUS <= conv_std_logic_vector(16#F8F0#,S_CPU_ADR);
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	E_CS <= '0';
	wait until (E_CLK='1'); -- front montant horloge
	E_ABUS <= SSRAM_BADR+2;
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	E_ABUS <= (others => 'Z');
	wait for clkpulse*2*(D_SSRAM_CS-2);
	wait until (E_CLK='1'); -- front montant
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
--		assert (E_DBUS = conv_std_logic_vector('Z',S_DATA))
		assert (E_DBUS = ('Z','Z','Z','Z','Z','Z','Z','Z','Z','Z','Z','Z','Z','Z','Z','Z'))
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
