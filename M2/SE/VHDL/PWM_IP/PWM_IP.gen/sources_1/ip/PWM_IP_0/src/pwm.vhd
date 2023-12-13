--------------------------------------------------------------------------------
-- PWM
--
-- Simple version featuring a uniq output
-- Notes: 
--  DUTY value is only taken account at the beginning of a new cycle
--  [IMPROVEMENT] if duty = max then never set '0' at P
--  Borrowed from Quartus2 sample codes and tailored to suit our needs
--------------------------------------------------------------------------------

-- library definitions
library ieee;

-- library uses
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


-- Component definition
entity pwm is

	-- generic parameters
	generic	(
        sys_clk         : natural := 1E06;  -- system clock frequency in Hz
        pwm_freq        : natural := 10;  -- PWM switching frequency in Hz
        duty_res        : natural := 8      -- duty-cycle resolution bits
    );

	-- I/O
	port (
		RST, EN, CLK: in std_logic;
        DUTY: in std_logic_vector(duty_res-1 downto 0);
        P : out std_logic
    );

end pwm;

-- architecture definition
architecture behaviour of pwm is

    -- constants and types declarations
    constant period : natural := sys_clk/pwm_freq;              -- number of clocks in one pwm period
    constant FREQ_COUNT_MAX : natural := period - 1;
    constant DUTY_MAX: std_logic_vector (duty_res-1 downto 0) := (others => '1');
    constant DUTY_TOTAL: natural := conv_integer (DUTY_MAX) + 1;
    constant slot_duration: natural := period / DUTY_TOTAL;


    -- signals declarations
    --signal freq_count : natural range 0 to FREQ_COUNT_MAX := 0;         -- frequency counter
    signal duty_threshold : natural range 0 to FREQ_COUNT_MAX := 0;     -- threshold between Ton/Toff
    signal cpt: natural range 0 to FREQ_COUNT_MAX;
begin

------------------------------------------------------------------
-- Process P_PWM
P_PWM:process(CLK)
    
begin
    -- check for active front
    if( rising_edge(CLK) ) then
        -- check for RST or not enabled
        if( RST='1' or EN='0' ) then
            cpt<=FREQ_COUNT_MAX;
            P <= '0';
        elsif EN='1' then --actif
            P <= '1';
            if cpt >= FREQ_COUNT_MAX then --fin de période
                cpt <= 0;
                --mise à jour threshold
                
                if (duty = DUTY_MAX) then
                    duty_threshold <= FREQ_COUNT_MAX;
                else 
                    duty_threshold <= slot_duration * (conv_integer(duty) + 1);
                end if;
                
            else 
                if cpt >= duty_threshold then
                    P <= '0';
                end if;
                cpt <= cpt + 1;
            end if;

        end if; 
            
    end if;
    
end process P_PWM;

end behaviour;

