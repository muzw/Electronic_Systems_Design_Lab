-- FPGA_EXP3 顶层实体test bench @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP3_tb is
end FPGA_EXP3_tb;

architecture arch_FPGA_EXP3_tb of FPGA_EXP3_tb is
	component FPGA_EXP3_mzw port(
		clk :IN std_logic;
		reset :IN std_logic;
		selc :IN std_logic;
		detector_out :OUT std_logic
	);
	end component;
	signal clk :std_logic;
	signal reset :std_logic;
	signal detector_out :std_logic;
	signal selc :std_logic;

begin
	exp3: FPGA_EXP3_mzw port map(clk,reset,selc,detector_out);
	--selc <= '0';
	--reset <= '0';
	process 
	begin
	selc <= '0';
	wait for 2000 ns;
	selc <= '1';
	wait for 2000 ns;
	end process;
	
	process 
	begin
	reset <= '0';
	wait for 4000 ns;
	reset <= '1';
	wait for 4000 ns;
	end process;
	
	process
	begin
			clk <= '0';
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
	end process;

end arch_FPGA_EXP3_tb;