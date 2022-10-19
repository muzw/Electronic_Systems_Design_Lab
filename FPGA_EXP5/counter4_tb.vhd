-- counter8_tb  @ PB20051061

library ieee;
use ieee.std_logic_1164.all;

entity counter4_tb is
end counter4_tb;

architecture arch_counter4_tb of counter4_tb is
	component counter4_mzw port(
		clk :IN std_logic;
		cnt :INOUT std_logic_vector(1 downto 0)
	);
	end component;
	signal clk :std_logic;
	signal cnt :std_logic_vector(1 downto 0);
begin
	cnter :counter4_mzw port map(clk,cnt);
	
	process
	begin
		clk <= '0';
		wait for 20 ns;
		clk <= '1';
		wait for 20 ns;		
	end process;

end arch_counter4_tb;