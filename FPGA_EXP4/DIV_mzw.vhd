-- FPGA_EXP3 分频器 @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DIV_mzw	is
	port(
		clk_in :IN std_logic;
		clk_out :INOUT std_logic
	);
end DIV_mzw;

architecture arch_DIV of DIV_mzw is
begin
	process(clk_in)
			variable num: integer range 0 to 50000;  --10000分频
	begin
		 if (clk_in'event and clk_in='1') then
						num := num + 1; 
      	      if  (num = 50000)  then 
						num := 0;  
      	      elsif  (num < 25000)  then 
						clk_out <= '0';
      	      else
						clk_out <= '1';
		      end if;
		end if;
	end process;
end arch_DIV;