-- 仿真 test bench
library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP6_tb is
end FPGA_EXP6_tb;

architecture arch_FPGA_EXP6_tb of FPGA_EXP6_tb is
	component FPGA_EXP6_mzw port(
		clk :IN std_logic;
		reset :IN std_logic;
		signal_out :OUT std_logic_vector(7 downto 0)
	);
	end component;
	signal clk :std_logic;
	signal reset :std_logic;
	signal signal_out :std_logic_vector(7 downto 0);
begin
	fpga_exp6 :FPGA_EXP6_mzw port map(clk,reset,signal_out);
	
	process
	begin
		clk <= '0';
		wait for 20 ns;
		clk <= '1';
		wait for 20 ns;
	end process;
	
	process
	begin
		reset <= '0';
		wait for 50000 ns;
		reset <= '1';
		wait for 500000 ns;
	end process;

end arch_FPGA_EXP6_tb;