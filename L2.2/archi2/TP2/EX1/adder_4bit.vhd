LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY adder_4bit IS
	PORT (  a, b	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		c 	: IN STD_LOGIC;
		S	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		R 	: OUT STD_LOGIC);

END ENTITY;

ARCHITECTURE struct_4B OF adder_4bit IS
	SIGNAL D : STD_LOGIC_VECTOR (4 DOWNTO 0);
	COMPONENT full_adder PORT (	as, bs, cs : IN STD_LOGIC ;
					Ss, Rs	: OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	D(0) <= c;
	R <= D(4);

	gen_adders : FOR i IN 0 TO 3 GENERATE
		adder : full_adder PORT MAP (A(i), B(i), D(i), S(i), D(i + 1));
	END GENERATE;
	
END ARCHITECTURE;
