-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu.sch - Sat Apr 16 02:28:56 2022
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
ENTITY cpu_cpu_sch_tb IS
END cpu_cpu_sch_tb;
ARCHITECTURE behavioral OF cpu_cpu_sch_tb IS 

   COMPONENT cpu
   PORT( sysbus	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          iar_w	:	OUT	STD_LOGIC; 
          monitor	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          rst_in	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL sysbus	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL iar_w	:	STD_LOGIC;
   SIGNAL monitor	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL rst_in	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
	
	procedure one_step(signal clk : inout std_logic) is
	begin
		for i in 1 to 805306368 loop
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
			clk <= '0';
		end loop;
	end one_step;

BEGIN



   UUT: cpu PORT MAP(
		sysbus => sysbus, 
		iar_w => iar_w, 
		monitor => monitor, 
		rst_in => rst_in, 
		clk => clk
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		rst_in <= '0';
		wait for 10 ns;
		rst_in <= '1';
		wait for 10 ns;
--==========INIT IAR==========================================
		--set_reg(rind, rinw, rinr, manual_iar_w, "00000000");
		one_step(clk);
		one_step(clk);
		for i in 1 to 260 loop
			-- ADD
			one_step(clk);
			-- JMP
			one_step(clk);
			-- JMPIF
			one_step(clk);
		end loop;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
