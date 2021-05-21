library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity MUX is 
	port( s:	in std_logic; 
		a, b: in std_logic; 
		y:	out std_logic );
end MUX;


architecture rtl of MUX is

begin
	y <= a when s='0' else 
		b when s='1' else 
		'-';
end rtl;


