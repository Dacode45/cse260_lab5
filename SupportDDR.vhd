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
	process(clk) begin

           -- just a little something to get you started
           -- look in CommonDefs.vhd to see the top & bottom pattern strings that you should display
	
	   if game_state = st_play then
                LCD(0)  <= "00111010";  -- colon
		LCD(40) <= "00111010";	-- colon	
			
		LCD(7)  <= "00111100"; -- "<"
		LCD(47) <= "00111100"; -- "<"
		
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
