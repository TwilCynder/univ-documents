LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY test IS
END ENTITY;

ARCHITECTURE arc OF test IS
	SIGNAL I1, I0, N, O3, O2, O1, O0 : STD_LOGIC := '0';

BEGIN
	--test du circuit TP1_EX1
	fddTP1EX1 : ENTITY WORK.TP1EX1 PORT MAP (I1, I0, N, O3, O2, O1, O0);

	PROCESS 
		TYPE TableDeVerite IS ARRAY (0 TO 7) OF STD_lOGIC_VECTOR(2 DOWNTO 0);
		constant TdV : TableDeVerite :=("000", "001", "010", "011",
						"100", "101", "110", "111");
	BEGIN
		FOR I IN TdV'RANGE LOOP
			N  <= TdV(I)(2);
			I1 <= TdV(I)(1);
			I0 <= TdV(I)(0);
			WAIT for 5 ns;
		END LOOP;
		WAIT;
	END PROCESS;
END ARCHITECTURE;
