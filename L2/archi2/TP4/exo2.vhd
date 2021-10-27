LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity reg8b IS
	PORT (	wr, rd : IN STD_LOGIC; 
		dataIn : IN STD_LOGIC_VECTOR(7 downto 0);
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

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity mux_2t1 is
	port ( 	a, b : in std_logic_vector(7 downto 0);
		c : in std_logic;
		s : out std_logic_vector(7 downto 0));
end entity;
architecture arc of mux_2t1 is
begin 
	WITH c SELECT
		S <=	a WHEN '0',
			b  WHEN '1',
			"00000000" WHEN OTHERS;
end architecture;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY dec IS
	PORT (  E : in STD_LOGIC_VECTOR(2 DOWNTO 0);
		S : out STD_LOGIC_VECTOR(7 downto 0)
	);
END ENTITY;

ARCHITECTURE arc OF dec IS
BEGIN
	WITH E SELECT
		S <=	"00000001" WHEN "000",
			"00000010" WHEN "001",
			"00000100" WHEN "010",
			"00001000" WHEN "011",
			"00010000" WHEN "100",
			"00100000" WHEN "101",
			"01000000" WHEN "110",
			"10000000" WHEN "111",
			"UUUUUUUU" WHEN OTHERS;

END ARCHITECTURE;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity fifo is
	port ( 	D : in std_logic_vector(7 downto 0);
		S : out std_logic_vector(7 downto 0);
		ecr, clk : in std_logic);
end entity;

architecture arc of fifo is 
	signal upDownOut : std_logic_vector(2 downto 0);
	signal decOut : std_logic_vector(7 downto 0);
	signal orOut : std_logic_vector(3 downto 0); --signal situé en sortie des portes ou
	signal andOut : std_logic_vector(3 downto 0); --signal situé en sortie des portes et
	TYPE vecArray IS ARRAY (0 TO 3) OF STD_lOGIC_VECTOR(7 DOWNTO 0);
	signal muxOut : vecArray;
	signal regOut : vecArray;
	component reg8b PORT (	wr, rd : IN STD_LOGIC; 
				dataIn : IN STD_LOGIC_VECTOR(7 downto 0);
				dataOut : OUT STD_LOGIC_VECTOR(7 downto 0)
	); end component;
	component ud_cnt port ( clk, upDOwn	: IN STD_LOGIC;
				S	: OUT STD_LOGIC_VECTOR(2 downto 0) := "000"	
	); end component;
	component mux_2t1 port (a, b : in std_logic_vector(7 downto 0);
				c : in std_logic;
				s : out std_logic_vector(7 downto 0)
	); end component;
	component dec port (  	E : in STD_LOGIC_VECTOR(2 DOWNTO 0);
				S : STD_LOGIC_VECTOR(7 downto 0)
	); end component;
	
begin
	upDown : ud_cnt PORT MAP (clk, ecr, upDownOut);
	decoder : dec PORT MAP (upDownOut, decOut);
	gen_or : for i in 0 to 3 generate
		orOut(i) <= decOut(i) or not ecr;
	end generate;
	gen_and : for i in 0 to 3 generate
		andOut(i) <= orOut(i) and clk;
	end generate;
	mux : mux_2t1 port map ("00000000", D, ecr, muxOut(0));
	gen_mux : for i in 1 to 3 generate
		mux : mux_2t1 port map (regOut(i - 1), D, ecr, muxOut(i));
	end generate;
	gen_reg : for i in 0 to 3 generate
		reg : reg8b port map (andOut(i), '1', muxOut(i), regOut(i));
	end generate;
	S <= regOut(3);
end architecture;
		




