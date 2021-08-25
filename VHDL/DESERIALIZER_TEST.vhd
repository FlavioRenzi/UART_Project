
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DESERIALIZER_TEST IS
END DESERIALIZER_TEST;
 
ARCHITECTURE behavior OF DESERIALIZER_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DESERIALIZER
    PORT(
         RESET : IN  std_logic;
         CLK : IN  std_logic;
         RX : IN  std_logic;
         RX_READY : OUT  std_logic;
         BUS_OUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RESET : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RX : std_logic := '0';

 	--Outputs
   signal READY : std_logic;
   signal BUS_OUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DESERIALIZER PORT MAP (
          RESET => RESET,
          CLK => CLK,
          RX => RX,
          RX_READY => READY,
          BUS_OUT => BUS_OUT
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
		RX <= '1';
      wait for 100 ns;	
		RESET <='0';
      wait for CLK_period*12.5;

      -- stimulus here 
		RX <= '0';
		wait for CLK_period*8;
		-- start
		RX <= '1';
		wait for CLK_period*8;
		RX <= '0';
		wait for CLK_period*8;
		RX <= '1';
		wait for CLK_period*8;
		RX <= '0';
		wait for CLK_period*8;
		RX <= '0';
		wait for CLK_period*8;
		RX <= '0';
		wait for CLK_period*8;
		RX <= '1';
		wait for CLK_period*8;
		RX <= '0';
		wait for CLK_period*8;
		--STOP
		RX <= '1';
		

      wait;
   end process;

END;
