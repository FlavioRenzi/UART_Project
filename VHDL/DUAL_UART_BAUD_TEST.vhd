LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DUAL_UART_BAUD_TEST IS
END DUAL_UART_BAUD_TEST;
 
ARCHITECTURE behavior OF DUAL_UART_BAUD_TEST IS 
 
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
         TX_READY : OUT  std_logic;
			RX_READY : OUT  std_logic;
         BUS_OUT : OUT  std_logic_vector(7 downto 0);
			CLK_R: out std_logic;
			CLK_T: out std_logic
        );
    END COMPONENT;
    
	 
   --Inputs 1
   signal BUS_IN_1 : std_logic_vector(7 downto 0) := (others => '0');
   signal START_1 : std_logic := '0';
   signal RESET_1 : std_logic := '0';
   signal SEL_1 : std_logic_vector(2 downto 0) := "000";
   signal CLK_1 : std_logic := '0';
   signal BUFFER_FULL_1 : std_logic := '0';
	signal CLK_R_1: std_logic;
	signal CLK_T_1: std_logic;
	
 	--Outputs 1
   signal TX_READY_1 : std_logic;
	signal RX_READY_1 : std_logic;
   signal BUS_OUT_1 : std_logic_vector(7 downto 0);


   --Inputs 2
   signal BUS_IN_2 : std_logic_vector(7 downto 0) := (others => '0');
   signal START_2 : std_logic := '0';
   signal RESET_2 : std_logic := '0';
   signal SEL_2 : std_logic_vector(2 downto 0) := "000";
   signal CLK_2 : std_logic := '0';
   signal BUFFER_FULL_2 : std_logic := '0';

 	--Outputs 2
   signal TX_READY_2 : std_logic;
	signal RX_READY_2 : std_logic;
   signal BUS_OUT_2 : std_logic_vector(7 downto 0);
	signal CLK_R_2: std_logic;
	signal CLK_T_2: std_logic;
	
	--common signal
	signal TX_1 : std_logic;
   signal RTS_1 : std_logic;
	signal RX_1 : std_logic;
	signal CTS_1 : std_logic;
	
	
	
	
   -- Clock period definitions
   constant CLK_period : time := 500 ns;
	
	shared variable MY_SEL : std_logic_vector(2 downto 0) := "000";
	shared variable MULT : integer:= 1;
	type SEL_TEST is array (0 to 7) of std_logic_vector(0 to 2);
	shared variable SEL : SEL_TEST := ("000","001","010","011","100","101","110","111");
	type MUL_TEST is array (0 to 7) of integer;
	shared variable MUL_SEL : MUL_TEST := (1,2,4,8,16,24,48,96);
	

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   UART_1: UART PORT MAP (
          BUS_IN => BUS_IN_1,
          START => START_1,
          CTS => CTS_1,
          RESET => RESET_1,
          SEL => SEL_1,
          CLK => CLK_1,
          BUFFER_FULL => BUFFER_FULL_1,
          RX => RX_1,
          TX => TX_1,
          RTS => RTS_1,
          TX_READY => TX_READY_1,
			 RX_READY => RX_READY_1,
          BUS_OUT => BUS_OUT_1,
			 CLK_T => CLK_T_1,
			 CLK_R => CLK_R_1
        );
		  
	 UART_2: UART PORT MAP (
          BUS_IN => BUS_IN_2,
          START => START_2,
          CTS => RTS_1,
          RESET => RESET_2,
          SEL => SEL_2,
          CLK => CLK_2,
          BUFFER_FULL => BUFFER_FULL_2,
          RX => TX_1,
          TX => RX_1,
          RTS => CTS_1,
          RX_READY => RX_READY_2,
			 TX_READY => TX_READY_2,
          BUS_OUT => BUS_OUT_2,
			 CLK_T => CLK_T_2,
			 CLK_R => CLK_R_2
        );
		  
   -- Clock process definitions
   CLK_1_process :process
   begin
		CLK_1 <= '0';
		wait for CLK_period/2;
		CLK_1 <= '1';
		wait for CLK_period/2;
   end process;
	
	CLK_2_process :process
   begin
		CLK_2 <= '0';
		wait for CLK_period/2;
		CLK_2 <= '1';
		wait for CLK_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state
		
		RESET_1 <= '1';
		RESET_2 <= '1';
      wait for CLK_period*11;	
		RESET_1 <= '0';
		RESET_2 <= '0';
      wait for CLK_period*11;

      -- stimulus here 
		
		
		for I in 0 to 7 loop
			MY_SEL := SEL(I);
			MULT := MUL_SEL(I);
			SEL_1 <= MY_SEL;
			SEL_2 <= MY_SEL;
			BUS_IN_1 <= "10011100";
			wait for CLK_period*MULT*10;
			START_1 <= '1';
			wait for CLK_period*MULT*12;
			START_1 <= '0';
			wait for CLK_period*MULT*3;
			BUS_IN_2 <= "01100011";
			wait for CLK_period*MULT*1;
			START_2 <= '1';
			wait for CLK_period*MULT*12;
			START_2 <= '0';
			wait until RX_READY_1 = '1' and RX_READY_2 = '1';
			wait for CLK_period*MULT*10;
		end loop;
		wait;
   end process;
	

END;
