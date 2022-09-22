library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP2_tb is
end FPGA_EXP2_tb;

architecture arch of FPGA_EXP2_tb is
	component FPGA_EXP2
		port(
			d1,d0 :in std_logic;
			p :out std_logic;
			q :out std_logic_vector(7 downto 0)
		);
	end component;
	signal d1,d0: std_logic;
	signal p: std_logic;
	signal q: std_logic_vector(7 downto 0);
begin
	u1: FPGA_EXP2 port map(d1,d0,p,q);
	
	process
	begin
		d1 <= '0';
		d0 <= '0';
		wait for 20 ns;
		d1 <= '0';
		d0 <= '1';
		wait for 20 ns;
		d1 <= '1';
		d0 <= '0';
		wait for 20 ns;
		d1 <= '1';
		d0 <= '1';
		wait for 20 ns;
		d1 <= 'U';
		d0 <= '0';
		wait for 20 ns;
		d1 <= '0';
		d0 <= 'X';
		wait for 20 ns;
	end process;
end arch;
		
	