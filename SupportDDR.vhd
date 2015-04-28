--------------------------------------------------
-- updateLCD
-- Zar/Novak- 9/2008
--
-- This circuit udpates the LCD on the S3 board
-- with supplied text
--------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use work.commonDefs.all;

entity updateLCD is port(
	clk : in std_logic;
	reset : in std_logic;
	pulse_beat: in std_logic;
	game_state: in gamestateType;
	hit_top_btn: in std_logic;
	hit_bot_btn: in std_logic;
	level: in std_logic_vector(4 downto 0);
	score: in std_logic_vector(11 downto 0);
	hit: out std_logic;
	miss: out std_logic;
	LCD : out lcdData
	);
end updateLCD;

architecture Behavioral of updateLCD is

signal top_string: std_logic_vector(159 downto 0) := the_top_string; -- CommonDefs
signal bot_string: std_logic_vector(159 downto 0) := the_bot_string;
signal top_hit: std_logic := '0';
signal bot_hit: std_logic := '0';
signal btn_hit: std_logic := '0';
  function HexToASCII (data: in std_logic_vector(3 downto 0)) 
			return std_logic_vector is
			
    variable ascii: std_logic_vector(7 downto 0);

    begin
	if data <= x"9" then
		ascii := x"30" + data;
	else 
		ascii := x"57" + data;			
	end if;
        return ascii;
  end function HexToASCII;

