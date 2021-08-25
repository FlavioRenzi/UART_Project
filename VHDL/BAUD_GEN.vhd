library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity BAUD_GEN is
port( 
     CLK: in std_logic;
     CLK_T: out std_logic;
     CLK_R: out std_logic;
     SEL_B: in std_logic_vector(2 downto 0);
	  RESET: in std_logic
     );
end BAUD_GEN;
architecture rtl of BAUD_GEN is
     component COUNTER_MOD_2_N
	  generic(N:integer);
		port( 
			  CLK: in std_logic; 
			  RESET: in std_logic; 
			  Y: out std_logic_vector(N-1 downto 0)
			  );
     end component;
			
			
     signal T: std_logic_vector(19 downto 0) := "00000000000000000000";
	  signal ADD: std_logic_vector(19 downto 0);
	  signal C_OUT: std_logic_vector(2 downto 0);
     signal CLK_SEL: std_logic := '0';
 begin
    U1: COUNTER_MOD_2_N
		 generic map(N => 3)
		 port map(
					 RESET => RESET,
					 CLK => CLK_SEL,
					 Y => C_OUT
					 );
	with SEL_B select
		ADD   <= "00000000000000000000" when "000",
					"11100001000000000000" when "001",
					"01110000100000000000" when "010", 
					"00111000010000000000" when "011", 
					"00011100001000000000" when "100", 
					"00001110000100000000" when "101", 
					"00001001011000000000" when "110", 
					"00000100101100000000" when "111",
					"00000000000000000000" when others;
	divider: process(CLK,RESET)
	begin
		if(RESET = '1') then
			CLK_SEL <= '0';
		elsif (SEL_B = "000") then
			CLK_SEL <=CLK;
		elsif( CLK'event and CLK = '1' ) then 
				T <= T + ADD;
				if (T="11100001000000000000") then
					CLK_SEL <= not CLK_SEL;
					T <= "00000000000000000000";
				end if;				
		end if;
	end process;
	
	CLK_T <= C_OUT(2);
	CLK_R <= CLK_SEL;


end rtl;

