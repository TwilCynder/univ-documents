---------------------------------------
-- Fichier de test de Banc de registres
-- F.Thiebolt
-- 
-- For GHDL users:
-- ghdl -a --ieee=synopsys -fexplicit registres.0.vhd test_registres.0.vhd
-- ghdl -e --ieee=synopsys -fexplicit test_registres
-- ghdl -r --ieee=synopsys -fexplicit test_registres --wave=output.ghw
-- gtkwave output.ghw
--
---------------------------------------

-- Definition des librairies
library ieee;

-- Definition des portee d'utilisation
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Definition de l'entite
entity test_registres is
end test_registres;

-- Definition de l'architecture
architecture behavior of test_registres is

-- definition des constantes de test
	constant S_DATA	    : positive:=32; -- taille du bus de donnes
	constant S_ADR		: positive:=3; -- taille du bus d'adresse
	constant TIMEOUT 	: time := 150 ns; -- timeout de la simulation

-- definition de constantes
constant clkpulse : Time := 5 ns; -- 1/2 periode horloge

-- definition de types

-- definition de ressources internes

-- definition de ressources externes
signal E_CLK                            : std_logic;
signal E_RST,E_W 						: std_logic; -- actifs a l'etat bas
signal E_ADR_A,E_ADR_B,E_ADR_W	        : std_logic_vector(S_ADR-1 downto 0);
signal E_QA,E_QB,E_D					: std_logic_vector(S_DATA-1 downto 0);

-- components instanciation
--for all : registres use entity work.registres(behavior); --behavior simulation
--for all : registres use entity work.registres(structure); --post-synth functional simulation

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
--regf0 : entity work.registres(behavior) --behavioural simulation
--                    generic map (S_DATA,S_ADR)
regf0 : entity work.registres(structure) --post-synthesis functional simulation
					port map (CLK => E_CLK,
								 W => E_W,
								 RST => E_RST,
								 D => E_D,
								 ADR_A => E_ADR_A,
								 ADR_B => E_ADR_B,
								 ADR_W => E_ADR_W,
								 QA => E_QA,
								 QB => E_QB);

-----------------------------
-- debut sequence de test
P_TEST: process
begin

	-- initialisations
	E_RST <= '0';
	E_ADR_A <= (others=>'X');
	E_ADR_B <= (others=>'X');
	E_ADR_W <= (others=>'X');
	E_D <= (others=>'X');
	E_W <= '1';

	-- sequence RESET
	E_RST <= '0';
	wait for clkpulse*3;
	E_RST <= '1';
	wait for clkpulse;

	-- ecriture dans registre2
	wait until E_CLK='1'; wait for clkpulse/2;
	E_ADR_W <= conv_std_logic_vector(2,S_ADR);
	E_D <= to_stdlogicvector(BIT_VECTOR'(X"2222FFFF"));
	E_W <= '0';

	-- ecriture dans registre3
	wait until E_CLK='1'; wait for clkpulse/2;
	E_ADR_W <= conv_std_logic_vector(3,S_ADR);
	E_D <= to_stdlogicvector(BIT_VECTOR'(X"33FF33FF"));
	E_W <= '0';

	-- ecriture dans registre0
	wait until E_CLK='1'; wait for clkpulse/2;
	E_ADR_W <= conv_std_logic_vector(0,S_ADR);
	E_D <= to_stdlogicvector(BIT_VECTOR'(X"FFFF0000"));
	E_W <= '0';

	-- ecriture dans registre4 et
	-- lectures registres 0 et 3 sur respectivement QA et QB
	wait until E_CLK='1'; wait for clkpulse/2;
	E_ADR_W <= conv_std_logic_vector(4,S_ADR);
	E_D <= to_stdlogicvector(BIT_VECTOR'(X"4F4F4F4F"));
	E_W <= '0';
	E_ADR_A <= conv_std_logic_vector(0,S_ADR);
	E_ADR_B <= conv_std_logic_vector(3,S_ADR);

	-- tests
	wait until E_CLK='1'; wait for clkpulse/2;
	E_W <= '1';
	E_ADR_A <= (others => 'X');
	E_ADR_B <= (others => 'X');
	E_ADR_W <= (others => 'X');
	E_D <= (others => 'X');
	assert E_QA = conv_std_logic_vector(0,S_DATA)
		report "Register 0 BAD VALUE"
		severity ERROR;
	assert E_QB = to_stdlogicvector(BIT_VECTOR'(X"33FF33FF"))
		report "Register 3 BAD VALUE"
		severity ERROR;

	-- ecriture dans registre5 et lecture registre 5
	wait until E_CLK='1'; wait for clkpulse/2;
	E_ADR_W <= conv_std_logic_vector(5,S_ADR);
	E_D <= to_stdlogicvector(BIT_VECTOR'(X"F5F5F5F5"));
	E_W <= '0';
	E_ADR_A <= conv_std_logic_vector(5,S_ADR);

	-- asynchronous read of reg5
	wait for clkpulse;
	assert E_QA = to_stdlogicvector(BIT_VECTOR'(X"F5F5F5F5"))
		report "Register 5 BAD VALUE"
		severity WARNING;

	-- NOP
	wait until E_CLK='1'; wait for clkpulse/2;
	E_W <= '1';
	E_ADR_A <= (others => 'X');
	E_ADR_B <= (others => 'X');
	E_ADR_W <= (others => 'X');
	E_D <= (others => 'X');
	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='1'); wait for clkpulse/2;
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behavior;