begin	

	process(clk, score, reset, pulse_beat, game_state, hit_top_btn, hit_bot_btn, level) begin

           -- just a little something to get you started
           -- look in CommonDefs.vhd to see the top & bottom pattern strings that you should display
		
		if rising_edge(clk) then
			
			if reset = '1' then
			
				top_string <= the_top_string;
				bot_string <= the_bot_string;
				
			elsif game_state = st_play then
				
					--pulsing utput on beat
				if(pulse_beat = '1') then
					
					
					
					if top_hit = '1' or bot_hit = '1' then -- pressed and hit a button
							hit <= '1';
							miss <= '0';
					else
						if btn_hit = '1' then
							hit <= '0';
							miss <= '1';
						else
							--didn't press a button because they were all spaces
							if top_string(159 downto 152) = x"20" and bot_string(159 downto 152) = x"20" then
								hit <= '0';
								miss <= '0';
							else
								hit <= '0';
								miss <= '1';
							end if;
						end if;
					end if;
					
					top_string <= top_string(151 downto 0) & top_string(159 downto 152);
					bot_string <= bot_string(151 downto 0) & bot_string(159 downto 152);
					
					btn_hit <= '0';
					top_hit <= '0';
					bot_hit <= '0';
					
				else
					if top_hit = '1' or bot_hit = '1'  then
						
						if top_hit = '1' then
							
								LCD(1) <= x"4f";
							
						else
							
								LCD(1) <= x"20";
						
						end if;
						
						if bot_hit = '1' then
							
								LCD(41) <= x"4f";
							
						else
							
								LCD(41) <= x"20";
						end if;
					else
						if btn_hit = '1' then
							if top_string(159 downto 152) = x"20" then
								LCD(1) <= x"78";
							else
								LCD(1) <=top_string(159 downto 152);
							end if;
							
							if bot_string(159 downto 152) = x"20" then
								LCD(41) <= x"78";
							else
								LCD(41) <=bot_string(159 downto 152);
							end if;
						else
							LCD(1) <=top_string(159 downto 152);
							LCD(41) <=bot_string(159 downto 152);
						end if;
				end if;
					
					hit <= '0';
					miss <= '0';
					
						-- hiting
			

				if hit_top_btn = '1' then
					if btn_hit = '0' then
						btn_hit <= '1';
						if top_string(159 downto 152) = x"6f" then
							top_hit <= '1';
						else
							top_hit <= '0';
						end if;
					end if;
				end if;
			
				if hit_bot_btn = '1' then
					if btn_hit = '0' then
						btn_hit <= '1';
						if bot_string(159 downto 152) = x"6f" then
							bot_hit <= '1';
						else
							bot_hit <= '0';
						end if;
					end if;
				end if;
			
					
				end if;
				
				LCD(0)  <= "00111010";  -- colon
				-- LCD 1 is the light that changes on input
				LCD(2) <= top_string(151 downto 144 );
				LCD(3) <= top_string(143 downto 136 );
				LCD(4) <= top_string(135 downto 128 );
				LCD(5) <= top_string(127 downto 120);
				LCD(6) <= top_string(119 downto 112 );
				LCD(7)  <= "00111100"; -- "<"
				
				LCD(40) <= "00111010";	-- colon	
				LCD(42) <= bot_string(151 downto 144 );
				LCD(43) <= bot_string(143 downto 136 );
				LCD(44) <= bot_string(135 downto 128 );
				LCD(45) <= bot_string(127 downto 120);
				LCD(46) <= bot_string(119 downto 112 );
				LCD(47) <= "00111100"; -- "<"
				
				--Level--
				LCD(9) <= x"4c"; -- "L"
				case(level) is
					when "00001" => LCD(49) <= x"30";
					when "00010" => LCD(49) <= x"31";
					when "00100" => LCD(49) <= x"32";
					when "01000" => LCD(49) <= x"33";
					when "10000" => LCD(49) <= x"34";
					when others => LCD(49) <= x"30";
				end case;
			elsif game_state = st_win then
				
				LCD(0) <= x"3d"; -- equal sign
				LCD(1) <= x"3d"; -- equal sign
				LCD(2) <= x"3d"; -- equal sign
				
				
				LCD(3) <= x"79"; -- y
				LCD(4) <= x"6f"; -- o
				LCD(5) <= x"75"; -- u
				
				LCD(6) <= x"3d"; -- equal sign
				LCD(7) <= x"3d"; -- equal sign
				LCD(8) <= x"3d"; -- equal sign
				LCD(9) <= x"3d"; -- equal sign
				
				---bottom row
				
				LCD(40) <= x"3d"; -- equal sign
				LCD(41) <= x"3d"; -- equal sign
				LCD(42) <= x"3d"; -- equal sign
				LCD(43) <= x"3d"; -- equal sign
				
				
				LCD(44) <= x"77"; -- w
				LCD(45) <= x"69"; -- i
				LCD(46) <= x"6e"; -- n
				
				LCD(47) <= x"3d"; -- equal sign
				LCD(48) <= x"3d"; -- equal sign
				LCD(49) <= x"3d"; -- equal sign
				
				
			elsif game_state = st_lose then
				
				LCD(0) <= x"2d"; -- dash sign
				LCD(1) <= x"2d"; -- dash sign
				LCD(2) <= x"2d"; -- dash sign
				
				
				LCD(3) <= x"79"; -- y
				LCD(4) <= x"6f"; -- o
				LCD(5) <= x"75"; -- u
				
				LCD(6) <= x"2d"; -- dash sign
				LCD(7) <= x"2d"; -- dash sign
				LCD(8) <= x"2d"; -- dash sign
				LCD(9) <= x"2d"; -- dash sign
				
				---bottom row
				
				LCD(40) <= x"2d"; -- dash sign
				LCD(41) <= x"2d"; -- dash sign
				LCD(42) <= x"2d"; -- dash sign
				LCD(43) <= x"2d"; -- dash sign
				
				
				LCD(44) <= x"6c"; -- l
				LCD(45) <= x"6f"; -- o
				LCD(46) <= x"73"; -- s
				LCD(47) <= x"65"; -- e
				
				
				LCD(48) <= x"2d"; -- dash sign
				LCD(49) <= x"2d"; -- dash sign
				
				
				
			end if;
			
			
		
		end if;
	   -- always display the score
           LCD(11)<= x"73";	-- s
           LCD(12)<= x"63";  	-- c
           LCD(13)<= x"6f";  	-- o
           LCD(14)<= x"72";  	-- r
           LCD(15)<= x"65";  	-- e
			
           LCD(52)  <= HexToASCII(score(11 downto 8));
           LCD(53)  <= HexToASCII(score(7 downto 4));
           LCD(54)  <= HexToASCII(score(3 downto 0));
			
	end process;	

	

end Behavioral;

--------------------------------------------------
-- De-bounce the push buttons.
-- Jon Turner - 1/2008
--
-- This circuit produces a debounced version of the
-- S3 board's push buttons. It does this by ignoring
-- all changes to btn that are not stable for at least
-- 2^20 clock ticks (about 20 ms with a 50 MHz clock).
--------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.commonDefs.all;

entity debouncer is port(
	clk: in std_logic;
	btn: in std_logic_vector(1 downto 0);
	dBtn: out std_logic_vector(1 downto 0));
end debouncer;

architecture debArch of debouncer is
signal prevBtn: std_logic_vector(1 downto 0);
-- for simulation, set operationMode = 0 to make count 2 bits long
-- for synthesis,  set operationMode = 1 to make count 20 bits long
signal count: std_logic_vector(debounceBits-1 downto 0);
begin
	process(clk) begin
		if rising_edge(clk) then
			if operationMode = 0 then
				dBtn <= btn;
			else
				prevBtn <= btn;
				if prevBtn /= btn then count <= (others => '1');
				elsif count /= (count'range => '0') then count <= count - 1;
				else dBtn <= btn;
				end if;
			end if ;
		end if;
	end process; 
end debArch;
