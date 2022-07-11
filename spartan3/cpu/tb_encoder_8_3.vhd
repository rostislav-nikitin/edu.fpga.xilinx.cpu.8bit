-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/encoder8_3.sch - Thu Apr  7 03:30:38 2022
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
ENTITY encoder8_3_encoder8_3_sch_tb IS
END encoder8_3_encoder8_3_sch_tb;
ARCHITECTURE behavioral OF encoder8_3_encoder8_3_sch_tb IS 

   COMPONENT encoder8_3
   PORT( i	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          o	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0);
			 g : OUT STD_LOGIC);
   END COMPONENT;

   SIGNAL i	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL o	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL g	:	STD_LOGIC;

BEGIN

   UUT: encoder8_3 PORT MAP(
		i => i, 
		o => o,
		g => g
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		wait for 10 ns;
		i <= "00000000";
		wait for 10 ns;
		i <= "00000001";
		wait for 10 ns;
		i <= "00000010";
		wait for 10 ns;
		i <= "00000100";
		wait for 10 ns;
		i <= "00001000";
		wait for 10 ns;
		i <= "00010000";
		wait for 10 ns;
		i <= "00100000";
		wait for 10 ns;
		i <= "01000000";
		wait for 10 ns;
		i <= "10000000";
			
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
