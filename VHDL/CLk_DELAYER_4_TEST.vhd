
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CLk_DELAYER_4_TEST IS
END CLk_DELAYER_4_TEST;
 
ARCHITECTURE behavior OF CLk_DELAYER_4_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CLK_DELAYER_4
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         X : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal X : std_logic := '0';

 	--Outputs
   signal Y : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CLK_DELAYER_4 PORT MAP (
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
		wait for CLK_period*0.5;
		
		X <= '1';
		
      -- insert stimulus here 

      wait;
   end process;

END;
