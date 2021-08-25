--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:51:42 08/25/2021
-- Design Name:   
-- Module Name:   C:/Users/Flavio/OneDrive - Politecnico di Milano/06_Prog_RL/UART_Project/VHDL/SERIALIZER_TEST.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SERIALIZER
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
 
ENTITY SERIALIZER_TEST IS
END SERIALIZER_TEST;
 
ARCHITECTURE behavior OF SERIALIZER_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SERIALIZER
    port( 
		CLK: in std_logic; 
		RESET: in std_logic; 
		START: in std_logic; 
		CTS: in std_logic; 
		BUS_IN: in std_logic_vector(7 downto 0); 
		TX_READY: out std_logic;
		Y: out std_logic
	);
    END COMPONENT;
	 --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal LOAD : std_logic := '0';
	signal CTS : std_logic := '1';
   signal BUS_IN : std_logic_vector(7 downto 0) := (others => '0');
	
 	--Outputs
   signal Y : std_logic;
	signal TX_READY: std_logic;
    
   -- No clocks detected in port list. Replace CLK below with 
   -- appropriate port name 
 
   constant CLK_period : time := 1000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SERIALIZER PORT MAP (
			CLK => CLK,
          RESET => RESET,
          START => LOAD,
			 CTS => CTS,
          BUS_IN => BUS_IN,
          Y => Y,
			 TX_READY => TX_READY
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
      RESET <='1';
      wait for 100 ns;
		RESET <='0';




      wait for CLK_period*10;
		
		
		-- stimulus here 
		
		
		BUS_IN <= "01001010";
		wait for CLK_period*10;
		--wait for CLK_period*0.5;
		LOAD <= '1';
		wait for CLK_period*1;
		LOAD <= '0';
      wait;
		
   end process;

END;
