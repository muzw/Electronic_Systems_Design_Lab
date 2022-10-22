-- 矩阵键盘扫描读取电路 @ PB20051061 牟真伟

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity matrix_mzw is
	port(
		clk: in std_logic;
		row:  in std_logic_vector(3 downto 0);
		col: out std_logic_vector(3 downto 0);
		keyout: out std_logic_vector(3 downto 0)
	);
end matrix_mzw;
	
architecture arch_matrix of matrix_mzw is
	signal col_sgn:  std_logic_vector(3 downto 0);
	signal con: std_logic_vector(7 downto 0);
begin
--分频，在1~10KHZ左右的时钟进行键盘扫描
	--产生列扫描信号
	process(clk)
	begin
		if (clk'event and clk = '1') then
			case col_sgn is
				when "1110" => col_sgn<="1101";
				when "1101" => col_sgn<="1011";
				when "1011" => col_sgn<="0111";
				when "0111" => col_sgn<="1110";
				when others => col_sgn<="1110";
				end case;
			end if;
	end process;
--对行信号和列信号进行组合--
	col<=col_sgn;
	con<= col_sgn & row;--列行
--对组合的扫描信号进行判断，并输出按键指示信号以及编码--
	process(clk)
	begin
		if (clk'event and clk = '1') then
			case con is
				when "11101110" => keyout<="0000";
				when "11011110" => keyout<="0001";
				when "10111110" => keyout<="0010";
				when "01111110" => keyout<="0011";
				when "11101101" => keyout<="0100";
				when "11011101" => keyout<="0101";
				when "10111101" => keyout<="0110";
				when "01111101" => keyout<="0111";
				when "11101011" => keyout<="1000";
				when "11011011" => keyout<="1001";
				when "10111011" => keyout<="1010";
				when "01111011" => keyout<="1011";
				when "11100111" => keyout<="1100";
				when "11010111" => keyout<="1101";
				when "10110111" => keyout<="1110";
				when "01110111" => keyout<="1111";
				when others => null;
			end case;
		end if;
	end process;
end arch_matrix;
