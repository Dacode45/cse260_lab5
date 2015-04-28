--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:18:27 04/28/2015
-- Design Name:   
-- Module Name:   H:/Desktop/cse260/lab5/top_test.vhd
-- Project Name:  lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: topDDR
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_test IS
END top_test;
 
ARCHITECTURE behavior OF top_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT topDDR
    PORT(
         mclk : IN  std_logic;
         btn : IN  std_logic_vector(1 downto 0);
         swt : IN  std_logic;
         led : OUT  std_logic_vector(4 downto 0);
         sf_d : OUT  std_logic_vector(3 downto 0);
         lcd_rw : OUT  std_logic;
         lcd_rs : OUT  std_logic;
         lcd_en : OUT  std_logic;
         sf_ce0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal mclk : std_logic := '0';
   signal btn : std_logic_vector(1 downto 0) := (others => '0');
   signal swt : std_logic := '0';

 	--Outputs
   signal led : std_logic_vector(4 downto 0);
   signal sf_d : std_logic_vector(3 downto 0);
   signal lcd_rw : std_logic;
   signal lcd_rs : std_logic;
   signal lcd_en : std_logic;
   signal sf_ce0 : std_logic;

   -- Clock period definitions
   constant mclk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: topDDR PORT MAP (
          mclk => mclk,
          btn => btn,
          swt => swt,
          led => led,
          sf_d => sf_d,
          lcd_rw => lcd_rw,
          lcd_rs => lcd_rs,
          lcd_en => lcd_en,
          sf_ce0 => sf_ce0
        );

   -- Clock process definitions
   mclk_process :process
   begin
		mclk <= '0';
		wait for mclk_period/2;
		mclk <= '1';
		wait for mclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for mclk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
