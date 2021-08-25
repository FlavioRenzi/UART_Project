
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY REG_PS_9_BIT_TEST IS
END REG_PS_9_BIT_TEST;
 
ARCHITECTURE behavior OF REG_PS_9_BIT_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG_PS_9_BIT
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         LOAD : IN  std_logic;
         XP : IN  std_logic_vector(8 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal LOAD : std_logic := '0';
   signal XP : std_logic_vector(8 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG_PS_9_BIT PORT MAP (
          CLK => CLK,
          RESET => RESET,
          LOAD => LOAD,
          XP => XP,
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
      -- hold reset state for 100 ns
		RESET <='1';
      wait for 100 ns;
		RESET <='0';




      wait for CLK_period*10;
		
		
		-- stimulus here 
		
		
		XP <= "010010100";
		wait for CLK_period*10;
		LOAD <= '1';
		wait for CLK_period*11;
		LOAD <= '0';

      

      wait;
   end process;

END;
