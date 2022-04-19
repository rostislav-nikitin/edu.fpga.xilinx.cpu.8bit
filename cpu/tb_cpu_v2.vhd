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
          monitor	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          rst_in	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC;
			 manual_clk_in	:	IN	STD_LOGIC;
			 in_manr_r	:	IN	STD_LOGIC; 
			 in_manr_w	:	IN	STD_LOGIC; 
			 in_manr_d	:	IN	STD_LOGIC_VECTOR(7 DOWNTO 0); 
			 
			 in_r0_r	:	IN	STD_LOGIC; 
			 in_read_reg_en :	IN	STD_LOGIC; 
			 in_write_reg_en :	IN	STD_LOGIC; 
			 cpu_clk_int	:	OUT	STD_LOGIC;
			 cpu_clkc	:	OUT	STD_LOGIC;
			 cpu_clkr	:	OUT	STD_LOGIC;
			 cpu_clkw	:	OUT	STD_LOGIC;
			 
		 
			 cpu_s1	:	OUT	STD_LOGIC;
			 cpu_s2	:	OUT	STD_LOGIC;
			 cpu_s3	:	OUT	STD_LOGIC;
			 cpu_s4	:	OUT	STD_LOGIC;
			 cpu_s5	:	OUT	STD_LOGIC;
			 cpu_s6	:	OUT	STD_LOGIC;
			 
			 sysbus_released	:	OUT	STD_LOGIC;
			 
			 cpu_r0_r	:	OUT	STD_LOGIC;
			 manr_w	:	OUT	STD_LOGIC;
			 manr_r	:	OUT	STD_LOGIC;
			 manr_o	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 can_read	:	OUT	STD_LOGIC;
			 can_write	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL sysbus	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL monitor	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL rst_in	:	STD_LOGIC;
	SIGNAL clk		:	STD_LOGIC;
	SIGNAL manual_clk_in		:	STD_LOGIC;
	
	
	SIGNAL in_manr_r		:	STD_LOGIC;
	SIGNAL in_manr_w		:	STD_LOGIC;
	SIGNAL in_manr_d		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	SIGNAL in_r0_r	:	STD_LOGIC; 
	SIGNAL in_read_reg_en :	STD_LOGIC; 
	SIGNAL in_write_reg_en :	STD_LOGIC; 
   SIGNAL cpu_clk_int	:	STD_LOGIC;
	SIGNAL cpu_clkc		:	STD_LOGIC;
	SIGNAL cpu_clkr		:	STD_LOGIC;
	SIGNAL cpu_clkw		:	STD_LOGIC;
	
	SIGNAL cpu_s1		:	STD_LOGIC;
	SIGNAL cpu_s2		:	STD_LOGIC;
	SIGNAL cpu_s3		:	STD_LOGIC;
	SIGNAL cpu_s4		:	STD_LOGIC;
	SIGNAL cpu_s5		:	STD_LOGIC;
	SIGNAL cpu_s6		:	STD_LOGIC;
	
	SIGNAL sysbus_released	:	STD_LOGIC;
	
	SIGNAL manr_r			:	STD_LOGIC;
	SIGNAL manr_w			:	STD_LOGIC;
	SIGNAL manr_o			:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL cpu_r0_r		:	STD_LOGIC;
	
	SIGNAL can_read		:	STD_LOGIC;
	SIGNAL can_write		:	STD_LOGIC;
	
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



   UUT: cpu PORT MAP(
		sysbus => sysbus, 
		monitor => monitor, 
		rst_in => rst_in, 
		clk => clk,
		manual_clk_in => manual_clk_in,
		
		in_manr_r => in_manr_r,
		in_manr_w => in_manr_w,
		in_manr_d => in_manr_d,
		
		in_r0_r => in_r0_r,
		in_read_reg_en => in_read_reg_en,
		in_write_reg_en => in_write_reg_en,
		cpu_clk_int => cpu_clk_int,
		cpu_clkc => cpu_clkc,
		cpu_clkr => cpu_clkr,
		cpu_clkw => cpu_clkw,
		cpu_s1 => cpu_s1,
		cpu_s2 => cpu_s2,
		cpu_s3 => cpu_s3,
		cpu_s4 => cpu_s4,
		cpu_s5 => cpu_s5,
		cpu_s6 => cpu_s6,
		
		sysbus_released => sysbus_released,
		
		manr_r => manr_r,
		manr_w => manr_w,
		manr_o => manr_o,
		
		cpu_r0_r => cpu_r0_r,
		can_read => can_read,
		can_write => can_write
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		manual_clk_in <= '0';
		rst_in <= '0';
		wait for 10 ns;
		rst_in <= '1';
		wait for 10 ns;
		
		in_manr_r <= '0';
		in_manr_w <= '0';
		in_manr_d <= "00000000";
		in_r0_r <= '0';
		in_read_reg_en <= '1';
		in_write_reg_en <= '1';
		wait for 10 ns;
		in_manr_d <= "00010011";
		in_manr_w <= '1';
		wait for 10 ns;
		in_manr_w <= '0';
		--one_step(manual_clk_in);
		wait for 10 ns;
		in_manr_r <= '1';
		wait for 10 ns;
		in_manr_r <= '0';
		wait for 10 ns;
--==========INIT IAR==========================================
		--set_reg(rind, rinw, rinr, manual_iar_w, "00000000");
		one_step(manual_clk_in);
		one_step(manual_clk_in);
		for i in 1 to 260 loop
			-- ADD
			one_step(manual_clk_in);
			-- JMP
			one_step(manual_clk_in);
			-- JMPIF
			one_step(manual_clk_in);
		end loop;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
