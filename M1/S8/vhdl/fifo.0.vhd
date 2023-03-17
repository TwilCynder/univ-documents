--------------------------------------------------------------------------------
-- FIFO double port
-- F.Thiebolt
--------------------------------------------------------------------------------

-- Definition des librairies
library IEEE;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- -----------------------------------------------------------------------------
-- Definition de l'entite
-- -----------------------------------------------------------------------------
entity fifo is

	-- definition des parametres generiques
	generic	(
		-- largeur du bus de donnees
		DBUS_WIDTH : natural := 32;

		-- largeur du bus adr R/W pour acces fifo
		ABUS_WIDTH : natural := 3 );	-- soit 2**3 emplacements

	-- definition des entrees/sorties
	port 	(
		-- signaux de controle de la FIFO
		CLK,RST	: in std_logic;	-- RST is active low
		REN,WEN	: in std_logic;	-- Read & Write Enable are actives low

		-- bus de donnees en entree
		DI	: in std_logic_vector(DBUS_WIDTH-1 downto 0);

		-- bus de donnees en sortie
		DO	: out std_logic_vector(DBUS_WIDTH-1 downto 0);

		-- indicateurs d'etat
		EMPTY,MID,FULL	: buffer std_logic );

end fifo;

-- -----------------------------------------------------------------------------
-- Definition de l'architecture de la fifo
-- -----------------------------------------------------------------------------
architecture behavior of fifo is

	-- definitions de types (index type default is integer)
	type FILE_REG_typ is array (0 to (2**ABUS_WIDTH)-1) of std_logic_vector (DBUS_WIDTH-1 downto 0);

	-- definition des ressources internes

	-- registres
	signal REGS : FILE_REG_typ; -- le banc de registres interne de la fifo

	-- pointeurs lecture et ecriture
	signal W_ADR,R_ADR	: std_logic_vector (ABUS_WIDTH-1 downto 0);

begin

------------------------------------------------------------------
-- Mise a jour des sorties dans le domaine concourant

----------------------------------------------------------------------------
-- Process P_WRITE effectue l'ecriture de la donnee dans la file ainsi que
--		la mise a jour du pointeur d'adresse ecriture.
--		Le pointeur pointe toujours sur l'emplacement de la prochaine ecriture.
P_WRITE:	process(CLK)
begin
	if rising_edge(CLK) then
		-- test du RST
		if RST='0' then
			W_ADR <= (others => '0');
	    elsif WEN = '0' then 
            W_ADR <= W_ADR + '1';
            REGS(CONV_INTEGER(W_ADR)) <= DI;
		end if;
	end if;
end process P_WRITE;

---------------------------------------------------------------------------
-- Process P_READ sort la donnee sur le bus et effectue la mise a jour
--		du pointeur d'adresse lecture.
--		Le pointeur pointe toujours sur l'emplacement de la prochaine lecture
P_READ:	process(CLK)
begin
	if rising_edge(CLK) then
		-- test du RST
		if RST='0' then
	        DO <= (others => 'Z');
	        R_ADR <= (others => '0');
		else
            if REN = '0' then
                if EMPTY = '0' then 
                    DO <= REGS(CONV_INTEGER(R_ADR));
                    R_ADR <= R_ADR + '1';
                else 
                    DO <= (others => '0');
                end if;
            end if;
            if FULL = '1' and WEN = '0' then
                R_ADR <= R_ADR + '1';     
            end if;
        end if;
	end if;
end process P_READ;

-------------------------------------------------------------------------
-- Process P_EMPTY indique '1' la FIFO est vide '0' sinon, cette information
--		 etant mise a jour sur front montant d'horloge
P_EMPTY:	process(CLK)
	variable next_R : std_logic_vector (ABUS_WIDTH-1 downto 0);
begin
	if rising_edge(CLK) then
		-- test du RST
		if RST='0' then
			EMPTY <= '1';
	    elsif WEN = '0' then  
	        EMPTY <= '0';
	    elsif WEN = '1' and REN = '0' then
	       next_R := R_ADR + '1';
	       if next_R = W_ADR then
	           EMPTY <= '0';
	       end if;
	    else 
	       EMPTY <= '1';
		end if;
	end if;
end process P_EMPTY;

---------------------------------------------------------------------------
-- Process P_FULL indique '1' la FIFO est pleine '0' sinon, cette information
--		 etant mise a jour sur front montant d'horloge
P_FULL:	process(CLK)
	variable next_W : std_logic_vector (ABUS_WIDTH-1 downto 0);
begin
	if rising_edge(CLK) then
		-- test du RST
		if RST='0' then
			FULL <= '0';
	    elsif WEN = '0' then
	       next_W := W_ADR + '1';
	       if next_W = R_ADR then
	           FULL <= '1';
	       end if;
	    elsif REN = '0' then
	       FULL <= '0';
		end if;
	end if;
end process P_FULL;

--------------------------------------------------------------------
-- Process P_MID indique l'etat au moins a moitie plein de la FIFO
--		'1' FIFO au moins a moitie pleine '0' sinon, cette information
--		 etant mise a jour sur front montant d'horloge
P_MID:	process(CLK)
	variable temp_W : std_logic_vector (ABUS_WIDTH-1 downto 0);
begin
	if rising_edge(CLK) then
		-- test du RST
		if RST='0' then
		  MID <= '0';
	    else
	       temp_W := W_ADR + '1';
	       if (temp_W(W_ADR'high) /= R_ADR(R_ADR'high)) and temp_W(W_ADR'high - 1 downto 0) = R_ADR(R_ADR'high - 1 downto 0) then
	           MID <= '1';
	       else 
	           MID <= '0';
	       end if;
		end if;
	end if;
end process P_MID;

end behavior;

