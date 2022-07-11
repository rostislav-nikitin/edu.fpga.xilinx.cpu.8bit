-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/stepper.sch - Fri Mar 25 05:54:42 2022
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
ENTITY stepper_stepper_sch_tb IS
END stepper_stepper_sch_tb;
ARCHITECTURE behavioral OF stepper_stepper_sch_tb IS 

   COMPONENT stepper
   PORT( clk	:	IN	STD_LOGIC; 
          s1	:	OUT	STD_LOGIC; 
          s2	:	OUT	STD_LOGIC; 
          s3	:	OUT	STD_LOGIC; 
          s4	:	OUT	STD_LOGIC; 
          s5	:	OUT	STD_LOGIC; 
          s6	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL s1	:	STD_LOGIC;
   SIGNAL s2	:	STD_LOGIC;
   SIGNAL s3	:	STD_LOGIC;
   SIGNAL s4	:	STD_LOGIC;
   SIGNAL s5	:	STD_LOGIC;
   SIGNAL s6	:	STD_LOGIC;

BEGIN

   UUT: stepper PORT MAP(
		clk => clk, 
		s1 => s1, 
		s2 => s2, 
		s3 => s3, 
		s4 => s4, 
		s5 => s5, 
		s6 => s6
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
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
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
