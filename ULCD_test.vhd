--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:44:38 04/26/2015
-- Design Name:   
-- Module Name:   H:/Desktop/cse260/lab5/ULCD_test.vhd
-- Project Name:  lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: updateLCD
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.commonDefs.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ULCD_test IS
END ULCD_test;
 
ARCHITECTURE behavior OF ULCD_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT updateLCD
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         pulse_beat : IN  std_logic;
         game_state : IN  gamestateType;
         hit_top_btn : IN  std_logic;
         hit_bot_btn : IN  std_logic;
         level : IN  std_logic_vector(4 downto 0);
         score : IN  std_logic_vector(11 downto 0);
         hit : OUT  std_logic;
         miss : OUT  std_logic;
         LCD : OUT  lcdData
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal pulse_beat : std_logic := '0';
   signal game_state : gamestateType := st_play;
   signal hit_top_btn : std_logic := '0';
   signal hit_bot_btn : std_logic := '0';
   signal level : std_logic_vector(4 downto 0) := (others => '0');
   signal score : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal hit : std_logic;
   signal miss : std_logic;
   signal LCD : lcdData;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: updateLCD PORT MAP (
          clk => clk,
          reset => reset,
          pulse_beat => pulse_beat,
          game_state => game_state,
          hit_top_btn => hit_top_btn,
          hit_bot_btn => hit_bot_btn,
          level => level,
          score => score,
          hit => hit,
          miss => miss,
          LCD => LCD
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

	beat_process :process
	begin
		pulse_beat <= '0';
		wait for clk_period * 3;
		pulse_beat <= '1';
		wait for clk_period/2;
	end process;
   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		reset <= '1';
		wait for 100 ns;
		reset <= '0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
