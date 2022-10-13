-- FPGA_EXP4_mzw @ PB20051061

library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP4_mzw is
	port(
		sel :IN std_logic_vector(2 downto 0);
		datain :IN std_logic_vector(3 downto 0);
		en :IN std_logic;
		clk_in :IN std_logic;
		LED_CS :OUT std_logic_vector(7 downto 0);
		LED_seg :OUT std_logic_vector(6 downto 0) -- 6543210 -> abcdefg
	);

end FPGA_EXP4_mzw;

architecture arch_FPGA_EXP4 of FPGA_EXP4_mzw is
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
	
	component DIV_mzw port(
		clk_in :IN std_logic;
		clk_out :INOUT std_logic
	);
	end component;	
	
	component decoder38_1_mzw port(
		A :IN std_logic_vector(2 downto 0);
		Y :OUT std_logic_vector(7 downto 0)
	);
	end component;	
	
	component counter8_mzw port(
		clk :IN std_logic;
		cnt :INOUT std_logic_vector(2 downto 0)
	);
	end component;		
	
	component SLEC4_8TO1_mzw port(
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
	end component;	
	
	component decoder47_mzw port(
		A :IN std_logic_vector(3 downto 0);
		Y :OUT std_logic_vector(6 downto 0) -- 6543210 -> abcdefg
	);
	end component;

	signal clk_out :std_logic;
	signal cnt :std_logic_vector(2 downto 0);
	signal	d0 :std_logic_vector(3 downto 0);
	signal	d1 :std_logic_vector(3 downto 0);
	signal	d2 :std_logic_vector(3 downto 0);
	signal	d3 :std_logic_vector(3 downto 0);
	signal	d4 :std_logic_vector(3 downto 0);
	signal	d5 :std_logic_vector(3 downto 0);
	signal	d6 :std_logic_vector(3 downto 0);
	signal	d7 :std_logic_vector(3 downto 0);
	signal 	bcd :std_logic_vector(3 downto 0);
begin
	reg0_7 :register0_7_mzw port map(sel,datain,en,d0,d1,d2,d3,d4,d5,d6,d7);
	divder :DIV_mzw port map(clk_in,clk_out);
	counter :counter8_mzw port map(clk_out,cnt);
	decoder38 :decoder38_1_mzw port map(cnt,LED_CS);
	selector :SLEC4_8TO1_mzw port map(d0,d1,d2,d3,d4,d5,d6,d7,cnt,bcd);
	decoder47 :decoder47_mzw port map(bcd,LED_seg);



end arch_FPGA_EXP4;