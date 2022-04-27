-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_facade.sch - Wed Apr 27 04:10:37 2022
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
ENTITY cpu_facade_cpu_facade_sch_tb IS
END cpu_facade_cpu_facade_sch_tb;
ARCHITECTURE behavioral OF cpu_facade_cpu_facade_sch_tb IS 

   COMPONENT cpu_facade
   PORT( --in_clk:	IN	STD_LOGIC; 
			 in_clk_manual:	IN	STD_LOGIC; 
          in_rst	:	IN	STD_LOGIC; 
          out_clk_int	:	OUT	STD_LOGIC; 
          monitor	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

	--SIGNAL in_clk	:	STD_LOGIC;
	SIGNAL in_clk_manual	:	STD_LOGIC;
   SIGNAL in_rst	:	STD_LOGIC;
   SIGNAL out_clk_int	:	STD_LOGIC;
   SIGNAL monitor	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	
	procedure one_step(signal clk : inout std_logic) is
	begin
	--805306368
		for i in 1 to 12 loop
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
			clk <= '0';
		end loop;
	end one_step;

BEGIN

   UUT: cpu_facade PORT MAP(
		in_clk_manual => in_clk_manual, 
		--in_clk => in_clk, 
		in_rst => in_rst, 
		out_clk_int => out_clk_int, 
		monitor => monitor
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		in_clk_manual <='0';
		in_rst <= '0';
		wait for 10 ns;
		in_rst <= '1';
		wait for 10 ns;
		one_step(in_clk_manual);
		one_step(in_clk_manual);
		for i in 1 to 260 loop
			-- ADD
			one_step(in_clk_manual);
			-- JMP
			one_step(in_clk_manual);
			-- JMPIF
			one_step(in_clk_manual);
		end loop;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
