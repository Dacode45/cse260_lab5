library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

package commonDefs is

  type gamestateType is (st_play, st_win, st_lose);
  constant numClocks_L1: std_logic_vector(27 downto 0) := x"2000000";
  constant numClocks_L2: std_logic_vector(27 downto 0) := x"1e00000";
  constant numClocks_L3: std_logic_vector(27 downto 0) := x"1c00000";
  constant numClocks_L4: std_logic_vector(27 downto 0) := x"1800000";
  constant numClocks_L5: std_logic_vector(27 downto 0) := x"1500000";

  -- 6f = o, 20 = space
  -- these begin with a bunch of spaces (20's) 
  -- so you should display the high bits first and then shift them left
  constant the_top_string: std_logic_vector(159 downto 0) := x"202020206f20206f20206f6f206f6f20206f2020";
  constant the_bot_string: std_logic_vector(159 downto 0) := x"20202020206f6f206f6f20206f20206f20206f6f";
  
  constant wordSize: integer := 16;
  constant adrLength: integer := 16;
  
  constant nBtn: integer := 4; -- number of buttons
  constant nSwt: integer := 4; -- number of switches
  constant nLED: integer := 8; -- number of LEDs
  
  
  -- FOLKS, this is important!!
  constant operationMode: integer := 1; -- use 0 for simulation, 1 for S3 board
  
  constant debounceBits: integer := 20 ; -- 20 ms delay for debouncing at 50 MHz
  constant longDelay: integer := 4+operationMode*100000000; -- 100 million ticks is 2 secs
  
  subtype word is std_logic_vector(wordSize-1 downto 0);
  subtype address is std_logic_vector(adrLength-1 downto 0);
  subtype delayReg is std_logic_vector(27 downto 0);
  
  type regSet is record
    pc: address; iReg: word; acc: word; iar: address;
  end record regSet;

  -- data for the LCD display
  type lcddata is array(85 downto 0) of std_logic_vector(7 downto 0);
  
  type display_state is (init, function_set, entry_set, set_display, clr_display, pause, set_addr, 
                         char_a, char_b, char_c, char_d, char_e, char_f, char_g, char_h, char_i, char_j, char_k, char_l, 
                         char_cap_l, char_m, char_n, char_o, char_cap_o, char_p, char_q, char_r, char_s, char_t, char_u, char_v, char_w,
                         char_x, char_y, char_z, char_period, char_comma, char_quest, char_slash, char_colon, char_quote, char_space,
                         char_minus, char_equals, char_0, char_1, char_2, char_3, char_4, char_5, char_6, char_7, char_8,
                         char_9, char_lt, delete, shift_l, shift_r, stay, holdF, done);
	 
   -- Convert logic vector to integer. Handy for array indexing.
   function int(d: std_logic_vector) return integer;
end package commonDefs;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

package body commonDefs is
    function int(d: std_logic_vector) return integer is
    -- Convert logic vector to integer. Handy for array indexing. 
    begin return conv_integer(unsigned(d)); end function int;
end package body commonDefs;

