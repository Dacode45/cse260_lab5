----------------------------------------------------------------------------------
-- Score Keeper for DDR
-- YOUR NAME HERE
--
-- The scoreKeeper keeps track of the current score, level, and 
-- the state of the game. 8 hits in a row move the game up one level. 
-- There are 5 levels total, so 40 hits in a row ends the game in a win. 
-- 8 misses in a row ends the game in a loss.
--
-- For each hit, the score increases by the level number. (e.g., 1 point for a
-- hit in level 1, 5 points for a hit in level 5) The score should be a BCD
-- representation. The score never decreases.
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.commonDefs.all;     

entity scoreKeeper is port ( 
	clk: in std_logic;
	reset: in std_logic;
	hit: in std_logic;	
	miss: in std_logic;
	level: out std_logic_vector(4 downto 0);
	score: out std_logic_vector(11 downto 0);
	game_state: out gamestateType
	);
end scoreKeeper;

architecture scoreK of scoreKeeper is
	TYPE levels IS (lose, l0, l1, l2, l3, l4, win);
	signal state: levels := l0;
	signal hit_count: std_logic_vector(3 downto 0) := x"0";
	signal miss_count: std_logic_vector(3 downto 0) := x"0";
	signal hex_score: std_logic_vector(11 downto 0) := x"000";
	
	--based on double_dable algorithm
	function HexToBCD (data: in std_logic_vector(11 downto 0)) 
			return std_logic_vector is
			
    variable bcd: std_logic_vector(11 downto 0):=(others => '0');
	 begin
		
		for i in 11 downto 0 loop
			if bcd(3 downto 0) > 4 then
				bcd(3 downto 0) := bcd (3 downto 0) + 3;
			end if;
			if bcd(7 downto 4) > 4 then
				bcd(7 downto 4) := bcd (7 downto 4) + 3;
			end if;
			if bcd(11 downto 8) > 4 then
				bcd(11 downto 8) := bcd (11 downto 8) + 3;
			end if;
			
			bcd := bcd(10 downto 0) & data(i);
			
		end loop;
		return bcd;
  end function HexToBCD;
  
begin

		clkd: process (clk)
		begin
			if(rising_edge(clk)) then
				if (reset = '1') then
					state <= l0;
					hex_score <= x"000";
					hit_count <= x"0";
					miss_count <= x"0";
				else
				--Update counters appropriately
					if(hit = '1') then
						--Increment the number of hits--
						hit_count <= hit_count + 1;
						--Assign Points--
						case state is 
							when l0 => hex_score <= hex_score + 1;
							when l1 => hex_score <= hex_score + 2;
							when l2 => hex_score <= hex_score + 3;
							when l3 => hex_score <= hex_score + 4;
							when l4 => hex_score <= hex_score + 5;
							when others => hex_score <= hex_score;
						end case;
					elsif(miss = '1') then
					--Increment the number of misses and zero the hit count.--
						miss_count <= miss_count +1;
						hit_count <=  x"0";
					else
						--Stay put if neither a hit nor a miss.
						miss_count <= miss_count;
						hit_count <= hit_count;
					end if;
				end if;
				--Check for win, loss and level-up.
				if (miss_count > x"0") then
					if(miss_count >= x"8") then
						--FATALITY--
						state <= lose;
					else
						--Back to level 1--
						state <= l0;
					end if;
				elsif (hit_count >= x"8") then
						--LEVEL UP--
						case state is 
							when l0 => 
								state <= l1;
							when l1 => 
								state <= l2;
							when l2 => 
								state <= l3;
							when l3 =>
								state <= l4;
							when l4 => 
								state <= win;
							when others => 
								state <= state;
						end case;
						--Restart your hit counting--
						hit_count <= x"0";
				end if;
				--Assign output state--
				case state is 
					when win => game_state <= st_win;
					when lose => game_state <= st_lose;
					when others => game_state <= st_play;
				end case;
				
				--Assign output level--
				case state is 
					when l0 => 
						level <= "00001";
					when l1 => 
						level <= "00010";
					when l2 => 
						level <= "00100";
					when l3 =>
						level <= "01000";
					when l4 => 
						level <= "10000";
					when others => 
						level <= "00000";
				end case;
			else
				--Stay put if not on rising edge--
				state <= state;
				hex_score <= hex_score;
				hit_count <= hit_count;
				miss_count <= miss_count;
			end if;
		end process clkd;		
		
		--Assign outputs--
		score <= HexToBCD(hex_score);
end scoreK;
