
library ieee;
use ieee.std_logic_1164.all;

entity SEQ_GEN2 is
	port(
		clk :IN std_logic;
		reset :IN std_logic;
		output :OUT std_logic
	);
end SEQ_GEN2;

architecture arch_SEQ_GEN2 of SEQ_GEN2 is
	type states is (S0,S1,S2,S3,S4,S5,S6,S7);
	signal st :states;
begin
	-- 状态寄存器和次态逻辑
	process(clk,reset)
	begin
		if(reset = '1') then
			st <= S7;
		elsif(clk'event and clk='1') then
			case st is
				when s0 => st <= S1;
				when s1 => st <= S2;
				when s2 => st <= S3;
				when s3 => st <= S4;
				when s4 => st <= S5;
				when s5 => st <= S6;
				when s6 => st <= S7;
				when s7 => st <= S0;
			end case;
		end if;
	end process;
	
	-- 输出逻辑
	process(st)
	begin
		if(st=S0 or st=S1 or st=S5 or st=S6) then
			output <= '1';
		else
			output <= '0';
		end if;
	end process;
end arch_SEQ_GEN2;
	
			

