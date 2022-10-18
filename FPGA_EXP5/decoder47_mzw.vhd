-- 矩阵键盘与数码管译码器 @PB20051061 牟真伟

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
			when "0000" => Y <= "1001111";--1
			when "0001" => Y <= "0010010";--2
			when "0010" => Y <= "0000110";--3
			when "0011" => Y <= "0001000";--A
			when "0100" => Y <= "1001100";--4
			when "0101" => Y <= "0100100";--5
			when "0110" => Y <= "0100000";--6
			when "0111" => Y <= "1100000";--b
			when "1000" => Y <= "0001111";--7
			when "1001" => Y <= "0000000";--8
			when "1010" => Y <= "0000100";--9
			when "1011" => Y <= "0110001";--C
			when "1100" => Y <= "0110000";--*E
			when "1101" => Y <= "0000001";--0
			when "1110" => Y <= "0111000";--#F
			when "1111" => Y <= "1000010";--d		
			when others => null;
		end case;
	end process;
end arch_decoder47;