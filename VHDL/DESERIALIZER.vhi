
-- VHDL Instantiation Created from source file DESERIALIZER.vhd -- 16:42:43 08/22/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DESERIALIZER
	PORT(
		RESET : IN std_logic;
		CLK : IN std_logic;
		RX : IN std_logic_vector(7 downto 0);          
		READY : OUT std_logic;
		BUS_OUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_DESERIALIZER: DESERIALIZER PORT MAP(
		RESET => ,
		CLK => ,
		RX => ,
		READY => ,
		BUS_OUT => 
	);


