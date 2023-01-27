--------------------------------------------------------------------------------
-- Banc Memoire pour processeur RISC
-- 
-- Note: this version will try Vivado to infer Block RAM on its own
--
-- F.Thiebolt
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
-- use WORK.func_package.all;
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

		-- fichier d'initialisation
		FILENAME : string := "" );

	-- definition des entrees/sorties
	port 	(
		-- signaux de controle du cache
		RST			    : in std_logic; -- actifs a l'etat bas
		CLK,EN,WEN      : in std_logic; 

		-- adress bus
		ADR			    : in std_logic_vector(______________ downto 0);

		-- Ports entree/sortie du cache
		DI				: in std_logic_vector(DBUS_WIDTH-1 downto 0);
		DO				: out std_logic_vector(DBUS_WIDTH-1 downto 0) );

end memory;


-- -----------------------------------------------------------------------------
-- Definition de l'architecture du banc de registres
-- -----------------------------------------------------------------------------
architecture behavior of memory is

	-- definition de constantes

	-- definitions de types (index type default is integer)
	type FILE_REGS is array (0 to ____) of std_logic_vector (__________________ downto 0);

	-- definition de la fonction de chargement d'un fichier
	--		on peut egalement mettre cette boucle dans le process qui fait les ecritures
	--      but you won't ever be able to go for synthesis then
	impure function LOAD_FILE ( F : in string ) return FILE_REGS is
		variable temp_REGS : FILE_REGS;
		file mon_fichier : TEXT; -- VHDL'93 compliant, on n'associe pas de nom de fichier
		-- file mon_fichier : TEXT open READ_MODE is STRING'(F); -- VHDL'93 compliant
		--	file mon_fichier : TEXT is in STRING'(F); -- older implementation
		variable line_read : line;
		variable line_value : std_logic_vector (DBUS_WIDTH-1 downto 0);
		variable index : natural := 0;
	begin
	    -- test for non NULL string
	    if (STRING'(F) /= "") then
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
        end if;
        -- test si index a bien parcouru toute la memoire
		if (index < MEM_SIZE) then
			temp_REGS(index to MEM_SIZE-1):=(others => conv_std_logic_vector(0,DBUS_WIDTH));
		end if;
		return temp_REGS;
	end LOAD_FILE;

	-- declaring local resource(s)
	signal REGS : FILE_REGS := LOAD_FILE(STRING'(FILENAME));

begin
--------------------------------------------
-- Affectations dans le domaine combinatoire


-------------------
-- Process P_ACCESS
P_ACCESS: process(____,____,____)
begin
    ________
    ________
    ________
    ________
    ________
    ________
    ________
    ________
    ________
    ________
    ________
    ________
    ________
    ________
    ________
end process P_ACCESS;

end behavior;

