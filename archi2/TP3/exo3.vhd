LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity reg8b_wSrP IS
	port ( 	D, wr : IN std_logic;
		Q : OUT std_logic_vector(7 downto 0);
end entity

architecture arc of reg8b_wSrP IS
begin
	process (wr)
	begin
		if rising_edge(wr) then
			Q <= D & Q(7 downto 1);
		end if
	end process
end architecture




entity reg8b_wPrS IS
	port (  D : IN std_logic_vector (7 downto 0);
		wr, rd 	: IN std_logic;
		Q : OUT std_logic);
end entity

architecture arc of reg8b_wPrS IS
	signal reg : std_logic_vector(7 downto 0);
begin 
	process (wr, rd)
	begin
		if rising_edge(wr) then
			reg <= D;
		end if
		if rising_edge(rd) then
			reg <= reg(0) & reg(7 downto 1);
			Q <= reg(0);
	end process
end architecture


