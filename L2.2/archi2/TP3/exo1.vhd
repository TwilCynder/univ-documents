LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity reg8b IS
	PORT (	wr, rd : IN STD_LOGIC; 
		dataIn : IN STD_LOGIC_VECTOR;
		dataOut : OUT STD_LOGIC_VECTOR(7 downto 0)
	);
END ENTITY;

architecture arc OF reg8b IS 
	signal reg : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
begin
	process (wr)
	begin
		if rising_edge(wr) then
			reg <= dataIn;
		end if;
	end process;

	with rd select
	dataOut <= 	reg 		WHEN '1',
			"ZZZZZZZZ"	WHEN '0',
			"UUUUUUUU"	WHEN others;		

end architecture;
