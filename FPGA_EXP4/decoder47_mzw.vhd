library ieee;
use ieee.std_logic_1164.all;

entity decoder47_mzw is
	port(
		A :IN std_logic_vector(3 downto 0);
		Y :OUT std_logic_vector(6 downto 0) -- 6543210 -> abcdefg
	);
end decoder47_mzw;

architecture arch_decoder47 of decoder47_mzw is

begin
	process(A)
	begin
		case A is
			when "0000" => Y <= "0000001";
			when "0001" => Y <= "1001111";
			when "0010" => Y <= "0010010";
			when "0011" => Y <= "0000110";
			when "0100" => Y <= "1001100";
			when "0101" => Y <= "0100100";
			when "0110" => Y <= "0100000";
			when "0111" => Y <= "0001111";
			when "1000" => Y <= "0000000";
			when "1001" => Y <= "0000100";
			when others => null;
		end case;
	end process;
end arch_decoder47;