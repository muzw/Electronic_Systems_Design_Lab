-- 按键扫描读取电路 @PB20051061 牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity key_read_mzw is
	port(
		cnt :IN std_logic_vector(1 downto 0);
		SW_R :IN std_logic_vector(3 downto 0);
		location :OUT std_logic_vector(3 downto 0)
	);
end key_read_mzw;

architecture arch_key_read of key_read_mzw is
begin
	process(cnt,SW_R)
	begin	
			case cnt is
				when "00" => 	case SW_R is
									when "1110" => location <= "0000";
									when "1101" => location <= "0100";
									when "1011" => location <= "1000";
									when "0111" => location <="1100";
									when others => null;
									end case;
				when "01" => 	case SW_R is
									when "1110" => location <= "0001";
									when "1101" => location <= "0101";
									when "1011" => location <="1001";
									when "0111" => location <= "1101";
									when others => null;
									end case;
				when "10" => 	case SW_R is
									when "1110" => location <= "0010";
									when "1101" => location <= "0110";
									when "1011" => location <= "1010";
									when "0111" => location <="1110";
									when others => null;
									end case;
				when "11" => 	case SW_R is
									when "1110" => location <= "0011";
									when "1101" => location <= "0111";
									when "1011" => location <= "1011";
									when "0111" => location <= "1111";
									when others => null;
									end case;
				when others => null;
			end case;
	end process;
end arch_key_read;