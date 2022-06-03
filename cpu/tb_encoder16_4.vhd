-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/encoder16_4.sch - Fri Jun  3 01:52:05 2022
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
ENTITY encoder16_4_encoder16_4_sch_tb IS
END encoder16_4_encoder16_4_sch_tb;
ARCHITECTURE behavioral OF encoder16_4_encoder16_4_sch_tb IS 

   COMPONENT encoder16_4
   PORT( i	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          g	:	OUT	STD_LOGIC; 
          o	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   SIGNAL i	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL g	:	STD_LOGIC;
   SIGNAL o	:	STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN

   UUT: encoder16_4 PORT MAP(
		i => i, 
		g => g, 
		o => o
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		i <= "0000000000000000";
		wait for 10 ns;
		i <= "0000000000000001";
		wait for 10 ns;
		i <= "0000000000000010";
		wait for 10 ns;
		i <= "0000000000000100";
		wait for 10 ns;
		i <= "0000000000001000";
		wait for 10 ns;
		
		i <= "0000000000010000";
		wait for 10 ns;
		i <= "0000000000100000";
		wait for 10 ns;
		i <= "0000000001000000";
		wait for 10 ns;
		i <= "0000000010000000";
		wait for 10 ns;
		i <= "0000000100000000";
		wait for 10 ns;
		i <= "0000001000000000";
		wait for 10 ns;
		i <= "0000010000000000";
		wait for 10 ns;
		i <= "0000100000000000";
		wait for 10 ns;
		i <= "0001000000000000";
		wait for 10 ns;
		i <= "0010000000000000";
		wait for 10 ns;
		i <= "0100000000000000";
		wait for 10 ns;
		i <= "1000000000000000";
		wait for 10 ns;
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
