library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP3_tb is
end FPGA_EXP3_tb;

architecture arch_FPGA_EXP3_tb of FPGA_EXP3_tb is
	component FPGA_EXP3 port(
		clk :IN std_logic;
		reset :IN std_logic;
		detector_out :OUT std_logic
	);
	end component;
	signal clk:std_logic;
	signal reset:std_logic;
	signal detector_out:std_logic;

begin
	exp3: FPGA_EXP3 port map(clk,reset,detector_out);
	reset <= '0';
	process
	begin
		for i in 1 to 100 loop
			clk <= '0';
			wait for 20 ns;
			clk <= '1';
			wait for 20 ns;
		end loop;
	end process;

end arch_FPGA_EXP3_tb;