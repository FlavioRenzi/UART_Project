library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_8_1 is
port (d: in std_logic_vector (0 to 7);
		s: in std_logic_vector (0 to 2);
		o: out std_logic);
end MUX_8_1;

architecture rtl of MUX_8_1 is	
	begin
		process	(d,s)			
			begin				
				case s is			
					when	"000"	=>	o<= d(0);
					when	"001"	=>	o<= d(1);
					when	"010"	=>	o<= d(2);
					when	"011"	=>	o<= d(3);
					when	"100"	=>	o<= d(4);
					when	"101"	=>	o<= d(5);
					when	"110"	=>	o<= d(6);
					when	"111"	=>	o<= d(7);
					when	others	=> o<= '0';
				end	case;			
		end process;			
end rtl;




