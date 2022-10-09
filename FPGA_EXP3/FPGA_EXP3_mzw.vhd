-- FPGA_EXP3 顶层实体 @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP3_mzw is
	port(
		clk :IN std_logic;
		reset :IN std_logic;
		selc :IN std_logic;
		detector_out :OUT std_logic
	);
end FPGA_EXP3_mzw;

architecture arch_FPGA_EXP3 of FPGA_EXP3_mzw is
	component SLEC_2TO1	port(
			in1 :IN std_logic;
			in2 :IN std_logic;
			slec :IN std_logic;
			output :OUT std_logic
		);
	end component;

	component SEQ_GEN1 port(
			clk :IN std_logic;
			reset :IN std_logic;
			output :OUT std_logic
		);
	end component;
	
	component SEQ_GEN2 port(
			clk :IN std_logic;
			reset :IN std_logic;
			output :OUT std_logic
	);
	end component;
	
	component SEQ_DECT port(
		clk :IN std_logic;
		reset :IN std_logic;
		data_input :IN std_logic;
		detector_out :OUT std_logic
	);
	end component;
	
	component DIV port(
		clk_in :IN std_logic;
		clk_out :INOUT std_logic
	);
	end component;
	
	signal sgn1 :std_logic;
	signal sgn2 :std_logic;
	signal sgn :std_logic;
	signal clk_div :std_logic;
begin

	divider: DIV port map(clk, clk_div);
	seq_gen_1: SEQ_GEN1 port map(clk_div, reset, sgn1);
	seq_gen_2: SEQ_GEN2 port map(clk_div, reset, sgn2);
	seq_dector: SEQ_DECT port map(clk_div, reset, sgn, detector_out);
	slector: SLEC_2TO1 port map(sgn1,sgn2,selc,sgn);
end arch_FPGA_EXP3;

