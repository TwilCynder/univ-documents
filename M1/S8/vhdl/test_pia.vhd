---------------------------------------
-- Fichier de test du PIA
-- THIEBOLT Francois Janvier 2014
---------------------------------------

-- Definition des librairies
library IEEE;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Definition de l'entite
entity test_pia is
end test_pia;

-- Definition de l'architecture
architecture behavior of test_pia is

-- definition des constantes de test
	constant S_IO	: positive:=8; -- taille des bus de donnees et d'entree/sorties
  constant DRA  : std_logic:='0'; -- registre DRA
  constant DDRA : std_logic:='1'; -- registre DDRA
	constant TIMEOUT 	: time := 150 ns; -- timeout de la simulation

-- definition de constantes
constant clkpulse : Time := 5 ns; -- 1/2 periode horloge

-- definition de types

-- definition de ressources internes

-- definition de ressources externes
signal E_CLK      : std_logic;
signal E_RST,E_CS : std_logic; -- actifs a l'etat bas
signal E_RW,E_ADR : std_logic;
signal E_D,E_PA   : std_logic_vector(S_IO-1 downto 0);

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
pia0 : entity work.pia(behavior)
					generic map (S_IO)
					port map (CLK => E_CLK,
								 RW => E_RW,
								 CS => E_CS,
								 RST => E_RST,
								 ADR => E_ADR,
								 D => E_D,
								 PA => E_PA);

-----------------------------
-- debut sequence de test
P_TEST: process
begin

	-- initialisations
	E_RST <= '0';
	E_ADR <= 'X';
	E_D <= (others=>'Z');
	E_RW <= '1';

	-- sequence RESET
	E_RST <= '0';
	wait for clkpulse;
	E_RST <= '1';

	-- lecture DDRA
	wait until (E_CLK='1'); wait for clkpulse/2;
	E_CS <='0';
	E_ADR <= DDRA;
	E_RW <= '1';
  -- test
	wait until (E_CLK='1'); wait for clkpulse/2;
  E_CS <= '1';
	assert E_D = conv_std_logic_vector(0,E_D'length)
		report "Register DDRA BAD VALUE"
		severity FAILURE;

  -- affectation PA
  wait until (E_CLK='1'); wait for clkpulse/2;
--  E_PA <= to_stdlogicvector(BIT_VECTOR'(X"77")); -- 0111 0111
  E_PA <= ('0','H','H','H','0','H','H','H');
  
  -- lecture DRA (i.e PA)
	wait until (E_CLK='1'); wait for clkpulse/2;
	E_CS <='0';
	E_ADR <= DRA;
	E_RW <= '1';
  -- test
	wait until (E_CLK='1'); wait for clkpulse/2;
  E_CS <= '1';
	assert E_D = to_stdlogicvector(BIT_VECTOR'(X"77"))
--	assert E_D = ('0','H','H','H','0','H','H','H')
		report "Register DRA BAD VALUE"
		severity FAILURE;
	
	-- ecriture DRA
	wait until (E_CLK='1'); wait for clkpulse/2;
	E_CS <='0';
	E_ADR <= DRA;
	E_D <= to_stdlogicvector(BIT_VECTOR'("10101010"));
	E_RW <= '0';

	-- ecriture DDRA
	wait until (E_CLK='1'); wait for clkpulse/2;
	E_CS <='0';
	E_ADR <= DDRA;
	E_D <= to_stdlogicvector(BIT_VECTOR'("00001111")); -- 4 bits poids fort en entree & 4 bits poids faible en sortie
	E_RW <= '0';

  -- CS desactivation
  wait until (E_CLK='1'); wait for clkpulse/2;
  E_D <= (others=>'Z');
  E_CS <= '1';

  -- lecture DRA
	wait until (E_CLK='1'); wait for clkpulse/2;
	E_CS <='0';
	E_ADR <= DRA;
	E_RW <= '1';
  -- test
	wait until (E_CLK='1'); wait for clkpulse/2;
  E_CS <= '1';
	assert E_D = to_stdlogicvector(BIT_VECTOR'(X"77"))
--	assert E_D = ('0','H','H','H','0','0','H','0')
		report "Register DRA BAD VALUE"
		severity FAILURE;

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='1'); wait for clkpulse/2;
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behavior;
