-- Original code written by Rahul Vora
-- for the University of New Mexico
-- rhlvora@gmail.com
--
-- Modified 8/2008 by Jonathan Novak and David M. Zar
-- for Washington University in St. Louis
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.commonDefs.all;

entity LCDvhdl is port(
	clk, reset : in std_logic;
	SF_D : out std_logic_vector(3 downto 0);
	LCD_EN, LCD_RS, LCD_RW, SF_CE0 : out std_logic;
	lcdReg: in lcdData;
	blank: in std_logic;
	offset: in integer
	);
end LCDvhdl;

architecture behavior of LCDvhdl is

type tx_sequence is (high_setup, high_hold, oneus, low_setup, low_hold, fortyus, done);
signal tx_state : tx_sequence := done;
signal tx_byte : std_logic_vector(7 downto 0);
signal tx_init : std_logic := '0';

type init_sequence is (idle, fifteenms, one, two, three, four, five, six, seven, eight, done);
signal init_state : init_sequence := idle;
signal init_init,init_done: std_logic := '0';

signal i : integer range 0 to 750000 := 0;
signal i2 : integer range 0 to 2000 := 0;
signal i3 : integer range 0 to 82000 := 0;

signal SF_D0, SF_D1 : std_logic_vector(3 downto 0);
signal LCD_E0, LCD_E1 : std_logic;
signal mux : std_logic;
signal deleted : std_logic;
signal Code: std_logic_vector(7 downto 0);--code from register that determines command
signal place: integer range 0 to 80;
signal advance: std_logic;--signal to advance the place counter
signal offsetCounter:integer;
signal offsetAdvance:std_logic;
signal cur_state : display_state := init;
signal prev : display_state := stay;
signal timesDeleted: integer;--tracks how many characters deleted before more typed in order to have screen scroll correctly

