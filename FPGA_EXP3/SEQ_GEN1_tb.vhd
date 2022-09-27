-- 作业1 序列产生器 test bench @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity SEQ_GEN1_tb is
end SEQ_GEN1_tb;

architecture arch_SEQ_GEN1_tb of SEQ_GEN1_tb is
	component SEQ_GEN1 port(
			clk :IN std_logic;
			reset :IN std_logic;
			output :OUT std_logic
		);
	end component;
	signal clk :std_logic;
	signal reset :std_logic;
	signal output :std_logic;
begin
	fsm: SEQ_GEN1 port map(clk, reset, output);
	
	process
	begin
		reset <= '1';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '1';
		clk 	<= '1';
		wait for 20 ns;		
		reset <= '1';
		clk 	<= '0';
		wait for 20 ns;		
		reset <= '1';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;	
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '1';
		wait for 20 ns;
		reset <= '0';
		clk 	<= '0';
		wait for 20 ns;
	end process;
end arch_SEQ_GEN1_tb;