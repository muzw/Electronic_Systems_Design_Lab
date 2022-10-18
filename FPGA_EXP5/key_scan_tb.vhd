-- key_scan_tb @PB20051061 牟真伟
library ieee;
use ieee.std_logic_1164.all;

entity key_scan_tb is
end key_scan_tb;

architecture arch_key_scan_tb of key_scan_tb is
	component key_scan_mzw port(
		clk :IN std_logic;
		SW_C :INOUT std_logic_vector(3 downto 0)
	);
	end component;
	signal clk :std_logic;	
	signal SW_C :std_logic_vector(3 downto 0); 
	
begin
	key_scan :key_scan_mzw port map(clk,SW_C);
	
	process
	begin
		clk <= '0';
		wait for 20 ns;
		clk <= '1';
		wait for 20 ns;		
	end process;
end arch_key_scan_tb;