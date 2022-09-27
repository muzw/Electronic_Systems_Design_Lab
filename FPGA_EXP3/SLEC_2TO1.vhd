library ieee;
use ieee.std_logic_1164.all;

entity SLEC_2TO1 is
	port(
		in1 :IN std_logic;
		in2 :IN std_logic;
		slec :IN std_logic;
		output :OUT std_logic
	);
end SLEC_2TO1;

architecture arch_SLEC_2TO1 of SLEC_2TO1 is

begin

	output <= in1 when slec='0' else in2;


end arch_SLEC_2TO1;