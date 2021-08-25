
-- VHDL Instantiation Created from source file BAUD_GEN.vhd -- 09:23:18 08/23/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BAUD_GEN
	PORT(
		CLK : IN std_logic;
		SEL_B : IN std_logic_vector(2 downto 0);          
		CLK_T : OUT std_logic;
		CLK_R : OUT std_logic
		);
	END COMPONENT;

	Inst_BAUD_GEN: BAUD_GEN PORT MAP(
		CLK => ,
		CLK_T => ,
		CLK_R => ,
		SEL_B => 
	);


