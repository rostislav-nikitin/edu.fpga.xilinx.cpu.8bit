-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/cpu.sch - Sun Mar 27 21:01:45 2022
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
          temp_w	:	OUT	STD_LOGIC; 
          bus1	:	OUT	STD_LOGIC; 
          alu_C_in	:	IN	STD_LOGIC; 
          alu_eq	:	OUT	STD_LOGIC; 
          alu_gt	:	OUT	STD_LOGIC; 
          alu_z	:	OUT	STD_LOGIC; 
          alu_C_out	:	OUT	STD_LOGIC; 
          acc_r	:	OUT	STD_LOGIC; 
          acc_w	:	OUT	STD_LOGIC; 
			 manual_iar_w	:	IN	STD_LOGIC; 
          iar_r	:	OUT	STD_LOGIC; 
          iar_w	:	OUT	STD_LOGIC; 
          ir_w	:	OUT	STD_LOGIC; 
          r1_w	:	OUT	STD_LOGIC; 
          r1_r	:	OUT	STD_LOGIC; 
          r2_w	:	OUT	STD_LOGIC; 
          r2_r	:	OUT	STD_LOGIC; 
			 manual_r0_w	:	IN	STD_LOGIC; 
			 manual_r1_w	:	IN	STD_LOGIC; 
          r0_w	:	OUT	STD_LOGIC; 
          r0_r	:	OUT	STD_LOGIC; 
          r3_w	:	OUT	STD_LOGIC; 
          r3_r	:	OUT	STD_LOGIC; 
          rind	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          rinr	:	IN	STD_LOGIC; 
          rinw	:	IN	STD_LOGIC; 
          clkr	:	OUT	STD_LOGIC; 
          clkw	:	OUT	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          ram_r	:	OUT	STD_LOGIC; 
          ram_a_w	:	OUT	STD_LOGIC; 
          alu_op	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          ir_o	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          ram_a_o	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          clkc	:	OUT	STD_LOGIC; 
          ctl_iar_w	:	OUT	STD_LOGIC; 
          ctl_r0_w	:	OUT	STD_LOGIC;
			 ctl_r1_w	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL sysbus	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL temp_w	:	STD_LOGIC;
   SIGNAL bus1	:	STD_LOGIC;
   SIGNAL alu_C_in	:	STD_LOGIC;
   SIGNAL alu_eq	:	STD_LOGIC;
   SIGNAL alu_gt	:	STD_LOGIC;
   SIGNAL alu_z	:	STD_LOGIC;
   SIGNAL alu_C_out	:	STD_LOGIC;
   SIGNAL acc_r	:	STD_LOGIC;
   SIGNAL acc_w	:	STD_LOGIC;
	SIGNAL manual_iar_w	:	STD_LOGIC;
   SIGNAL iar_r	:	STD_LOGIC;
   SIGNAL iar_w	:	STD_LOGIC;
   SIGNAL ir_w	:	STD_LOGIC;
   SIGNAL r1_w	:	STD_LOGIC;
   SIGNAL r1_r	:	STD_LOGIC;
   SIGNAL r2_w	:	STD_LOGIC;
   SIGNAL r2_r	:	STD_LOGIC;
	SIGNAL manual_r0_w	:	STD_LOGIC;
	SIGNAL manual_r1_w	:	STD_LOGIC;
   SIGNAL r0_w	:	STD_LOGIC;
   SIGNAL r0_r	:	STD_LOGIC;
   SIGNAL r3_w	:	STD_LOGIC;
   SIGNAL r3_r	:	STD_LOGIC;
   SIGNAL rind	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL rinr	:	STD_LOGIC;
   SIGNAL rinw	:	STD_LOGIC;
   SIGNAL clkr	:	STD_LOGIC;
   SIGNAL clkw	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL ram_r	:	STD_LOGIC;
   SIGNAL ram_a_w	:	STD_LOGIC;
   SIGNAL alu_op	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL ir_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL ram_a_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL clkc	:	STD_LOGIC;
   SIGNAL ctl_iar_w	:	STD_LOGIC;
   SIGNAL ctl_r0_w	:	STD_LOGIC;
	SIGNAL ctl_r1_w	:	STD_LOGIC;
	
	procedure one_step(signal clk : inout std_logic) is
	begin
		for i in 1 to 12 loop
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
			clk <= '0';
		end loop;
	end one_step;
	
	procedure set_reg(
		signal rin_d : out std_logic_vector(7 downto 0);
		signal rin_w : out std_logic;
		signal rin_r : out std_logic;
		signal reg_w : out std_logic; 
		constant value : in std_logic_vector(7 downto 0)
	) is
	begin
		wait for 10 ns;
		rin_d <= value;
		wait for 10 ns;
		rin_w <= '1';
		wait for 10 ns;
		rin_w <= '0';
		wait for 10 ns;
		rin_r <= '1';
--		
		wait for 10 ns;
		reg_w <= '1';
		wait for 10 ns;
		reg_w <= '0';
--		
		wait for 10 ns;
		rin_r <= '0';
	end set_reg;

