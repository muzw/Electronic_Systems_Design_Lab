library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP2 is
port(
	d1,d0 :in std_logic;
	p :out std_logic;
	q :out std_logic_vector(7 downto 0)
);

end FPGA_EXP2;

architecture arch of FPGA_EXP2 is
	signal tmp :std_logic_vector(1 downto 0);
begin
	p <= '1';
	tmp <= d1 & d0;
	process(tmp)
	begin
		case tmp is
			when "00"=> q<="01001000";
			when "01"=> q<="01000000";
			when "10"=> q<="00011110";
			when "11"=> q<="00000000";
			when others=> null;
		end case;
	end process;
end arch;
			
	