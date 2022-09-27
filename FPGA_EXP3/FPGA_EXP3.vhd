-- 作业1 序列产生器 @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP3 is
	port(
		clk :IN std_logic;
		reset :IN std_logic;
		detector_out :OUT std_logic
	);
end FPGA_EXP3;

architecture arch_FPGA_EXP3 of FPGA_EXP3 is
	component SEQ_GEN port(
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
	
begin

end arch_FPGA_EXP3;
	
			

