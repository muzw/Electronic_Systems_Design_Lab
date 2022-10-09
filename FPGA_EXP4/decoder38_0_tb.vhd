-- decoder38_0_tb  @ PB20051061

library ieee;
use ieee.std_logic_1164.all;

entity decoder38_0_tb is
end decoder38_0_tb;

architecture arch_decoder38_0_tb of decoder38_0_tb is
	component decoder38_0_mzw port(
		A :IN std_logic_vector(2 downto 0);
		Y :OUT std_logic_vector(7 downto 0)
	);
	end component;
	signal A :std_logic_vector(2 downto 0);
	signal Y :std_logic_vector(7 downto 0);
begin
	decoder :decoder38_0_mzw port map(A,Y);
	
	process
	begin
		A <= "000";
		wait for 20 ns;
		A <= "001";
		wait for 20 ns;
		A <= "010";
		wait for 20 ns;
		A <= "011";
		wait for 20 ns;
		A <= "100";
		wait for 20 ns;
		A <= "101";
		wait for 20 ns;
		A <= "110";
		wait for 20 ns;
		A <= "111";
		wait for 20 ns;		
	end process;
end arch_decoder38_0_tb;