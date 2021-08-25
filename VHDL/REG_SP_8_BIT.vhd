library IEEE;
use IEEE.std_logic_1164.all;
entity REG_SP_8_BIT is 
port( 
     CLK: in std_logic; 
     RESET: in std_logic; 
     X: in std_logic; 
     Y: out std_logic_vector(7 downto 0)
     ); 
end REG_SP_8_BIT; 
architecture rtl of REG_SP_8_BIT is 
	signal T: std_logic_vector(0 to 7); 
begin 
	reg: process( CLK, RESET ) 
	begin 
		if( RESET = '1' ) then 
			T(0) <= '0'; 
			T(1) <= '0'; 
			T(2) <= '0';
			T(3) <= '0'; 
			T(4) <= '0'; 
			T(5) <= '0'; 
			T(6) <= '0';
			T(7) <= '0';
			Y <= "00000000"; 
		elsif( CLK'event and CLK = '1' ) then 
			T(0) <= X; 
			T(1) <= T(0); 
			T(2) <= T(1);
			T(3) <= T(2); 
			T(4) <= T(3); 
			T(5) <= T(4); 
			T(6) <= T(5);  
			T(7) <= T(6); 
		end if;
		Y(0) <= T(7);
		Y(1) <= T(6); 
		Y(2) <= T(5); 
		Y(3) <= T(4);
		Y(4) <= T(3); 
		Y(5) <= T(2); 
		Y(6) <= T(1); 
		Y(7) <= T(0);
	end process;  
end rtl; 
