-- 4进制计数器 @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter4_mzw	is
	port(
		clk :IN std_logic;
		cnt :INOUT std_logic_vector(1 downto 0):="00"
	);
end counter4_mzw;

architecture arch_counter4 of counter4_mzw is
	
begin
	process(clk)
	variable num: integer range 0 to 4;  --2000分频
	begin
		if (clk'event and clk='1') then
			num := num + 1; 
			if(num = 4) then
				num := 0;	
			end if;
			
			if(num = 0) then
				cnt <= "00";
			elsif(num = 1)  then
				cnt <= "01";
			elsif(num = 2)  then
				cnt <= "10";
			elsif(num = 3)  then
				cnt <= "11";
			else null;
			end if;
		end if;
	end process;
	
	
end arch_counter4;