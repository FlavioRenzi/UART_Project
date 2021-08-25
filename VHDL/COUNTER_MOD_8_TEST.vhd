--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:55:52 08/22/2021
-- Design Name:   
-- Module Name:   C:/Users/Flavio/OneDrive - Politecnico di Milano/06_Prog_RL/UART_Project/VHDL/COUNTER_MOD_8_TEST.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: COUNTER_MOD_8
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
 
ENTITY COUNTER_MOD_8_TEST IS
END COUNTER_MOD_8_TEST;
 
ARCHITECTURE behavior OF COUNTER_MOD_8_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT COUNTER_MOD_2_N
	 generic(N:integer);
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         Y : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: COUNTER_MOD_2_N 
	generic map(N=>3)
	PORT MAP (
          CLK => CLK,
          RESET => RESET,
          Y => Y
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

      wait for 100 ns;	
		RESET <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
