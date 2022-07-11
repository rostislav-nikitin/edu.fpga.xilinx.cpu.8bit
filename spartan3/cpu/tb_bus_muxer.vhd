-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/bus_muxer.sch - Thu Apr  7 02:57:55 2022
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
ENTITY bus_muxer_bus_muxer_sch_tb IS
END bus_muxer_bus_muxer_sch_tb;
ARCHITECTURE behavioral OF bus_muxer_bus_muxer_sch_tb IS 

   COMPONENT bus_muxer
   PORT( a	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0);
			 dev1	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev0	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev2	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev3	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev4	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev5	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev6	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev7	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev8	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev9	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev10	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev11	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev12	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev13	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev14	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          dev15	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
			 o	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

	SIGNAL a	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL dev1	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev0	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev2	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev3	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev4	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev5	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev6	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev7	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev8	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev9	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev10	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev11	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev12	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev13	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev14	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL dev15	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   

BEGIN

   UUT: bus_muxer PORT MAP(
		a => a,
		dev1 => dev1, 
		dev0 => dev0, 
		dev2 => dev2, 
		dev3 => dev3, 
		dev4 => dev4, 
		dev5 => dev5, 
		dev6 => dev6, 
		dev7 => dev7, 
		dev8 => dev8, 
		dev9 => dev9, 
		dev10 => dev10, 
		dev11 => dev11, 
		dev12 => dev12, 
		dev13 => dev13, 
		dev14 => dev14, 
		dev15 => dev15, 
		o => o
		
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		wait for 10 ns;
		dev0 <= "00000000";
		dev1 <= "00000001";
		dev2 <= "00000010";
		dev3 <= "00000011";
		dev4 <= "00000100";
		dev5 <= "00000101";
		dev6 <= "00000110";
		dev7 <= "00000111";
		wait for 10 ns;
		
		for adr in 0 to 7 loop
		 a <= std_logic_vector(to_unsigned(adr, a'length));
		 wait for 10 ns;
		end loop;
		
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
