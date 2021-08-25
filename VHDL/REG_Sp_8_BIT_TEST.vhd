--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:23:30 08/22/2021
-- Design Name:   
-- Module Name:   C:/Users/Flavio/OneDrive - Politecnico di Milano/06_Prog_RL/UART_Project/VHDL/REG_Sp_8_BIT_TEST.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG_SP_8_BIT
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
 
ENTITY REG_Sp_8_BIT_TEST IS
END REG_Sp_8_BIT_TEST;
 
ARCHITECTURE behavior OF REG_Sp_8_BIT_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG_SP_8_BIT
    PORT(
			CLK: in std_logic; 
			RESET: in std_logic; 
			X: in std_logic; 
			Y: out std_logic_vector(7 downto 0)
			); 
    END COMPONENT;
    
		signal CLK : std_logic := '0';
		signal RESET : std_logic := '0';
		signal X : std_logic := '0';

 	--Outputs
    signal Y : std_logic_vector(7 downto 0) := (others => '0');
	 
	 signal START :std_logic := '0'; 
	
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG_SP_8_BIT PORT MAP (
			 CLK => CLK,
          RESET => RESET,
          X => X,
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
		RESET <= '1';
      wait for 100 ns;	
		RESET <= '0';
		
      wait for CLK_period*10;
		-- stimulus here 
		wait for CLK_period*0.5;
		START <= '1';
		X <= '0';
		wait for CLK_period*1;
		X <= '1';
		wait for CLK_period*1;
		X <= '1';
		wait for CLK_period*1;
		X <= '0';
		wait for CLK_period*1;
		X <= '1';
		wait for CLK_period*1;
		X <= '0';
		wait for CLK_period*1;
		X <= '0';
		wait for CLK_period*1;
		X <= '1';
		wait for CLK_period*1;
		START <= '0';
      


      wait;
   end process;

END;
