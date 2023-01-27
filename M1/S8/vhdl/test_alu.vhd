------------------------------------------------------------------
-- Test de procedure ALU pour RISC
-- THIEBOLT Francois le 04/11/02
------------------------------------------------------------------

-- Definition des librairies
library IEEE;
library WORK;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use WORK.cpu_package.all;

-- Definition de l'entite
entity test_alu is
end test_alu;

-- Definition de l'architecture
architecture behavior of test_alu is

-- definition de constantes
	constant S_ALU : positive := CPU_DATA_WIDTH;
	constant WFRONT : std_logic := '0'; -- OK il n'y a pas d'ecriture, juste pour le sequencement
	constant TIMEOUT 	: time := 150 ns; -- timeout de la simulation

-- specification des architectures de composants a utiliser

-- definition de constantes
constant clkpulse : Time := 5 ns; -- 1/2 periode horloge

-- definition de types

-- definition de ressources internes
signal ALU_A,ALU_B,ALU_S : std_logic_vector(S_ALU-1 downto 0);
signal ALU_N,ALU_V,ALU_Z,ALU_C,ALU_SIGNED : std_logic;
signal ALU_CTRL : ALU_OPS;

-- definition de ressources autres
signal E_CLK,E_RESET : std_logic;

begin
---------------------------------------------------
-- operations dans le domaine concourant
-- Il est possible d'appeler une procedure dans le
-- domaine concourant a condition que tous les 
-- parametres de type out soient des signaux
P_ALU:alu(ALU_A,ALU_B,ALU_S,ALU_N,ALU_V,ALU_Z,ALU_C,ALU_SIGNED,ALU_CTRL);

--------------------------
-- definition de l'horloge
P_CLK: process
begin
	E_CLK <= '1';
	wait for clkpulse;
	E_CLK <= '0';
	wait for clkpulse;
end process P_CLK;

-----------------------------------------
-- definition du timeout de la simulation
P_TIMEOUT: process
begin
	wait for TIMEOUT;
	assert FALSE report "SIMULATION TIMEOUT!!!" severity FAILURE;
end process P_TIMEOUT;

-------------------------
-- debut sequence de test
P_TEST: process
begin

	-- initialisations
	E_RESET <=	'1';
	ALU_A <= (others=>'0');
	ALU_B <= (others=>'0');
	ALU_SIGNED <= '0';
	ALU_CTRL <= ALU_OPS'low;

	-- sequence RESET
	E_RESET <= '0';
	wait for clkpulse*3;
	E_RESET <= '1';
	wait for clkpulse;

	-- addition signee
	wait until (E_CLK=not(WFRONT));
	ALU_CTRL <= ALU_ADD;
	ALU_SIGNED <= '1';
	ALU_A <= conv_std_logic_vector(2,S_ALU);
	ALU_B <= conv_std_logic_vector(-8,S_ALU);
	wait on ALU_S;
	assert (ALU_S = conv_std_logic_vector(-6,S_ALU) and ALU_N='1' and ALU_V='0')
		report "Addition failed, doit etre ALU_S=-6 ALU_N=1 et ALU_V=0"
		severity ERROR;

	-- addition non signee, on ne change que signed_op par rapport a la precedente operation
	wait until (E_CLK=not(WFRONT));
	ALU_SIGNED <= '0';
	wait on ALU_S; -- ###ERROR### ne marche pas car la sortie ALU_S n'evolue pas !!!
--	wait on ALU_N;
	assert (ALU_S=conv_std_logic_vector(-6,S_ALU) and (ALU_N,ALU_V,ALU_C)=to_stdlogicvector(BIT_VECTOR'(B"000")))
		report "Addition failed, doit etre ALU_S=10 et NVC=000"
		severity ERROR;

	-- soustraction signee
	-- ALU_V est a 0 car 8 n'est pas en overflow sur 32 bits!
	wait until (E_CLK=not(WFRONT));
	ALU_CTRL <= ALU_SUB;
	ALU_SIGNED <= '1';
	ALU_A <= conv_std_logic_vector(2,S_ALU);
	ALU_B <= conv_std_logic_vector(8,S_ALU);
	wait on ALU_N;
	assert (ALU_S=conv_std_logic_vector(-6,S_ALU) and ALU_V='0')
		report "Soustraction failed, doit etre ALU_S=-6 et ALU_V=0"
		severity ERROR;

	-- Positionner si < signe
	wait until (E_CLK=not(WFRONT));
	ALU_CTRL <= ALU_SLT;
	ALU_SIGNED <= '1';
	ALU_A <= conv_std_logic_vector(-8,S_ALU);
	ALU_B <= conv_std_logic_vector(7,S_ALU);
	wait on ALU_S;
	assert (ALU_S=conv_std_logic_vector(1,S_ALU))
		report "SLT failed, doit etre ALU_S=1"
		severity ERROR;

	-- Positionner si < non signe, on ne change que signed_op par rapport a la precedente operation
	wait until (E_CLK=not(WFRONT));
	ALU_SIGNED <= '0';
	wait on ALU_S;
	assert (ALU_S=conv_std_logic_vector(0,S_ALU))
		report "SLT failed, doit etre ALU_S=0"
		severity ERROR;

	-- decalage gauche
	wait until (E_CLK=not(WFRONT));
	ALU_CTRL <= ALU_LSL;
	ALU_SIGNED <= '0';
	ALU_A <= to_stdlogicvector(BIT_VECTOR'(X"0000FFFF"));
	ALU_B <= conv_std_logic_vector(16,S_ALU);
	wait on ALU_S;
	assert (ALU_S=to_stdlogicvector(BIT_VECTOR'(X"FFFF0000")))
		report "LSL failed, doit etre ALU_S=FFFF0000"
		severity ERROR;

	-- decalage droite
	wait until (E_CLK=not(WFRONT)); 
	ALU_CTRL <= ALU_LSR;
	ALU_SIGNED <= '0';
	ALU_A <= to_stdlogicvector(BIT_VECTOR'(X"FFFF0000"));
	ALU_B <= conv_std_logic_vector(8,S_ALU);
	wait on ALU_S;
	assert (ALU_S=to_stdlogicvector(BIT_VECTOR'(X"00FFFF00")))
		report "LSL failed, doit etre ALU_S=00FFFF00"
		severity ERROR;

	-- XOR
	wait until (E_CLK=not(WFRONT));
	ALU_CTRL <= ALU_XOR;
	ALU_SIGNED <= '0';
	ALU_A <= to_stdlogicvector(BIT_VECTOR'(X"44444444"));
	ALU_B <= to_stdlogicvector(BIT_VECTOR'(X"EEEEEEEE"));
	wait on ALU_S;
	assert (ALU_S=to_stdlogicvector(BIT_VECTOR'(X"AAAAAAAA")))
		report "XOR failed, doit etre ALU_S=AAAAAAAA"
		severity ERROR;

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND
	wait until (E_CLK='1');
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;
	-- assert (NOW < TIMEOUT) report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behavior;
