------------------------------------------------------------------
-- RISC processor general definitions
-- F.Thiebolt
------------------------------------------------------------------

-- library definitions
library IEEE;

-- library uses
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- -----------------------------------------------------------------------------
-- the package contains types, constants, and function prototypes
-- -----------------------------------------------------------------------------
package cpu_package is

-- ===============================================================
-- TYPES/CONSTRAINT DEFINITIONS
-- ===============================================================

------------------------------------------------------------------
-- HARDWARE definitions
------------------------------------------------------------------
-- define CPU core physical sizes
	constant CPU_DATA_WIDTH		: positive := 32; -- data bus width
	constant CPU_ADR_WIDTH		: positive := 32; -- address bus width, byte format

-- define MISC CPU CORE specs
	constant CPU_WR_FRONT		: std_logic := '1'; -- pipes write active front

-- define REGISTERS physical sizes
	constant REG_WIDTH		: positive := 5; -- registers address bus with
	constant REG_FRONT		: std_logic := CPU_WR_FRONT;

-- define CACHE physical sizes
	constant L1_SIZE		 	: positive := 32; -- taille du cache L1 en nombre de mots
	constant L1_FRONT			: std_logic := CPU_WR_FRONT;

------------------------------------------------------------------
-- SOFTWARE definitions
------------------------------------------------------------------
-- define the basic ALU operations
	-- Le fait qu'une operation soit signee ou non sera indique a l'ALU par un signal
	--		supplementaire, ceci dit cela n'affecte que les bits d'etat.
	type ALU_OPS is (ALU_ADD, ALU_SUB, ALU_AND, ALU_OR, ALU_NOR, ALU_XOR, ALU_SLT, ALU_LSL, ALU_LSR);

-- define the size of datas during memory access
	type MEM_DS is (MEM_8,MEM_16,MEM_32,MEM_64);

-- ===============================================================
-- DEFINITION DE FONCTIONS/PROCEDURES
-- ===============================================================
	-- fonction log2
	--		calcule le logarithme base2 d'un entier naturel, ou plus exactement
	--		renvoie le nombre de bits necessaire pour coder un entier naturel I
	function log2 (I: in natural) return natural;
	function log2 (vI: in std_logic_vector) return std_logic_vector;

end cpu_package;


-- -----------------------------------------------------------------------------
-- the package contains types, constants, and function prototypes
-- -----------------------------------------------------------------------------
package body cpu_package is

-- ===============================================================
-- DEFINITION DE FONCTIONS/PROCEDURES
-- ===============================================================

-- fonction log2 / non synthesizeable
function log2 (I: in natural) return natural is
	variable ip : natural := 1; -- valeur temporaire
	variable iv : natural := 0; -- nb de bits
begin
	while ip < i loop
		ip := ip + ip; -- ou ip := ip * 2
		iv := iv + 1;
	end loop;
	-- renvoie le nombre de bits
	return iv;
end log2;

-- Synthesisable log2 function
-- Note: we suppose input and output vectors featuring the same shape
function log2( vI: in std_logic_vector ) return std_logic_vector is
begin
  -- synthesis translate_off
  if is_X( vI ) then
    return conv_std_logic_vector(0,vI'length);
  end if;
  -- synthesis translate_on

  if vI=conv_std_logic_vector(0,vI'length) or vI=conv_std_logic_vector(1,vI'length) then
    return conv_std_logic_vector(0,vI'length);
  end if;
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
  -- default
  return conv_std_logic_vector(0,vI'length);
end log2; 

end cpu_package;
