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
   PORT(
			-- ================================================================
			-- INPUTS																			|
			-- ================================================================
          rst_in	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC;
			 manual_clk_in	:	IN	STD_LOGIC;
			 in_manr_r	:	IN	STD_LOGIC; 
			 in_manr_w	:	IN	STD_LOGIC; 
			 in_manr_d	:	IN	STD_LOGIC_VECTOR(7 DOWNTO 0); 
			 
		 
			 in_r0_r	:	IN	STD_LOGIC; 
			 in_r0_w	:	IN	STD_LOGIC; 
			 in_r1_r	:	IN	STD_LOGIC; 
			 in_r1_w	:	IN	STD_LOGIC; 
			 in_r2_r	:	IN	STD_LOGIC; 
			 in_r2_w	:	IN	STD_LOGIC; 
			 in_r3_r	:	IN	STD_LOGIC; 
			 in_r3_w	:	IN	STD_LOGIC; 
			 
			 
			 in_iar_r	:	IN	STD_LOGIC; 
			 in_iar_w	:	IN	STD_LOGIC; 
			 in_ir_w		:	IN	STD_LOGIC; 
			 in_is_bus1_w	:	IN	STD_LOGIC; 
			 in_bus1	:	IN	STD_LOGIC; 
			 in_temp_w	:	IN	STD_LOGIC; 
			 in_acc_r	:	IN	STD_LOGIC; 
			 in_acc_w	:	IN	STD_LOGIC; 
			 in_ram_a_w	:	IN	STD_LOGIC; 
			 in_ram_r	:	IN	STD_LOGIC; 
			 in_ram_w	:	IN	STD_LOGIC; 
			 
			 in_read_reg_en :	IN	STD_LOGIC; 
			 in_write_reg_en :	IN	STD_LOGIC; 
			 
			-- ================================================================
			-- OUTPUTS																			|
			-- ================================================================
			 monitor	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
			 cpu_sysbus	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0);
			 cpu_iar_o	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 cpu_ir_o	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 cpu_temp_o	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 cpu_ram_a_o:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 
			 cpu_clk	:	OUT	STD_LOGIC;
			 cpu_clk_int	:	OUT	STD_LOGIC;
			 cpu_clkc	:	OUT	STD_LOGIC;
			 cpu_clkr	:	OUT	STD_LOGIC;
			 cpu_clkw	:	OUT	STD_LOGIC;
			 
			 cpu_sysbus_released	:	OUT	STD_LOGIC;
			 
			 cpu_can_read	:	OUT	STD_LOGIC;
			 cpu_can_write	:	OUT	STD_LOGIC;
		 
			 cpu_s1	:	OUT	STD_LOGIC;
			 cpu_s2	:	OUT	STD_LOGIC;
			 cpu_s3	:	OUT	STD_LOGIC;
			 cpu_s4	:	OUT	STD_LOGIC;
			 cpu_s5	:	OUT	STD_LOGIC;
			 cpu_s6	:	OUT	STD_LOGIC;
			 
			 cpu_r0_r	:	OUT	STD_LOGIC;
			 cpu_r0_w	:	OUT	STD_LOGIC;
			 cpu_r1_r	:	OUT	STD_LOGIC;
			 cpu_r1_w	:	OUT	STD_LOGIC;
			 cpu_r2_r	:	OUT	STD_LOGIC;
			 cpu_r2_w	:	OUT	STD_LOGIC;
			 cpu_r3_r	:	OUT	STD_LOGIC;
			 cpu_r3_w	:	OUT	STD_LOGIC;
			 
			 cpu_iar_r	:	OUT	STD_LOGIC;
			 cpu_iar_w	:	OUT	STD_LOGIC;
			 cpu_ir_w		:	OUT	STD_LOGIC; 
			 cpu_is_bus1_w	:	OUT	STD_LOGIC;
			 cpu_bus1	:	OUT	STD_LOGIC;
			 cpu_temp_w	:	OUT	STD_LOGIC;
			 cpu_acc_r	:	OUT	STD_LOGIC;
			 cpu_acc_w	:	OUT	STD_LOGIC;
			 cpu_ram_a_w	:	OUT	STD_LOGIC; 
			 cpu_ram_r	:	OUT	STD_LOGIC;
			 cpu_ram_w	:	OUT	STD_LOGIC;
			 
			 cpu_flags_w	:	OUT	STD_LOGIC;
			 cpu_flags_clr	:	OUT	STD_LOGIC;
			 
			 cpu_op_alu	:	OUT	STD_LOGIC;
			 cpu_op_alu_add	:	OUT	STD_LOGIC;
			 cpu_op_alu_lshift	:	OUT	STD_LOGIC;
			 cpu_op_alu_rshift	:	OUT	STD_LOGIC;
			 cpu_op_alu_not	:	OUT	STD_LOGIC;
			 cpu_op_alu_and	:	OUT	STD_LOGIC;
			 cpu_op_alu_or	:	OUT	STD_LOGIC;
			 cpu_op_alu_xor	:	OUT	STD_LOGIC;
			 cpu_op_alu_nop	:	OUT	STD_LOGIC;
			 
			 cpu_op_ls_ld	:	OUT	STD_LOGIC;
			 cpu_op_ls_st	:	OUT	STD_LOGIC;
			 cpu_op_ls_ldc	:	OUT	STD_LOGIC;
			 cpu_op_jmp_jmpr	:	OUT	STD_LOGIC;
			 cpu_op_jmp_jmp	:	OUT	STD_LOGIC;
			 cpu_op_jmp_ifjmp	:	OUT	STD_LOGIC;
			 cpu_op_flg_clf	:	OUT	STD_LOGIC;
			 cpu_op_alt_nop	:	OUT	STD_LOGIC;
			 
			 cpu_C_out_flipflop_o	:	OUT	STD_LOGIC;
			 cpu_C_in_enabled	:	OUT	STD_LOGIC;
			 cpu_alu_C_in	:	OUT	STD_LOGIC;
			 cpu_alu_gt	:	OUT	STD_LOGIC;
			 cpu_alu_eq	:	OUT	STD_LOGIC;
			 cpu_alu_z	:	OUT	STD_LOGIC;
			 cpu_alu_C_out	:	OUT	STD_LOGIC;
			 
			 cpu_alu_x	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 
			 cpu_flags_C_out	:	OUT	STD_LOGIC;
			 cpu_flags_gt	:	OUT	STD_LOGIC;
			 cpu_flags_eq	:	OUT	STD_LOGIC;
			 cpu_flags_z	:	OUT	STD_LOGIC;
			 
			 manr_w	:	OUT	STD_LOGIC;
			 manr_r	:	OUT	STD_LOGIC;
			 manr_o	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
   END COMPONENT;
	
	
	
	
	
	-- ================================================================
	-- INPUTS																			|
	-- ================================================================
	 SIGNAL rst_in	:		STD_LOGIC; 
	 SIGNAL clk	:		STD_LOGIC;
	 SIGNAL manual_clk_in	:		STD_LOGIC;
	 SIGNAL in_manr_r	:		STD_LOGIC; 
	 SIGNAL in_manr_w	:		STD_LOGIC; 
	 SIGNAL in_manr_d	:		STD_LOGIC_VECTOR(7 DOWNTO 0); 
	 
 
	 SIGNAL in_r0_r	:		STD_LOGIC; 
	 SIGNAL in_r0_w	:		STD_LOGIC; 
	 SIGNAL in_r1_r	:		STD_LOGIC; 
	 SIGNAL in_r1_w	:		STD_LOGIC; 
	 SIGNAL in_r2_r	:		STD_LOGIC; 
	 SIGNAL in_r2_w	:		STD_LOGIC; 
	 SIGNAL in_r3_r	:		STD_LOGIC; 
	 SIGNAL in_r3_w	:		STD_LOGIC; 
	 
	 
	 SIGNAL in_iar_r	:		STD_LOGIC; 
	 SIGNAL in_iar_w	:		STD_LOGIC; 
	 SIGNAL in_ir_w		:		STD_LOGIC; 
	 SIGNAL in_is_bus1_w	:		STD_LOGIC; 
	 SIGNAL in_bus1	:		STD_LOGIC; 
	 SIGNAL in_temp_w	:		STD_LOGIC; 
	 SIGNAL in_acc_r	:		STD_LOGIC; 
	 SIGNAL in_acc_w	:		STD_LOGIC; 
	 SIGNAL in_ram_a_w	:		STD_LOGIC; 
	 SIGNAL in_ram_r	:		STD_LOGIC; 
	 SIGNAL in_ram_w	:		STD_LOGIC; 
	 
	 SIGNAL in_read_reg_en :		STD_LOGIC; 
	 SIGNAL in_write_reg_en :		STD_LOGIC; 
	 
	-- ================================================================
	-- OUTPUTS																			|
	-- ================================================================
	 SIGNAL monitor	:		STD_LOGIC_VECTOR (7 DOWNTO 0); 
	 SIGNAL cpu_sysbus	:		STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL cpu_iar_o	:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL cpu_ir_o	:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL cpu_temp_o	:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL cpu_ram_a_o:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 
	 SIGNAL cpu_clk	:		STD_LOGIC;
	 SIGNAL cpu_clk_int	:		STD_LOGIC;
	 SIGNAL cpu_clkc	:		STD_LOGIC;
	 SIGNAL cpu_clkr	:		STD_LOGIC;
	 SIGNAL cpu_clkw	:		STD_LOGIC;
	 
	 SIGNAL cpu_sysbus_released	:		STD_LOGIC;
	 
	 SIGNAL cpu_can_read	:		STD_LOGIC;
	 SIGNAL cpu_can_write	:		STD_LOGIC;
 
	 SIGNAL cpu_s1	:		STD_LOGIC;
	 SIGNAL cpu_s2	:		STD_LOGIC;
	 SIGNAL cpu_s3	:		STD_LOGIC;
	 SIGNAL cpu_s4	:		STD_LOGIC;
	 SIGNAL cpu_s5	:		STD_LOGIC;
	 SIGNAL cpu_s6	:		STD_LOGIC;
	 
	 SIGNAL cpu_r0_r	:		STD_LOGIC;
	 SIGNAL cpu_r0_w	:		STD_LOGIC;
	 SIGNAL cpu_r1_r	:		STD_LOGIC;
	 SIGNAL cpu_r1_w	:		STD_LOGIC;
	 SIGNAL cpu_r2_r	:		STD_LOGIC;
	 SIGNAL cpu_r2_w	:		STD_LOGIC;
	 SIGNAL cpu_r3_r	:		STD_LOGIC;
	 SIGNAL cpu_r3_w	:		STD_LOGIC;
	 
	 SIGNAL cpu_iar_r	:		STD_LOGIC;
	 SIGNAL cpu_iar_w	:		STD_LOGIC;
	 SIGNAL cpu_ir_w		:		STD_LOGIC; 
	 SIGNAL cpu_is_bus1_w	:		STD_LOGIC;
	 SIGNAL cpu_bus1	:		STD_LOGIC;
	 SIGNAL cpu_temp_w	:		STD_LOGIC;
	 SIGNAL cpu_acc_r	:		STD_LOGIC;
	 SIGNAL cpu_acc_w	:		STD_LOGIC;
	 SIGNAL cpu_ram_a_w	:		STD_LOGIC; 
	 SIGNAL cpu_ram_r	:		STD_LOGIC;
	 SIGNAL cpu_ram_w	:		STD_LOGIC;
	 
	 SIGNAL cpu_flags_w	:		STD_LOGIC;
	 SIGNAL cpu_flags_clr	:		STD_LOGIC;
	 
	 SIGNAL cpu_op_alu	:		STD_LOGIC;
	 SIGNAL cpu_op_alu_add	:		STD_LOGIC;
	 SIGNAL cpu_op_alu_lshift	:		STD_LOGIC;
	 SIGNAL cpu_op_alu_rshift	:		STD_LOGIC;
	 SIGNAL cpu_op_alu_not	:		STD_LOGIC;
	 SIGNAL cpu_op_alu_and	:		STD_LOGIC;
	 SIGNAL cpu_op_alu_or	:		STD_LOGIC;
	 SIGNAL cpu_op_alu_xor	:		STD_LOGIC;
	 SIGNAL cpu_op_alu_nop	:		STD_LOGIC;
	 
	 SIGNAL cpu_op_ls_ld	:		STD_LOGIC;
	 SIGNAL cpu_op_ls_st	:		STD_LOGIC;
	 SIGNAL cpu_op_ls_ldc	:		STD_LOGIC;
	 SIGNAL cpu_op_jmp_jmpr	:		STD_LOGIC;
	 SIGNAL cpu_op_jmp_jmp	:		STD_LOGIC;
	 SIGNAL cpu_op_jmp_ifjmp	:		STD_LOGIC;
	 SIGNAL cpu_op_flg_clf	:		STD_LOGIC;
	 SIGNAL cpu_op_alt_nop	:		STD_LOGIC;
	 
	 SIGNAL cpu_C_out_flipflop_o	:		STD_LOGIC;
	 SIGNAL cpu_C_in_enabled	:		STD_LOGIC;
	 SIGNAL cpu_alu_C_in	:		STD_LOGIC;
	 SIGNAL cpu_alu_gt	:		STD_LOGIC;
	 SIGNAL cpu_alu_eq	:		STD_LOGIC;
	 SIGNAL cpu_alu_z	:		STD_LOGIC;
	 SIGNAL cpu_alu_C_out	:		STD_LOGIC;
	 
	 SIGNAL cpu_alu_x	:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 
	 SIGNAL cpu_flags_C_out	:		STD_LOGIC;
	 SIGNAL cpu_flags_gt	:		STD_LOGIC;
	 SIGNAL cpu_flags_eq	:		STD_LOGIC;
	 SIGNAL cpu_flags_z	:		STD_LOGIC;
	 
	 SIGNAL manr_w	:		STD_LOGIC;
	 SIGNAL manr_r	:		STD_LOGIC;
	 SIGNAL manr_o	:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	
	
	
	

	
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
		-- INPUTS
		rst_in => rst_in,
		clk => clk,
		manual_clk_in => manual_clk_in,
		in_manr_r => in_manr_r,
		in_manr_w => in_manr_w,
		in_manr_d => in_manr_d,

		in_r0_r => in_r0_r,
		in_r0_w => in_r0_w,
		in_r1_r => in_r1_r,
		in_r1_w => in_r1_w,
		in_r2_r => in_r2_r,
		in_r2_w => in_r2_w,
		in_r3_r => in_r3_r,
		in_r3_w => in_r3_w,
		 
		 
		in_iar_r => in_iar_r,
		in_iar_w => in_iar_w,
		in_ir_w => 	in_ir_w,
		in_is_bus1_w => in_is_bus1_w,
		in_bus1 => in_bus1,
		in_temp_w => in_temp_w,
		in_acc_r => in_acc_r,
		in_acc_w => in_acc_w,
		in_ram_a_w => in_ram_a_w,
		in_ram_r => in_ram_r,
		in_ram_w => in_ram_w,
		 
		in_read_reg_en => in_read_reg_en,
		in_write_reg_en => in_write_reg_en,
		-- OUTPUTS
		monitor => monitor,
		cpu_sysbus => cpu_sysbus,
		cpu_iar_o => cpu_iar_o,
		cpu_ir_o => cpu_ir_o,
		cpu_temp_o => cpu_temp_o,
		cpu_ram_a_o => cpu_ram_a_o,
			 
		cpu_clk => cpu_clk,
		cpu_clk_int => 	cpu_clk_int,
		cpu_clkc => cpu_clkc,
		cpu_clkr => cpu_clkr,
		cpu_clkw => cpu_clkw,
			 
		cpu_sysbus_released	=> cpu_sysbus_released,
			 
		cpu_can_read => cpu_can_read,
		cpu_can_write => cpu_can_write,
		 
		cpu_s1 => cpu_s1,
		cpu_s2 => cpu_s2,
		cpu_s3 => cpu_s3,
		cpu_s4 => cpu_s4,
		cpu_s5 => cpu_s5,
		cpu_s6 => cpu_s6,
			 
		cpu_r0_r => cpu_r0_r,
		cpu_r0_w => cpu_r0_w,
		cpu_r1_r => cpu_r1_r,
		cpu_r1_w => cpu_r1_w,
		cpu_r2_r => cpu_r2_r,
		cpu_r2_w => cpu_r2_w,
		cpu_r3_r => cpu_r3_r,
		cpu_r3_w => cpu_r3_w,
			 
		cpu_iar_r => cpu_iar_r,
		cpu_iar_w => cpu_iar_w,
		cpu_ir_w => cpu_ir_w,
		cpu_is_bus1_w => cpu_is_bus1_w,
		cpu_bus1 => cpu_bus1,
		cpu_temp_w => cpu_temp_w,
		cpu_acc_r => cpu_acc_r,
		cpu_acc_w => cpu_acc_w,
		cpu_ram_a_w => cpu_ram_a_w,
		cpu_ram_r => cpu_ram_r,
		cpu_ram_w => cpu_ram_w,
			 
		cpu_flags_w => cpu_flags_w,
		cpu_flags_clr => cpu_flags_clr,
			 
		cpu_op_alu => cpu_op_alu,
		cpu_op_alu_add => cpu_op_alu_add,
		cpu_op_alu_lshift => cpu_op_alu_lshift,
		cpu_op_alu_rshift => cpu_op_alu_rshift,
		cpu_op_alu_not => cpu_op_alu_not,
		cpu_op_alu_and => cpu_op_alu_and,
		cpu_op_alu_or => cpu_op_alu_or,
		cpu_op_alu_xor => cpu_op_alu_xor,
		cpu_op_alu_nop => cpu_op_alu_nop,
			 
		cpu_op_ls_ld => cpu_op_ls_ld,
		cpu_op_ls_st => cpu_op_ls_st,
		cpu_op_ls_ldc => cpu_op_ls_ldc,
		cpu_op_jmp_jmpr => cpu_op_jmp_jmpr,
		cpu_op_jmp_jmp => cpu_op_jmp_jmp,
		cpu_op_jmp_ifjmp => cpu_op_jmp_ifjmp,
		cpu_op_flg_clf => cpu_op_flg_clf,
		cpu_op_alt_nop => cpu_op_alt_nop,
			 
		cpu_C_out_flipflop_o => cpu_C_out_flipflop_o,
		cpu_C_in_enabled => cpu_C_in_enabled,
		cpu_alu_C_in => cpu_alu_C_in,
		cpu_alu_gt => cpu_alu_gt,
		cpu_alu_eq => cpu_alu_eq,
		cpu_alu_z => cpu_alu_z,
		cpu_alu_C_out => cpu_alu_C_out,
			 
		cpu_alu_x => cpu_alu_x,
			 
		cpu_flags_C_out	 => cpu_flags_C_out,
		cpu_flags_gt => cpu_flags_gt,
		cpu_flags_eq => cpu_flags_eq,
		cpu_flags_z => cpu_flags_z,
			 
		manr_w => manr_w,
		manr_r => manr_r,
		manr_o => manr_o
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		clk <='0';
		in_read_reg_en <= '1';
		in_write_reg_en <= '1';
		manual_clk_in <= '0';
		
		in_manr_r <= '0';
		in_manr_w <= '0';
		in_manr_d <= "00000000";
		in_r0_r <= '0';
		in_r0_w <= '0';
		in_r1_r <= '0';
		in_r1_w <= '0';
		in_r2_r <= '0';
		in_r2_w <= '0';
		in_r3_r <= '0';
		in_r3_w <= '0';
		
		in_iar_r	<= '0';
		in_iar_w <= '0';
		in_temp_w <= '0';
		in_acc_r <= '0';
		in_acc_w <= '0';
		in_ram_r <= '0';
		in_ram_w <= '0';
		in_ir_w <= '0';
		in_ram_a_w <= '0';
		in_bus1 <= '0';
		in_is_bus1_w <= '0';
		
		rst_in <= '0';
		wait for 10 ns;
		rst_in <= '1';
		wait for 10 ns;
		
		in_manr_d <= "00010011";
		in_manr_w <= '1';
		wait for 10 ns;
		in_manr_w <= '0';
		--one_step(manual_clk_in);
		wait for 10 ns;
		in_manr_r <= '1';
		wait for 10 ns;
		in_r0_w <= '1';
		in_r1_w <= '1';
		in_r2_w <= '1';
		in_r3_w <= '1';
		wait for 10 ns;
		in_r0_w <= '0';
		in_r1_w <= '0';
		in_r2_w <= '0';
		in_r3_w <= '0';
		wait for 10 ns;
		in_manr_r <= '0';
		wait for 10 ns;
		in_r0_r <= '1';
		wait for 10 ns;
		in_r0_r <= '0';
		wait for 10 ns;
		in_r1_r <= '1';
		wait for 10 ns;
		in_r1_r <= '0';
		wait for 10 ns;
		in_r2_r <= '1';
		wait for 10 ns;
		in_r2_r <= '0';
		wait for 10 ns;
		in_r3_r <= '1';
		wait for 10 ns;
		in_r3_r <= '0';
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
