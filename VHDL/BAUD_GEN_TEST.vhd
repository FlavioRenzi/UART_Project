LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BAUD_GEN_TEST IS
END BAUD_GEN_TEST;
 
ARCHITECTURE behavior OF BAUD_GEN_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BAUD_GEN
    PORT(
         CLK : IN  std_logic;
         CLK_T : OUT  std_logic;
         CLK_R : OUT  std_logic;
         SEL_B : IN  std_logic_vector(2 downto 0);
			RESET: IN std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal SEL_B : std_logic_vector(2 downto 0) := (others => '0');
	signal RESET : std_logic:='0';

 	--Outputs
   signal CLK_T : std_logic;
   signal CLK_R : std_logic;
	

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BAUD_GEN PORT MAP (
          CLK => CLK,
          CLK_T => CLK_T,
          CLK_R => CLK_R,
          SEL_B => SEL_B,
			 RESET => RESET
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
      -- hold reset state for 100 ns.+
		RESET <= '1';
		SEL_B <= "000";
      wait for 100 ns;	
		RESET <= '0';
      wait for CLK_period*10;
		
		SEL_B <= "011";

      -- insert stimulus here 
      wait;
   end process;

END;
