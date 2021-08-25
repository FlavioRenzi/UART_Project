LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY UART_TEST IS
END UART_TEST;
 
ARCHITECTURE behavior OF UART_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART
    PORT(
         BUS_IN : IN  std_logic_vector(7 downto 0);
         START : IN  std_logic;
         CTS : IN  std_logic;
         RESET : IN  std_logic;
         SEL : IN  std_logic_vector(2 downto 0);
         CLK : IN  std_logic;
         BUFFER_FULL : IN  std_logic;
         RX : IN  std_logic;
         TX : OUT  std_logic;
         RTS : OUT  std_logic;
         READY : OUT  std_logic;
         BUS_OUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    
	 

   --Inputs
   signal BUS_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal START : std_logic := '0';
   signal CTS : std_logic := '0';
   signal RESET : std_logic := '0';
   signal SEL : std_logic_vector(2 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal BUFFER_FULL : std_logic := '0';
   signal RX : std_logic := '0';

 	--Outputs
   signal TX : std_logic;
   signal RTS : std_logic;
   signal READY : std_logic;
   signal BUS_OUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART PORT MAP (
          BUS_IN => BUS_IN,
          START => START,
          CTS => CTS,
          RESET => RESET,
          SEL => SEL,
          CLK => CLK,
          BUFFER_FULL => BUFFER_FULL,
          RX => RX,
          TX => TX,
          RTS => RTS,
          READY => READY,
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
	
	RX_process :process(CLK)
   begin
		RX <= TX;
		CTS <= RTS;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		
		RESET <= '1';
		BUFFER_FULL <= '0';
		wait for CLK_period*8;
		RESET <= '0';
		BUS_IN <= "10011011";
		START <= '1';
		wait for CLK_period*8;
		START <= '0';


      wait;
   end process;

END;
