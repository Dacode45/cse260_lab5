--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:21:59 04/27/2015
-- Design Name:   
-- Module Name:   H:/Desktop/cse260/lab5/score_tester.vhd
-- Project Name:  lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: scoreKeeper
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
 
ENTITY score_tester IS
END score_tester;
 
ARCHITECTURE behavior OF score_tester IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT scoreKeeper
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         hit : IN  std_logic;
         miss : IN  std_logic;
         level : OUT  std_logic_vector(4 downto 0);
         score : OUT  std_logic_vector(11 downto 0);
         game_state : OUT  gamestateType
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal hit : std_logic := '0';
   signal miss : std_logic := '0';

 	--Outputs
   signal level : std_logic_vector(4 downto 0);
   signal score : std_logic_vector(11 downto 0);
   signal game_state : gamestateType;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: scoreKeeper PORT MAP (
          clk => clk,
          reset => reset,
          hit => hit,
          miss => miss,
          level => level,
          score => score,
          game_state => game_state
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
