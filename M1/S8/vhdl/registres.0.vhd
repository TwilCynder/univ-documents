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
--	generic	(
		-- largeur du bus de donnees par defaut
--		DBUS_WIDTH	: integer := 32; -- registre de 32 bits par defaut

		-- largeur du bus adr pour acces registre soit 32 (2**5) par defaut
--		ABUS_WIDTH	: integer := 5 );

	-- definition des entrees/sorties
	port 	(
		-- signaux de controle du Banc de registres
		________
		________

		-- bus d'adresse et donnees
		________
		________
		________

		-- Ports de sortie
		________
		________

end registres;


-------------------------------------------------------------------------------
-- REGISTRES architecture in a behavioral style
-------------------------------------------------------------------------------

-- Definition de l'architecture du banc de registres
architecture behavior of registres is

	-- definitions de types (index type default is integer)
	type FILE_REGS is array (0 to ______) of std_logic_vector (______ downto 0);

	-- definition des ressources internes
	signal REGS : FILE_REGS; -- le banc de registres

begin

---------------------------------
-- affectation des bus en lecture
________
________
________
________

-----------------
-- Process P_REGS
P_REGS: process(________)
begin
	-- test du reset
	if RST='0' then
		 REGS <= (others => ______);
	-- test front actif d'horloge
	elsif (CLK'event and CLK=____) then
		-- test si ecriture dans le registre
		if ((W='0') and ADR_W /= ________ then
			REGS(______) <= D;
		end if;
	end if;
end process P_REGS;

end behavior;

