-- FPGA_EXP3 序列产生器1 @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity SEQ_GEN1 is
	port(
		clk :IN std_logic;
		reset :IN std_logic;
		output :OUT std_logic
	);
end SEQ_GEN1;

architecture arch_SEQ_GEN1 of SEQ_GEN1 is
	type states is (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14);
	signal st :states;
begin
	-- 状态寄存器和次态逻辑
	process(clk,reset)
	begin
		if(reset = '1') then
			st <= S14;
		elsif(clk'event and clk='1') then
			case st is
				when s0 => st <= S1;
				when s1 => st <= S2;
				when s2 => st <= S3;
				when s3 => st <= S4;
				when s4 => st <= S5;
				when s5 => st <= S6;
				when s6 => st <= S7;
				when s7 => st <= S8;
				when s8 => st <= S9;
				when s9 => st <= S10;
				when s10 => st <= S11;
				when s11 => st <= S12;
				when s12 => st <= S13;
				when s13 => st <= S14;
				when s14 => st <= S0;
			end case;
		end if;
	end process;
	
	-- 输出逻辑
	process(st)
	begin
		if(st=S1 or st=S2 or st=S3 or st=S5 or st=S6 or st=S7 or st=S9 or st=S12 or st=S13) then
			output <= '1';
		else
			output <= '0';
		end if;
	end process;
end arch_SEQ_GEN1;
	
			

