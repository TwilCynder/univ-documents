LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY test IS
END ENTITY;

ARCHITECTURE arc OF test IS
	SIGNAL a, b, c, S, R : STD_LOGIC := '0';

BEGIN
	--test du circuit TP1_EX1
	fdd_FA : ENTITY WORK.full_adder PORT MAP (a, b, c, S, R);
	a <= '0', '1' AFTER 40 ns;
	b <= '0', '1' AFTER 20 ns, '0' AFTER 60 ns;
	c <= '0', '1' AFTER 10 ns, '0' AFTER 30 ns, '1' AFTER 50 ns, '0' AFTER 70 ns;


END ARCHITECTURE;

--Ce code est un testbench testant les différentes conbinaisons d'entrée du décodeur 2-> 4

