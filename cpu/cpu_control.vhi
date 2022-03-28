-- Vhdl instantiation template created from schematic /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/cpu_control.sch - Fri Mar 25 21:30:38 2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

   COMPONENT cpu_control
   PORT( clk	:	IN	STD_LOGIC; 
          clkr	:	IN	STD_LOGIC; 
          clkw	:	IN	STD_LOGIC; 
          iar_r	:	OUT	STD_LOGIC; 
          bus1	:	OUT	STD_LOGIC; 
          ram_r	:	OUT	STD_LOGIC; 
          iar_w	:	OUT	STD_LOGIC; 
          ir_s	:	OUT	STD_LOGIC; 
          mar_s	:	OUT	STD_LOGIC; 
          ir	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   UUT: cpu_control PORT MAP(
		clk => , 
		clkr => , 
		clkw => , 
		iar_r => , 
		bus1 => , 
		ram_r => , 
		iar_w => , 
		ir_s => , 
		mar_s => , 
		ir => 
   );
