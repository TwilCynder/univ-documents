LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY test_4b IS
END ENTITY;

ARCHITECTURE arc OF test_4b IS
	SIGNAL c, R   	: STD_LOGIC := '0';
	SIGNAl A, B, S  : STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN
	--test du circuit TP1_EX1
	adder : ENTITY WORK.adder_4bit PORT MAP (A, B, C, S, R);
	PROCESS 
	BEGIN
		FOR I IN 0 to 15 LOOP
			A <= STD_LOGIC_VECTOR(TO_UNSIGNED(I, A'LENGTH));
			FOR J IN 0 TO 15 LOOP
				B <= STD_LOGIC_VECTOR(TO_UNSIGNED(J, B'LENGTH));
				C <= '0';
				WAIT for 5 ns;
				C <= '1';
				WAIT for 5 ns;
			END LOOP;
		END LOOP;
		WAIT;
	END PROCESS;
END ARCHITECTURE;
