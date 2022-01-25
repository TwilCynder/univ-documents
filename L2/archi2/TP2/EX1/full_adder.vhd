LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY full_adder IS
	PORT (	as, bs, cs 	: IN STD_LOGIC;
		Ss, Rs 		: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE fdd_FA OF full_adder IS
BEGIN
	Ss <= as xor bs xor cs;
	Rs <= (as and bs) or (cs and (as xor bs));
END ARCHITECTURE;
