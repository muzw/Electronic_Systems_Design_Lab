library ieee;
use ieee.std_logic_1164.all;

entity decoder38_0_mzw is
	port(
		A :IN std_logic_vector(2 downto 0);
		Y :OUT std_logic_vector(7 downto 0)
	);
end decoder38_0_mzw;

architecture arch_decoder38 of decoder38_0_mzw is

begin
	process(A)
	begin
		case A is
			when "000" => Y <= "11111110";
			when "001" => Y <= "11111101";
			when "010" => Y <= "11111011";
			when "011" => Y <= "11110111";
			when "100" => Y <= "11101111";
			when "101" => Y <= "11011111";
			when "110" => Y <= "10111111";
			when "111" => Y <= "01111111";
			when others => null;
		end case;
	end process;
end arch_decoder38;