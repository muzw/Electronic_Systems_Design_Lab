-- 作业2 序列检测器 @PB20051061牟真伟

library ieee;
use ieee.std_logic_1164.all;

entity SEQ_DECT is
	port(
		clk :IN std_logic;
		reset :IN std_logic;
		data_input :IN std_logic;
		detector_out :OUT std_logic
	);
end SEQ_DECT;

architecture arch_SEQ_DECT of SEQ_DECT is
	type states is (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9);
	signal st :states;
begin
	detector_out <= '1' when st=S9 else '0';
	

	
	-- 状态寄存器和次态逻辑
	process(clk,reset)
	begin
		if(reset = '1') then
			st <= S0;
		elsif(clk'event and clk='1') then
			case st is
				when s0 => if(data_input = '1') then
									st <= S1;
								else 
									st <= S0;
								end if;
				when s1 => if(data_input = '1') then
									st <= S2;
								else 
									st <= S0;
								end if;
				when s2 => if(data_input = '1') then
									st <= S3;
								else 
									st <= S0;
								end if;
				when s3 => if(data_input = '1') then
									st <= S3;
								else 
									st <= S4;
								end if;
				when s4 => if(data_input = '1') then
									st <= S5;
								else 
									st <= S0;
								end if;
				when s5 => if(data_input = '1') then
									st <= S1;
								else 
									st <= S6;
								end if;
				when s6 => if(data_input = '1') then
									st <= S1;
								else 
									st <= S7;
								end if;
				when s7 => if(data_input = '1') then
									st <= S8;
								else 
									st <= S0;
								end if;
				when s8 => if(data_input = '1') then
									st <= S9;
								else 
									st <= S0;
								end if;
				when s9 => if(data_input = '1') then
									st <= S1;
								else 
									st <= S0;
								end if;								
			end case;
		end if;
	end process;
	
	-- 输出逻辑
end arch_SEQ_DECT;
	
			

