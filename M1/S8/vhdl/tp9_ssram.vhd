--------------------------------------------------------------------------------
-- SSRAM
-- Dr THIEBOLT Francois
--------------------------------------------------------------------------------

------------------------------------------------------------------
-- RAM Statique Synchrone - mode burst -
-- Les donnes sur DBUS changent d'etat juste apres le front
-- 	montant CLK. La memoire n'est pas circulaire, c.a.d que lorsque
--		l'adresse depasse la capacite, DBUS <= Z
-- Elle dispose d'un parametre fixant la latence au chip
-- select, c.a.d que lorsque CS* est actif, il se passe CS_LATENCY
-- cycles avant que l'operation READ ou WRITE se fasse effectivement
-- Une operation READ ou WRITE dure tant que CS est actif.
-- L'adresse de l'operation est echantillonnee sur front descendant
--		de CS*, puis incrementee tacitement apres CS_LATENCY cycles
--		et ce tant que CS* est actif.
------------------------------------------------------------------

-- Definition des librairies
library IEEE;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Definition de l'entite
entity ssram is

	generic (
		-- taille du bus d'adresse
		ABUS_WIDTH : natural := 4; -- soit 16 mots memoire

		-- taille du bus donnee
		DBUS_WIDTH : natural := 8;
		
		-- chip select latence en nombre de cycles
		CS_LATENCY : natural := 4;
		
		-- delai de propagation entre la nouvelle adresse et la donnee sur la sortie
		I2Q : time := 2 ns );

	port (
		-- signaux de controle
		RW			: in std_logic; -- R/W* (W actif a l'etat bas)
		CS,RST	: in std_logic; -- actifs a l'etat bas
		CLK		: in std_logic;

		-- bus d'adresse et de donnee
		ABUS : in std_logic_vector(ABUS_WIDTH-1 downto 0);
		DBUS : inout std_logic_vector(DBUS_WIDTH-1 downto 0) );

end ssram;

-- -----------------------------------------------------------------------------
-- Definition de l'architecture de la ssram
-- -----------------------------------------------------------------------------
architecture behavior of ssram is

	-- definition de constantes

	-- definitions de types (index type default is integer)
	type FILE_REG_typ is array (0 to ______) of std_logic_vector (DBUS_WIDTH-1 downto 0);

	-- definition des ressources internes
	signal REGS : FILE_REG_typ; -- le banc de registres
	______
	______

begin

	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______
	______


end behavior;
