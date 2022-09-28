library ieee;
use ieee.std_logic_1164.all;

entity DIV_tb is
end DIV_tb;

architecture arch_DIV_tb of DIV_tb is
	component DIV port(
			clk_in :IN std_logic;
			clk_out :INOUT std_logic
		);
	end component;
	signal clk_in :std_logic;
	signal clk_out :std_logic;
begin
	divider: DIV port map(clk_in,clk_out);

	process
	begin
		clk_in <= '0';
		wait for 20 ns;
		clk_in <= '1';
		wait for 20 ns;		
	end process;

end arch_DIV_tb;