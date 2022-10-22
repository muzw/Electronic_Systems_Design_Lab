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
	
	component decoder47_mzw port(
		A :IN std_logic_vector(3 downto 0);
		Y :OUT std_logic_vector(6 downto 0) -- 6543210 -> abcdefg
	);
	end component;
	
	component matrix_mzw port(
			clk: in std_logic;
			row:  in std_logic_vector(3 downto 0);
			col: out std_logic_vector(3 downto 0);
			keyout: out std_logic_vector(3 downto 0)
	);
	end component;
	signal clk_out :std_logic;
	signal location :std_logic_vector(3 downto 0);
begin
	divider :DIV_mzw port map(clk,clk_out);
	decoder47 :decoder47_mzw port map(location,LED_SEC);
	matrix_key :matrix_mzw port map(clk_out,SW_R,SW_C,location);
	COM <= '1';
end arch_FPGA_EXP5;
