--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:04:54 04/18/2015
-- Design Name:   
-- Module Name:   H:/Desktop/cse260/lab5/beatMakerTest.vhd
-- Project Name:  lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: beatMaker
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
 
ENTITY beatMakerTest IS
END beatMakerTest;
 
ARCHITECTURE behavior OF beatMakerTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT beatMaker
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         level : IN  std_logic_vector(4 downto 0);
         pulse_beat : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal level : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal pulse_beat : std_logic;
	signal next_level : std_logic_vector(4 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: beatMaker PORT MAP (
          clk => clk,
          reset => reset,
          level => level,
          pulse_beat => pulse_beat
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	next_level_process:process(level)
	begin
		case(level) is
		when "00001" => next_level <= "00010";
		when "00010" => next_level <= "00100";
		when "00100" => next_level <= "01000";
		when "01000" => next_level <= "10000";
		when others => next_level <= "00001";
	end case;
	end process;
	
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
	
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		wait for clk_period;
		report "Begining test cases";
      -- insert stimulus here 
		
		wait;
	end process;
	
	change_level: process(pulse_beat)
		begin
			if(rising_edge(pulse_beat)) then
				level <= next_level;
			end if;
		
      
   end process;

END;
