------------------------------------
-- Banc Memoire pour processeur RISC
-- THIEBOLT Francois le 01/12/05
------------------------------------

---------------------------------------------------------
-- Lors de la phase RESET, permet la lecture d'un fichier
-- passe en parametre generique.
---------------------------------------------------------

------------------------------------------------------------------
-- Ne s'agissant pas encore d'un cache, le signal Ready est cable 
-- a 1 puisque toute operation s'execute en un seul cycle.
--	Ceci est la version avec lecture ASYNCHRONE pour une
--	integration plus simple dans le pipeline.
-- Si la lecture du fichier d'initialisation ne couvre pas tous
--	les mots memoire, ceux-ci seront initialises a 0
------------------------------------------------------------------

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
-- you must make use of cpu_package.2.vhd
use WORK.func_package.all;
use WORK.cpu_package.all;

-- Definition de l'entite
entity memory is

	-- definition des parametres generiques
	generic	(
		-- largeur du bus de donnees par defaut
		DBUS_WIDTH : natural := 32;

		-- largeur du bus adr par defaut
		ABUS_WIDTH : natural := 32;

		-- nombre d'elements dans le cache exprime en nombre de mots
		MEM_SIZE : natural := 16;

		-- front actif par defaut
		ACTIVE_FRONT : std_logic := '1';

		-- fichier d'initialisation
		FILENAME : string := "" );

	-- definition des entrees/sorties
	port 	(
		-- signaux de controle du cache
		RST			: in std_logic;	-- actifs a l'etat bas
		CLK,RW		: in std_logic;	-- R/W*
		DS				: in MEM_DS;		-- acces octet, demi-mot, mot...
		Signed		: in std_logic;	-- extension de signe
		AS				: in std_logic;	-- Address Strobe (sorte de CS*)
		Ready			: out std_logic;	-- indicateur HIT/MISS
		Berr			: out std_logic;	-- bus error (acces non aligne par exemple), active low

		-- bus d'adresse du cache
		ADR			: in std_logic_vector(ABUS_WIDTH-1 downto 0);

		-- Ports entree/sortie du cache
		D				: in std_logic_vector(DBUS_WIDTH-1 downto 0);
		Q				: out std_logic_vector(DBUS_WIDTH-1 downto 0) );

end memory;

-- Definition de l'architecture du banc de registres
architecture behavior of memory is

	-- definition de constantes
	constant BITS_FOR_BYTES : natural := _____________ ; -- nb bits adr pour acceder aux octets d'un mot
	constant BITS_FOR_WORDS : natural := _____________ ; -- nb bits adr pour acceder aux mots du cache
	constant BYTES_PER_WORD : natural := _____________ ; -- nombre d'octets par mot

	-- definitions de types (index type default is integer)
	subtype BYTE is std_logic_vector(________); -- definition d'un octet
	type WORD is array (______________________) of BYTE; -- definition d'un mot composé d'octets

	type FILE_REGS is array (_______________) of WORD;
	subtype I_ADR is std_logic_vector(______________________________); -- internal ADR au format mot du cache

	subtype B_ADR is std_logic_vector(___________________________); -- byte ADR pour manipuler les octets dans le mot
	subtype byte_adr is natural range 0 to _____________________; -- manipulation d'octets dans les mots

	-- definition de la fonction de chargement d'un fichier
	--		on peut egalement mettre cette boucle dans le process qui fait les ecritures
	impure function LOAD_FILE (F : in string) return FILE_REGS is
		variable temp_REGS : FILE_REGS;
		file mon_fichier : TEXT open READ_MODE is STRING'(F); -- VHDL93 compliant
		--	file mon_fichier : TEXT is in STRING'(F); -- older implementation
		variable line_read : line := null;
		variable line_value : std_logic_vector (DBUS_WIDTH-1 downto 0);
		variable index,i : natural := 0;
	begin
		-- lecture du fichier
		index:=0;
		while (not ENDFILE(mon_fichier) and (index < MEM_SIZE))
		loop
			readline(mon_fichier,line_read);
			read(line_read,line_value);
			for i in 0 to BYTES_PER_WORD-1 loop
				temp_REGS(index)(i):=line_value(((i+1)*8)-1 downto i*8);
			end loop;
--			temp_REGS(index):=line_value;
			index:=index+1;
		end loop;
		-- test si index a bien parcouru toute la memoire
		if (index < MEM_SIZE) then
			temp_REGS(index to MEM_SIZE-1):=(others => (others => (others => '0')));
		end if;
		-- renvoi du resultat
		return temp_REGS;
	end LOAD_FILE;

	-- definition des ressources internes
	signal REGS : FILE_REGS; -- le banc memoire

	-- l'adressage de la memoire se faisant par element de taile DBUS_WIDTH, par rapport
	-- au bus d'adresse au format octet il faut enlever les bits d'adresse de poids faible
	-- (octets dans le mot), puis prendre les bits utiles servant a l'acces des mots du cache.
	-- ex.: mots de 32 bits => 2 bits de poids faible pour les octets dans le mot
	--		16 mots memoire => 4 bits necessaire
	-- D'ou I_ADR = ADR (4+2-1 downto 2)
	
begin
------------------------------------------------------------------
-- Affectations dans le domaine combinatoire
-- 

-- Indicateur acces MISS/HIT
Ready <= '1'; -- car pas encore un cache

------------------------------------------------------------------
-- Process P_CACHE
--	La lecture etant asynchrone c.a.d qu'elle ne depend que des
--		signaux d'entree, nous sommes obliges de les mettre dans la
--		liste de sensitivite du process
P_CACHE: process(CLK,RST,ADR,AS,RW,DS,Signed)
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________
___________________

end process P_CACHE;

end behavior;

