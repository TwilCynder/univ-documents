------------------------------------------------------------------
-- Fichier de test pour Banc Memoire
-- THIEBOLT Francois le 04/11/02
------------------------------------------------------------------

------------------------------------------------------------------
-- VHDL'93 ONLY
-- On ne redeclare pas les composants utilises
------------------------------------------------------------------


-- Definition des librairies
library IEEE;
library WORK;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
-- use WORK.func_package.all;
use WORK.cpu_package.all;

-- Definition de l'entite
entity test_memory is
end test_memory;

-- Definition de l'architecture
architecture behavior of test_memory is

-- definition de constantes de test
	constant S_DATA	: positive := CPU_DATA_WIDTH; -- taille du bus de donnees
	constant S_L1		: positive := L1_SIZE; -- taille du cache L1 en nombre de mots
	constant S_ADR		: positive := log2(S_L1); -- taille du bus adr du cache
	constant WFRONT 	: std_logic := L1_FRONT; -- front actif pour ecriture
--	constant FILENAME : string := ""; -- init a 0 par defaut
	constant FILENAME : string := "rom_file.0.txt"; -- init par fichier
	constant TIMEOUT 	: time := 100 ns; -- timeout de la simulation

-- definition de constantes
constant clkpulse : Time := 5 ns; -- 1/2 periode horloge

-- definition de types

-- definition de ressources internes

-- definition de ressources externes
signal E_RST				: std_logic; -- actif a l'etat bas
signal E_CLK,E_RW			: std_logic;
signal E_AS					: std_logic;
signal E_ADR				: std_logic_vector(S_ADR-1 downto 0);
signal E_D,E_Q				: std_logic_vector(S_DATA-1 downto 0);

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
	assert FALSE report "SIMULATION TIMEOUT!!!" severity FAILURE;
end process P_TIMEOUT;

------------------------------------------------------------------
-- instanciation et mapping de composants
L1 : entity work.memory(behavior)
		generic map (S_DATA,S_L1,WFRONT,FILENAME)
		port map (RST => E_RST, CLK => E_CLK, RW => E_RW,
					 AS => E_AS, ADR => E_ADR, D => E_D, Q => E_Q );

------------------------------------------------------------------
-- debut sequence de test
P_TEST: process
begin

	-- initialisations
	E_RST <= '0';
	E_RW <= '1';
	E_AS <= '0';
	E_ADR <= (others => 'X');
	E_D <= (others => 'X');

	-- sequence RESET
	E_RST <= '0';
	wait for clkpulse*3;
	E_RST <= '1';
	wait for clkpulse;

	-- ecriture dans registre2
	wait until (E_CLK=(WFRONT)); wait for clkpulse/2;
	E_ADR <= conv_std_logic_vector(2,S_ADR);
	E_D <= to_stdlogicvector(BIT_VECTOR'(X"0000FFFF"));
	E_AS <= '1';
	E_RW <= '0';

	-- ecriture dans registre3
	wait until (E_CLK=(WFRONT)); wait for clkpulse/2;
	E_ADR <= conv_std_logic_vector(3,S_ADR);
	E_D <= to_stdlogicvector(BIT_VECTOR'(X"00FF00FF"));
	E_AS <= '1';
	E_RW <= '0';

	-- ecriture dans registre0
	wait until (E_CLK=(WFRONT)); wait for clkpulse/2;
	E_ADR <= conv_std_logic_vector(0,S_ADR);
	E_D <= to_stdlogicvector(BIT_VECTOR'(X"FFFF0000"));
	E_AS <= '1';
	E_RW <= '0';

	-- lecture registre 0
	wait until (E_CLK=(WFRONT)); wait for clkpulse/2;
	E_ADR <= conv_std_logic_vector(0,S_ADR);
	E_D <= to_stdlogicvector(BIT_VECTOR'(X"0F0F0F0F"));
	E_AS <= '1';
	E_RW <= '1';

	-- tests
	wait until (E_CLK=(WFRONT)); wait for clkpulse/2;
	E_AS <= '0';
	E_RW <= '1';
	assert E_Q = to_stdlogicvector(BIT_VECTOR'(X"FFFF0000"))
		report "Memory 0 BAD VALUE"
		severity ERROR;

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK=(WFRONT)); wait for clkpulse/2;
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;
	-- assert (NOW < TIMEOUT) report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behavior;
