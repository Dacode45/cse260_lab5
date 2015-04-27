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
	TYPE levels IS (lose,l0,l1,l2,l3, l4, win);
	signal state: levels := l0;
	signal next_state: levels := l0;
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
					hex_score <= hex_score - hex_score;
					hit_count <= hit_count - hit_count;
					miss_count <= miss_count - miss_count;
				else
					if(hit = '1') then
						hex_score <= hex_score + 1;
						hit_count <= hit_count + 1;
					elsif(miss = '1') then
						miss_count <= miss_count +1;
					end if;
					state <= next_state;
					
				end if;
			end if;
		end process clkd;
		
		state_trans: process(state, hit_count, miss_count)
		begin
			if (miss_count >= x"8") then
				next_state <= lose;
			elsif (hit_count >= x"8") then
				next_state <= state;
				case state is 
					when l0 => next_state <= l1;
					when l1 => next_state <= l2;
					when l2 => next_state <= l3;
					when l3 => next_state <= l4;
					when l4 => next_state <= win;
					when others => next_state <= state;
				end case;
			end if;
		end process state_trans;
				
      -- YOUR SCORE-KEEPER CODE GOES HERE
		output: process(state)
		begin
			game_state <= st_play;
			case state is 
					when l0 => level <= "00001";
					when l1 => level <= "00010";
					when l2 => level <= "00100";
					when l3 => level <= "01000";
					when l4 => level <= "10000";
					when lose => game_state <= st_lose;
					when win => game_state <= st_win;
			end case;
		end process output;
		
		score <= HexToBCD(hex_score);
end scoreK;
