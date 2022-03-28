-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/alu.sch - Tue Mar 15 05:56:59 2022
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
ENTITY alu_alu_sch_tb IS
END alu_alu_sch_tb;
ARCHITECTURE behavioral OF alu_alu_sch_tb IS 

   COMPONENT alu
   PORT( 
			op :		IN	STD_LOGIC_VECTOR (2 DOWNTO 0);
			a	:		IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
			b	:		IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
         C_in	:	IN	STD_LOGIC; 
         x	:		OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
			C_out :	OUT STD_LOGIC;
			eq :	OUT STD_LOGIC;
			gt :	OUT STD_LOGIC;
			z :	OUT STD_LOGIC);
   END COMPONENT;

	SIGNAL op :		STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL a	:		STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL b	:		STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL C_in	:	STD_LOGIC;
   SIGNAL x	:		STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL C_out :	STD_LOGIC;
	SIGNAL eq :	STD_LOGIC;
	SIGNAL gt :	STD_LOGIC;
	SIGNAL z :	STD_LOGIC;

BEGIN

   UUT: alu PORT MAP(
		op => op,
		a => a, 
		b => b, 
		C_in => C_in, 
		x => x, 
		C_out => C_out,
		eq => eq,
		gt => gt,
		z => z
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		op <= "100";
		wait for 10 ns;
		a <= "10000001";
		wait for 10 ns;
		b <= "00000010";
		wait for 10 ns;
		C_in <= '0';
		wait for 10 ns;
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
