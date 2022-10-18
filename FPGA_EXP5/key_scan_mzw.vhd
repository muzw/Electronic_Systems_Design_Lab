-- 按键扫描电路 @PB20051061 牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity key_scan_mzw is
	port(
		clk :IN std_logic;
		SW_C :INOUT std_logic_vector(3 downto 0)
	);
end key_scan_mzw;

architecture arch_key_scan of key_scan_mzw is

begin
	process(clk)
	begin
		if(clk'event and clk = '1') then
			case SW_C is
				when "1110" => SW_C <= "1101";
				when "1101" => SW_C <= "1011";
				when "1011" => SW_C <= "0111";
				when "0111" => SW_C <= "1110";
				when others => SW_C <= "1110";
			end case;
		end if;
	end process;
end arch_key_scan;