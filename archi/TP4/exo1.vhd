LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity asc_cnt is
	port ( 	clk	: IN STD_LOGIC;
		S	: OUT STD_LOGIC_VECTOR(2 downto 0) := "000"	
	);
end entity;

architecture arc of asc_cnt is
	TYPE TdV IS ARRAY (0 TO 4) OF STD_lOGIC_VECTOR(2 DOWNTO 0);
	constant codes : TdV :=("000", "001", "010", "011", "100");
begin
	process (clk)
		variable i : integer := 0;
	begin
		if rising_edge(clk) then
			if i < 4 then
				i := i + 1 ;
				s <= codes(i);
			end if;
		end if;
	end process;
end architecture;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity des_cnt is
	port ( 	clk	: IN STD_LOGIC;
		S	: OUT STD_LOGIC_VECTOR(2 downto 0) := "100"	
	);
end entity;

architecture arc of des_cnt is
	TYPE TdV IS ARRAY (0 TO 4) OF STD_lOGIC_VECTOR(2 DOWNTO 0);
	constant codes : TdV :=("000", "001", "010", "011", "100");
begin
	process (clk)
		variable i : integer := 4;
	begin
		if rising_edge(clk) then
			if i > 0 then
				i := i - 1 ;
				s <= codes(i);
			end if;
		end if;
	end process;
end architecture;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity ud_cnt is
	port ( 	clk, upDOwn	: IN STD_LOGIC;
		S	: OUT STD_LOGIC_VECTOR(2 downto 0) := "000"	
	);
end entity;

architecture arc of ud_cnt is
	TYPE TdV IS ARRAY (0 TO 4) OF STD_lOGIC_VECTOR(2 DOWNTO 0);
	constant codes : TdV :=("000", "001", "010", "011", "100");
begin
	process (clk)
		variable i : integer := 0;
	begin
		if rising_edge(clk) then
			if upDown = '1' then
				if i < 4 then
					i := i + 1 ;
					s <= codes(i);
				end if;
			else
				if i > 0 then
					i := i - 1 ;
					s <= codes(i);
				end if;
			end if;
		end if;
	end process;
end architecture;
