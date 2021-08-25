library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity COUNTER_MOD_8 is 
port( 
     CLK: in std_logic; 
     RESET: in std_logic; 
     Y: out std_logic_vector(3 downto 0)
     ); 
end COUNTER_MOD_8;
architecture rtl of COUNTER_MOD_8 is 
	signal TY: std_logic_vector(3 downto 0);
begin 
	count: process( CLK, RESET ) 
	begin 
		if( RESET = '1' ) then 
			TY <= (others => '0'); 
		elsif( CLK'event and CLK = '1' ) then 
			TY <= TY + "1"; 
		end if; 
	end process; 
	Y <= TY; 
end rtl;
