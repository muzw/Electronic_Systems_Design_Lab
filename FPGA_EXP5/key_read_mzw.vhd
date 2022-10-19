-- 按键扫描读取电路 @PB20051061 牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity key_read_mzw is
	port(
		cnt :IN std_logic_vector(1 downto 0);
		SW_R :IN std_logic_vector(3 downto 0);
		result :OUT std_logic_vector(3 downto 0)
	);
end key_read_mzw;

architecture arch_key_read of key_read_mzw is

begin
	process(cnt)
	begin
			case cnt is
				when "00" => 	if SW_R(0) = '0' then
										result <= "0000";
									elsif SW_R(1) = '0' then
										result <= "0100";
									elsif SW_R(2) = '0' then
										result <= "1000";
									elsif SW_R(3) = '0' then
										result <= "1100";	
									else null;
									end if;
				
				when "01" => 	if SW_R(0) = '0' then
										result <= "0001";
									elsif SW_R(1) = '0' then
										result <= "0101";
									elsif SW_R(2) = '0' then
										result <= "1001";
									elsif SW_R(3) = '0' then
										result <= "1101";	
									else null;
									end if;

				
				when "10" => 	if SW_R(0) = '0' then
										result <= "0010";
									elsif SW_R(1) = '0' then
										result <= "0110";
									elsif SW_R(2) = '0' then
										result <= "1010";
									elsif SW_R(3) = '0' then
										result <= "1110";	
									else null;
									end if;

				when "11" => 	if SW_R(0) = '0' then
										result <= "0011";
									elsif SW_R(1) = '0' then
										result <= "0111";
									elsif SW_R(2) = '0' then
										result <= "1011";
									elsif SW_R(3) = '0' then
										result <= "1111";	
									else null;
									end if;

				when others => null;
			end case;
	end process;
end arch_key_read;