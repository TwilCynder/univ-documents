--------------------------------------------------------------------------------
-- log2_hw component
-- F.Thiebolt
--------------------------------------------------------------------------------

-- library definitions
library ieee;
library work;

-- library uses
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.cpu_package.all; --we'll make use of our log2 function

-- Component definition
entity log2_hw is

	-- generic parameters
	generic	(
		-- max counter
		BUS_WIDTH : natural := 8
    );

	-- I/O
	port (
		DIN : in std_logic_vector(BUS_WIDTH-1 downto 0);
        DOUT : out std_logic_vector(BUS_WIDTH-1 downto 0)
    );

end log2_hw;

-- architecture definition
architecture behaviour of log2_hw is

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

end behaviour;
