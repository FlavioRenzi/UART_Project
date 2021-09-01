library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SERIALIZER is
	port( 
		CLK: in std_logic; 
		RESET: in std_logic; 
		START: in std_logic; 
		CTS: in std_logic; 
		BUS_IN: in std_logic_vector(7 downto 0); 
		TX_READY: out std_logic;
		Y: out std_logic
	);
end SERIALIZER;

architecture rtl of SERIALIZER is

	component REG_PS_9_BIT is
		port( 
			CLK: in std_logic; 
			RESET: in std_logic; 
			LOAD: in std_logic; 
			XP: in std_logic_vector(8 downto 0); 
			Y: out std_logic
		);
     end component;
	  
	 component COUNTER_MOD_2_N
	  generic(N:integer);
		port( 
			  CLK: in std_logic; 
			  RESET: in std_logic; 
			  Y: out std_logic_vector(N-1 downto 0)
			  );
     end component;
	  
	  signal T_RESET: std_logic;
	  signal T_LOAD: std_logic;
	  signal T_READY: std_logic;
	  signal RD: std_logic;
	  signal OUT_C16: std_logic_vector(3 downto 0);
	  signal R0_INPUT: std_logic;
	  signal R1_INPUT : std_logic;
	  
	  
begin
	REG_PS: REG_PS_9_BIT
		port map(
			CLK => CLK,
			RESET => RESET,
			LOAD => T_LOAD,
			XP(8 downto 1) => BUS_IN,
			XP(0) => '0',
			Y => Y
		);
	COUNT: COUNTER_MOD_2_N
		generic map(N => 4)
		port map(
			RESET => T_LOAD,
			CLK => CLK,
			Y => OUT_C16
		);
	
	
	T_READY <=  OUT_C16(3) and not OUT_C16(2) and  OUT_C16(1) and  not OUT_C16(0) and not RD;
	TX_READY <= RD;
	LOAD_P: process(CLK) 
	begin 
		if( CLK'event and CLK = '1') then 
			T_LOAD <= START and CTS;
		end if; 
	end process; 
	
	EDGE_DETECTOR : process(CLK)
	begin
	 if(rising_edge(CLK)) then
		 R0_INPUT           <= T_LOAD;
		 R1_INPUT           <= R0_INPUT;
	  end if;
	end process EDGE_DETECTOR;
	
	T_RESET <= R0_INPUT and not R1_INPUT;
	
	
	latchSR : process(T_READY,T_RESET, RESET)
	begin
		if (RESET = '1') then
			RD <= '1';
		else
			if( T_READY = '1' and T_RESET = '0' ) then 
				RD <= '1';
			elsif( T_READY = '0' and T_RESET= '1' ) then 
				RD <= '0';
			elsif( T_READY = '0' and T_RESET= '0' ) then 
				null;
			elsif(T_READY = '1' and T_RESET = '1' ) then 
				RD <= 'X';
			end if; 
		end if;
	end process;
	
	
	

end rtl;

