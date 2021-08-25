
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLK_DELAYER_4 is 
port( 
     CLK: in std_logic; 
     RESET: in std_logic; 
     X: in std_logic; 
     Y: out std_logic 
     ); 
end CLK_DELAYER_4; 
architecture rtl of CLK_DELAYER_4 is 
 signal T: std_logic_vector(3 downto 0); 
begin 
 reg: process( CLK, RESET ) 
  begin 
   if( RESET = '1' ) then 
    T(0) <= '0'; 
    T(1) <= '0'; 
    T(2) <= '0'; 
	 T(3) <= '0'; 
    Y <= '0'; 
  elsif( CLK'event and CLK = '1' ) then 
   T(0) <= X; 
   T(1) <= T(0); 
   T(2) <= T(1); 
	T(3) <= T(2); 
   Y <= T(3); 
  end if; 
 end process; 
end rtl;