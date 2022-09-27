library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP3 is
	port(
		clk :IN std_logic;
		reset :IN std_logic;
		selc :IN std_logic;
		detector_out :OUT std_logic
	);
end FPGA_EXP3;

architecture arch_FPGA_EXP3 of FPGA_EXP3 is
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
	signal sgn1 :std_logic;
	signal sgn2 :std_logic;
	signal sgn :std_logic;
begin
	seq_gen_1: SEQ_GEN1 port map(clk, reset, sgn1);
	seq_gen_2: SEQ_GEN2 port map(clk, reset, sgn2);
	seq_dector: SEQ_DECT port map(clk, reset, sgn, detector_out);
	slector: SLEC_2TO1 port map(sgn1,sgn2,selc,sgn);
	--detector_out <= '0';
end arch_FPGA_EXP3;

