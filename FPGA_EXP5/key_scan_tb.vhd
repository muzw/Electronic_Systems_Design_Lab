-- key_scan_tb @PB20051061 牟真伟
library ieee;
use ieee.std_logic_1164.all;

entity key_scan_tb is
end key_scan_tb;

architecture arch_key_scan_tb of key_scan_tb is
	component key_scan_mzw port(
		cnt :IN std_logic_vector(1 downto 0);
		SW_C :OUT std_logic_vector(3 downto 0) -- 对应4321列
	);
	end component;
	signal cnt :std_logic_vector(1 downto 0);	
	signal SW_C :std_logic_vector(3 downto 0); 
	
begin
	key_scan :key_scan_mzw port map(cnt,SW_C);
	
	process
	begin
		cnt <= "00";
		wait for 20 ns;
		cnt <= "01";
		wait for 20 ns;	
		cnt <= "10";
		wait for 20 ns;
		cnt <= "11";
		wait for 20 ns;	
	end process;
end arch_key_scan_tb;