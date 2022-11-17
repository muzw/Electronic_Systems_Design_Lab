-- 顶层实体
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FPGA_EXP6_mzw is
	port(
		clk :IN std_logic;
		reset :IN std_logic;
		signal_out :OUT std_logic_vector(7 downto 0)
	);
end FPGA_EXP6_mzw;

architecture arch_FPGA_EXP6 of FPGA_EXP6_mzw is
	component mystorage port(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	end component;
	signal address :STD_LOGIC_VECTOR (9 DOWNTO 0):="0000000000";
	

begin
	storage: mystorage port map(address,clk,signal_out);

	process(clk,reset)
	begin
		if(reset = '0') then 
			address <= "0000000000";
		else
			if(clk'event and clk = '1') then 
				address <= address + 1;
			end if;
		end if;
	end process;

end arch_FPGA_EXP6;