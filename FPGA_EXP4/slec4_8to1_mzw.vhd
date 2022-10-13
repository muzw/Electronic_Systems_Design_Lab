-- FPGA_EXP3 2to1选择器 @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity SLEC4_8TO1_mzw is
	port(
		in0 :IN std_logic_vector(3 downto 0);
		in1 :IN std_logic_vector(3 downto 0);
		in2 :IN std_logic_vector(3 downto 0);
		in3 :IN std_logic_vector(3 downto 0);
		in4 :IN std_logic_vector(3 downto 0);
		in5 :IN std_logic_vector(3 downto 0);
		in6 :IN std_logic_vector(3 downto 0);
		in7 :IN std_logic_vector(3 downto 0);
												
		slec :IN std_logic_vector(2 downto 0);
		output :OUT std_logic_vector(3 downto 0)
	);
end SLEC4_8TO1_mzw;

architecture arch_SLEC4_8TO1 of SLEC4_8TO1_mzw is

begin
process(slec,in0,in1,in2,in3,in4,in5,in6,in7)
	begin
		case slec is
			when "000" => output<=in0;
			when "001" => output<=in1;
			when "010" => output<=in2;
			when "011" => output<=in3;
			when "100" => output<=in4;
			when "101" => output<=in5;
			when "110" => output<=in6;
			when "111" => output<=in7;
			when others => NULL;
		end case;
	end process;
end arch_SLEC4_8TO1;