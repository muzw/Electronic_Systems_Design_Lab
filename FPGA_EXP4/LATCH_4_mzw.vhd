-- latch @ PB20051061

library ieee;
use ieee.std_logic_1164.all;

entity LATCH_4_mzw is
	port(
		D :IN std_logic_vector(3 downto 0);
		Q :OUT std_logic_vector(3 downto 0);
		en :IN std_logic;
		cs :IN std_logic
	);
end LATCH_4_mzw;

architecture arch_LATCH_4 of LATCH_4_mzw is
begin
	process(cs,en,D)
	begin
		if(cs = '0' and en = '1')	then
			Q <= D;
		end if;
	end process;
	
end arch_LATCH_4;