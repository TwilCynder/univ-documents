--------------------------------------------------------------------------------
-- Banc Memoire pour processeur RISC
-- THIEBOLT Francois le 08/03/04
--------------------------------------------------------------------------------

---------------------------------------------------------
-- Lors de la phase RESET, permet la lecture d'un fichier
-- passe en parametre generique.
---------------------------------------------------------

-- Definition des librairies
library IEEE;
library STD;
library WORK;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_textio.all;
use STD.textio.all;
use WORK.cpu_package.all;

-- -----------------------------------------------------------------------------
-- Definition de l'entite
-- -----------------------------------------------------------------------------
entity memory is

	-- definition des parametres generiques
	generic	(
		-- largeur du bus de donnees par defaut
		DBUS_WIDTH : natural := 32;

		-- nombre d'elements dans le cache exprime en nombre de mots
		MEM_SIZE : natural := 8;

		-- front actif par defaut
		ACTIVE_FRONT : std_logic := '1';

		-- fichier d'initialisation
		FILENAME : string := "" );

	-- definition des entrees/sorties
	port 	(
		-- signaux de controle du cache
		RST			: in std_logic; -- actifs a l'etat bas
		CLK,RW		: in std_logic; -- R/W*
		AS				: in std_logic; -- Address Strobe (sorte de /CS)

		-- bus d'adresse du cache
		ADR			: in std_logic_vector(______ downto 0);

		-- Ports entree/sortie du cache
		D				: in std_logic_vector(______ downto 0);
		Q				: out std_logic_vector(______ downto 0) );

end memory;


-- -----------------------------------------------------------------------------
-- Definition de l'architecture du banc de registres
-- -----------------------------------------------------------------------------
architecture behavior of memory is

	-- definition de constantes

	-- definitions de types (index type default is integer)
	type FILE_REGS is array (0 to ______) of std_logic_vector (DBUS_WIDTH-1 downto 0);

	-- definition de la fonction de chargement d'un fichier
	--		on peut egalement mettre cette boucle dans le process qui fait les ecritures
	impure function LOAD_FILE ( F : in string ) return FILE_REGS is
		variable temp_REGS : FILE_REGS;
		file mon_fichier : TEXT; -- VHDL'93 compliant, on n'associe pas de nom de fichier
		-- file mon_fichier : TEXT open READ_MODE is STRING'(F); -- VHDL'93 compliant
		--	file mon_fichier : TEXT is in STRING'(F); -- older implementation
		variable line_read : line := null;
		variable line_value : std_logic_vector (DBUS_WIDTH-1 downto 0);
		variable index : natural := 0;
	begin
		-- ouverture du fichier
		file_open(mon_fichier,STRING'(F),READ_MODE);
		-- lecture du fichier
		while (not ENDFILE(mon_fichier) and (index < MEM_SIZE))
		loop
			readline(mon_fichier,line_read);
			read(line_read,line_value);
			temp_REGS(index):=line_value;
			index:=index+1;
		end loop;
		-- fermeture du fichier
		file_close(mon_fichier);
		-- test si index a bien parcouru toute la memoire
		if (index < MEM_SIZE) then
			temp_REGS(index to MEM_SIZE-1):=(others => conv_std_logic_vector(0,DBUS_WIDTH));
		end if;
		return temp_REGS;
	end LOAD_FILE;

	-- declaration des ressources locales
	signal REGS : FILE_REGS; -- le banc memoire

begin
--------------------------------------------
-- Affectations dans le domaine combinatoire


-------------------
-- Process P_ACCESS
P_ACCESS: process(CLK)
begin
	-- test du front actif d'horloge
	if (CLK'event and CLK=ACTIVE_FRONT) then -- rising_edge(CLK)
		-- test du reset
		if RST='0' then
			-- raz de la sortie
			Q <= (others => 'Z');
			-- raz/chargement de fichier
			if (STRING'(FILENAME) /= "") then
				REGS <= LOAD_FILE(FILENAME);
			else
				REGS <= (others => conv_std_logic_vector(0,DBUS_WIDTH));
			end if;
		else
			________
			________
			________
			________
			________
			________
			________
		end if;
	end if;
end process P_ACCESS;

end behavior;

