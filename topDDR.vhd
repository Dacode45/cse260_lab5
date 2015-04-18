-------------------------------------------------------
-- Top module for DDR
-- Anne Bracy, 2010-2015
--
-- Defines the connections among the various components and the
-- connections between the external pins provided by the S3 board
-- and the corresponding internal signals.
--------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.commonDefs.all;

entity topDDR is port(
	mclk: in std_logic;
	btn: in std_logic_vector(1 downto 0);
	swt : in std_logic;
        led : out std_logic_vector(4 downto 0);
	sf_d : out std_logic_vector(3 downto 0);
	lcd_rw : out std_logic;
	lcd_rs : out std_logic;
	lcd_en : out std_logic;
	sf_ce0 : out std_logic		
);	
end topDDR;

architecture topArch of topDDR is

signal game_state: gamestateType := st_play; -- begin the game in "play" mode

component debouncer port(
	clk: in std_logic;
	btn: in std_logic_vector(1 downto 0);
	dBtn: out std_logic_vector(1 downto 0)); 
end component;

component LCDvhdl port(
	clk, reset : in std_logic;
	sf_d : out std_logic_vector(3 downto 0);
	lcd_en, lcd_rs, lcd_rw, sf_ce0 : out std_logic;
	lcdReg: in lcdData;
	blank: in std_logic;
	offset: in integer
	);
end component;

component beatMaker port(
	clk: in std_logic;
	reset: in std_logic;
	level: in std_logic_vector(4 downto 0); -- what level are we in? --> determines the beat speed
	pulse_beat: out std_logic);             -- goes high for 1 clock cycle per "beat"
end component;

component updateLCD port(
	clk : in std_logic;
	reset : in std_logic;
	pulse_beat: in std_logic;
	game_state: in gamestateType; 	        -- what is the state of the game?
	hit_top_btn : in std_logic;		-- if the player just hit button North
	hit_bot_btn : in std_logic;		-- if the player just hit button South
	level : in std_logic_vector(4 downto 0);	-- what level are we in? (0-4)
	score : in std_logic_vector(11 downto 0);	-- what is the current score? (BCD encoding)
	hit : out std_logic;			-- player just hit the right button
	miss : out std_logic;		        -- player just hit the wrong button, or failed to hit the right button
	LCD : out lcdData	                -- what to display on the LCD screen
	);
end component;

component scoreKeeper port (
	clk: in std_logic;
	reset: in std_logic;
	hit: in std_logic;		-- player just hit the right button
	miss: in std_logic;		-- player just hit the wrong button, or failed to hit the right button
	level: out std_logic_vector(4 downto 0); 	-- what level are we in? (0-4)
	score: out std_logic_vector(11 downto 0);	-- what is the current score. (BCD encoding)
	game_state: out gamestateType); -- are we still playing? (or did we just win/lose)
end component;

signal hit_top_btn, hit_bot_btn, hit, miss: std_logic;
signal score: std_logic_vector(11 downto 0);
signal lcdReg: lcdData; -- register for storing data transmitted to LCD
signal dBtn, prevDB: std_logic_vector(1 downto 0);
signal reset: std_logic;
signal pulse_beat: std_logic;
signal level: std_logic_vector(4 downto 0);

begin
   reset <= swt;
   led <= "00000";
   -- debounce buttons and generate signals on button pushes
   dbnc: debouncer port map(mclk, btn, dBtn);	
   process (mclk) begin
	if rising_edge(mclk) then prevDB <= dBtn; end if;
   end process;

   process (dBtn, prevDB, swt) begin
	hit_bot_btn <= dBtn(1) and (not prevDB(1));
	hit_top_btn <= dBtn(0) and (not prevDB(0));
   end process;
	
   -- you may want to comment out some of these until you actually implement them...
   scoreK: scoreKeeper  port map(mclk, reset, hit, miss, level, score, game_state);
   beatM:  beatMaker    port map(mclk, reset, level, pulse_beat);
   LCDC:   LCDvhdl      port map(mclk, reset, sf_d, lcd_en, lcd_rs, lcd_rw, sf_ce0, lcdReg, '0', 0);
   ULCD:   updateLCD	port map(mclk, reset, pulse_beat, game_state, hit_top_btn, hit_bot_btn, level, score, hit, miss, lcdReg);

end topArch;
