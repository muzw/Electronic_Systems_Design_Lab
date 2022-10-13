-- 寄存器组

library ieee;
use ieee.std_logic_1164.all;

entity register0_7_mzw is
	port(
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
end register0_7_mzw;

architecture arch_register0_7_mzw of register0_7_mzw is
	component LATCH_4_mzw port(
		D :IN std_logic_vector(3 downto 0);
		Q :OUT std_logic_vector(3 downto 0);
		en :IN std_logic;
		cs :IN std_logic
	);
	end component;

	component decoder38_0_mzw port(
		A :IN std_logic_vector(2 downto 0);
		Y :OUT std_logic_vector(7 downto 0)
	);
	end component;

	signal cs7_0 :std_logic_vector(7 downto 0);
	
begin
	l0 :LATCH_4_mzw port map(datain,d0,en,cs7_0(0));
	l1 :LATCH_4_mzw port map(datain,d1,en,cs7_0(1));
	l2 :LATCH_4_mzw port map(datain,d2,en,cs7_0(2));
	l3 :LATCH_4_mzw port map(datain,d3,en,cs7_0(3));
	l4 :LATCH_4_mzw port map(datain,d4,en,cs7_0(4));
	l5 :LATCH_4_mzw port map(datain,d5,en,cs7_0(5));
	l6 :LATCH_4_mzw port map(datain,d6,en,cs7_0(6));
	l7 :LATCH_4_mzw port map(datain,d7,en,cs7_0(7));
	decoder38 :decoder38_0_mzw port map(sel,cs7_0);

end arch_register0_7_mzw;