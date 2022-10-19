-- 分频器 @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DIV_mzw	is
	port(
		clk_in :IN std_logic;
		clk_out :INOUT std_logic:='0'
	);
end DIV_mzw;

architecture arch_DIV of DIV_mzw is
begin
	process(clk_in)
			--variable num: integer range 0 to 2000;  --2000分频
			variable num: integer range 0 to 4 := 0;  --仿真4分频
			
	begin
		 if (clk_in'event and clk_in='1') then
						num := num + 1; 
      	      --if  (num = 2000)  then 
					if  (num = 4)  then --仿真2分频
						num := 0;  
      	      --elsif  (num < 1000)  then 
					elsif  (num < 2)  then --仿真2分频
						clk_out <= '0';
      	      else
						clk_out <= '1';
		      end if;
		end if;
	end process;
end arch_DIV;