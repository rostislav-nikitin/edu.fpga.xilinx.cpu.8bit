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
          in_rst	:	IN	STD_LOGIC; 
          in_clk	:	IN	STD_LOGIC;
			 in_clk_manual	:	IN	STD_LOGIC;
			 in_clk_external	:	IN	STD_LOGIC;
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
			 out_sysbus	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0);
			 out_iar_o	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 out_ir_o	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 out_temp_o	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 out_ram_a_o:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 
			 out_clk	:	OUT	STD_LOGIC;
			 out_clk_int	:	OUT	STD_LOGIC;
			 out_clkc	:	OUT	STD_LOGIC;
			 out_clkr	:	OUT	STD_LOGIC;
			 out_clkw	:	OUT	STD_LOGIC;
			 
			 out_sysbus_released	:	OUT	STD_LOGIC;
			 
			 out_can_read	:	OUT	STD_LOGIC;
			 out_can_write	:	OUT	STD_LOGIC;
		 
			 out_s1	:	OUT	STD_LOGIC;
			 out_s2	:	OUT	STD_LOGIC;
			 out_s3	:	OUT	STD_LOGIC;
			 out_s4	:	OUT	STD_LOGIC;
			 out_s5	:	OUT	STD_LOGIC;
			 out_s6	:	OUT	STD_LOGIC;
			 
			 out_r0_r	:	OUT	STD_LOGIC;
			 out_r0_w	:	OUT	STD_LOGIC;
			 out_r1_r	:	OUT	STD_LOGIC;
			 out_r1_w	:	OUT	STD_LOGIC;
			 out_r2_r	:	OUT	STD_LOGIC;
			 out_r2_w	:	OUT	STD_LOGIC;
			 out_r3_r	:	OUT	STD_LOGIC;
			 out_r3_w	:	OUT	STD_LOGIC;
			 
			 out_iar_r	:	OUT	STD_LOGIC;
			 out_iar_w	:	OUT	STD_LOGIC;
			 out_ir_w		:	OUT	STD_LOGIC; 
			 out_is_bus1_w	:	OUT	STD_LOGIC;
			 out_bus1	:	OUT	STD_LOGIC;
			 out_temp_w	:	OUT	STD_LOGIC;
			 out_acc_r	:	OUT	STD_LOGIC;
			 out_acc_w	:	OUT	STD_LOGIC;
			 out_ram_a_w	:	OUT	STD_LOGIC; 
			 out_ram_r	:	OUT	STD_LOGIC;
			 out_ram_w	:	OUT	STD_LOGIC;
			 
			 out_flags_w	:	OUT	STD_LOGIC;
			 out_flags_clr	:	OUT	STD_LOGIC;
			 
			 out_op_alu	:	OUT	STD_LOGIC;
			 out_op_alu_add	:	OUT	STD_LOGIC;
			 out_op_alu_lshift	:	OUT	STD_LOGIC;
			 out_op_alu_rshift	:	OUT	STD_LOGIC;
			 out_op_alu_not	:	OUT	STD_LOGIC;
			 out_op_alu_and	:	OUT	STD_LOGIC;
			 out_op_alu_or	:	OUT	STD_LOGIC;
			 out_op_alu_xor	:	OUT	STD_LOGIC;
			 out_op_alu_nop	:	OUT	STD_LOGIC;
			 
			 out_op_ls_ld	:	OUT	STD_LOGIC;
			 out_op_ls_st	:	OUT	STD_LOGIC;
			 out_op_ls_ldc	:	OUT	STD_LOGIC;
			 out_op_jmp_jmpr	:	OUT	STD_LOGIC;
			 out_op_jmp_jmp	:	OUT	STD_LOGIC;
			 out_op_jmp_ifjmp	:	OUT	STD_LOGIC;
			 out_op_flg_clf	:	OUT	STD_LOGIC;
			 out_op_alt_nop	:	OUT	STD_LOGIC;
			 
			 out_C_out_flipflop_o	:	OUT	STD_LOGIC;
			 out_C_in_enabled	:	OUT	STD_LOGIC;
			 out_alu_C_in	:	OUT	STD_LOGIC;
			 out_alu_gt	:	OUT	STD_LOGIC;
			 out_alu_eq	:	OUT	STD_LOGIC;
			 out_alu_z	:	OUT	STD_LOGIC;
			 out_alu_C_out	:	OUT	STD_LOGIC;
			 
			 out_alu_x	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			 
			 out_flags_C_out	:	OUT	STD_LOGIC;
			 out_flags_gt	:	OUT	STD_LOGIC;
			 out_flags_eq	:	OUT	STD_LOGIC;
			 out_flags_z	:	OUT	STD_LOGIC;
			 
			 manr_w	:	OUT	STD_LOGIC;
			 manr_r	:	OUT	STD_LOGIC;
			 manr_o	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
   END COMPONENT;
	
	
	
	
	
	-- ================================================================
	-- INPUTS																			|
	-- ================================================================
	 SIGNAL in_rst	:		STD_LOGIC; 
	 SIGNAL in_clk	:		STD_LOGIC;
	 SIGNAL in_clk_manual	:		STD_LOGIC;
	 SIGNAL in_clk_external	:		STD_LOGIC;
	 
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
	 SIGNAL out_sysbus	:		STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL out_iar_o	:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL out_ir_o	:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL out_temp_o	:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL out_ram_a_o:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 
	 SIGNAL out_clk	:		STD_LOGIC;
	 SIGNAL out_clk_int	:		STD_LOGIC;
	 SIGNAL out_clkc	:		STD_LOGIC;
	 SIGNAL out_clkr	:		STD_LOGIC;
	 SIGNAL out_clkw	:		STD_LOGIC;
	 
	 SIGNAL out_sysbus_released	:		STD_LOGIC;
	 
	 SIGNAL out_can_read	:		STD_LOGIC;
	 SIGNAL out_can_write	:		STD_LOGIC;
 
	 SIGNAL out_s1	:		STD_LOGIC;
	 SIGNAL out_s2	:		STD_LOGIC;
	 SIGNAL out_s3	:		STD_LOGIC;
	 SIGNAL out_s4	:		STD_LOGIC;
	 SIGNAL out_s5	:		STD_LOGIC;
	 SIGNAL out_s6	:		STD_LOGIC;
	 
	 SIGNAL out_r0_r	:		STD_LOGIC;
	 SIGNAL out_r0_w	:		STD_LOGIC;
	 SIGNAL out_r1_r	:		STD_LOGIC;
	 SIGNAL out_r1_w	:		STD_LOGIC;
	 SIGNAL out_r2_r	:		STD_LOGIC;
	 SIGNAL out_r2_w	:		STD_LOGIC;
	 SIGNAL out_r3_r	:		STD_LOGIC;
	 SIGNAL out_r3_w	:		STD_LOGIC;
	 
	 SIGNAL out_iar_r	:		STD_LOGIC;
	 SIGNAL out_iar_w	:		STD_LOGIC;
	 SIGNAL out_ir_w		:		STD_LOGIC; 
	 SIGNAL out_is_bus1_w	:		STD_LOGIC;
	 SIGNAL out_bus1	:		STD_LOGIC;
	 SIGNAL out_temp_w	:		STD_LOGIC;
	 SIGNAL out_acc_r	:		STD_LOGIC;
	 SIGNAL out_acc_w	:		STD_LOGIC;
	 SIGNAL out_ram_a_w	:		STD_LOGIC; 
	 SIGNAL out_ram_r	:		STD_LOGIC;
	 SIGNAL out_ram_w	:		STD_LOGIC;
	 
	 SIGNAL out_flags_w	:		STD_LOGIC;
	 SIGNAL out_flags_clr	:		STD_LOGIC;
	 
	 SIGNAL out_op_alu	:		STD_LOGIC;
	 SIGNAL out_op_alu_add	:		STD_LOGIC;
	 SIGNAL out_op_alu_lshift	:		STD_LOGIC;
	 SIGNAL out_op_alu_rshift	:		STD_LOGIC;
	 SIGNAL out_op_alu_not	:		STD_LOGIC;
	 SIGNAL out_op_alu_and	:		STD_LOGIC;
	 SIGNAL out_op_alu_or	:		STD_LOGIC;
	 SIGNAL out_op_alu_xor	:		STD_LOGIC;
	 SIGNAL out_op_alu_nop	:		STD_LOGIC;
	 
	 SIGNAL out_op_ls_ld	:		STD_LOGIC;
	 SIGNAL out_op_ls_st	:		STD_LOGIC;
	 SIGNAL out_op_ls_ldc	:		STD_LOGIC;
	 SIGNAL out_op_jmp_jmpr	:		STD_LOGIC;
	 SIGNAL out_op_jmp_jmp	:		STD_LOGIC;
	 SIGNAL out_op_jmp_ifjmp	:		STD_LOGIC;
	 SIGNAL out_op_flg_clf	:		STD_LOGIC;
	 SIGNAL out_op_alt_nop	:		STD_LOGIC;
	 
	 SIGNAL out_C_out_flipflop_o	:		STD_LOGIC;
	 SIGNAL out_C_in_enabled	:		STD_LOGIC;
	 SIGNAL out_alu_C_in	:		STD_LOGIC;
	 SIGNAL out_alu_gt	:		STD_LOGIC;
	 SIGNAL out_alu_eq	:		STD_LOGIC;
	 SIGNAL out_alu_z	:		STD_LOGIC;
	 SIGNAL out_alu_C_out	:		STD_LOGIC;
	 
	 SIGNAL out_alu_x	:		STD_LOGIC_VECTOR(7 DOWNTO 0);
	 
	 SIGNAL out_flags_C_out	:		STD_LOGIC;
	 SIGNAL out_flags_gt	:		STD_LOGIC;
	 SIGNAL out_flags_eq	:		STD_LOGIC;
	 SIGNAL out_flags_z	:		STD_LOGIC;
	 
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
		in_rst => in_rst,
		in_clk => in_clk,
		in_clk_manual => in_clk_manual,
		in_clk_external => in_clk_external,
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
		out_sysbus => out_sysbus,
		out_iar_o => out_iar_o,
		out_ir_o => out_ir_o,
		out_temp_o => out_temp_o,
		out_ram_a_o => out_ram_a_o,
			 
		out_clk => out_clk,
		out_clk_int => 	out_clk_int,
		out_clkc => out_clkc,
		out_clkr => out_clkr,
		out_clkw => out_clkw,
			 
		out_sysbus_released	=> out_sysbus_released,
			 
		out_can_read => out_can_read,
		out_can_write => out_can_write,
		 
		out_s1 => out_s1,
		out_s2 => out_s2,
		out_s3 => out_s3,
		out_s4 => out_s4,
		out_s5 => out_s5,
		out_s6 => out_s6,
			 
		out_r0_r => out_r0_r,
		out_r0_w => out_r0_w,
		out_r1_r => out_r1_r,
		out_r1_w => out_r1_w,
		out_r2_r => out_r2_r,
		out_r2_w => out_r2_w,
		out_r3_r => out_r3_r,
		out_r3_w => out_r3_w,
			 
		out_iar_r => out_iar_r,
		out_iar_w => out_iar_w,
		out_ir_w => out_ir_w,
		out_is_bus1_w => out_is_bus1_w,
		out_bus1 => out_bus1,
		out_temp_w => out_temp_w,
		out_acc_r => out_acc_r,
		out_acc_w => out_acc_w,
		out_ram_a_w => out_ram_a_w,
		out_ram_r => out_ram_r,
		out_ram_w => out_ram_w,
			 
		out_flags_w => out_flags_w,
		out_flags_clr => out_flags_clr,
			 
		out_op_alu => out_op_alu,
		out_op_alu_add => out_op_alu_add,
		out_op_alu_lshift => out_op_alu_lshift,
		out_op_alu_rshift => out_op_alu_rshift,
		out_op_alu_not => out_op_alu_not,
		out_op_alu_and => out_op_alu_and,
		out_op_alu_or => out_op_alu_or,
		out_op_alu_xor => out_op_alu_xor,
		out_op_alu_nop => out_op_alu_nop,
			 
		out_op_ls_ld => out_op_ls_ld,
		out_op_ls_st => out_op_ls_st,
		out_op_ls_ldc => out_op_ls_ldc,
		out_op_jmp_jmpr => out_op_jmp_jmpr,
		out_op_jmp_jmp => out_op_jmp_jmp,
		out_op_jmp_ifjmp => out_op_jmp_ifjmp,
		out_op_flg_clf => out_op_flg_clf,
		out_op_alt_nop => out_op_alt_nop,
			 
		out_C_out_flipflop_o => out_C_out_flipflop_o,
		out_C_in_enabled => out_C_in_enabled,
		out_alu_C_in => out_alu_C_in,
		out_alu_gt => out_alu_gt,
		out_alu_eq => out_alu_eq,
		out_alu_z => out_alu_z,
		out_alu_C_out => out_alu_C_out,
			 
		out_alu_x => out_alu_x,
			 
		out_flags_C_out	 => out_flags_C_out,
		out_flags_gt => out_flags_gt,
		out_flags_eq => out_flags_eq,
		out_flags_z => out_flags_z,
			 
		manr_w => manr_w,
		manr_r => manr_r,
		manr_o => manr_o
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		in_clk_external <= '0';
		in_clk <='0';
		in_read_reg_en <= '1';
		in_write_reg_en <= '1';
		in_clk_manual <= '0';
		
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
		
		in_rst <= '0';
		wait for 10 ns;
		in_rst <= '1';
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
