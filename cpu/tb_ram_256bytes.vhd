-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/ram_256bytes.sch - Thu Mar 24 10:58:41 2022
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
ENTITY ram_256bytes_ram_256bytes_sch_tb IS
END ram_256bytes_ram_256bytes_sch_tb;
ARCHITECTURE behavioral OF ram_256bytes_ram_256bytes_sch_tb IS 

   COMPONENT ram_256bytes
   PORT( a_w	:	IN	STD_LOGIC; 
          a	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          i_wclk	:	IN	STD_LOGIC; 
          i_w	:	IN	STD_LOGIC; 
          i	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          i_r	:	IN	STD_LOGIC; 
          o	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL a_w	:	STD_LOGIC;
   SIGNAL a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL i_wclk	:	STD_LOGIC;
   SIGNAL i_w	:	STD_LOGIC;
   SIGNAL i	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL i_r	:	STD_LOGIC;
   SIGNAL o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: ram_256bytes PORT MAP(
		a_w => a_w, 
		a => a, 
		i_wclk => i_wclk, 
		i_w => i_w, 
		i => i, 
		i_r => i_r, 
		o => o
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		wait for 10 ns;
		i_wclk <= '0';
		wait for 10 ns;
		i_r <= '0';
		wait for 10 ns;
		a <= "00000001";
		wait for 10 ns;
		a_w <= '1';
		wait for 10 ns;
		a_w <= '0';
		wait for 10 ns;
		i <= "10101010";
		wait for 10 ns;
		i_w <= '1';
		wait for 10 ns;
		i_wclk <= '1';
		wait for 10 ns;
		i_wclk <= '0';
		wait for 10 ns;
		i_r <= '1';
		wait for 100 ns;
		i_r <= '0';
		a <= "00000010";
		wait for 10 ns;
		a_w <= '1';
		wait for 10 ns;
		a_w <= '0';
		wait for 10 ns;
		i_r <= '1';
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
