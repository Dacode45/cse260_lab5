----------------------------------------------------------------------------------
-- The Beat Maker
-- YOUR NAME HERE
--
--		
-- The beatMaker counts clock cycles and sends out a single pulse ('1') 
-- for one clock period after a certain number of clock cycles has passed. 
-- The input to the beatMaker is what level the game is on. That determines 
-- how many clock cycles should pass before the pulse_beat goes high. 
-- (CommonDefs.vhd has constants called numClocks_L1, numClocks_L2, etc. 
-- This tells you how many clock cycles to count down from at each level.)
--
-- The reset should send start the counter over. If the level changes in the 
-- middle of a countdown, nothing happens. The level is only used at the 
-- beginning of a new countdown to figure out what the countdown should take place from.
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.commonDefs.all;

entity beatMaker is port ( 
	clk: in std_logic;
	reset: in std_logic;
	level: in std_logic_vector(4 downto 0);
	pulse_beat: out std_logic
	);
end beatMaker;

architecture arch of beatMaker is
 -- YOUR BEAT MAKER GOES HERE
	signal counter: std_logic_vector(27 downto 0) := x"0000000";
	signal level_length: std_logic_vector(27 downto 0);

	begin
	---implementing counter
		process(clk, level, reset)
		begin
			if(rising_edge(clk)) then
				if(reset = '1' or counter >= level_length) then
					counter <= counter - counter;
					case level is 
						when "00001" => level_length <= numClocks_L1;
						when "00010" => level_length <= numClocks_L2;
						when "00100" => level_length <= numClocks_L3;
						when "01000" => level_length <= numClocks_L4;
						when "10000" => level_length <= numClocks_L5;
						when others => level_length <= numClocks_L1;
					end case;
				else
					counter <= counter + 1;
				end if;
			end if;
		end process;
			
	pulse_beat <= '0' when (counter < level_length) else '1';

							
end arch;
