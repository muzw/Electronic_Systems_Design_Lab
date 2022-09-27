-- 作业2 序列检测器 test bench @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity SEQ_DECT_tb is
end SEQ_DECT_tb;

architecture arch_SEQ_DECT_tb of SEQ_DECT_tb is
	component SEQ_DECT port(
			clk :IN std_logic;
			reset :IN std_logic;
			data_input :IN std_logic;
			detector_out :OUT std_logic
		);
	end component;
	signal clk :std_logic;
	signal reset :std_logic;
	signal data_input :std_logic;
	signal detector_out :std_logic;
	constant seq1 :std_logic_vector(1 to 9) := "110010011";
begin
	sql_dect: SEQ_DECT port map(clk, reset, data_input, detector_out);
	reset <= '0';
	process
	begin


		for i in 1 to 9 loop
			clk <= '0';		
			wait for 20 ns;
			data_input <= seq1(i);

			clk <= '1';
			wait for 20 ns;
		end loop;
	end process;
	
	
end arch_SEQ_DECT_tb;