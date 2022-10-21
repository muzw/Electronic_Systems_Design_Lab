-- FPGA_EXP5_tb  @ PB20051061 牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP5_tb is
end FPGA_EXP5_tb;

architecture arch_FPGA_EXP5_tb of FPGA_EXP5_tb is
	component FPGA_EXP5_mzw port(
		clk :IN std_logic;
		SW_R :IN std_logic_vector(3 downto 0);
		SW_C :INOUT std_logic_vector(3 downto 0);
		COM :OUT std_logic;
		LED_SEC :OUT std_logic_vector(6 downto 0)
	);
	end component;
	
	signal clk :std_logic;
	signal SW_R :std_logic_vector(3 downto 0);
	signal SW_C :std_logic_vector(3 downto 0);
	signal COM :std_logic;
	signal LED_SEC :std_logic_vector(6 downto 0);

begin
	fpga_exp5 :FPGA_EXP5_mzw port map(clk,SW_R,SW_C,COM,LED_SEC);
	process
	begin		
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
	
	process
	begin		
		SW_R <= "1110";
		wait for 80 ns;
		SW_R <= "1101";
		wait for 80 ns;
		SW_R <= "1011";
		wait for 80 ns;
		SW_R <= "0111";
		wait for 80 ns;
		SW_R <= "1111";
		wait for 500 ns;
	end process;

end arch_FPGA_EXP5_tb;