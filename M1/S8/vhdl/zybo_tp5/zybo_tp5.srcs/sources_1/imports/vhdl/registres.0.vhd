-------------------------------------------------------------------------------
-- Banc de registres
-- F.Thiebolt
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
		ABUS_WIDTH	: integer := 3 );

	-- definition des entrees/sorties
	port 	(
		-- signaux de controle du Banc de registres
		W, CLK, RST: in std_logic;

		-- bus d'adresse et donnees
		ADR_A, ADR_B, ADR_W: in std_logic_vector(0 to ABUS_WIDTH - 1);
		D: in std_logic_vector (0 to DBUS_WIDTH - 1);

		-- Ports de sortie
		QA, QB: out std_logic_vector(0 to DBUS_WIDTH - 1)
	);

end registres;


-------------------------------------------------------------------------------
-- REGISTRES architecture in a behavioral style
-------------------------------------------------------------------------------

-- Definition de l'architecture du banc de registres
architecture behavior of registres is

	-- definitions de types (index type default is integer)
	type FILE_REGS is array (0 to (2**ABUS_WIDTH)-1) of std_logic_vector (DBUS_WIDTH - 1 downto 0);

	-- definition des ressources internes
	signal REGS : FILE_REGS; -- le banc de registres

begin

---------------------------------
-- affectation des bus en lecture
P_READ_A: process(ADR_A)
begin
    if ADR_A = CONV_STD_LOGIC_VECTOR ('0', ABUS_WIDTH ) then
        QA <= (others => '0');
    else
        QA <= REGS (CONV_INTEGER (ADR_A));
    end if ;
end process;

P_READ_B: process(ADR_B)
begin
    if ADR_B = CONV_STD_LOGIC_VECTOR ('0', ABUS_WIDTH ) then
        QB <= (others => '0');
    else
        QB <= REGS (CONV_INTEGER (ADR_B));
    end if ;
end process;
-----------------
-- Process P_REGS
P_REGS: process(CLK)
begin
	-- test du reset
	if RST='0' then
		 REGS <= (others => (others => '0'));
	-- test front actif d'horloge
	elsif (CLK'event and CLK='1') then
		-- test si ecriture dans le registre
		if ((W='0') and ADR_W /= CONV_STD_LOGIC_VECTOR ('0', ADR_W'length )) then
			REGS(CONV_INTEGER (ADR_W)) <= D;
		end if;
	end if;
end process P_REGS;

end behavior;

