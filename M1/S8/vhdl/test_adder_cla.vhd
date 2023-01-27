------------------------------------------------------------------
-- Fichier de test procedure Adder_CLA
-- THIEBOLT Francois le 04/11/02
------------------------------------------------------------------

-- Le drapeau overflow V ne sert que lors d'operations signees !!!
-- Lors d'une operation non signee, on ne tient pas compte du flag V
-- Overflow V=1 si operation signee et :
--		addition de deux grands nombres positifs dont le resultat < 0
--		addition de deux grands nombres negatifs dont le resultat >= 0
--		soustraction d'un grand nombre positif et d'un grand nombre negatif dont le resultat < 0
--		soustraction d'un grand nombre negatif et d'un grand nombre positif dont le resultat >= 0
--	Reviens a faire V = C_OUT xor <carry entrante du dernier bit>

-- Pour que la surcharge de l'operateur "+" fonctionne, il ne faut pas faire appel a la
-- librairie IEEE.std_logic_unsigned, car elle aussi surcharge l'operateur "+" avec les
-- memes arguments en entree et sortie ==> impossible de les differencier

-- Definition des librairies
library IEEE;
library WORK;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
-- use IEEE.std_logic_unsigned.all;	-- sinon conflit avec notre fonction "+" !!
use WORK.cpu_package.all;

-- Definition de l'entite
entity test_adder_cla is
end test_adder_cla;

-- Definition de l'architecture
architecture behavior of test_adder_cla is

	-- definitions de constantes
	constant S_DATA 	: positive := 4; -- unsigned [0..15], signed [-8..+7]
	constant TIMEOUT 	: time := 100 ns; -- timeout de la simulation

	-- specification des architectures de composants a utiliser

	-- definition de constantes
	constant clkpulse : Time := 5 ns; -- 1/2 periode horloge

	-- definition de types

	-- definition de ressources internes
	signal I_S		: std_logic_vector(S_DATA-1 downto 0);

	-- definition de ressources externes
	signal E_RST,E_CLK	 	: std_logic;
	signal E_A,E_B,E_S		: std_logic_vector(S_DATA-1 downto 0);
	signal E_COUT,E_V			: std_logic;
	signal E_ADD_SUB			: std_logic;	-- ('0',ADD) ('1',SUB)

begin

--------------------------------------------
-- Affectations dans le domaine combinatoire

-- appel a la surcharge de l'operateur "+"
I_S	<= E_A + E_B;

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

-----------------------------------------
-- instanciation et mapping de composants

-----------------------------------------------------------------
-- process additionneur
--		car un appel de procedure est une instruction (process only)
P_ADDER: process(E_A,E_B,E_ADD_SUB)
	variable ________;
	variable ________;
	variable ________;
	variable ________;
begin
	________
	________
	________
	________
	________
end process P_ADDER;

-----------------------------
-- debut sequence de test
P_TEST: process
begin

	-- initialisations
	E_RST <= '0';
	E_A <= (others=>'0');
	E_B <= (others=>'0');
	E_ADD_SUB <= '0';

	-- sequence RESET
	E_RST <= '0';
	wait for clkpulse*3;
	E_RST <= '1';
	wait for clkpulse;

	-- premiere addition non signee (8+4 = X"C")
	wait until (E_CLK='1'); -- front montant
	E_ADD_SUB <= '0';
	E_A <= conv_std_logic_vector(8,S_DATA);
	E_B <= conv_std_logic_vector(4,S_DATA);
	wait for clkpulse;
	assert (E_S=conv_std_logic_vector(12,S_DATA) and E_COUT='0')
		report "Erreur addition, doit etre E_S=12 & E_COUT=0"
		severity ERROR;

	-- addition non signee (8+10 = X"2" & carry out)
	wait until (E_CLK='1'); -- front montant
	E_ADD_SUB <= '0';
	E_A <= conv_std_logic_vector(8,S_DATA);
	E_B <= conv_std_logic_vector(10,S_DATA);
	wait for clkpulse;
	assert (E_S=conv_std_logic_vector(2,S_DATA) and E_COUT='1')
		report "Erreur addition, doit etre E_S=2 & E_COUT=1"
		severity ERROR;
	
	-- addition signee (5+3 = 8 / overflow)
	wait until (E_CLK='1'); -- front montant
	E_ADD_SUB <= '0';
	E_A <= conv_std_logic_vector(5,S_DATA);
	E_B <= conv_std_logic_vector(3,S_DATA);
	wait for clkpulse;
	assert (E_V='1')
		report "Erreur drapeau overflow, doit etre E_V=1"
		severity ERROR;

	-- les nombre signes vont de +7 a -8

	-- A - B avec A=2 et B=8, si la soustraction est signee B est deja lui meme en OVERFLOW
	-- A + B avec A=2 et B=-8, addition signee B est correct puisque l'on peut de +7 a -8
	
	-- addition signee (2+(-8) = -6)
	wait until (E_CLK='1'); -- front montant
	E_ADD_SUB <= '0';
	E_A <= conv_std_logic_vector(2,S_DATA);
	E_B <= conv_std_logic_vector(-8,S_DATA);
	wait for clkpulse;
	assert (E_V='0')
		report "Erreur drapeau overflow, doit etre E_V=0"
		severity ERROR;

	-- soustraction signee (2 - 8 = -6) ATTENTION 8 est deja en overflow
	wait until (E_CLK='1'); -- front montant
	E_ADD_SUB <= '1';
	E_A <= conv_std_logic_vector(2,S_DATA);
	E_B <= conv_std_logic_vector(8,S_DATA);
	wait for clkpulse;
	assert (E_S=conv_std_logic_vector(-6,S_DATA) and E_V='1')
		report "Erreur soustraction, doit etre E_S=-6 & E_V=1"
		severity ERROR;

	-- soustraction signee (-3-7 = -10 / overflow )
	wait until (E_CLK='1'); -- front montant
	E_ADD_SUB <= '1';
	E_A <= conv_std_logic_vector(-3,S_DATA);
	E_B <= conv_std_logic_vector(7,S_DATA);
	wait for clkpulse;
	assert (E_S=conv_std_logic_vector(-10,S_DATA) and E_V='1')
		report "Erreur soustraction, doit etre E_S=-10 & E_V=1"
		severity ERROR;

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='1');
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;
	-- assert (NOW < TIMEOUT) report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behavior;
