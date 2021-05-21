
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity mux_2_1 is 
	port( s:	in std_logic; 
		a, b: in std_logic; 
		y:	out std_logic );
end mux_2_1;


architecture rtl of MUX_2_1 is

begin
	y <= a when s='0' else 
		b when s='1' else 
		'-';
end rtl;


