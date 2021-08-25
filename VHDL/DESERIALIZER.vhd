
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DESERIALIZER is
port( 
     RESET: in std_logic;
     CLK: in std_logic;
     RX: in std_logic;
     RX_READY: out std_logic := '1';
     BUS_OUT: out std_logic_vector(7 downto 0)
     );
end DESERIALIZER;
architecture STRUCT of DESERIALIZER is
		constant K: integer :=3;
     component REG_PP_8_BIT is
			port(
				  ENABLE: in std_logic; 
				  RESET: in std_logic; 
				  X: in std_logic_vector(7 downto 0); 
				  Y: out std_logic_vector(7 downto 0) 
				  ); 
     end component;
	  
     component REG_SP_8_BIT 
			port( 
				  CLK: in std_logic; 
				  RESET: in std_logic; 
				  X: in std_logic; 
				  Y: out std_logic_vector(7 downto 0)
				  ); 
     end component;
	  
     component CLK_DELAYER_4
			port( 
				  CLK: in std_logic; 
				  RESET: in std_logic; 
				  X: in std_logic; 
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
	  
	  signal RD: std_logic;
     signal CLK8: std_logic;
     signal OUT_D4: std_logic;
     signal T_END: std_logic;
	  signal T_READY: std_logic;
	  signal T_START: std_logic;
     signal DATA: std_logic_vector(7 downto 0);
	  signal OUT_C8: std_logic_vector(2 downto 0);
	  signal OUT_C16: std_logic_vector(3 downto 0);
 begin
  U1: REG_PP_8_BIT
    port map(
             ENABLE => T_END, 
             RESET => RESET,
             X =>  DATA,
             Y => BUS_OUT
             );
  U2: REG_SP_8_BIT
    port map(
             CLK => CLK8,
             RESET => RESET,
             X =>  RX,
             Y => DATA
             );
  U3: CLK_DELAYER_4
    port map(
             CLK => CLK,
             RESET => RESET,
             X => not RX,
             Y => OUT_D4
             ); 
  U4: COUNTER_MOD_2_N
  generic map(N => 3)
    port map(
             RESET => T_START,
				 CLK => CLK,
				 Y => OUT_C8
             );
	U5: COUNTER_MOD_2_N
	generic map(N => 4)
    port map(
             RESET => T_START,
				 CLK => not CLK8,
             Y => OUT_C16
             );
	T_START <= OUT_D4 and RD;
	CLK8 <= OUT_C8(2);
	T_END <= OUT_C16(3) and (not  OUT_C16(2)) and  not OUT_C16(1) and  not OUT_C16(0);
	T_READY <= OUT_C16(3) and (not  OUT_C16(2)) and OUT_C16(1) and (not OUT_C16(0)) ;
	RX_READY <= RD;
	latchSR : process(T_END,T_START, RESET)
	begin
		if (RESET = '1') then
			RD <= '1';
		else
			if( T_READY = '1' and T_START = '0' ) then 
				RD <= '1';
			elsif( T_READY = '0' and T_START= '1' ) then 
				RD <= '0';
			elsif( T_READY = '0' and T_START= '0' ) then 
				null;
			elsif(T_READY = '1' and T_START = '1' ) then 
				RD <= 'X';
			end if; 
		end if;
	end process;
end STRUCT;