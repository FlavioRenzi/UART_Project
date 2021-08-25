
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_PP_8_BIT is 
port(
     ENABLE: in std_logic; 
     RESET: in std_logic; 
     X: in std_logic_vector(7 downto 0); 
     Y: out std_logic_vector(7 downto 0) 
     ); 
end REG_PP_8_BIT;
architecture rtl of REG_PP_8_BIT is 
begin 
 reg: process( ENABLE, RESET ) 
  begin 
   if( RESET = '1' ) then 
		Y <= "00000000";
   elsif( ENABLE'event and ENABLE = '1' ) then 
	 Y <= X;
   end if; 
 end process; 
end rtl;
