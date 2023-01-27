--------------------------------------------------------------------------------
-- Synchronous Serializer
-- F.Thiebolt
--
-- Note:
-- Il s'agit d'un circuit permettant de transmettre en série des mots présentés à
-- notre circuit sous forme parallèle.
-- La taille des mots est un paramètre générique avec 4 par défaut.
-- La parité est un paramètre générique (EVEN/ODD/NONE) avec NONE par défaut
-- Une trame série est constituée d'un bit de start(1), des bits de données et d'un
-- éventuel bit de parité.
--------------------------------------------------------------------------------

-- package
package sync_ser_package is
	type PARITY_t is (NONE,EVEN,ODD);
end package sync_ser_package;

-- package usage
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.sync_ser_package.all;

-- entity
entity sync_ser is

	generic (
        ________
        ________
    );

	port (
        ________
        ________
        ________
        ________
        ________
        ________
        ________
    );

end sync_ser;


-- architecture
architecture behavior of sync_ser is

    ________
    ________
    ________
    ________
    ________

begin

-- Affectation combinatoire (why not!)
________
________
________
________

--------------------------------------
-- Process P_SYNC_SER
P_SYNC_SER: process( ________________ )
    ________
    ________
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
    ________
    ________
    ________
end process P_SYNC_SER;

end behavior;

