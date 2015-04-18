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

begin

      -- YOUR SCORE-KEEPER CODE GOES HERE
		
end scoreK;
