-- LATCH_4_tb  @ PB20051061

library ieee;
use ieee.std_logic_1164.all;

entity LATCH_4_tb is
end LATCH_4_tb;

architecture arch_LATCH_4_tb of LATCH_4_tb is
	component LATCH_4_mzw port(
		D :IN std_logic_vector(3 downto 0);
		Q :OUT std_logic_vector(3 downto 0);
		en :IN std_logic;
		cs :IN std_logic
	);
	end component;
	signal D :std_logic_vector(3 downto 0);
	signal Q :std_logic_vector(3 downto 0);
	signal en :std_logic;
	signal cs :std_logic;
begin
	latch :LATCH_4_mzw port map(D,Q,en,cs);

	process
	begin
		D <= "0101";
		wait for 20 ns;
		D <= "1111";
		wait for 20 ns;
	end process;
	
	process
	begin
		cs <= '1';
		wait for 200 ns;
		cs <= '0';
		wait for 200 ns;
	end process;

		
	process
	begin
		en <= '1';
		wait for 100 ns;
		en <= '0';
		wait for 100 ns;
	end process;

end arch_LATCH_4_tb;