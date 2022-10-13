-- register0_7_tb  @ PB20051061

library ieee;
use ieee.std_logic_1164.all;

entity register0_7_tb is
end register0_7_tb;

architecture arch_register0_7_tb of register0_7_tb is
	component register0_7_mzw port(
		sel :IN std_logic_vector(2 downto 0);
		datain :IN std_logic_vector(3 downto 0);
		en :IN std_logic;
		d0 :OUT std_logic_vector(3 downto 0);
		d1 :OUT std_logic_vector(3 downto 0);
		d2 :OUT std_logic_vector(3 downto 0);
		d3 :OUT std_logic_vector(3 downto 0);
		d4 :OUT std_logic_vector(3 downto 0);
		d5 :OUT std_logic_vector(3 downto 0);
		d6 :OUT std_logic_vector(3 downto 0);
		d7 :OUT std_logic_vector(3 downto 0)
	);
	end component;
	signal	sel :std_logic_vector(2 downto 0);
	signal	datain :std_logic_vector(3 downto 0);
	signal	en :std_logic;
	signal	d0 :std_logic_vector(3 downto 0);
	signal	d1 :std_logic_vector(3 downto 0);
	signal	d2 :std_logic_vector(3 downto 0);
	signal	d3 :std_logic_vector(3 downto 0);
	signal	d4 :std_logic_vector(3 downto 0);
	signal	d5 :std_logic_vector(3 downto 0);
	signal	d6 :std_logic_vector(3 downto 0);
	signal	d7 :std_logic_vector(3 downto 0);
begin
	reg :register0_7_mzw port map(sel,datain,en,d0,d1,d2,d3,d4,d5,d6,d7);
	
	process
	begin
		en <= '0';
		wait for 10 ns;
		en <= '1';
		wait for 10 ns;		
	end process;
	
	process
	begin
		datain <= "0000";
		wait for 20 ns;
		datain <= "0001";
		wait for 20 ns;
		datain <= "0010";
		wait for 20 ns;
		datain <= "0011";
		wait for 20 ns;
		datain <= "0100";
		wait for 20 ns;
		datain <= "0101";
		wait for 20 ns;
		datain <= "0110";
		wait for 20 ns;
		datain <= "0111";
		wait for 20 ns;	
		datain <= "1000";
		wait for 20 ns;
		datain <= "1001";
		wait for 20 ns;
		datain <= "1010";
		wait for 20 ns;
		datain <= "1011";
		wait for 20 ns;
		datain <= "1100";
		wait for 20 ns;
		datain <= "1101";
		wait for 20 ns;
		datain <= "1110";
		wait for 20 ns;
		datain <= "1111";
		wait for 20 ns;	
	end process;
	
		process
	begin
		sel <= "000";
		wait for 20 ns;
		sel <= "001";
		wait for 20 ns;
		sel <= "010";
		wait for 20 ns;
		sel <= "011";
		wait for 20 ns;
		sel <= "100";
		wait for 20 ns;
		sel <= "101";
		wait for 20 ns;
		sel <= "110";
		wait for 20 ns;
		sel <= "111";
		wait for 20 ns;
		
	end process;

end arch_register0_7_tb;