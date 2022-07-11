
-- VHDL Instantiation Created from source file usart_tramnsmitter.vhd -- 10:01:47 06/20/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT usart_tramnsmitter
	PORT(
		clk : IN std_logic;
		data : IN std_logic_vector(7 downto 0);          
		tx : OUT std_logic;
		ready : OUT std_logic
		);
	END COMPONENT;

	Inst_usart_tramnsmitter: usart_tramnsmitter PORT MAP(
		clk => ,
		data => ,
		tx => ,
		ready => 
	);


