-- 按键扫描电路 @PB20051061 牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity key_scan_mzw is
	port(
		cnt :IN std_logic_vector(1 downto 0);
		SW_C :OUT std_logic_vector(3 downto 0) -- 对应4321列
	);
end key_scan_mzw;

architecture arch_key_scan of key_scan_mzw is

begin
	process(cnt)
	begin
			case cnt is
				when "00" => SW_C <= "1110";
				when "01" => SW_C <= "1101";
				when "10" => SW_C <= "1011";
				when "11" => SW_C <= "0111";
				when others => null;
			end case;
	end process;
end arch_key_scan;