BEGIN

   UUT: cpu PORT MAP(
		sysbus => sysbus, 
		temp_w => temp_w, 
		bus1 => bus1, 
		alu_C_in => alu_C_in, 
		alu_eq => alu_eq, 
		alu_gt => alu_gt, 
		alu_z => alu_z, 
		alu_C_out => alu_C_out, 
		acc_r => acc_r, 
		acc_w => acc_w, 
		manual_iar_w => manual_iar_w,
		iar_r => iar_r, 
		iar_w => iar_w, 
		ir_w => ir_w, 
		r1_w => r1_w, 
		r1_r => r1_r, 
		r2_w => r2_w, 
		r2_r => r2_r, 
		manual_r0_w => manual_r0_w,
		manual_r1_w => manual_r1_w,
		r0_w => r0_w, 
		r0_r => r0_r, 
		r3_w => r3_w, 
		r3_r => r3_r, 
		rind => rind, 
		rinr => rinr, 
		rinw => rinw, 
		clkr => clkr, 
		clkw => clkw, 
		clk => clk, 
		ram_r => ram_r, 
		ram_a_w => ram_a_w, 
		alu_op => alu_op, 
		ir_o => ir_o, 
		ram_a_o => ram_a_o, 
		clkc => clkc, 
		ctl_iar_w => ctl_iar_w, 
		ctl_r0_w => ctl_r0_w,
		ctl_r1_w => ctl_r1_w
   );
	
	
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
--==========INIT IAR==========================================
		set_reg(rind, rinw, rinr, manual_iar_w, "00000000");
		
		
--==========INIT R0===========================================
		set_reg(rind, rinw, rinr, manual_r0_w, "00000001");
--==========INIT R1===========================================
		set_reg(rind, rinw, rinr, manual_r1_w, "00000010");
--==========SUM R0, R1========================================
		one_step(clk);
--============================================================

--==========INIT R0===========================================
		set_reg(rind, rinw, rinr, manual_r0_w, "11000001");
--==========LSH R0============================================
		one_step(clk);
--============================================================

--==========INIT R0===========================================
		set_reg(rind, rinw, rinr, manual_r0_w, "10000011");
--==========RSH R0============================================
		one_step(clk);
--============================================================

--==========INIT R0===========================================
		set_reg(rind, rinw, rinr, manual_r0_w, "00010001");
--==========NOT R0============================================
		one_step(clk);
--============================================================

--==========INIT R0===========================================
		set_reg(rind, rinw, rinr, manual_r0_w, "10101010");
--==========INIT R1===========================================
		set_reg(rind, rinw, rinr, manual_r1_w, "01100110");
--==========AND R0, R1=========================================
		one_step(clk);
--============================================================


--==========INIT R0===========================================
		set_reg(rind, rinw, rinr, manual_r0_w, "10101010");
--==========INIT R1===========================================
		set_reg(rind, rinw, rinr, manual_r1_w, "10011001");
--==========OR R0, R1========================================
		one_step(clk);
--============================================================


--==========INIT R0===========================================
		set_reg(rind, rinw, rinr, manual_r0_w, "01010101");
--==========INIT R0===========================================
		set_reg(rind, rinw, rinr, manual_r1_w, "01100110");
--==========XOR R0, R1========================================
		one_step(clk);
--============================================================


	
--		wait for 10 ns;
--		one <= '0';
--	
--    wait for 10 ns;
--		rind <= "00000001";
--		wait for 10 ns;
--		rinw <= '1';
--		wait for 10 ns;
--		rinw <= '0';
--		wait for 10 ns;
--		rinr <= '1';
--		wait for 10 ns;
--		r0_w <= '1';
--		wait for 10 ns;
--		r0_w <= '0';
--		wait for 10 ns;
--		rinr <= '0';
--		
--		wait for 10 ns;
--		rind <= "00000010";
--		wait for 10 ns;
--		rinw <= '1';
--		wait for 10 ns;
--		rinw <= '0';
--		wait for 10 ns;
--		rinr <= '1';
--		wait for 10 ns;
--		r1_w <= '1';
--		wait for 10 ns;
--		r1_w <= '0';
--		wait for 10 ns;
--		rinr <= '0';
--		
--		wait for 10 ns;
--		r0_r <= '1';
--		wait for 10 ns;
--		temp_w <= '1';
--		wait for 10 ns;
--		temp_w <= '0';
--		wait for 10 ns;
--		r0_r <= '0';
--		
--		wait for 10 ns;
--		r1_r <= '1';
--		
--		wait for 10 ns;
--		alu_op <= "000";
--		
--		wait for 10 ns;
--		acc_w <= '1';
--		wait for 10 ns;
--		acc_w <= '0';
--		
--		wait for 10 ns;
--		r1_r <= '0';
--		
--		wait for 10 ns;
--		acc_r <= '1';
--		wait for 10 ns;
--		r3_w <= '1';
--		wait for 10 ns;
--		r3_w <= '0';
--		wait for 10 ns;
--		acc_r <= '0';
--		wait for 10 ns;
--		r3_r <= '1';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***
END;