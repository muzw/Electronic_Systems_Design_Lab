-- FPGA_EXP5_mzw @PB20051061 牟真伟

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FPGA_EXP5_mzw is
	port(
		clk :IN std_logic;
		SW_R :IN std_logic_vector(3 downto 0);
		SW_C :OUT std_logic_vector(3 downto 0);
		COM :OUT std_logic;
		LED_SEC :OUT std_logic_vector(6 downto 0)
	);
end FPGA_EXP5_mzw;

architecture arch_FPGA_EXP5 of FPGA_EXP5_mzw is
	component DIV_mzw port(
		clk_in :IN std_logic;
		clk_out :INOUT std_logic
	);
	end component;
	
	component decoder47_mzw port(
		A :IN std_logic_vector(3 downto 0);
		Y :OUT std_logic_vector(6 downto 0) -- 6543210 -> abcdefg
	);
	end component;

	component key_scan_mzw port(
		cnt :IN std_logic_vector(1 downto 0);
		SW_C :OUT std_logic_vector(3 downto 0) -- 对应4321列
	);
	end component;

	component counter4_mzw port(
		clk :IN std_logic;
		cnt :INOUT std_logic_vector(1 downto 0)
	);
	end component;

	component key_read_mzw port(
		cnt :IN std_logic_vector(1 downto 0);
		SW_R :IN std_logic_vector(3 downto 0);
		result :OUT std_logic_vector(3 downto 0)
	);
	end component;	
	
	signal clk_out :std_logic;
	signal cnt :std_logic_vector(1 downto 0);
	signal location :std_logic_vector(3 downto 0);
begin
	divider :DIV_mzw port map(clk,clk_out);
	counter :counter4_mzw port map(clk_out,cnt);
	key_scan :key_scan_mzw port map(cnt,SW_C);
	key_read :key_read_mzw port map(cnt,SW_R,location);
	decoder47 :decoder47_mzw port map(location,LED_SEC);
	COM <= '1';
	

end arch_FPGA_EXP5;