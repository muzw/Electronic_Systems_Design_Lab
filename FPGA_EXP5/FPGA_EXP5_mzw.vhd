-- FPGA_EXP5_mzw @PB20051061 牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP5_mzw is
	port(
		clk :IN std_logic;
		SW_R :IN std_logic_vector(3 downto 0);
		SW_C :OUT std_logic_vector(3 downto 0);
		COM :OUT std_logic;
		LED_SEC :OUT std_logic_vector(6 downto 0)
	);
end FPGA_EXP5_mzw;

architecture arch_FPGA_EXP5 of FPGA_EXP5_mzw is
	component DIV_mzw port(
		clk_in :IN std_logic;
		clk_out :INOUT std_logic
	);
	end component;
	
	signal clk_out :std_logic;
begin
	divider :DIV_mzw port map(clk,clk_out);

end arch_FPGA_EXP5;