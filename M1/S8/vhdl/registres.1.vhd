-------------------------------------------------------------------------------
-- Registyers bank featuring bthe bypass mechanism
-- THIEBOLT Francois
-------------------------------------------------------------------------------

--------------------------------------------------------------
-- Par defaut 32 registres de 32 bits avec lecture double port
--------------------------------------------------------------

-- Definition des librairies
library IEEE;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Definition de l'entite
entity registres is

	-- definition des parametres generiques
	generic	(
		-- largeur du bus de donnees par defaut
		DBUS_WIDTH	: integer := 32; -- registre de 32 bits par defaut

		-- largeur du bus adr pour acces registre soit 32 (2**5) par defaut
		ABUS_WIDTH	: integer := 5 );

	-- definition des entrees/sorties
	port 	(
		-- signaux de controle du Banc de registres
		CLK			: in std_logic;
		W,RST			: in std_logic; -- actifs a l'etat bas

		-- bus d'adresse et donnees
		ADR_A,ADR_B	: in std_logic_vector(ABUS_WIDTH-1 downto 0);
		ADR_W			: in std_logic_vector(ABUS_WIDTH-1 downto 0);
		D				: in std_logic_vector(DBUS_WIDTH-1 downto 0);

		-- Ports de sortie
		QA,QB			: out std_logic_vector(DBUS_WIDTH-1 downto 0) );

end registres;


-------------------------------------------------------------------------------
-- REGISTRES architecture
-------------------------------------------------------------------------------

-- Definition de l'architecture du banc de registres
architecture behavior of registres is

	-- definitions de types (index type default is integer)
	type FILE_REGS is array (0 to (2**ABUS_WIDTH)-1) of std_logic_vector (DBUS_WIDTH-1 downto 0);

	-- definition des ressources internes
	signal REGS : FILE_REGS; -- le banc de registres
	signal D2QA	: boolean; -- si acces simultane R & W sur le meme registre ==> QA <= D;
	signal D2QB	: boolean; -- si acces simultane R & W sur le meme registre ==> QB <= D;

begin
--------------------------------------------
-- Affectations dans le domaine combinatoire
--

---------------------------------
-- test si acces simultanes
D2QA <= ________
D2QB <= ________

-------------------
-- Process P_ReadQA
P_ReadQA: process(ADR_A,D2QA,D)
begin
	-- test validite adresse
	if not( is_x(ADR_A) ) then
		-- test si acces R0
		if (ADR_A /= conv_std_logic_vector(0,ABUS_WIDTH)) then
			-- test si acces R & W simultane
			if (D2QA = FALSE) then
				QA <= REGS(conv_integer(ADR_A));
			else -- on envoie la donnee a ecrire
				QA <= D;
			end if;
		else -- acces R0
			QA <= (others => '0');
		end if;
	else -- X
		QA <= (others => 'X');
	end if;
end process P_ReadQA;

-------------------
-- Process P_ReadQB
P_ReadQB: process(ADR_B,D2QB,D)
begin
	-- test validite adresse
	if not( is_x(ADR_B) ) then
		-- test si acces R0
		if (ADR_B /= conv_std_logic_vector(0,ABUS_WIDTH)) then
			-- test si acces R & W simultane
			if (D2QB = FALSE) then
				QB <= REGS(conv_integer(ADR_B));
			else -- on envoie la donnee a ecrire
				QB <= D;
			end if;
		else -- acces R0
			QB <= (others => '0');
		end if;
	else -- X
		QB <= (others => 'X');
	end if;
end process P_ReadQB;

------------------
-- Process P_WRITE
P_WRITE: process(___)
begin
	-- test du front actif d'horloge
	________
		-- test du reset
		if RST='0' then
			REGS <= (others => conv_std_logic_vector(0,DBUS_WIDTH));
		else
			-- test si ecriture dans le registre
			________
			________
		end if;

end process P_WRITE;

end behavior;
