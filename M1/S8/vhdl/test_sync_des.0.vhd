----------------------------------
-- Fichier de test sync_des
-- THIEBOLT Francois 01/06/05
----------------------------------

------------------------------------------------------------------
-- VHDL'93 ONLY
-- On ne redeclare pas les composants utilises
------------------------------------------------------------------

-- Definition des librairies
library IEEE;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

-- Definition de l'entite
entity test_sync_des is
end test_sync_des;

-- Definition de l'architecture
architecture behavior of test_sync_des is

-- definition des constantes
	constant S_DATA		: positive := 3; -- taille en nombre de bits des mots à dé-sérialiser
	constant TIMEOUT 		: time := 300 ns; -- timeout de la simulation

	constant START_BIT	: std_logic := '1';
	constant VALUE1		: positive := 16#5#;
	constant VALUE2		: positive := 16#1#;
	constant VALUE3		: positive := 16#7#;

-- definition de constantes
constant clkpulse : Time := 5 ns; -- 1/2 periode horloge

-- definition de types

-- definition de ressources externes
signal E_DIN		: std_logic;
signal E_EN			: std_logic; -- actifs à l'état bas
signal E_CLK		: std_logic;
signal E_RDY		: std_logic;
signal E_ACK		: std_logic;
signal E_RST		: std_logic; -- actifs à l'état bas
signal E_P			: std_logic_vector(S_DATA-1 downto 0);
signal E_OVRE		: std_logic; -- actifs a l'etat bas

-- definition des ressources internes
signal I_ACK_EN		: std_logic; -- enable / disable ACK for received value

begin

--------------------------
-- definition de l'horloge
P_E_CLK: process
begin
	E_CLK <= '1';
	wait for clkpulse;
	E_CLK <= '0';
	wait for clkpulse;
end process P_E_CLK;

-----------------------------------------
-- definition du timeout de la simulation
P_TIMEOUT: process
begin
	wait for TIMEOUT;
	assert FALSE report "TIMEOUT SIMULATION !!!" severity FAILURE;
end process P_TIMEOUT;

----------------------------------------------
-- instanciation et mapping du composant ssram
syncdes1 : entity work.sync_des(behavior)
			generic map (S_DATA)
			port map (E_DIN,E_EN,E_CLK,E_RDY,E_ACK,E_OVRE,E_RST,E_P);

----------------------------------------------
-- definition du process d'acquittement des données
P_ACK : process(E_CLK)
begin
	if ( E_CLK'event and E_CLK='1') then
		if ( I_ACK_EN='1' and E_RDY='1' and E_ACK='0' ) then
			E_ACK <= '1';
		else -- ACK disabled
			E_ACK <= '0';
		end if;
	end if;
end process P_ACK;

-----------------------------
-- debut sequence de test
P_TEST: process
	variable value : std_logic_vector(S_DATA-1 downto 0);
begin

	-- initialisations
	E_DIN <= 'U';
	E_EN <= '1';
	I_ACK_EN <= '0'; -- disabled ACK
	E_RST <= '0';
	wait until (E_CLK='1'); -- front montant

	-- sequence RESET
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4;
	E_RST <= '1';
	
	-- start new word sequence WORD#1
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4;
	E_DIN <= START_BIT;
	E_EN <= '0'; -- enable sampling
	I_ACK_EN <= '1'; -- enabled ACK

	-- envoi des bits sur DIN
	value := conv_std_logic_vector(VALUE1,value'length);
	for i in value'low to value'high loop -- parcours des bits de la variable value
		wait until (E_CLK='1'); -- front montant horloge
		wait for clkpulse/4;
		E_DIN <= value(i);
	end loop;

	-- start new word sequence WORD#2
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4;
	-- check value on P bus and RDY readiness
	assert ( E_P=value and E_RDY='1' ) report "P bus wrong value or RDY signal not set !!!" severity ERROR;

	-- setting start bit for new sequence
	E_DIN <= START_BIT;
	E_EN <= '0'; -- enable sampling

	-- envoi des bits sur DIN
	value := conv_std_logic_vector(VALUE2,value'length);
	for i in value'low to value'high loop -- parcours des bits de la variable value
		wait until (E_CLK='1'); -- front montant horloge
		wait for clkpulse/4;
		E_DIN <= value(i);
	end loop;

	-- start new word sequence for WORD_CANCELLED
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4;
	E_DIN <= START_BIT;
	E_EN <= '0'; -- enable sampling
	I_ACK_EN <= '0'; -- disabling ACK to cause overrun

	-- check value on P bus and RDY readiness
	assert ( E_P=value ) report "P bus musn't have changed !!!" severity ERROR;

	-- send first data bit
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4;
	E_DIN <= '0';

	-- cancel operation
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4;
	E_DIN <= 'U';
	E_EN <= '1'; -- disable sampling, must reset internal logic

	-- start new word sequence for WORD#3 + delayed start
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4;
	E_DIN <= not(START_BIT);
	E_EN <= '0'; -- enable sampling

	-- check value on P bus and RDY readiness
	assert ( E_P=value and E_RDY='1' ) report "P bus wrong value or RDY signal not set !!!" severity ERROR;

	-- set start bit sequence
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4;
	E_DIN <= START_BIT;
	E_EN <= '0'; -- enable sampling

	-- envoi des bits sur DIN
	value := conv_std_logic_vector(VALUE3,value'length);
	for i in value'low to value'high loop -- parcours des bits de la variable value
		wait until (E_CLK='1'); -- front montant horloge
		wait for clkpulse/4;
		E_DIN <= value(i);
	end loop;

	-- wait for new word to arrive
	wait until (E_CLK='1'); -- front montant horloge
	wait for clkpulse/4;
	E_DIN <= 'U';
	E_EN <= '1'; -- disable sampling

	-- check value on P bus and RDY readiness
	assert ( E_P=value and E_RDY='1' ) report "P bus wrong value or RDY signal not set !!!" severity ERROR;

	-- ADD NEW SEQUENCE HERE

	-- LATEST COMMAND (NE PAS ENLEVER !!!)
	wait until (E_CLK='1'); -- front montant
	wait for clkpulse/4; -- on attend 1/8 de periode d'horloge
	
	assert FALSE report "FIN DE SIMULATION" severity FAILURE;
	-- assert (NOW < TIMEOUT) report "FIN DE SIMULATION" severity FAILURE;

end process P_TEST;

end behavior;
