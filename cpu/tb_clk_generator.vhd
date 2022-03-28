-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/clk_generator.sch - Wed Mar 23 05:58:16 2022
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY clk_generator_clk_generator_sch_tb IS
END clk_generator_clk_generator_sch_tb;
ARCHITECTURE behavioral OF clk_generator_clk_generator_sch_tb IS 

   COMPONENT clk_generator
   PORT(clr	:	IN	STD_LOGIC;
			 clk	:	IN	STD_LOGIC; 
			 clkc	:	OUT	STD_LOGIC; 
          clkr	:	OUT	STD_LOGIC; 
          clkw	:	OUT	STD_LOGIC);
   END COMPONENT;

	SIGNAL clr	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL clkc	:	STD_LOGIC;
   SIGNAL clkr	:	STD_LOGIC;
   SIGNAL clkw	:	STD_LOGIC;

BEGIN

   UUT: clk_generator PORT MAP(
		clr => clr, 
		clk => clk, 
		clkc => clkc, 
		clkr => clkr, 
		clkw => clkw
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		clk <= '0';
		clr <= '1';
		wait for 10 ns;
		clr <= '0';
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