begin

	SF_CE0 <= '1'; --disable intel strataflash
	LCD_RW <= '0'; --write only

	--The following "with" statements simplify the process of adding and removing states.

	--when to transmit a command/data and when not to
	with cur_state select
		tx_init <= '0' when init | pause | done,
			'1' when others;

	--control the bus
	with cur_state select
		mux <= '1' when init,
			'0' when others;

	--control the initialization sequence
	with cur_state select
		init_init <= '1' when init,
			'0' when others;
	
	--register select
	with cur_state select
		LCD_RS <= '0' when function_set|entry_set|set_display|clr_display|set_addr|shift_r|holdF|shift_l|stay|delete,
			'1' when others;

	--what byte to transmit to lcd
	with cur_state select
		tx_byte <= "00101000" when function_set,
			"00000110" when entry_set,
			"00001100" when set_display,
			"00000001" when clr_display,
			"10000000" when set_addr,
			"01100001" when char_a,
			"01100010" when char_b,
			"01100011" when char_c,
			"01100100" when char_d,
			"01100101" when char_e,
			"01100110" when char_f,
			"01100111" when char_g,
			"01101000" when char_h,
			"01101001" when char_i,
			"01101010" when char_j,
			"01101011" when char_k,
			"01101100" when char_l,
                        "01001100" when char_cap_l,
			"01101101" when char_m,
			"01101110" when char_n,
			"01101111" when char_o,
			"01001111" when char_cap_o,          
			"01110000" when char_p,
			"01110001" when char_q,
			"01110010" when char_r,
			"01110011" when char_s,
			"01110100" when char_t,
			"01110101" when char_u,
			"01110110" when char_v,
			"01110111" when char_w,
			"01111000" when char_x,
			"01111001" when char_y,
			"01111010" when char_z,
			"00101110" when char_period,
			"00101100" when char_comma,
			"00111010" when char_colon,
			"00100111" when char_quote,
			"00101111" when char_slash,
			"00101101" when char_minus,
			"00111101" when char_equals,
			"00100000" when char_space,
			"00111111" when char_quest,
			"00110000" when char_0,
			"00110001" when char_1,
			"00110010" when char_2,
			"00110011" when char_3,
			"00110100" when char_4,
			"00110101" when char_5,
			"00110110" when char_6,
			"00110111" when char_7,
			"00111000" when char_8,
			"00111001" when char_9,
			"00111100" when char_lt,          
			"00010000" when delete,
			"00011000" when shift_l,
			"00011100" when shift_r,
			"00001100" when holdF|stay,
			"00000000" when others;
	

	--main state machine
	display: process(clk, reset)
	begin
		Code <= lcdReg(place);
		if(reset='1') then
			cur_state <= init; --function_set;
			place <= 0;
		elsif rising_edge(clk) then
			if offsetAdvance = '1' then
				offsetCounter  <= offsetCounter + 1;
				offsetAdvance <= '0';
			elsif offsetCounter > 39 then
				offsetCounter <= 0;
			elsif offsetCounter < offset then
				prev <= shift_l;
			elsif offsetCounter = offset then	
				case blank is
					when '1' =>
						prev <= char_space;
					when others =>
						prev <= stay;
				end case;
			elsif offsetCounter > offset then
				prev <= shift_l;
			end if;
			
			if advance = '1' then
				if place /= 79 then
					place <= place + 1;
				else
					place <= 0;
				end if;	
				advance <= '0';
			end if;
			
			case cur_state is
				--refer to intialize state machine below
				when init =>
					if(init_done = '1') then
						cur_state <= function_set;
					else
						cur_state <= init;
					end if;
				--every other state but pause uses the transmit state machine
				when function_set =>
					if(i2 = 2000) then
						cur_state <= entry_set;
					else
						cur_state <= function_set;
					end if;	
				when entry_set =>
					if(i2 = 2000) then
						cur_state <= set_display;
					else
						cur_state <= entry_set;
					end if;
				
				when set_display =>
					if(i2 = 2000) then
						cur_state <= clr_display;
					else
						cur_state <= set_display;
					end if;
				
				when clr_display =>
					i3 <= 0;
					if(i2 = 2000) then
						cur_state <= pause;
					else
						cur_state <= clr_display;
					end if;

				when pause =>
					if(i3 = 82000) then
						cur_state <= set_addr;
						i3 <= 0;
					else
						cur_state <= pause;
						i3 <= i3 + 1;
					end if;

				when set_addr =>
					if(i2 = 2000) then
						cur_state <= holdF;
					else
						cur_state <= set_addr;
					end if;


				when char_a | char_b | char_c | char_d | char_e | char_f | char_g | char_h | 
				     char_i | char_j | char_k | char_l | char_cap_l | char_m | char_n | char_o | 
				     char_cap_o | char_p | char_q | char_r | char_s | char_t | char_u | char_v | 
				     char_w | char_x | char_y | char_z | char_period | char_comma | char_quest | char_slash | 
				     char_colon | char_quote | char_space | char_minus | char_equals | char_0 | 
				     char_1 | char_2 | char_3 | char_4 | char_5 | char_6 | char_7 | char_8 |
                                     char_9 | char_lt =>
					if(i2 = 2000) then
						advance <= '1';
						cur_state <= holdF;
					else
						cur_state <= cur_state;
					end if;
					
				when delete =>
					if(i2 = 2000) then
						if deleted = '1' then
							cur_state <= holdF;
							place <= place - 1;
							deleted <= '0';
						else
							cur_state <= char_space;
							deleted <= '1';
						end if;
					else
						cur_state <= delete;
					end if;
				
				when stay =>
					if(i2 = 2000) then
						case Code is
						when "01100001" =>
							cur_state <= char_a;
						when "01100010" =>
							cur_state <= char_b;
						when "01100011" =>
							cur_state <= char_c;
						when "01100100" =>
							cur_state <= char_d;
						when "01100101" =>
							cur_state <= char_e;
						when "01100110" =>
							cur_state <= char_f;
						when "01100111" =>
							cur_state <= char_g;
						when "01101000" =>
							cur_state <= char_h;
						when "01101001" =>
							cur_state <= char_i;
						when "01101010" =>
							cur_state <= char_j;
						when "01101011" =>
							cur_state <= char_k;
						when "01101100" =>
							cur_state <= char_l;
						when "01001100" =>
							cur_state <= char_cap_l;
                                                when "01101101" =>
							cur_state <= char_m;
						when "01101110" =>
							cur_state <= char_n;
						when "01101111" =>
							cur_state <= char_o;
						when "01001111" =>
							cur_state <= char_cap_o;
						when "01110000" =>
							cur_state <= char_p;
						when "01110001" =>
							cur_state <= char_q;
						when "01110010" =>
							cur_state <= char_r;
						when "01110011" =>
							cur_state <= char_s;
						when "01110100" =>
							cur_state <= char_t;
						when "01110101" =>
							cur_state <= char_u;
						when "01110110" =>
							cur_state <= char_v;
						when "01110111" =>
							cur_state <= char_w;
						when "01111000" =>
							cur_state <= char_x;
						when "01111001" =>
							cur_state <= char_y;
						when "01111010" =>
							cur_state <= char_z;
						when "00101110" =>
							cur_state <= char_period;
						when "00111111" =>
							cur_state <= char_quest;
						when "00101100" =>
							cur_state <= char_comma;
						when "00111010" =>
							cur_state <= char_colon;
						when "00100111" =>
							cur_state <= char_quote;
						when "00101111" =>
							cur_state <= char_slash;
						when "00101101" =>
							cur_state <= char_minus;
						when "00111101" =>
							cur_state <= char_equals;
						when "00110000" =>
							cur_state <= char_0;
						when "00110001" =>
							cur_state <= char_1;
						when "00110010" =>
							cur_state <= char_2;
						when "00110011" =>
							cur_state <= char_3;
						when "00110100" =>
							cur_state <= char_4;
						when "00110101" =>
							cur_state <= char_5;
						when "00110110" =>
							cur_state <= char_6;
						when "00110111" =>
							cur_state <= char_7;
						when "00111000" =>
							cur_state <= char_8;
						when "00111001" =>
							cur_state <= char_9;
						when "00111100" =>
							cur_state <= char_lt;
						when "00100000" =>
							cur_state <= char_space;
						when "01111111" =>
							if place > 0 then
								cur_state <= delete;
								deleted <= '0';
								timesDeleted <= timesDeleted + 1;
							else
								cur_state <= holdF;
							end if;
						when others =>
							cur_state <= char_space;
						end case;
					else
						cur_state <= stay;
					end if;
					
				when shift_l =>
					if(i2 = 2000) then
						cur_state <= holdF;
						offsetAdvance <= '1';
					else
						cur_state <= shift_l;
					end if;
				
				when holdF =>
					if(i2 = 2000) then
						cur_state <= prev;
					else
						cur_state <= holdF;
					end if;
					
				when others =>
					cur_state <= done;

			end case;
		end if;
	end process display;

	with mux select
		SF_D <= SF_D0 when '0', --transmit
			SF_D1 when others;	--initialize
	with mux select
		LCD_EN <= LCD_E0 when '0', --transmit
			LCD_E1 when others; --initialize

	--specified by datasheet
	transmit : process(clk, reset, tx_init)
	begin
		if(reset='1') then
			tx_state <= done;
		elsif rising_edge(clk) then
			case tx_state is
				when high_setup => --40ns
					LCD_E0 <= '0';
					SF_D0 <= tx_byte(7 downto 4);
					if(i2 = 2) then
						tx_state <= high_hold;
						i2 <= 0;
					else
						tx_state <= high_setup;
						i2 <= i2 + 1;
					end if;

				when high_hold => --230ns
					LCD_E0 <= '1';
					SF_D0 <= tx_byte(7 downto 4);
					if(i2 = 12) then
						tx_state <= oneus;
						i2 <= 0;
					else
						tx_state <= high_hold;
						i2 <= i2 + 1;
					end if;

				when oneus =>
					LCD_E0 <= '0';
					if(i2 = 50) then
						tx_state <= low_setup;
						i2 <= 0;
					else
						tx_state <= oneus;
						i2 <= i2 + 1;
					end if;

				when low_setup =>
					LCD_E0 <= '0';
					SF_D0 <= tx_byte(3 downto 0);
					if(i2 = 2) then
						tx_state <= low_hold;
						i2 <= 0;
					else
						tx_state <= low_setup;
						i2 <= i2 + 1;
					end if;

				when low_hold =>
					LCD_E0 <= '1';
					SF_D0 <= tx_byte(3 downto 0);
					if(i2 = 12) then
						tx_state <= fortyus;
						i2 <= 0;
					else
						tx_state <= low_hold;
						i2 <= i2 + 1;
					end if;

				when fortyus =>
					LCD_E0 <= '0';
					if(i2 = 2000) then
						tx_state <= done;
						i2 <= 0;
					else
						tx_state <= fortyus;
						i2 <= i2 + 1;
					end if;

				when done =>
					LCD_E0 <= '0';
					if(tx_init = '1') then
						tx_state <= high_setup;
						i2 <= 0;
					else
						tx_state <= done;
						i2 <= 0;
					end if;

			end case;
		end if;
	end process transmit;
					
	--specified by datasheet
	power_on_initialize: process(clk, reset, init_init) --power on initialization sequence
	begin
		if(reset='1') then
			init_state <= idle;
			init_done <= '0';
		elsif rising_edge(clk) then
			case init_state is
				when idle =>	
					init_done <= '0';
					if(init_init = '1') then
						init_state <= fifteenms;
						i <= 0;
					else
						init_state <= idle;
						i <= i + 1;
					end if;
				
				when fifteenms =>
					init_done <= '0';
					if(i = 750000) then
						init_state <= one;
						i <= 0;
					else
						init_state <= fifteenms;
						i <= i + 1;
					end if;

				when one =>
					SF_D1 <= "0011";
					LCD_E1 <= '1';
					init_done <= '0';
					if(i = 11) then
						init_state<=two;
						i <= 0;
					else
						init_state<=one;
						i <= i + 1;
					end if;

				when two =>
					LCD_E1 <= '0';
					init_done <= '0';
					if(i = 205000) then
						init_state<=three;
						i <= 0;
					else
						init_state<=two;
						i <= i + 1;
					end if;

				when three =>
					SF_D1 <= "0011";
					LCD_E1 <= '1';
					init_done <= '0';
					if(i = 11) then	
						init_state<=four;
						i <= 0;
					else
						init_state<=three;
						i <= i + 1;
					end if;

				when four =>
					LCD_E1 <= '0';
					init_done <= '0';
					if(i = 5000) then
						init_state<=five;
						i <= 0;
					else
						init_state<=four;
						i <= i + 1;
					end if;

				when five =>
					SF_D1 <= "0011";
					LCD_E1 <= '1';
					init_done <= '0';
					if(i = 11) then
						init_state<=six;
						i <= 0;
					else
						init_state<=five;
						i <= i + 1;
					end if;

				when six =>
					LCD_E1 <= '0';
					init_done <= '0';
					if(i = 2000) then
						init_state<=seven;
						i <= 0;
					else
						init_state<=six;
						i <= i + 1;
					end if;

				when seven =>
					SF_D1 <= "0010";
					LCD_E1 <= '1';
					init_done <= '0';
					if(i = 11) then
						init_state<=eight;
						i <= 0;
					else
						init_state<=seven;
						i <= i + 1;
					end if;

				when eight =>
					LCD_E1 <= '0';
					init_done <= '0';
					if(i = 2000) then
						init_state<=done;
						i <= 0;
					else
						init_state<=eight;
						i <= i + 1;
					end if;

				when done =>
					init_state <= done;
					init_done <= '1';

			end case;
		end if;
	end process power_on_initialize;

end behavior;
