library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REG_PS_9_BIT is 
 port( 
      CLK: in std_logic; 
      RESET: in std_logic; 
      LOAD: in std_logic; 
      XP: in std_logic_vector(8 downto 0); 
      Y: out std_logic
		);
end REG_PS_9_BIT;
architecture rtl of REG_PS_9_BIT is  
	signal Z: std_logic_vector(8 downto 0); 
begin  
	reg: process( CLK, RESET ) 
	begin 
		if( RESET = '1' ) then 
			Z <= "111111111"; 
		elsif( CLK'event and CLK = '1' ) then 
			if(LOAD ='0') then
				Z(8) <= '1';
				Z(7) <= Z(8);
				Z(6) <= Z(7);
				Z(5) <= Z(6);
				Z(4) <= Z(5);
				Z(3) <= Z(4);
				Z(2) <= Z(3);
				Z(1) <= Z(2);
				Z(0) <= Z(1);
			else
				Z(8) <= XP(8);
				Z(7) <= XP(7);
				Z(6) <= XP(6);
				Z(5) <= XP(5);
				Z(4) <= XP(4);
				Z(3) <= XP(3);
				Z(2) <= XP(2);
				Z(1) <= XP(1);
				Z(0) <= XP(0);
			end if;
		end if; 
		if (LOAD = '0') then
			Y <= Z(0); 
		else
			Y <= '1';
		end if;
	end process;
	
end rtl;