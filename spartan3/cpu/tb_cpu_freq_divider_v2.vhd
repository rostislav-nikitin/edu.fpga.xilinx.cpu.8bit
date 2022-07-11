-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_freq_divider.sch - Sat Apr 16 02:33:15 2022
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
ENTITY cpu_freq_divider_cpu_freq_divider_sch_tb IS
END cpu_freq_divider_cpu_freq_divider_sch_tb;
ARCHITECTURE behavioral OF cpu_freq_divider_cpu_freq_divider_sch_tb IS 

   COMPONENT cpu_freq_divider
   PORT( clk_in	:	IN	STD_LOGIC; 
          low	:	IN	STD_LOGIC; 
          external	:	IN	STD_LOGIC; 
          high	:	IN	STD_LOGIC; 
          manual	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          manual_clk_in	:	IN	STD_LOGIC; 
          external_clk_in	:	IN	STD_LOGIC; 
          clk_out	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk_in	:	STD_LOGIC;
   SIGNAL low	:	STD_LOGIC;
   SIGNAL external	:	STD_LOGIC;
   SIGNAL high	:	STD_LOGIC;
   SIGNAL manual	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;
   SIGNAL manual_clk_in	:	STD_LOGIC;
   SIGNAL external_clk_in	:	STD_LOGIC;
   SIGNAL clk_out	:	STD_LOGIC;

BEGIN

   UUT: cpu_freq_divider PORT MAP(
		clk_in => clk_in, 
		low => low, 
		external => external, 
		high => high, 
		manual => manual, 
		rst => rst, 
		manual_clk_in => manual_clk_in, 
		external_clk_in => external_clk_in, 
		clk_out => clk_out
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		rst <= '1';
		wait for 10 ns;
		rst <= '0';
		wait for 10 ns;
		high <= '0';
		low <= '1';
		manual <= '0';
		external <= '0';
		wait for 10 ns;
		
		for x in 0 to 100 loop
			clk_in <= '0';
			wait for 10 ns;
			clk_in <= '1';
			wait for 10 ns;
		end loop;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
