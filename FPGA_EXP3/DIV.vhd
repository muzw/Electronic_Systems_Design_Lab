-- 分频器

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DIV	is
	port(
		clk_in :IN std_logic;
		clk_out :INOUT std_logic
	);
end div;

architecture arch_DIV of DIV is
begin
	process(clk_in)
			variable num: integer range 0 to 10000000;
	begin
		 if (clk_in'event and clk_in='1') then
						num := num + 1; 
      	      if  (num = 10000000)  then
						num := 0;  
      	      elsif  (num < 5000001)  then
						clk_out <= '0';
      	      else
						clk_out <= '1';
		      end if;
		end if;
	end process;
end arch_DIV;