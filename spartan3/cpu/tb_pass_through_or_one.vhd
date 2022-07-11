-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/pass_through_or_one.sch - Fri Apr  8 21:32:07 2022
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
ENTITY pass_through_or_one_pass_through_or_one_sch_tb IS
END pass_through_or_one_pass_through_or_one_sch_tb;
ARCHITECTURE behavioral OF pass_through_or_one_pass_through_or_one_sch_tb IS 

   COMPONENT pass_through_or_one
   PORT( one	:	IN	STD_LOGIC; 
          i	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          o	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL one	:	STD_LOGIC;
   SIGNAL i	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: pass_through_or_one PORT MAP(
		one => one, 
		i => i, 
		o => o
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		wait for 10 ns;
		i <= "10101010";
		wait for 10 ns;
		one <= '0';
		wait for 10 ns;
		one <= '1';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
