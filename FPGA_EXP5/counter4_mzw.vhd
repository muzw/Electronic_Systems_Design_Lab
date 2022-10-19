-- 4进制计数器 @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter4_mzw	is
	port(
		clk :IN std_logic;
		cnt :INOUT std_logic_vector(2 downto 0):="00"
	);
end counter4_mzw;

architecture arch_counter4 of counter4_mzw is
	
begin
	process(clk)
	begin
		if (clk'event and clk='1') then
			cnt <= cnt + 1;
		end if;
	end process;
end arch_counter4;