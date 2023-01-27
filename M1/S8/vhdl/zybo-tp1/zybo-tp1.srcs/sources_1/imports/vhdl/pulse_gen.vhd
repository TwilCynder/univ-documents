--------------------------------------------------------------------------------
-- Pulse generator
-- F.Thiebolt
--------------------------------------------------------------------------------

-- library definitions
library ieee;

-- library uses
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


-- Component definition
entity pulse_gen is
 generic( MAX_CPT: natural := 1E06 );
	port (
		RST, MCLK: in std_logic;
        P : out std_logic
    );

end pulse_gen;

-- architecture definition
architecture behaviour of pulse_gen is

begin

ppulse: process(MCLK)
    variable cpt: natural range 0 to MAX_CPT ;
begin
    
    if rising_edge(MCLK) then
    
        if( RST='0' ) then
            cpt:=0;
            P <= '0';
        else
            P <= '0';
            if cpt = 0 then
                P <= '1';
            end if;
            cpt := cpt + 1;
            if cpt = (MAX_CPT - 1) then
                cpt := 0;
            end if;
        end if;
    

    end if;
end process ppulse;

end behaviour;

