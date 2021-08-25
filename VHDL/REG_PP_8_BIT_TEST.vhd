
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY REG_PP_8_BIT_TEST IS
END REG_PP_8_BIT_TEST;
 
ARCHITECTURE behavior OF REG_PP_8_BIT_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG_PP_8_BIT
    PORT(
         ENABLE : IN  std_logic;
         RESET : IN  std_logic;
         X : IN  std_logic_vector(7 downto 0);
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENABLE : std_logic := '0';
   signal RESET : std_logic := '0';
   signal X : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG_PP_8_BIT PORT MAP (
          ENABLE => ENABLE,
          RESET => RESET,
          X => X,
          Y => Y
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		RESET <= '1';
      wait for 100 ns;	
		RESET <= '0';
		
		--stimulus here 
		wait for 100 ns;	
		X <= "00101101";
		wait for 100 ns;	
		ENABLE <= '1';
		wait for 50 ns;	
		X <= "10101101";
		wait for 50 ns;	
		ENABLE <= '0';
		wait for 50 ns;	
		X <= "11101101";
      

      wait;
   end process;

END;
