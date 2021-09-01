library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART is
port(
     BUS_IN: in std_logic_vector(7 downto 0);
     START: in std_logic;
     CTS: in std_logic;       
     RESET: in std_logic;
     SEL: in std_logic_vector(2 downto 0);
     CLK: in std_logic;
     BUFFER_FULL: in std_logic;
     RX: in std_logic;
     TX: out std_logic;
     RTS: out std_logic;
     RX_READY: out std_logic;
	  TX_READY: out std_logic;
     BUS_OUT: out std_logic_vector(7 downto 0);
	  CLK_R: out std_logic;
	  CLK_T: out std_logic
     );
end UART;
architecture STRUCT of UART is
     component BAUD_GEN is
	  port( 
		  CLK: in std_logic;
		  CLK_T: out std_logic;
		  CLK_R: out std_logic;
		  SEL_B: in std_logic_vector(2 downto 0);
		  RESET: in std_logic
     );
     end component;
	  
     component SERIALIZER is
	  port( 
			CLK: in std_logic; 
			RESET: in std_logic; 
			START: in std_logic; 
			CTS: in std_logic; 
			BUS_IN: in std_logic_vector(7 downto 0); 
			TX_READY: out std_logic;
			Y: out std_logic
		);
     end component;
	  
	  
     component DESERIALIZER is
	  port( 
		  RESET: in std_logic;
		  CLK: in std_logic;
		  RX: in std_logic;
		  RX_READY: out std_logic := '1';
		  BUS_OUT: out std_logic_vector(7 downto 0)
     );
     end component;
	  
	  
	signal CLK_TR: std_logic;
	signal CLK_RE: std_logic;
		
begin
BG: BAUD_GEN
	port map(
		CLK => CLK, 
		SEL_B => SEL,
		CLK_T => CLK_TR,
		CLK_R => CLK_RE,
		RESET => RESET
	);
SER: SERIALIZER
	port map(
		CLK => CLK_TR,
		RESET => RESET,
		START => START,
		CTS => CTS,
		TX_READY => TX_READY,
		BUS_IN => BUS_IN,
		Y => TX
	);
DES: DESERIALIZER
	port map(
		RESET => RESET,
		CLK => CLK_RE,
		RX => RX,
		RX_READY => RX_READY,
		BUS_OUT =>BUS_OUT
	);
	
CLK_T<=CLK_TR;
CLK_R<=CLK_RE;
RTS <= not BUFFER_FULL;
end STRUCT;