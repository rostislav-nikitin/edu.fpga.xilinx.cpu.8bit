--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.40xd
--  \   \         Application: netgen
--  /   /         Filename: cpu_synthesis.vhd
-- /___/   /\     Timestamp: Fri Apr 15 00:31:37 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm cpu -w -dir netgen/synthesis -ofmt vhdl -sim cpu.ngc cpu_synthesis.vhd 
-- Device	: xa6slx9-3-ftg256
-- Input file	: cpu.ngc
-- Output file	: /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/netgen/synthesis/cpu_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: cpu
-- Xilinx	: /opt/Xilinx/14.3/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity cpu is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst_in : in STD_LOGIC := 'X'; 
    clk_one_hz : out STD_LOGIC; 
    iar_w : out STD_LOGIC; 
    monitor : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sysbus : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end cpu;

architecture Structure of cpu is
  signal clk_IBUF_BUFG_780 : STD_LOGIC; 
  signal rst_in_IBUF_781 : STD_LOGIC; 
  signal XLXN_235 : STD_LOGIC; 
  signal cnt_clk_one_hz : STD_LOGIC; 
  signal XLXN_270 : STD_LOGIC; 
  signal XLXN_233 : STD_LOGIC; 
  signal XLXN_250 : STD_LOGIC; 
  signal clk_one_hz_OBUF_788 : STD_LOGIC; 
  signal rst : STD_LOGIC; 
  signal clkc : STD_LOGIC; 
  signal clkr : STD_LOGIC; 
  signal clkw : STD_LOGIC; 
  signal XLXN_216 : STD_LOGIC; 
  signal XLXN_217 : STD_LOGIC; 
  signal acc_r : STD_LOGIC; 
  signal acc_w : STD_LOGIC; 
  signal alu_C_in_enabled : STD_LOGIC; 
  signal bus1 : STD_LOGIC; 
  signal flags_clr : STD_LOGIC; 
  signal flags_w : STD_LOGIC; 
  signal iar_r : STD_LOGIC; 
  signal ctl_iar_w : STD_LOGIC; 
  signal ir_w : STD_LOGIC; 
  signal ram_a_w : STD_LOGIC; 
  signal ram_r : STD_LOGIC; 
  signal ram_w : STD_LOGIC; 
  signal r0_r : STD_LOGIC; 
  signal ctl_r0_w : STD_LOGIC; 
  signal r1_r : STD_LOGIC; 
  signal ctl_r1_w : STD_LOGIC; 
  signal r2_r : STD_LOGIC; 
  signal r2_w : STD_LOGIC; 
  signal r3_r : STD_LOGIC; 
  signal r3_w : STD_LOGIC; 
  signal temp_w : STD_LOGIC; 
  signal alu_C_in : STD_LOGIC; 
  signal sysbus_7_OBUF_898 : STD_LOGIC; 
  signal sysbus_6_OBUF_899 : STD_LOGIC; 
  signal sysbus_5_OBUF_900 : STD_LOGIC; 
  signal sysbus_4_OBUF_901 : STD_LOGIC; 
  signal sysbus_3_OBUF_902 : STD_LOGIC; 
  signal sysbus_2_OBUF_903 : STD_LOGIC; 
  signal sysbus_1_OBUF_904 : STD_LOGIC; 
  signal sysbus_0_OBUF_905 : STD_LOGIC; 
  signal iar_w_OBUF_914 : STD_LOGIC; 
  signal monitor_7_OBUF_915 : STD_LOGIC; 
  signal monitor_6_OBUF_916 : STD_LOGIC; 
  signal monitor_5_OBUF_917 : STD_LOGIC; 
  signal monitor_4_OBUF_918 : STD_LOGIC; 
  signal monitor_3_OBUF_919 : STD_LOGIC; 
  signal monitor_2_OBUF_920 : STD_LOGIC; 
  signal monitor_1_OBUF_921 : STD_LOGIC; 
  signal monitor_0_OBUF_922 : STD_LOGIC; 
  signal alu_C_out : STD_LOGIC; 
  signal alu_eq : STD_LOGIC; 
  signal alu_gt : STD_LOGIC; 
  signal alu_z : STD_LOGIC; 
  signal clck_gen_clr : STD_LOGIC; 
  signal clck_gen_XLXN_1 : STD_LOGIC; 
  signal clck_gen_XLXN_9 : STD_LOGIC; 
  signal XLXI_122_XLXN_2 : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_23 : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_18 : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_19 : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_20 : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_22 : STD_LOGIC; 
  signal cpu_ctl_XLXN_1063 : STD_LOGIC; 
  signal cpu_ctl_XLXN_155 : STD_LOGIC; 
  signal cpu_ctl_XLXN_814 : STD_LOGIC; 
  signal cpu_ctl_XLXN_156 : STD_LOGIC; 
  signal cpu_ctl_XLXN_813 : STD_LOGIC; 
  signal cpu_ctl_XLXN_157 : STD_LOGIC; 
  signal cpu_ctl_XLXN_812 : STD_LOGIC; 
  signal cpu_ctl_XLXN_158 : STD_LOGIC; 
  signal cpu_ctl_XLXN_811 : STD_LOGIC; 
  signal cpu_ctl_flag_equals_op : STD_LOGIC; 
  signal cpu_ctl_XLXN_981 : STD_LOGIC; 
  signal cpu_ctl_raw_int : STD_LOGIC; 
  signal cpu_ctl_ra_int : STD_LOGIC; 
  signal cpu_ctl_rb_int : STD_LOGIC; 
  signal cpu_ctl_XLXN_435 : STD_LOGIC; 
  signal cpu_ctl_alu_calc : STD_LOGIC; 
  signal cpu_ctl_XLXN_1034 : STD_LOGIC; 
  signal cpu_ctl_XLXN_997 : STD_LOGIC; 
  signal cpu_ctl_rb3_r : STD_LOGIC; 
  signal cpu_ctl_rb2_r : STD_LOGIC; 
  signal cpu_ctl_rb1_r : STD_LOGIC; 
  signal cpu_ctl_rb0_r : STD_LOGIC; 
  signal cpu_ctl_ra3_w : STD_LOGIC; 
  signal cpu_ctl_ra3_r : STD_LOGIC; 
  signal cpu_ctl_ra2_w : STD_LOGIC; 
  signal cpu_ctl_ra2_r : STD_LOGIC; 
  signal cpu_ctl_ra1_w : STD_LOGIC; 
  signal cpu_ctl_ra1_r : STD_LOGIC; 
  signal cpu_ctl_ra0_w : STD_LOGIC; 
  signal cpu_ctl_ra0_r : STD_LOGIC; 
  signal cpu_ctl_ls_jmp_flg : STD_LOGIC; 
  signal cpu_ctl_alu_binary : STD_LOGIC; 
  signal cpu_ctl_alu_unari : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_not_equals_op : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_equals_op : STD_LOGIC; 
  signal cpu_ctl_XLXN_462 : STD_LOGIC; 
  signal cpu_ctl_XLXN_83 : STD_LOGIC; 
  signal cpu_ctl_XLXN_84 : STD_LOGIC; 
  signal cpu_ctl_XLXN_1018 : STD_LOGIC; 
  signal cpu_ctl_XLXN_1019 : STD_LOGIC; 
  signal cpu_ctl_XLXN_1020 : STD_LOGIC; 
  signal cpu_ctl_XLXN_1021 : STD_LOGIC; 
  signal cpu_ctl_ls_ldc_s6 : STD_LOGIC; 
  signal cpu_ctl_alu_s6 : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5 : STD_LOGIC; 
  signal cpu_ctl_jmp_jmp_s5 : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_equals_op_s5 : STD_LOGIC; 
  signal cpu_ctl_ls_ldc_s5 : STD_LOGIC; 
  signal cpu_ctl_ls_st_s5 : STD_LOGIC; 
  signal cpu_ctl_ls_ld_s5 : STD_LOGIC; 
  signal cpu_ctl_alu_binary_s5 : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4 : STD_LOGIC; 
  signal cpu_ctl_flg_clf_s4 : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_equals_op_s4 : STD_LOGIC; 
  signal cpu_ctl_jmp_jmp_s4 : STD_LOGIC; 
  signal cpu_ctl_jmp_jmpr_s4 : STD_LOGIC; 
  signal cpu_ctl_ls_ldc_s4 : STD_LOGIC; 
  signal cpu_ctl_alu_s4 : STD_LOGIC; 
  signal cpu_ctl_ls_ldst_s4 : STD_LOGIC; 
  signal cpu_ctl_alu_binary_s4 : STD_LOGIC; 
  signal cpu_ctl_alu_unari_s4 : STD_LOGIC; 
  signal cpu_ctl_XLXN_11 : STD_LOGIC; 
  signal cpu_ctl_XLXN_22 : STD_LOGIC; 
  signal cpu_ctl_XLXN_7 : STD_LOGIC; 
  signal cpu_ctl_XLXN_12 : STD_LOGIC; 
  signal cpu_ctl_XLXN_23 : STD_LOGIC; 
  signal cpu_ctl_XLXN_4 : STD_LOGIC; 
  signal cpu_ctl_XLXN_16 : STD_LOGIC; 
  signal cpu_ctl_XLXN_5 : STD_LOGIC; 
  signal cpu_ctl_op_gt : STD_LOGIC; 
  signal cpu_ctl_op_c : STD_LOGIC; 
  signal cpu_ctl_rb_3_DUMMY : STD_LOGIC; 
  signal cpu_ctl_rb_2_DUMMY : STD_LOGIC; 
  signal cpu_ctl_rb_1_DUMMY : STD_LOGIC; 
  signal cpu_ctl_rb_0_DUMMY : STD_LOGIC; 
  signal cpu_ctl_op_z : STD_LOGIC; 
  signal cpu_ctl_op_eq : STD_LOGIC; 
  signal cpu_ctl_ra_3_DUMMY : STD_LOGIC; 
  signal cpu_ctl_ra_2_DUMMY : STD_LOGIC; 
  signal cpu_ctl_ra_1_DUMMY : STD_LOGIC; 
  signal cpu_ctl_ra_0_DUMMY : STD_LOGIC; 
  signal cpu_ctl_alu_DUMMY : STD_LOGIC; 
  signal cpu_ctl_XLXN_32 : STD_LOGIC; 
  signal cpu_ctl_XLXN_31 : STD_LOGIC; 
  signal cpu_ctl_XLXN_30 : STD_LOGIC; 
  signal cpu_ctl_flg_clf : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp : STD_LOGIC; 
  signal cpu_ctl_jmp_jmp : STD_LOGIC; 
  signal cpu_ctl_jmp_jmpr : STD_LOGIC; 
  signal cpu_ctl_ls_ldc : STD_LOGIC; 
  signal cpu_ctl_ls_st : STD_LOGIC; 
  signal cpu_ctl_ls_ld : STD_LOGIC; 
  signal cpu_ctl_alu_xor_DUMMY : STD_LOGIC; 
  signal cpu_ctl_alu_or_DUMMY : STD_LOGIC; 
  signal cpu_ctl_alu_and_DUMMY : STD_LOGIC; 
  signal cpu_ctl_alu_not_DUMMY : STD_LOGIC; 
  signal cpu_ctl_alu_rshift_DUMMY : STD_LOGIC; 
  signal cpu_ctl_alu_lshift_DUMMY : STD_LOGIC; 
  signal cpu_ctl_alu_sum_DUMMY : STD_LOGIC; 
  signal cpu_ctl_flags_c : STD_LOGIC; 
  signal cpu_ctl_flags_gt : STD_LOGIC; 
  signal cpu_ctl_flags_eq : STD_LOGIC; 
  signal cpu_ctl_flags_z : STD_LOGIC; 
  signal cpu_ctl_s6_DUMMY : STD_LOGIC; 
  signal cpu_ctl_s5_DUMMY : STD_LOGIC; 
  signal cpu_ctl_s4_DUMMY : STD_LOGIC; 
  signal cpu_ctl_s3_DUMMY : STD_LOGIC; 
  signal cpu_ctl_s2_DUMMY : STD_LOGIC; 
  signal cpu_ctl_s1_DUMMY : STD_LOGIC; 
  signal XLXI_130_XLXN_73 : STD_LOGIC; 
  signal XLXI_130_g : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o3 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o2 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o6 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o1 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o5 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o4 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o0 : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXN_1 : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXN_5 : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXN_7 : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXN_3 : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXN_8 : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXN_6 : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXN_4 : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXN_2 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_o0 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_o4 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_o5 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_o1 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_o6 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_o2 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_o7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_o3 : STD_LOGIC; 
  signal alu_inst_XLXN_202 : STD_LOGIC; 
  signal alu_inst_XLXN_201 : STD_LOGIC; 
  signal alu_inst_XLXN_192 : STD_LOGIC; 
  signal alu_inst_XLXN_105 : STD_LOGIC; 
  signal alu_inst_XLXN_8 : STD_LOGIC; 
  signal alu_inst_XLXN_93 : STD_LOGIC; 
  signal alu_inst_XLXN_191 : STD_LOGIC; 
  signal alu_inst_XLXN_199 : STD_LOGIC; 
  signal alu_inst_XLXN_91 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_2_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_2_XLXN_8 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_2_XLXN_9 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_3_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_3_XLXN_8 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_3_XLXN_9 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_4_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_4_XLXN_8 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_4_XLXN_9 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_5_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_5_XLXN_8 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_5_XLXN_9 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_6_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_6_XLXN_8 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_6_XLXN_9 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_7_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_7_XLXN_8 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_7_XLXN_9 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_8_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_8_XLXN_8 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_8_XLXN_9 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_9_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_9_XLXN_8 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_9_XLXN_9 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_59 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_58 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_57 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_56 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_55 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_54 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_51 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_48 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_53 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_52 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_47 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_46 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_45 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_44 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_43 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_42 : STD_LOGIC; 
  signal clk_IBUF_1229 : STD_LOGIC; 
  signal XLXI_137_Mcount_COUNT_cy_2_rt_18 : STD_LOGIC; 
  signal XLXI_137_Mcount_COUNT_cy_1_rt_17 : STD_LOGIC; 
  signal XLXI_137_N1 : STD_LOGIC; 
  signal XLXI_137_N0 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_4_rt_45 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_3_rt_44 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_2_rt_43 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_1_rt_42 : STD_LOGIC; 
  signal XLXI_132_N1 : STD_LOGIC; 
  signal XLXI_132_N0 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_xor_15_rt_116 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_14_rt_115 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_13_rt_114 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_12_rt_113 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_11_rt_112 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_10_rt_111 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_9_rt_110 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_8_rt_109 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_7_rt_108 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_6_rt_107 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_5_rt_106 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_4_rt_105 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_3_rt_104 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_2_rt_103 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_1_rt_102 : STD_LOGIC; 
  signal XLXI_131_TC_15_1_101 : STD_LOGIC; 
  signal XLXI_131_N1 : STD_LOGIC; 
  signal XLXI_131_N0 : STD_LOGIC; 
  signal clck_gen_XLXI_4_n0009_inv : STD_LOGIC; 
  signal clck_gen_XLXI_4_q_tmp_q_tmp_MUX_34_o : STD_LOGIC; 
  signal XLXI_142_q_tmp_q_tmp_MUX_34_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51_402 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6_401 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_400 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51_421 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6_420 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_419 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51_440 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6_439 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_438 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51_459 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6_458 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_457 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51_478 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6_477 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_476 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51_497 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6_496 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_495 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51_516 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6_515 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_514 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51_535 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6_534 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_533 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXI_4_N01 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51_586 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6_585 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_584 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51_603 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6_602 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_601 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51_620 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6_619 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_618 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51_637 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6_636 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_635 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51_654 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6_653 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_652 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51_671 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6_670 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_669 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51_688 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6_687 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_686 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51_705 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6_704 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_703 : STD_LOGIC; 
  signal alu_inst_XLXI_137_XLXI_1_N01 : STD_LOGIC; 
  signal NLW_XLXI_7_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_8_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_cpu_ctl_XLXI_556_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_9_XLXI_42_O_UNCONNECTED : STD_LOGIC; 
  signal clk_cnt : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal div_fifthy : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal iar_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ir_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal temp_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal acc_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r0_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r1_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r2_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r3_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_op : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ram_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal flags_o : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal pto : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_x : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_9_a_o_DUMMY : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_130_i : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_130_a : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_130_enc_o : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal alu_inst_XLXI_138_a : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal alu_inst_or_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_and_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_rsh_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_lsh_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_xor_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_not_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_add_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_137_Mcount_COUNT_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_137_Mcount_COUNT_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_137_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_137_COUNT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal XLXI_132_Mcount_COUNT_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal XLXI_132_Mcount_COUNT_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_132_Result : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_132_COUNT : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal XLXI_131_TC : STD_LOGIC_VECTOR ( 15 downto 15 ); 
  signal XLXI_131_Mcount_COUNT_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal XLXI_131_Mcount_COUNT_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_131_Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal XLXI_131_COUNT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cpu_ctl_stp_XLXI_24_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  XLXI_102 : FDC_1
    port map (
      C => clkr,
      CLR => rst,
      D => flags_o(0),
      Q => XLXN_216
    );
  XLXI_139 : AND3
    port map (
      I0 => clk_IBUF_1229,
      I1 => div_fifthy(3),
      I2 => div_fifthy(2),
      O => cnt_clk_one_hz
    );
  XLXI_149 : INV
    port map (
      I => clk_IBUF_BUFG_780,
      O => XLXN_270
    );
  XLXI_116 : BUF
    port map (
      I => rst_in_IBUF_781,
      O => XLXN_233
    );
  XLXI_140 : OR2
    port map (
      I0 => cnt_clk_one_hz,
      I1 => rst,
      O => XLXN_250
    );
  XLXI_117 : INV
    port map (
      I => XLXN_233,
      O => rst
    );
  XLXI_103 : OR2
    port map (
      I0 => rst,
      I1 => flags_clr,
      O => XLXN_217
    );
  XLXI_89 : AND2
    port map (
      I0 => XLXN_216,
      I1 => alu_C_in_enabled,
      O => alu_C_in
    );
  XLXI_10 : OR2
    port map (
      I0 => clck_gen_clr,
      I1 => ctl_iar_w,
      O => iar_w_OBUF_914
    );
  XLXI_7 : PULLUP
    port map (
      O => NLW_XLXI_7_O_UNCONNECTED
    );
  XLXI_8 : PULLUP
    port map (
      O => NLW_XLXI_8_O_UNCONNECTED
    );
  clck_gen_XLXI_11 : GND
    port map (
      G => clck_gen_clr
    );
  clck_gen_XLXI_6 : PULLUP
    port map (
      O => clck_gen_XLXN_1
    );
  clck_gen_XLXI_12 : INV
    port map (
      I => clk_cnt(5),
      O => clck_gen_XLXN_9
    );
  clck_gen_XLXI_10 : AND2B1
    port map (
      I0 => clk_cnt(5),
      I1 => clkc,
      O => clkw
    );
  clck_gen_XLXI_9 : OR2
    port map (
      I0 => clkc,
      I1 => clk_cnt(5),
      O => clkr
    );
  XLXI_121_XLXI_6 : VCC
    port map (
      P => XLXI_122_XLXN_2
    );
  cpu_ctl_stp_XLXI_26 : INV
    port map (
      I => clkc,
      O => cpu_ctl_stp_XLXN_23
    );
  cpu_ctl_XLXI_556 : AND3B1
    port map (
      I0 => clck_gen_clr,
      I1 => clck_gen_clr,
      I2 => clck_gen_clr,
      O => NLW_cpu_ctl_XLXI_556_O_UNCONNECTED
    );
  cpu_ctl_XLXI_574 : INV
    port map (
      I => cpu_ctl_flag_equals_op,
      O => cpu_ctl_XLXN_1063
    );
  cpu_ctl_XLXI_478 : OR2
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ra3_w,
      O => cpu_ctl_XLXN_155
    );
  cpu_ctl_XLXI_410 : OR2
    port map (
      I0 => cpu_ctl_ra3_r,
      I1 => cpu_ctl_rb3_r,
      O => cpu_ctl_XLXN_814
    );
  cpu_ctl_XLXI_477 : OR2
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ra2_w,
      O => cpu_ctl_XLXN_156
    );
  cpu_ctl_XLXI_409 : OR2
    port map (
      I0 => cpu_ctl_ra2_r,
      I1 => cpu_ctl_rb2_r,
      O => cpu_ctl_XLXN_813
    );
  cpu_ctl_XLXI_476 : OR2
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ra1_w,
      O => cpu_ctl_XLXN_157
    );
  cpu_ctl_XLXI_408 : OR2
    port map (
      I0 => cpu_ctl_ra1_r,
      I1 => cpu_ctl_rb1_r,
      O => cpu_ctl_XLXN_812
    );
  cpu_ctl_XLXI_475 : OR2
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ra0_w,
      O => cpu_ctl_XLXN_158
    );
  cpu_ctl_XLXI_407 : OR2
    port map (
      I0 => cpu_ctl_ra0_r,
      I1 => cpu_ctl_rb0_r,
      O => cpu_ctl_XLXN_811
    );
  cpu_ctl_XLXI_530 : OR4
    port map (
      I0 => cpu_ctl_XLXN_1021,
      I1 => cpu_ctl_XLXN_1020,
      I2 => cpu_ctl_XLXN_1019,
      I3 => cpu_ctl_XLXN_1018,
      O => cpu_ctl_flag_equals_op
    );
  cpu_ctl_XLXI_493 : OR4
    port map (
      I0 => clck_gen_clr,
      I1 => clck_gen_clr,
      I2 => clck_gen_clr,
      I3 => cpu_ctl_ls_st_s5,
      O => cpu_ctl_XLXN_981
    );
  cpu_ctl_XLXI_465 : OR4
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ls_ldc_s5,
      I2 => cpu_ctl_ls_ld_s5,
      I3 => cpu_ctl_alu_s6,
      O => cpu_ctl_raw_int
    );
  cpu_ctl_XLXI_315 : OR3
    port map (
      I0 => cpu_ctl_jmp_jmpr_s4,
      I1 => cpu_ctl_ls_st_s5,
      I2 => cpu_ctl_alu_s4,
      O => cpu_ctl_ra_int
    );
  cpu_ctl_XLXI_399 : OR3
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ls_ldst_s4,
      I2 => cpu_ctl_alu_binary_s5,
      O => cpu_ctl_rb_int
    );
  cpu_ctl_XLXI_230 : OR4
    port map (
      I0 => clck_gen_clr,
      I1 => clck_gen_clr,
      I2 => clck_gen_clr,
      I3 => cpu_ctl_alu_binary_s4,
      O => cpu_ctl_XLXN_435
    );
  cpu_ctl_XLXI_555 : OR2
    port map (
      I0 => cpu_ctl_alu_binary_s5,
      I1 => cpu_ctl_alu_unari_s4,
      O => cpu_ctl_alu_calc
    );
  cpu_ctl_XLXI_553 : OR2
    port map (
      I0 => cpu_ctl_alu_binary_s5,
      I1 => cpu_ctl_alu_unari_s4,
      O => cpu_ctl_XLXN_1034
    );
  cpu_ctl_XLXI_509 : OR2
    port map (
      I0 => cpu_ctl_alu_binary_s5,
      I1 => cpu_ctl_alu_unari_s4,
      O => cpu_ctl_XLXN_997
    );
  cpu_ctl_XLXI_403 : AND2
    port map (
      I0 => cpu_ctl_rb_3_DUMMY,
      I1 => cpu_ctl_rb_int,
      O => cpu_ctl_rb3_r
    );
  cpu_ctl_XLXI_402 : AND2
    port map (
      I0 => cpu_ctl_rb_2_DUMMY,
      I1 => cpu_ctl_rb_int,
      O => cpu_ctl_rb2_r
    );
  cpu_ctl_XLXI_401 : AND2
    port map (
      I0 => cpu_ctl_rb_1_DUMMY,
      I1 => cpu_ctl_rb_int,
      O => cpu_ctl_rb1_r
    );
  cpu_ctl_XLXI_400 : AND2
    port map (
      I0 => cpu_ctl_rb_0_DUMMY,
      I1 => cpu_ctl_rb_int,
      O => cpu_ctl_rb0_r
    );
  cpu_ctl_XLXI_461 : AND2
    port map (
      I0 => cpu_ctl_ra_3_DUMMY,
      I1 => cpu_ctl_raw_int,
      O => cpu_ctl_ra3_w
    );
  cpu_ctl_XLXI_275 : AND2
    port map (
      I0 => cpu_ctl_ra_3_DUMMY,
      I1 => cpu_ctl_ra_int,
      O => cpu_ctl_ra3_r
    );
  cpu_ctl_XLXI_460 : AND2
    port map (
      I0 => cpu_ctl_ra_2_DUMMY,
      I1 => cpu_ctl_raw_int,
      O => cpu_ctl_ra2_w
    );
  cpu_ctl_XLXI_274 : AND2
    port map (
      I0 => cpu_ctl_ra_2_DUMMY,
      I1 => cpu_ctl_ra_int,
      O => cpu_ctl_ra2_r
    );
  cpu_ctl_XLXI_459 : AND2
    port map (
      I0 => cpu_ctl_ra_1_DUMMY,
      I1 => cpu_ctl_raw_int,
      O => cpu_ctl_ra1_w
    );
  cpu_ctl_XLXI_273 : AND2
    port map (
      I0 => cpu_ctl_ra_1_DUMMY,
      I1 => cpu_ctl_ra_int,
      O => cpu_ctl_ra1_r
    );
  cpu_ctl_XLXI_458 : AND2
    port map (
      I0 => cpu_ctl_ra_0_DUMMY,
      I1 => cpu_ctl_raw_int,
      O => cpu_ctl_ra0_w
    );
  cpu_ctl_XLXI_272 : AND2
    port map (
      I0 => cpu_ctl_ra_0_DUMMY,
      I1 => cpu_ctl_ra_int,
      O => cpu_ctl_ra0_r
    );
  cpu_ctl_XLXI_251 : INV
    port map (
      I => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_ls_jmp_flg
    );
  cpu_ctl_XLXI_46 : AND2
    port map (
      I0 => cpu_ctl_alu_DUMMY,
      I1 => cpu_ctl_XLXN_84,
      O => cpu_ctl_alu_binary
    );
  cpu_ctl_XLXI_45 : AND2
    port map (
      I0 => cpu_ctl_alu_DUMMY,
      I1 => cpu_ctl_XLXN_83,
      O => cpu_ctl_alu_unari
    );
  cpu_ctl_XLXI_23 : OR2
    port map (
      I0 => cpu_ctl_XLXN_32,
      I1 => clck_gen_clr,
      O => alu_op(2)
    );
  cpu_ctl_XLXI_22 : OR2
    port map (
      I0 => cpu_ctl_XLXN_31,
      I1 => clck_gen_clr,
      O => alu_op(1)
    );
  cpu_ctl_XLXI_21 : OR2
    port map (
      I0 => cpu_ctl_XLXN_30,
      I1 => clck_gen_clr,
      O => alu_op(0)
    );
  cpu_ctl_XLXI_573 : AND2
    port map (
      I0 => cpu_ctl_XLXN_1063,
      I1 => cpu_ctl_jmp_ifjmp,
      O => cpu_ctl_jmp_ifjmp_flag_not_equals_op
    );
  cpu_ctl_XLXI_541 : AND2
    port map (
      I0 => cpu_ctl_flag_equals_op,
      I1 => cpu_ctl_jmp_ifjmp,
      O => cpu_ctl_jmp_ifjmp_flag_equals_op
    );
  cpu_ctl_XLXI_260 : OR2
    port map (
      I0 => cpu_ctl_ls_st,
      I1 => cpu_ctl_ls_ld,
      O => cpu_ctl_XLXN_462
    );
  cpu_ctl_XLXI_41 : OR3
    port map (
      I0 => cpu_ctl_alu_not_DUMMY,
      I1 => cpu_ctl_alu_rshift_DUMMY,
      I2 => cpu_ctl_alu_lshift_DUMMY,
      O => cpu_ctl_XLXN_83
    );
  cpu_ctl_XLXI_42 : OR4
    port map (
      I0 => cpu_ctl_alu_xor_DUMMY,
      I1 => cpu_ctl_alu_and_DUMMY,
      I2 => cpu_ctl_alu_or_DUMMY,
      I3 => cpu_ctl_alu_sum_DUMMY,
      O => cpu_ctl_XLXN_84
    );
  cpu_ctl_XLXI_532 : AND2
    port map (
      I0 => cpu_ctl_op_c,
      I1 => cpu_ctl_flags_c,
      O => cpu_ctl_XLXN_1018
    );
  cpu_ctl_XLXI_533 : AND2
    port map (
      I0 => cpu_ctl_op_gt,
      I1 => cpu_ctl_flags_gt,
      O => cpu_ctl_XLXN_1019
    );
  cpu_ctl_XLXI_534 : AND2
    port map (
      I0 => cpu_ctl_op_eq,
      I1 => cpu_ctl_flags_eq,
      O => cpu_ctl_XLXN_1020
    );
  cpu_ctl_XLXI_535 : AND2
    port map (
      I0 => cpu_ctl_op_z,
      I1 => cpu_ctl_flags_z,
      O => cpu_ctl_XLXN_1021
    );
  cpu_ctl_XLXI_499 : AND2
    port map (
      I0 => cpu_ctl_ls_ldc,
      I1 => cpu_ctl_s6_DUMMY,
      O => cpu_ctl_ls_ldc_s6
    );
  cpu_ctl_XLXI_137 : AND2
    port map (
      I0 => cpu_ctl_s6_DUMMY,
      I1 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_s6
    );
  cpu_ctl_XLXI_572 : AND2
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_not_equals_op,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5
    );
  cpu_ctl_XLXI_563 : AND2
    port map (
      I0 => cpu_ctl_jmp_jmp,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_jmp_jmp_s5
    );
  cpu_ctl_XLXI_548 : AND2
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_equals_op,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_equals_op_s5
    );
  cpu_ctl_XLXI_498 : AND2
    port map (
      I0 => cpu_ctl_ls_ldc,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_ls_ldc_s5
    );
  cpu_ctl_XLXI_491 : AND2
    port map (
      I0 => cpu_ctl_ls_st,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_ls_st_s5
    );
  cpu_ctl_XLXI_487 : AND2
    port map (
      I0 => cpu_ctl_ls_ld,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_ls_ld_s5
    );
  cpu_ctl_XLXI_250 : AND2
    port map (
      I0 => cpu_ctl_s5_DUMMY,
      I1 => cpu_ctl_alu_binary,
      O => cpu_ctl_alu_binary_s5
    );
  cpu_ctl_XLXI_571 : AND2
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_not_equals_op,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4
    );
  cpu_ctl_XLXI_552 : AND2
    port map (
      I0 => cpu_ctl_flg_clf,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_flg_clf_s4
    );
  cpu_ctl_XLXI_547 : AND2
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_equals_op,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_equals_op_s4
    );
  cpu_ctl_XLXI_501 : AND2
    port map (
      I0 => cpu_ctl_jmp_jmp,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_jmp_s4
    );
  cpu_ctl_XLXI_500 : AND2
    port map (
      I0 => cpu_ctl_jmp_jmpr,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_jmpr_s4
    );
  cpu_ctl_XLXI_494 : AND2
    port map (
      I0 => cpu_ctl_ls_ldc,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_ls_ldc_s4
    );
  cpu_ctl_XLXI_298 : AND2
    port map (
      I0 => cpu_ctl_s4_DUMMY,
      I1 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_s4
    );
  cpu_ctl_XLXI_255 : AND2
    port map (
      I0 => cpu_ctl_XLXN_462,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_ls_ldst_s4
    );
  cpu_ctl_XLXI_228 : AND2
    port map (
      I0 => cpu_ctl_s4_DUMMY,
      I1 => cpu_ctl_alu_binary,
      O => cpu_ctl_alu_binary_s4
    );
  cpu_ctl_XLXI_105 : AND2
    port map (
      I0 => cpu_ctl_s4_DUMMY,
      I1 => cpu_ctl_alu_unari,
      O => cpu_ctl_alu_unari_s4
    );
  cpu_ctl_XLXI_19 : OR4
    port map (
      I0 => cpu_ctl_s3_DUMMY,
      I1 => cpu_ctl_alu_s6,
      I2 => cpu_ctl_ls_ldc_s6,
      I3 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5,
      O => cpu_ctl_XLXN_22
    );
  cpu_ctl_XLXI_549 : OR5
    port map (
      I0 => cpu_ctl_s2_DUMMY,
      I1 => cpu_ctl_ls_ld_s5,
      I2 => cpu_ctl_ls_ldc_s5,
      I3 => cpu_ctl_jmp_jmp_s5,
      I4 => cpu_ctl_jmp_ifjmp_flag_equals_op_s5,
      O => cpu_ctl_XLXN_7
    );
  cpu_ctl_XLXI_14 : OR4
    port map (
      I0 => clck_gen_clr,
      I1 => clck_gen_clr,
      I2 => clck_gen_clr,
      I3 => cpu_ctl_s2_DUMMY,
      O => cpu_ctl_XLXN_12
    );
  cpu_ctl_XLXI_576 : OR5
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4,
      I1 => cpu_ctl_ls_ldc_s4,
      I2 => cpu_ctl_alu_binary_s5,
      I3 => cpu_ctl_alu_unari_s4,
      I4 => cpu_ctl_s1_DUMMY,
      O => cpu_ctl_XLXN_23
    );
  cpu_ctl_XLXI_575 : OR5
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => cpu_ctl_ls_ldc_s4,
      I2 => cpu_ctl_jmp_ifjmp_flag_equals_op_s4,
      I3 => cpu_ctl_jmp_jmp_s4,
      I4 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4,
      O => cpu_ctl_XLXN_4
    );
  cpu_ctl_XLXI_562 : OR5
    port map (
      I0 => cpu_ctl_jmp_jmp_s4,
      I1 => cpu_ctl_jmp_ifjmp_flag_equals_op_s4,
      I2 => cpu_ctl_ls_ldc_s4,
      I3 => cpu_ctl_ls_ldst_s4,
      I4 => cpu_ctl_s1_DUMMY,
      O => cpu_ctl_XLXN_16
    );
  cpu_ctl_XLXI_11 : OR4
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => cpu_ctl_ls_ldc_s4,
      I2 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4,
      I3 => clck_gen_clr,
      O => cpu_ctl_XLXN_5
    );
  cpu_ctl_XLXI_527 : BUF
    port map (
      I => ir_o(1),
      O => cpu_ctl_op_gt
    );
  cpu_ctl_XLXI_526 : BUF
    port map (
      I => ir_o(0),
      O => cpu_ctl_op_c
    );
  cpu_ctl_XLXI_529 : BUF
    port map (
      I => ir_o(3),
      O => cpu_ctl_op_z
    );
  cpu_ctl_XLXI_528 : BUF
    port map (
      I => ir_o(2),
      O => cpu_ctl_op_eq
    );
  cpu_ctl_XLXI_40 : BUF
    port map (
      I => ir_o(7),
      O => cpu_ctl_alu_DUMMY
    );
  cpu_ctl_XLXI_559 : AND3B1
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => ir_o(6),
      I2 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_32
    );
  cpu_ctl_XLXI_558 : AND3B1
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => ir_o(5),
      I2 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_31
    );
  cpu_ctl_XLXI_557 : AND3B1
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => ir_o(4),
      I2 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_30
    );
  cpu_ctl_XLXI_508 : BUF
    port map (
      I => flags_o(0),
      O => cpu_ctl_flags_c
    );
  cpu_ctl_XLXI_507 : BUF
    port map (
      I => flags_o(1),
      O => cpu_ctl_flags_gt
    );
  cpu_ctl_XLXI_506 : BUF
    port map (
      I => flags_o(2),
      O => cpu_ctl_flags_eq
    );
  cpu_ctl_XLXI_505 : BUF
    port map (
      I => flags_o(3),
      O => cpu_ctl_flags_z
    );
  cpu_ctl_XLXI_551 : AND2
    port map (
      I0 => cpu_ctl_flg_clf_s4,
      I1 => clkw,
      O => flags_clr
    );
  cpu_ctl_XLXI_503 : AND2
    port map (
      I0 => cpu_ctl_XLXN_997,
      I1 => clkw,
      O => flags_w
    );
  cpu_ctl_XLXI_492 : AND2
    port map (
      I0 => cpu_ctl_XLXN_981,
      I1 => clkw,
      O => ram_w
    );
  cpu_ctl_XLXI_229 : AND2
    port map (
      I0 => cpu_ctl_XLXN_435,
      I1 => clkw,
      O => temp_w
    );
  cpu_ctl_XLXI_83 : AND2
    port map (
      I0 => cpu_ctl_XLXN_155,
      I1 => clkw,
      O => r3_w
    );
  cpu_ctl_XLXI_82 : AND2
    port map (
      I0 => cpu_ctl_XLXN_156,
      I1 => clkw,
      O => r2_w
    );
  cpu_ctl_XLXI_81 : AND2
    port map (
      I0 => cpu_ctl_XLXN_157,
      I1 => clkw,
      O => ctl_r1_w
    );
  cpu_ctl_XLXI_80 : AND2
    port map (
      I0 => cpu_ctl_XLXN_158,
      I1 => clkw,
      O => ctl_r0_w
    );
  cpu_ctl_XLXI_17 : AND2
    port map (
      I0 => cpu_ctl_XLXN_23,
      I1 => clkw,
      O => acc_w
    );
  cpu_ctl_XLXI_7 : AND2
    port map (
      I0 => cpu_ctl_XLXN_16,
      I1 => clkw,
      O => ram_a_w
    );
  cpu_ctl_XLXI_6 : AND2
    port map (
      I0 => cpu_ctl_XLXN_12,
      I1 => clkw,
      O => ir_w
    );
  cpu_ctl_XLXI_5 : AND2
    port map (
      I0 => cpu_ctl_XLXN_11,
      I1 => clkw,
      O => ctl_iar_w
    );
  cpu_ctl_XLXI_554 : AND2
    port map (
      I0 => clkr,
      I1 => cpu_ctl_XLXN_1034,
      O => alu_C_in_enabled
    );
  cpu_ctl_XLXI_141 : AND2
    port map (
      I0 => clkr,
      I1 => cpu_ctl_XLXN_814,
      O => r3_r
    );
  cpu_ctl_XLXI_140 : AND2
    port map (
      I0 => clkr,
      I1 => cpu_ctl_XLXN_813,
      O => r2_r
    );
  cpu_ctl_XLXI_139 : AND2
    port map (
      I0 => clkr,
      I1 => cpu_ctl_XLXN_812,
      O => r1_r
    );
  cpu_ctl_XLXI_138 : AND2
    port map (
      I0 => clkr,
      I1 => cpu_ctl_XLXN_811,
      O => r0_r
    );
  cpu_ctl_XLXI_16 : AND2
    port map (
      I0 => clkr,
      I1 => cpu_ctl_XLXN_22,
      O => acc_r
    );
  cpu_ctl_XLXI_4 : AND2
    port map (
      I0 => clkr,
      I1 => cpu_ctl_XLXN_7,
      O => ram_r
    );
  cpu_ctl_XLXI_3 : AND2
    port map (
      I0 => clkr,
      I1 => cpu_ctl_XLXN_5,
      O => bus1
    );
  cpu_ctl_XLXI_2 : AND2
    port map (
      I0 => clkr,
      I1 => cpu_ctl_XLXN_4,
      O => iar_r
    );
  XLXI_9_XLXI_23 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000010"
    )
    port map (
      WCLK => clkw,
      D => sysbus_7_OBUF_898,
      WE => ram_w,
      O => ram_o(7),
      A(7) => XLXI_9_a_o_DUMMY(7),
      A(6) => XLXI_9_a_o_DUMMY(6),
      A(5) => XLXI_9_a_o_DUMMY(5),
      A(4) => XLXI_9_a_o_DUMMY(4),
      A(3) => XLXI_9_a_o_DUMMY(3),
      A(2) => XLXI_9_a_o_DUMMY(2),
      A(1) => XLXI_9_a_o_DUMMY(1),
      A(0) => XLXI_9_a_o_DUMMY(0)
    );
  XLXI_9_XLXI_22 : RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000000000000000000000000000000000000006A0"
    )
    port map (
      WCLK => clkw,
      D => sysbus_6_OBUF_899,
      WE => ram_w,
      O => ram_o(6),
      A(7) => XLXI_9_a_o_DUMMY(7),
      A(6) => XLXI_9_a_o_DUMMY(6),
      A(5) => XLXI_9_a_o_DUMMY(5),
      A(4) => XLXI_9_a_o_DUMMY(4),
      A(3) => XLXI_9_a_o_DUMMY(3),
      A(2) => XLXI_9_a_o_DUMMY(2),
      A(1) => XLXI_9_a_o_DUMMY(1),
      A(0) => XLXI_9_a_o_DUMMY(0)
    );
  XLXI_9_XLXI_21 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000205"
    )
    port map (
      WCLK => clkw,
      D => sysbus_5_OBUF_900,
      WE => ram_w,
      O => ram_o(5),
      A(7) => XLXI_9_a_o_DUMMY(7),
      A(6) => XLXI_9_a_o_DUMMY(6),
      A(5) => XLXI_9_a_o_DUMMY(5),
      A(4) => XLXI_9_a_o_DUMMY(4),
      A(3) => XLXI_9_a_o_DUMMY(3),
      A(2) => XLXI_9_a_o_DUMMY(2),
      A(1) => XLXI_9_a_o_DUMMY(1),
      A(0) => XLXI_9_a_o_DUMMY(0)
    );
  XLXI_9_XLXI_20 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000020"
    )
    port map (
      WCLK => clkw,
      D => sysbus_4_OBUF_901,
      WE => ram_w,
      O => ram_o(4),
      A(7) => XLXI_9_a_o_DUMMY(7),
      A(6) => XLXI_9_a_o_DUMMY(6),
      A(5) => XLXI_9_a_o_DUMMY(5),
      A(4) => XLXI_9_a_o_DUMMY(4),
      A(3) => XLXI_9_a_o_DUMMY(3),
      A(2) => XLXI_9_a_o_DUMMY(2),
      A(1) => XLXI_9_a_o_DUMMY(1),
      A(0) => XLXI_9_a_o_DUMMY(0)
    );
  XLXI_9_XLXI_19 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000040"
    )
    port map (
      WCLK => clkw,
      D => sysbus_3_OBUF_902,
      WE => ram_w,
      O => ram_o(3),
      A(7) => XLXI_9_a_o_DUMMY(7),
      A(6) => XLXI_9_a_o_DUMMY(6),
      A(5) => XLXI_9_a_o_DUMMY(5),
      A(4) => XLXI_9_a_o_DUMMY(4),
      A(3) => XLXI_9_a_o_DUMMY(3),
      A(2) => XLXI_9_a_o_DUMMY(2),
      A(1) => XLXI_9_a_o_DUMMY(1),
      A(0) => XLXI_9_a_o_DUMMY(0)
    );
  XLXI_9_XLXI_18 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000901"
    )
    port map (
      WCLK => clkw,
      D => sysbus_2_OBUF_903,
      WE => ram_w,
      O => ram_o(2),
      A(7) => XLXI_9_a_o_DUMMY(7),
      A(6) => XLXI_9_a_o_DUMMY(6),
      A(5) => XLXI_9_a_o_DUMMY(5),
      A(4) => XLXI_9_a_o_DUMMY(4),
      A(3) => XLXI_9_a_o_DUMMY(3),
      A(2) => XLXI_9_a_o_DUMMY(2),
      A(1) => XLXI_9_a_o_DUMMY(1),
      A(0) => XLXI_9_a_o_DUMMY(0)
    );
  XLXI_9_XLXI_17 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => clkw,
      D => sysbus_1_OBUF_904,
      WE => ram_w,
      O => ram_o(1),
      A(7) => XLXI_9_a_o_DUMMY(7),
      A(6) => XLXI_9_a_o_DUMMY(6),
      A(5) => XLXI_9_a_o_DUMMY(5),
      A(4) => XLXI_9_a_o_DUMMY(4),
      A(3) => XLXI_9_a_o_DUMMY(3),
      A(2) => XLXI_9_a_o_DUMMY(2),
      A(1) => XLXI_9_a_o_DUMMY(1),
      A(0) => XLXI_9_a_o_DUMMY(0)
    );
  XLXI_9_XLXI_1 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000072"
    )
    port map (
      WCLK => clkw,
      D => sysbus_0_OBUF_905,
      WE => ram_w,
      O => ram_o(0),
      A(7) => XLXI_9_a_o_DUMMY(7),
      A(6) => XLXI_9_a_o_DUMMY(6),
      A(5) => XLXI_9_a_o_DUMMY(5),
      A(4) => XLXI_9_a_o_DUMMY(4),
      A(3) => XLXI_9_a_o_DUMMY(3),
      A(2) => XLXI_9_a_o_DUMMY(2),
      A(1) => XLXI_9_a_o_DUMMY(1),
      A(0) => XLXI_9_a_o_DUMMY(0)
    );
  XLXI_9_XLXI_42 : INV
    port map (
      I => ram_r,
      O => NLW_XLXI_9_XLXI_42_O_UNCONNECTED
    );
  XLXI_130_XLXI_10 : BUF
    port map (
      I => clck_gen_clr,
      O => XLXI_130_i(7)
    );
  XLXI_130_XLXI_16 : BUF
    port map (
      I => XLXI_130_enc_o(2),
      O => XLXI_130_a(2)
    );
  XLXI_130_XLXI_15 : BUF
    port map (
      I => XLXI_130_enc_o(1),
      O => XLXI_130_a(1)
    );
  XLXI_130_XLXI_14 : BUF
    port map (
      I => XLXI_130_enc_o(0),
      O => XLXI_130_a(0)
    );
  XLXI_130_XLXI_21 : INV
    port map (
      I => XLXI_130_g,
      O => XLXI_130_XLXN_73
    );
  XLXI_130_XLXI_9 : BUF
    port map (
      I => r3_r,
      O => XLXI_130_i(6)
    );
  XLXI_130_XLXI_8 : BUF
    port map (
      I => r2_r,
      O => XLXI_130_i(5)
    );
  XLXI_130_XLXI_7 : BUF
    port map (
      I => r1_r,
      O => XLXI_130_i(4)
    );
  XLXI_130_XLXI_6 : BUF
    port map (
      I => r0_r,
      O => XLXI_130_i(3)
    );
  XLXI_130_XLXI_5 : BUF
    port map (
      I => ram_r,
      O => XLXI_130_i(2)
    );
  XLXI_130_XLXI_3 : BUF
    port map (
      I => iar_r,
      O => XLXI_130_i(0)
    );
  XLXI_130_XLXI_4 : BUF
    port map (
      I => acc_r,
      O => XLXI_130_i(1)
    );
  XLXI_130_XLXI_1_XLXI_21 : BUF
    port map (
      I => XLXI_130_XLXI_1_o3,
      O => sysbus_3_OBUF_902
    );
  XLXI_130_XLXI_1_XLXI_26 : BUF
    port map (
      I => XLXI_130_XLXI_1_o7,
      O => sysbus_7_OBUF_898
    );
  XLXI_130_XLXI_1_XLXI_20 : BUF
    port map (
      I => XLXI_130_XLXI_1_o2,
      O => sysbus_2_OBUF_903
    );
  XLXI_130_XLXI_1_XLXI_24 : BUF
    port map (
      I => XLXI_130_XLXI_1_o6,
      O => sysbus_6_OBUF_899
    );
  XLXI_130_XLXI_1_XLXI_19 : BUF
    port map (
      I => XLXI_130_XLXI_1_o1,
      O => sysbus_1_OBUF_904
    );
  XLXI_130_XLXI_1_XLXI_23 : BUF
    port map (
      I => XLXI_130_XLXI_1_o5,
      O => sysbus_5_OBUF_900
    );
  XLXI_130_XLXI_1_XLXI_22 : BUF
    port map (
      I => XLXI_130_XLXI_1_o4,
      O => sysbus_4_OBUF_901
    );
  XLXI_130_XLXI_1_XLXI_18 : BUF
    port map (
      I => XLXI_130_XLXI_1_o0,
      O => sysbus_0_OBUF_905
    );
  XLXI_130_XLXI_2_XLXI_5 : INV
    port map (
      I => XLXI_130_i(0),
      O => XLXI_130_XLXI_2_XLXN_1
    );
  XLXI_130_XLXI_2_XLXI_9 : INV
    port map (
      I => XLXI_130_i(4),
      O => XLXI_130_XLXI_2_XLXN_5
    );
  XLXI_130_XLXI_2_XLXI_11 : INV
    port map (
      I => XLXI_130_i(6),
      O => XLXI_130_XLXI_2_XLXN_7
    );
  XLXI_130_XLXI_2_XLXI_7 : INV
    port map (
      I => XLXI_130_i(2),
      O => XLXI_130_XLXI_2_XLXN_3
    );
  XLXI_130_XLXI_2_XLXI_12 : INV
    port map (
      I => XLXI_130_i(7),
      O => XLXI_130_XLXI_2_XLXN_8
    );
  XLXI_130_XLXI_2_XLXI_10 : INV
    port map (
      I => XLXI_130_i(5),
      O => XLXI_130_XLXI_2_XLXN_6
    );
  XLXI_130_XLXI_2_XLXI_3 : OR4
    port map (
      I0 => XLXI_130_i(4),
      I1 => XLXI_130_i(5),
      I2 => XLXI_130_i(6),
      I3 => XLXI_130_i(7),
      O => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_2_XLXI_8 : INV
    port map (
      I => XLXI_130_i(3),
      O => XLXI_130_XLXI_2_XLXN_4
    );
  XLXI_130_XLXI_2_XLXI_2 : OR4
    port map (
      I0 => XLXI_130_i(2),
      I1 => XLXI_130_i(3),
      I2 => XLXI_130_i(6),
      I3 => XLXI_130_i(7),
      O => XLXI_130_enc_o(1)
    );
  XLXI_130_XLXI_2_XLXI_6 : INV
    port map (
      I => XLXI_130_i(1),
      O => XLXI_130_XLXI_2_XLXN_2
    );
  XLXI_130_XLXI_2_XLXI_1 : OR4
    port map (
      I0 => XLXI_130_i(1),
      I1 => XLXI_130_i(3),
      I2 => XLXI_130_i(5),
      I3 => XLXI_130_i(7),
      O => XLXI_130_enc_o(0)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_18 : BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o0,
      O => alu_x(0)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_22 : BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o4,
      O => alu_x(4)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_23 : BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o5,
      O => alu_x(5)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_19 : BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o1,
      O => alu_x(1)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_24 : BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o6,
      O => alu_x(6)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_20 : BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o2,
      O => alu_x(2)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_26 : BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o7,
      O => alu_x(7)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_21 : BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o3,
      O => alu_x(3)
    );
  alu_inst_XLXI_138_XLXI_9 : BUF
    port map (
      I => alu_op(0),
      O => alu_inst_XLXI_138_a(0)
    );
  alu_inst_XLXI_138_XLXI_10 : BUF
    port map (
      I => alu_op(1),
      O => alu_inst_XLXI_138_a(1)
    );
  alu_inst_XLXI_138_XLXI_11 : BUF
    port map (
      I => alu_op(2),
      O => alu_inst_XLXI_138_a(2)
    );
  alu_inst_XLXI_45 : AND2
    port map (
      I0 => alu_inst_XLXN_93,
      I1 => alu_inst_XLXN_105,
      O => alu_inst_XLXN_202
    );
  alu_inst_XLXI_99 : AND2
    port map (
      I0 => alu_inst_XLXN_191,
      I1 => alu_inst_XLXN_192,
      O => alu_inst_XLXN_201
    );
  alu_inst_XLXI_101 : OR3
    port map (
      I0 => alu_inst_XLXN_201,
      I1 => alu_inst_XLXN_202,
      I2 => alu_inst_XLXN_199,
      O => alu_C_out
    );
  alu_inst_XLXI_127 : OR2
    port map (
      I0 => sysbus_7_OBUF_898,
      I1 => pto(7),
      O => alu_inst_or_o(7)
    );
  alu_inst_XLXI_114 : AND2
    port map (
      I0 => sysbus_7_OBUF_898,
      I1 => pto(7),
      O => alu_inst_and_o(7)
    );
  alu_inst_XLXI_96 : BUF
    port map (
      I => sysbus_7_OBUF_898,
      O => alu_inst_rsh_o(6)
    );
  alu_inst_XLXI_47 : BUF
    port map (
      I => sysbus_7_OBUF_898,
      O => alu_inst_XLXN_93
    );
  alu_inst_XLXI_128 : OR2
    port map (
      I0 => sysbus_6_OBUF_899,
      I1 => pto(6),
      O => alu_inst_or_o(6)
    );
  alu_inst_XLXI_115 : AND2
    port map (
      I0 => sysbus_6_OBUF_899,
      I1 => pto(6),
      O => alu_inst_and_o(6)
    );
  alu_inst_XLXI_95 : BUF
    port map (
      I => sysbus_6_OBUF_899,
      O => alu_inst_rsh_o(5)
    );
  alu_inst_XLXI_19 : BUF
    port map (
      I => sysbus_6_OBUF_899,
      O => alu_inst_lsh_o(7)
    );
  alu_inst_XLXI_129 : OR2
    port map (
      I0 => sysbus_5_OBUF_900,
      I1 => pto(5),
      O => alu_inst_or_o(5)
    );
  alu_inst_XLXI_116 : AND2
    port map (
      I0 => sysbus_5_OBUF_900,
      I1 => pto(5),
      O => alu_inst_and_o(5)
    );
  alu_inst_XLXI_94 : BUF
    port map (
      I => sysbus_5_OBUF_900,
      O => alu_inst_rsh_o(4)
    );
  alu_inst_XLXI_18 : BUF
    port map (
      I => sysbus_5_OBUF_900,
      O => alu_inst_lsh_o(6)
    );
  alu_inst_XLXI_130 : OR2
    port map (
      I0 => sysbus_4_OBUF_901,
      I1 => pto(4),
      O => alu_inst_or_o(4)
    );
  alu_inst_XLXI_117 : AND2
    port map (
      I0 => sysbus_4_OBUF_901,
      I1 => pto(4),
      O => alu_inst_and_o(4)
    );
  alu_inst_XLXI_93 : BUF
    port map (
      I => sysbus_4_OBUF_901,
      O => alu_inst_rsh_o(3)
    );
  alu_inst_XLXI_17 : BUF
    port map (
      I => sysbus_4_OBUF_901,
      O => alu_inst_lsh_o(5)
    );
  alu_inst_XLXI_131 : OR2
    port map (
      I0 => sysbus_3_OBUF_902,
      I1 => pto(3),
      O => alu_inst_or_o(3)
    );
  alu_inst_XLXI_118 : AND2
    port map (
      I0 => sysbus_3_OBUF_902,
      I1 => pto(3),
      O => alu_inst_and_o(3)
    );
  alu_inst_XLXI_92 : BUF
    port map (
      I => sysbus_3_OBUF_902,
      O => alu_inst_rsh_o(2)
    );
  alu_inst_XLXI_16 : BUF
    port map (
      I => sysbus_3_OBUF_902,
      O => alu_inst_lsh_o(4)
    );
  alu_inst_XLXI_132 : OR2
    port map (
      I0 => sysbus_2_OBUF_903,
      I1 => pto(2),
      O => alu_inst_or_o(2)
    );
  alu_inst_XLXI_119 : AND2
    port map (
      I0 => sysbus_2_OBUF_903,
      I1 => pto(2),
      O => alu_inst_and_o(2)
    );
  alu_inst_XLXI_91 : BUF
    port map (
      I => sysbus_2_OBUF_903,
      O => alu_inst_rsh_o(1)
    );
  alu_inst_XLXI_15 : BUF
    port map (
      I => sysbus_2_OBUF_903,
      O => alu_inst_lsh_o(3)
    );
  alu_inst_XLXI_133 : OR2
    port map (
      I0 => sysbus_1_OBUF_904,
      I1 => pto(1),
      O => alu_inst_or_o(1)
    );
  alu_inst_XLXI_120 : AND2
    port map (
      I0 => sysbus_1_OBUF_904,
      I1 => pto(1),
      O => alu_inst_and_o(1)
    );
  alu_inst_XLXI_90 : BUF
    port map (
      I => sysbus_1_OBUF_904,
      O => alu_inst_rsh_o(0)
    );
  alu_inst_XLXI_14 : BUF
    port map (
      I => sysbus_1_OBUF_904,
      O => alu_inst_lsh_o(2)
    );
  alu_inst_XLXI_134 : OR2
    port map (
      I0 => sysbus_0_OBUF_905,
      I1 => pto(0),
      O => alu_inst_or_o(0)
    );
  alu_inst_XLXI_121 : AND2
    port map (
      I0 => sysbus_0_OBUF_905,
      I1 => pto(0),
      O => alu_inst_and_o(0)
    );
  alu_inst_XLXI_89 : BUF
    port map (
      I => sysbus_0_OBUF_905,
      O => alu_inst_XLXN_191
    );
  alu_inst_XLXI_13 : BUF
    port map (
      I => sysbus_0_OBUF_905,
      O => alu_inst_lsh_o(1)
    );
  alu_inst_XLXI_44 : AND2
    port map (
      I0 => alu_inst_XLXN_91,
      I1 => alu_inst_XLXN_8,
      O => alu_inst_XLXN_199
    );
  alu_inst_XLXI_98 : BUF
    port map (
      I => alu_C_in,
      O => alu_inst_rsh_o(7)
    );
  alu_inst_XLXI_12 : BUF
    port map (
      I => alu_C_in,
      O => alu_inst_lsh_o(0)
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_1 : XNOR2
    port map (
      I0 => pto(7),
      I1 => sysbus_7_OBUF_898,
      O => alu_inst_XLXI_135_XLXI_2_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_2_XLXN_9,
      I1 => sysbus_7_OBUF_898,
      O => alu_inst_XLXI_135_XLXI_2_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_5 : INV
    port map (
      I => pto(7),
      O => alu_inst_XLXI_135_XLXI_2_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_2 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_2_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_42,
      O => alu_eq
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_3 : OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_2_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_43,
      O => alu_gt
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_6 : INV
    port map (
      I => alu_inst_XLXI_135_XLXI_2_XLXN_3,
      O => alu_inst_xor_o(7)
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_1 : XNOR2
    port map (
      I0 => pto(6),
      I1 => sysbus_6_OBUF_899,
      O => alu_inst_XLXI_135_XLXI_3_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_3_XLXN_9,
      I1 => sysbus_6_OBUF_899,
      O => alu_inst_XLXI_135_XLXI_3_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_5 : INV
    port map (
      I => pto(6),
      O => alu_inst_XLXI_135_XLXI_3_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_2 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_3_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_44,
      O => alu_inst_XLXI_135_XLXN_42
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_3 : OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_3_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_45,
      O => alu_inst_XLXI_135_XLXN_43
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_6 : INV
    port map (
      I => alu_inst_XLXI_135_XLXI_3_XLXN_3,
      O => alu_inst_xor_o(6)
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_1 : XNOR2
    port map (
      I0 => pto(5),
      I1 => sysbus_5_OBUF_900,
      O => alu_inst_XLXI_135_XLXI_4_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_4_XLXN_9,
      I1 => sysbus_5_OBUF_900,
      O => alu_inst_XLXI_135_XLXI_4_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_5 : INV
    port map (
      I => pto(5),
      O => alu_inst_XLXI_135_XLXI_4_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_2 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_4_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_46,
      O => alu_inst_XLXI_135_XLXN_44
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_3 : OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_4_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_47,
      O => alu_inst_XLXI_135_XLXN_45
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_6 : INV
    port map (
      I => alu_inst_XLXI_135_XLXI_4_XLXN_3,
      O => alu_inst_xor_o(5)
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_1 : XNOR2
    port map (
      I0 => pto(4),
      I1 => sysbus_4_OBUF_901,
      O => alu_inst_XLXI_135_XLXI_5_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_5_XLXN_9,
      I1 => sysbus_4_OBUF_901,
      O => alu_inst_XLXI_135_XLXI_5_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_5 : INV
    port map (
      I => pto(4),
      O => alu_inst_XLXI_135_XLXI_5_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_2 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_5_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_52,
      O => alu_inst_XLXI_135_XLXN_46
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_3 : OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_5_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_53,
      O => alu_inst_XLXI_135_XLXN_47
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_6 : INV
    port map (
      I => alu_inst_XLXI_135_XLXI_5_XLXN_3,
      O => alu_inst_xor_o(4)
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_1 : XNOR2
    port map (
      I0 => pto(3),
      I1 => sysbus_3_OBUF_902,
      O => alu_inst_XLXI_135_XLXI_6_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_6_XLXN_9,
      I1 => sysbus_3_OBUF_902,
      O => alu_inst_XLXI_135_XLXI_6_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_5 : INV
    port map (
      I => pto(3),
      O => alu_inst_XLXI_135_XLXI_6_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_2 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_6_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_48,
      O => alu_inst_XLXI_135_XLXN_52
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_3 : OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_6_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_51,
      O => alu_inst_XLXI_135_XLXN_53
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_6 : INV
    port map (
      I => alu_inst_XLXI_135_XLXI_6_XLXN_3,
      O => alu_inst_xor_o(3)
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_1 : XNOR2
    port map (
      I0 => pto(2),
      I1 => sysbus_2_OBUF_903,
      O => alu_inst_XLXI_135_XLXI_7_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_7_XLXN_9,
      I1 => sysbus_2_OBUF_903,
      O => alu_inst_XLXI_135_XLXI_7_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_5 : INV
    port map (
      I => pto(2),
      O => alu_inst_XLXI_135_XLXI_7_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_2 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_7_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_54,
      O => alu_inst_XLXI_135_XLXN_48
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_3 : OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_7_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_55,
      O => alu_inst_XLXI_135_XLXN_51
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_6 : INV
    port map (
      I => alu_inst_XLXI_135_XLXI_7_XLXN_3,
      O => alu_inst_xor_o(2)
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_1 : XNOR2
    port map (
      I0 => pto(1),
      I1 => sysbus_1_OBUF_904,
      O => alu_inst_XLXI_135_XLXI_8_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_8_XLXN_9,
      I1 => sysbus_1_OBUF_904,
      O => alu_inst_XLXI_135_XLXI_8_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_5 : INV
    port map (
      I => pto(1),
      O => alu_inst_XLXI_135_XLXI_8_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_2 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_8_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_56,
      O => alu_inst_XLXI_135_XLXN_54
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_3 : OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_8_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_57,
      O => alu_inst_XLXI_135_XLXN_55
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_6 : INV
    port map (
      I => alu_inst_XLXI_135_XLXI_8_XLXN_3,
      O => alu_inst_xor_o(1)
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_1 : XNOR2
    port map (
      I0 => pto(0),
      I1 => sysbus_0_OBUF_905,
      O => alu_inst_XLXI_135_XLXI_9_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_9_XLXN_9,
      I1 => sysbus_0_OBUF_905,
      O => alu_inst_XLXI_135_XLXI_9_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_5 : INV
    port map (
      I => pto(0),
      O => alu_inst_XLXI_135_XLXI_9_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_2 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_9_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_58,
      O => alu_inst_XLXI_135_XLXN_56
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_3 : OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_9_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_59,
      O => alu_inst_XLXI_135_XLXN_57
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_6 : INV
    port map (
      I => alu_inst_XLXI_135_XLXI_9_XLXN_3,
      O => alu_inst_xor_o(0)
    );
  alu_inst_XLXI_135_XLXI_12 : PULLDOWN
    port map (
      O => alu_inst_XLXI_135_XLXN_59
    );
  alu_inst_XLXI_135_XLXI_11 : PULLUP
    port map (
      O => alu_inst_XLXI_135_XLXN_58
    );
  clk_IBUF : IBUF
    port map (
      I => clk,
      O => clk_IBUF_1229
    );
  rst_in_IBUF : IBUF
    port map (
      I => rst_in,
      O => rst_in_IBUF_781
    );
  monitor_7_OBUF : OBUF
    port map (
      I => monitor_7_OBUF_915,
      O => monitor(7)
    );
  monitor_6_OBUF : OBUF
    port map (
      I => monitor_6_OBUF_916,
      O => monitor(6)
    );
  monitor_5_OBUF : OBUF
    port map (
      I => monitor_5_OBUF_917,
      O => monitor(5)
    );
  monitor_4_OBUF : OBUF
    port map (
      I => monitor_4_OBUF_918,
      O => monitor(4)
    );
  monitor_3_OBUF : OBUF
    port map (
      I => monitor_3_OBUF_919,
      O => monitor(3)
    );
  monitor_2_OBUF : OBUF
    port map (
      I => monitor_2_OBUF_920,
      O => monitor(2)
    );
  monitor_1_OBUF : OBUF
    port map (
      I => monitor_1_OBUF_921,
      O => monitor(1)
    );
  monitor_0_OBUF : OBUF
    port map (
      I => monitor_0_OBUF_922,
      O => monitor(0)
    );
  sysbus_7_OBUF : OBUF
    port map (
      I => sysbus_7_OBUF_898,
      O => sysbus(7)
    );
  sysbus_6_OBUF : OBUF
    port map (
      I => sysbus_6_OBUF_899,
      O => sysbus(6)
    );
  sysbus_5_OBUF : OBUF
    port map (
      I => sysbus_5_OBUF_900,
      O => sysbus(5)
    );
  sysbus_4_OBUF : OBUF
    port map (
      I => sysbus_4_OBUF_901,
      O => sysbus(4)
    );
  sysbus_3_OBUF : OBUF
    port map (
      I => sysbus_3_OBUF_902,
      O => sysbus(3)
    );
  sysbus_2_OBUF : OBUF
    port map (
      I => sysbus_2_OBUF_903,
      O => sysbus(2)
    );
  sysbus_1_OBUF : OBUF
    port map (
      I => sysbus_1_OBUF_904,
      O => sysbus(1)
    );
  sysbus_0_OBUF : OBUF
    port map (
      I => sysbus_0_OBUF_905,
      O => sysbus(0)
    );
  clk_one_hz_OBUF : OBUF
    port map (
      I => clk_one_hz_OBUF_788,
      O => clk_one_hz
    );
  iar_w_OBUF : OBUF
    port map (
      I => iar_w_OBUF_914,
      O => iar_w
    );
  clk_IBUF_BUFG : BUFG
    port map (
      O => clk_IBUF_BUFG_780,
      I => clk_IBUF_1229
    );
  XLXI_137_Mcount_COUNT_lut_0_INV_0 : INV
    port map (
      I => XLXI_137_COUNT(0),
      O => XLXI_137_Mcount_COUNT_lut(0)
    );
  XLXI_137_Mcount_COUNT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => div_fifthy(2),
      O => XLXI_137_Mcount_COUNT_cy_2_rt_18
    );
  XLXI_137_Mcount_COUNT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_137_COUNT(1),
      O => XLXI_137_Mcount_COUNT_cy_1_rt_17
    );
  XLXI_137_Mcount_COUNT_xor_3_Q : XORCY
    port map (
      CI => XLXI_137_Mcount_COUNT_cy(2),
      LI => div_fifthy(3),
      O => XLXI_137_Result(3)
    );
  XLXI_137_Mcount_COUNT_xor_2_Q : XORCY
    port map (
      CI => XLXI_137_Mcount_COUNT_cy(1),
      LI => XLXI_137_Mcount_COUNT_cy_2_rt_18,
      O => XLXI_137_Result(2)
    );
  XLXI_137_Mcount_COUNT_cy_2_Q : MUXCY
    port map (
      CI => XLXI_137_Mcount_COUNT_cy(1),
      DI => XLXI_137_N1,
      S => XLXI_137_Mcount_COUNT_cy_2_rt_18,
      O => XLXI_137_Mcount_COUNT_cy(2)
    );
  XLXI_137_Mcount_COUNT_xor_1_Q : XORCY
    port map (
      CI => XLXI_137_Mcount_COUNT_cy(0),
      LI => XLXI_137_Mcount_COUNT_cy_1_rt_17,
      O => XLXI_137_Result(1)
    );
  XLXI_137_Mcount_COUNT_cy_1_Q : MUXCY
    port map (
      CI => XLXI_137_Mcount_COUNT_cy(0),
      DI => XLXI_137_N1,
      S => XLXI_137_Mcount_COUNT_cy_1_rt_17,
      O => XLXI_137_Mcount_COUNT_cy(1)
    );
  XLXI_137_Mcount_COUNT_xor_0_Q : XORCY
    port map (
      CI => XLXI_137_N1,
      LI => XLXI_137_Mcount_COUNT_lut(0),
      O => XLXI_137_Result(0)
    );
  XLXI_137_Mcount_COUNT_cy_0_Q : MUXCY
    port map (
      CI => XLXI_137_N1,
      DI => XLXI_137_N0,
      S => XLXI_137_Mcount_COUNT_lut(0),
      O => XLXI_137_Mcount_COUNT_cy(0)
    );
  XLXI_137_COUNT_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_270,
      CE => XLXI_122_XLXN_2,
      CLR => XLXN_250,
      D => XLXI_137_Result(3),
      Q => div_fifthy(3)
    );
  XLXI_137_COUNT_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_270,
      CE => XLXI_122_XLXN_2,
      CLR => XLXN_250,
      D => XLXI_137_Result(2),
      Q => div_fifthy(2)
    );
  XLXI_137_COUNT_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_270,
      CE => XLXI_122_XLXN_2,
      CLR => XLXN_250,
      D => XLXI_137_Result(1),
      Q => XLXI_137_COUNT(1)
    );
  XLXI_137_COUNT_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXN_270,
      CE => XLXI_122_XLXN_2,
      CLR => XLXN_250,
      D => XLXI_137_Result(0),
      Q => XLXI_137_COUNT(0)
    );
  XLXI_137_XST_GND : GND
    port map (
      G => XLXI_137_N1
    );
  XLXI_137_XST_VCC : VCC
    port map (
      P => XLXI_137_N0
    );
  XLXI_132_Mcount_COUNT_lut_0_INV_0 : INV
    port map (
      I => XLXI_132_COUNT(0),
      O => XLXI_132_Mcount_COUNT_lut(0)
    );
  XLXI_132_Mcount_COUNT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_132_COUNT(4),
      O => XLXI_132_Mcount_COUNT_cy_4_rt_45
    );
  XLXI_132_Mcount_COUNT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_132_COUNT(3),
      O => XLXI_132_Mcount_COUNT_cy_3_rt_44
    );
  XLXI_132_Mcount_COUNT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_132_COUNT(2),
      O => XLXI_132_Mcount_COUNT_cy_2_rt_43
    );
  XLXI_132_Mcount_COUNT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_132_COUNT(1),
      O => XLXI_132_Mcount_COUNT_cy_1_rt_42
    );
  XLXI_132_Mcount_COUNT_xor_5_Q : XORCY
    port map (
      CI => XLXI_132_Mcount_COUNT_cy(4),
      LI => clk_cnt(5),
      O => XLXI_132_Result(5)
    );
  XLXI_132_Mcount_COUNT_xor_4_Q : XORCY
    port map (
      CI => XLXI_132_Mcount_COUNT_cy(3),
      LI => XLXI_132_Mcount_COUNT_cy_4_rt_45,
      O => XLXI_132_Result(4)
    );
  XLXI_132_Mcount_COUNT_cy_4_Q : MUXCY
    port map (
      CI => XLXI_132_Mcount_COUNT_cy(3),
      DI => XLXI_132_N1,
      S => XLXI_132_Mcount_COUNT_cy_4_rt_45,
      O => XLXI_132_Mcount_COUNT_cy(4)
    );
  XLXI_132_Mcount_COUNT_xor_3_Q : XORCY
    port map (
      CI => XLXI_132_Mcount_COUNT_cy(2),
      LI => XLXI_132_Mcount_COUNT_cy_3_rt_44,
      O => XLXI_132_Result(3)
    );
  XLXI_132_Mcount_COUNT_cy_3_Q : MUXCY
    port map (
      CI => XLXI_132_Mcount_COUNT_cy(2),
      DI => XLXI_132_N1,
      S => XLXI_132_Mcount_COUNT_cy_3_rt_44,
      O => XLXI_132_Mcount_COUNT_cy(3)
    );
  XLXI_132_Mcount_COUNT_xor_2_Q : XORCY
    port map (
      CI => XLXI_132_Mcount_COUNT_cy(1),
      LI => XLXI_132_Mcount_COUNT_cy_2_rt_43,
      O => XLXI_132_Result(2)
    );
  XLXI_132_Mcount_COUNT_cy_2_Q : MUXCY
    port map (
      CI => XLXI_132_Mcount_COUNT_cy(1),
      DI => XLXI_132_N1,
      S => XLXI_132_Mcount_COUNT_cy_2_rt_43,
      O => XLXI_132_Mcount_COUNT_cy(2)
    );
  XLXI_132_Mcount_COUNT_xor_1_Q : XORCY
    port map (
      CI => XLXI_132_Mcount_COUNT_cy(0),
      LI => XLXI_132_Mcount_COUNT_cy_1_rt_42,
      O => XLXI_132_Result(1)
    );
  XLXI_132_Mcount_COUNT_cy_1_Q : MUXCY
    port map (
      CI => XLXI_132_Mcount_COUNT_cy(0),
      DI => XLXI_132_N1,
      S => XLXI_132_Mcount_COUNT_cy_1_rt_42,
      O => XLXI_132_Mcount_COUNT_cy(1)
    );
  XLXI_132_Mcount_COUNT_xor_0_Q : XORCY
    port map (
      CI => XLXI_132_N1,
      LI => XLXI_132_Mcount_COUNT_lut(0),
      O => XLXI_132_Result(0)
    );
  XLXI_132_Mcount_COUNT_cy_0_Q : MUXCY
    port map (
      CI => XLXI_132_N1,
      DI => XLXI_132_N0,
      S => XLXI_132_Mcount_COUNT_lut(0),
      O => XLXI_132_Mcount_COUNT_cy(0)
    );
  XLXI_132_COUNT_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXN_235,
      CLR => clck_gen_clr,
      D => XLXI_132_Result(5),
      Q => clk_cnt(5)
    );
  XLXI_132_COUNT_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXN_235,
      CLR => clck_gen_clr,
      D => XLXI_132_Result(4),
      Q => XLXI_132_COUNT(4)
    );
  XLXI_132_COUNT_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXN_235,
      CLR => clck_gen_clr,
      D => XLXI_132_Result(3),
      Q => XLXI_132_COUNT(3)
    );
  XLXI_132_COUNT_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXN_235,
      CLR => clck_gen_clr,
      D => XLXI_132_Result(2),
      Q => XLXI_132_COUNT(2)
    );
  XLXI_132_COUNT_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXN_235,
      CLR => clck_gen_clr,
      D => XLXI_132_Result(1),
      Q => XLXI_132_COUNT(1)
    );
  XLXI_132_COUNT_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXN_235,
      CLR => clck_gen_clr,
      D => XLXI_132_Result(0),
      Q => XLXI_132_COUNT(0)
    );
  XLXI_132_XST_GND : GND
    port map (
      G => XLXI_132_N1
    );
  XLXI_132_XST_VCC : VCC
    port map (
      P => XLXI_132_N0
    );
  XLXI_131_Mcount_COUNT_lut_0_INV_0 : INV
    port map (
      I => XLXI_131_COUNT(0),
      O => XLXI_131_Mcount_COUNT_lut(0)
    );
  XLXI_131_Mcount_COUNT_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(15),
      O => XLXI_131_Mcount_COUNT_xor_15_rt_116
    );
  XLXI_131_Mcount_COUNT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(14),
      O => XLXI_131_Mcount_COUNT_cy_14_rt_115
    );
  XLXI_131_Mcount_COUNT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(13),
      O => XLXI_131_Mcount_COUNT_cy_13_rt_114
    );
  XLXI_131_Mcount_COUNT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(12),
      O => XLXI_131_Mcount_COUNT_cy_12_rt_113
    );
  XLXI_131_Mcount_COUNT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(11),
      O => XLXI_131_Mcount_COUNT_cy_11_rt_112
    );
  XLXI_131_Mcount_COUNT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(10),
      O => XLXI_131_Mcount_COUNT_cy_10_rt_111
    );
  XLXI_131_Mcount_COUNT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(9),
      O => XLXI_131_Mcount_COUNT_cy_9_rt_110
    );
  XLXI_131_Mcount_COUNT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(8),
      O => XLXI_131_Mcount_COUNT_cy_8_rt_109
    );
  XLXI_131_Mcount_COUNT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(7),
      O => XLXI_131_Mcount_COUNT_cy_7_rt_108
    );
  XLXI_131_Mcount_COUNT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(6),
      O => XLXI_131_Mcount_COUNT_cy_6_rt_107
    );
  XLXI_131_Mcount_COUNT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(5),
      O => XLXI_131_Mcount_COUNT_cy_5_rt_106
    );
  XLXI_131_Mcount_COUNT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(4),
      O => XLXI_131_Mcount_COUNT_cy_4_rt_105
    );
  XLXI_131_Mcount_COUNT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(3),
      O => XLXI_131_Mcount_COUNT_cy_3_rt_104
    );
  XLXI_131_Mcount_COUNT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(2),
      O => XLXI_131_Mcount_COUNT_cy_2_rt_103
    );
  XLXI_131_Mcount_COUNT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_131_COUNT(1),
      O => XLXI_131_Mcount_COUNT_cy_1_rt_102
    );
  XLXI_131_TC_15_3 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => XLXI_131_COUNT(2),
      I1 => XLXI_131_COUNT(3),
      I2 => XLXI_131_COUNT(0),
      I3 => XLXI_131_COUNT(1),
      I4 => XLXI_131_TC_15_1_101,
      I5 => XLXI_131_TC(15),
      O => XLXN_235
    );
  XLXI_131_TC_15_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => XLXI_131_COUNT(5),
      I1 => XLXI_131_COUNT(4),
      I2 => XLXI_131_COUNT(7),
      I3 => XLXI_131_COUNT(6),
      I4 => XLXI_131_COUNT(9),
      I5 => XLXI_131_COUNT(8),
      O => XLXI_131_TC_15_1_101
    );
  XLXI_131_TC_15_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => XLXI_131_COUNT(11),
      I1 => XLXI_131_COUNT(10),
      I2 => XLXI_131_COUNT(13),
      I3 => XLXI_131_COUNT(12),
      I4 => XLXI_131_COUNT(15),
      I5 => XLXI_131_COUNT(14),
      O => XLXI_131_TC(15)
    );
  XLXI_131_Mcount_COUNT_xor_15_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(14),
      LI => XLXI_131_Mcount_COUNT_xor_15_rt_116,
      O => XLXI_131_Result(15)
    );
  XLXI_131_Mcount_COUNT_xor_14_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(13),
      LI => XLXI_131_Mcount_COUNT_cy_14_rt_115,
      O => XLXI_131_Result(14)
    );
  XLXI_131_Mcount_COUNT_cy_14_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(13),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_14_rt_115,
      O => XLXI_131_Mcount_COUNT_cy(14)
    );
  XLXI_131_Mcount_COUNT_xor_13_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(12),
      LI => XLXI_131_Mcount_COUNT_cy_13_rt_114,
      O => XLXI_131_Result(13)
    );
  XLXI_131_Mcount_COUNT_cy_13_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(12),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_13_rt_114,
      O => XLXI_131_Mcount_COUNT_cy(13)
    );
  XLXI_131_Mcount_COUNT_xor_12_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(11),
      LI => XLXI_131_Mcount_COUNT_cy_12_rt_113,
      O => XLXI_131_Result(12)
    );
  XLXI_131_Mcount_COUNT_cy_12_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(11),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_12_rt_113,
      O => XLXI_131_Mcount_COUNT_cy(12)
    );
  XLXI_131_Mcount_COUNT_xor_11_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(10),
      LI => XLXI_131_Mcount_COUNT_cy_11_rt_112,
      O => XLXI_131_Result(11)
    );
  XLXI_131_Mcount_COUNT_cy_11_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(10),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_11_rt_112,
      O => XLXI_131_Mcount_COUNT_cy(11)
    );
  XLXI_131_Mcount_COUNT_xor_10_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(9),
      LI => XLXI_131_Mcount_COUNT_cy_10_rt_111,
      O => XLXI_131_Result(10)
    );
  XLXI_131_Mcount_COUNT_cy_10_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(9),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_10_rt_111,
      O => XLXI_131_Mcount_COUNT_cy(10)
    );
  XLXI_131_Mcount_COUNT_xor_9_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(8),
      LI => XLXI_131_Mcount_COUNT_cy_9_rt_110,
      O => XLXI_131_Result(9)
    );
  XLXI_131_Mcount_COUNT_cy_9_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(8),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_9_rt_110,
      O => XLXI_131_Mcount_COUNT_cy(9)
    );
  XLXI_131_Mcount_COUNT_xor_8_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(7),
      LI => XLXI_131_Mcount_COUNT_cy_8_rt_109,
      O => XLXI_131_Result(8)
    );
  XLXI_131_Mcount_COUNT_cy_8_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(7),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_8_rt_109,
      O => XLXI_131_Mcount_COUNT_cy(8)
    );
  XLXI_131_Mcount_COUNT_xor_7_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(6),
      LI => XLXI_131_Mcount_COUNT_cy_7_rt_108,
      O => XLXI_131_Result(7)
    );
  XLXI_131_Mcount_COUNT_cy_7_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(6),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_7_rt_108,
      O => XLXI_131_Mcount_COUNT_cy(7)
    );
  XLXI_131_Mcount_COUNT_xor_6_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(5),
      LI => XLXI_131_Mcount_COUNT_cy_6_rt_107,
      O => XLXI_131_Result(6)
    );
  XLXI_131_Mcount_COUNT_cy_6_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(5),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_6_rt_107,
      O => XLXI_131_Mcount_COUNT_cy(6)
    );
  XLXI_131_Mcount_COUNT_xor_5_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(4),
      LI => XLXI_131_Mcount_COUNT_cy_5_rt_106,
      O => XLXI_131_Result(5)
    );
  XLXI_131_Mcount_COUNT_cy_5_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(4),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_5_rt_106,
      O => XLXI_131_Mcount_COUNT_cy(5)
    );
  XLXI_131_Mcount_COUNT_xor_4_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(3),
      LI => XLXI_131_Mcount_COUNT_cy_4_rt_105,
      O => XLXI_131_Result(4)
    );
  XLXI_131_Mcount_COUNT_cy_4_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(3),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_4_rt_105,
      O => XLXI_131_Mcount_COUNT_cy(4)
    );
  XLXI_131_Mcount_COUNT_xor_3_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(2),
      LI => XLXI_131_Mcount_COUNT_cy_3_rt_104,
      O => XLXI_131_Result(3)
    );
  XLXI_131_Mcount_COUNT_cy_3_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(2),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_3_rt_104,
      O => XLXI_131_Mcount_COUNT_cy(3)
    );
  XLXI_131_Mcount_COUNT_xor_2_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(1),
      LI => XLXI_131_Mcount_COUNT_cy_2_rt_103,
      O => XLXI_131_Result(2)
    );
  XLXI_131_Mcount_COUNT_cy_2_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(1),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_2_rt_103,
      O => XLXI_131_Mcount_COUNT_cy(2)
    );
  XLXI_131_Mcount_COUNT_xor_1_Q : XORCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(0),
      LI => XLXI_131_Mcount_COUNT_cy_1_rt_102,
      O => XLXI_131_Result(1)
    );
  XLXI_131_Mcount_COUNT_cy_1_Q : MUXCY
    port map (
      CI => XLXI_131_Mcount_COUNT_cy(0),
      DI => XLXI_131_N1,
      S => XLXI_131_Mcount_COUNT_cy_1_rt_102,
      O => XLXI_131_Mcount_COUNT_cy(1)
    );
  XLXI_131_Mcount_COUNT_xor_0_Q : XORCY
    port map (
      CI => XLXI_131_N1,
      LI => XLXI_131_Mcount_COUNT_lut(0),
      O => XLXI_131_Result(0)
    );
  XLXI_131_Mcount_COUNT_cy_0_Q : MUXCY
    port map (
      CI => XLXI_131_N1,
      DI => XLXI_131_N0,
      S => XLXI_131_Mcount_COUNT_lut(0),
      O => XLXI_131_Mcount_COUNT_cy(0)
    );
  XLXI_131_COUNT_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(15),
      Q => XLXI_131_COUNT(15)
    );
  XLXI_131_COUNT_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(14),
      Q => XLXI_131_COUNT(14)
    );
  XLXI_131_COUNT_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(13),
      Q => XLXI_131_COUNT(13)
    );
  XLXI_131_COUNT_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(12),
      Q => XLXI_131_COUNT(12)
    );
  XLXI_131_COUNT_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(11),
      Q => XLXI_131_COUNT(11)
    );
  XLXI_131_COUNT_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(10),
      Q => XLXI_131_COUNT(10)
    );
  XLXI_131_COUNT_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(9),
      Q => XLXI_131_COUNT(9)
    );
  XLXI_131_COUNT_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(8),
      Q => XLXI_131_COUNT(8)
    );
  XLXI_131_COUNT_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(7),
      Q => XLXI_131_COUNT(7)
    );
  XLXI_131_COUNT_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(6),
      Q => XLXI_131_COUNT(6)
    );
  XLXI_131_COUNT_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(5),
      Q => XLXI_131_COUNT(5)
    );
  XLXI_131_COUNT_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(4),
      Q => XLXI_131_COUNT(4)
    );
  XLXI_131_COUNT_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(3),
      Q => XLXI_131_COUNT(3)
    );
  XLXI_131_COUNT_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(2),
      Q => XLXI_131_COUNT(2)
    );
  XLXI_131_COUNT_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(1),
      Q => XLXI_131_COUNT(1)
    );
  XLXI_131_COUNT_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_IBUF_BUFG_780,
      CE => XLXI_122_XLXN_2,
      CLR => clck_gen_clr,
      D => XLXI_131_Result(0),
      Q => XLXI_131_COUNT(0)
    );
  XLXI_131_XST_GND : GND
    port map (
      G => XLXI_131_N1
    );
  XLXI_131_XST_VCC : VCC
    port map (
      P => XLXI_131_N0
    );
  clck_gen_XLXI_4_Mmux_q_tmp_q_tmp_MUX_34_o11 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => clck_gen_XLXN_1,
      I1 => clck_gen_XLXN_1,
      I2 => clkc,
      O => clck_gen_XLXI_4_q_tmp_q_tmp_MUX_34_o
    );
  clck_gen_XLXI_4_n0009_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => clck_gen_XLXN_1,
      I1 => clck_gen_XLXN_1,
      O => clck_gen_XLXI_4_n0009_inv
    );
  clck_gen_XLXI_4_q_tmp : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clck_gen_XLXN_9,
      CE => clck_gen_XLXI_4_n0009_inv,
      CLR => clck_gen_clr,
      D => clck_gen_XLXI_4_q_tmp_q_tmp_MUX_34_o,
      Q => clkc
    );
  XLXI_142_Mmux_q_tmp_q_tmp_MUX_34_o11_INV_0 : INV
    port map (
      I => clk_one_hz_OBUF_788,
      O => XLXI_142_q_tmp_q_tmp_MUX_34_o
    );
  XLXI_142_q_tmp : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => cnt_clk_one_hz,
      CLR => rst,
      D => XLXI_142_q_tmp_q_tmp_MUX_34_o,
      Q => clk_one_hz_OBUF_788
    );
  XLXI_122_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_898,
      G => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_914,
      Q => iar_o(7)
    );
  XLXI_122_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_905,
      G => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_914,
      Q => iar_o(0)
    );
  XLXI_122_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_904,
      G => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_914,
      Q => iar_o(1)
    );
  XLXI_122_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_903,
      G => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_914,
      Q => iar_o(2)
    );
  XLXI_122_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_902,
      G => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_914,
      Q => iar_o(3)
    );
  XLXI_122_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_901,
      G => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_914,
      Q => iar_o(4)
    );
  XLXI_122_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_900,
      G => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_914,
      Q => iar_o(5)
    );
  XLXI_122_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_899,
      G => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_914,
      Q => iar_o(6)
    );
  XLXI_123_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_898,
      G => XLXI_122_XLXN_2,
      GE => ir_w,
      Q => ir_o(7)
    );
  XLXI_123_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_905,
      G => XLXI_122_XLXN_2,
      GE => ir_w,
      Q => ir_o(0)
    );
  XLXI_123_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_904,
      G => XLXI_122_XLXN_2,
      GE => ir_w,
      Q => ir_o(1)
    );
  XLXI_123_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_903,
      G => XLXI_122_XLXN_2,
      GE => ir_w,
      Q => ir_o(2)
    );
  XLXI_123_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_902,
      G => XLXI_122_XLXN_2,
      GE => ir_w,
      Q => ir_o(3)
    );
  XLXI_123_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_901,
      G => XLXI_122_XLXN_2,
      GE => ir_w,
      Q => ir_o(4)
    );
  XLXI_123_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_900,
      G => XLXI_122_XLXN_2,
      GE => ir_w,
      Q => ir_o(5)
    );
  XLXI_123_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_899,
      G => XLXI_122_XLXN_2,
      GE => ir_w,
      Q => ir_o(6)
    );
  XLXI_124_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_898,
      G => XLXI_122_XLXN_2,
      GE => temp_w,
      Q => temp_o(7)
    );
  XLXI_124_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_905,
      G => XLXI_122_XLXN_2,
      GE => temp_w,
      Q => temp_o(0)
    );
  XLXI_124_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_904,
      G => XLXI_122_XLXN_2,
      GE => temp_w,
      Q => temp_o(1)
    );
  XLXI_124_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_903,
      G => XLXI_122_XLXN_2,
      GE => temp_w,
      Q => temp_o(2)
    );
  XLXI_124_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_902,
      G => XLXI_122_XLXN_2,
      GE => temp_w,
      Q => temp_o(3)
    );
  XLXI_124_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_901,
      G => XLXI_122_XLXN_2,
      GE => temp_w,
      Q => temp_o(4)
    );
  XLXI_124_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_900,
      G => XLXI_122_XLXN_2,
      GE => temp_w,
      Q => temp_o(5)
    );
  XLXI_124_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_899,
      G => XLXI_122_XLXN_2,
      GE => temp_w,
      Q => temp_o(6)
    );
  XLXI_125_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => alu_x(7),
      G => XLXI_122_XLXN_2,
      GE => acc_w,
      Q => acc_o(7)
    );
  XLXI_125_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => alu_x(0),
      G => XLXI_122_XLXN_2,
      GE => acc_w,
      Q => acc_o(0)
    );
  XLXI_125_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => alu_x(1),
      G => XLXI_122_XLXN_2,
      GE => acc_w,
      Q => acc_o(1)
    );
  XLXI_125_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => alu_x(2),
      G => XLXI_122_XLXN_2,
      GE => acc_w,
      Q => acc_o(2)
    );
  XLXI_125_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => alu_x(3),
      G => XLXI_122_XLXN_2,
      GE => acc_w,
      Q => acc_o(3)
    );
  XLXI_125_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => alu_x(4),
      G => XLXI_122_XLXN_2,
      GE => acc_w,
      Q => acc_o(4)
    );
  XLXI_125_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => alu_x(5),
      G => XLXI_122_XLXN_2,
      GE => acc_w,
      Q => acc_o(5)
    );
  XLXI_125_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => alu_x(6),
      G => XLXI_122_XLXN_2,
      GE => acc_w,
      Q => acc_o(6)
    );
  XLXI_126_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_898,
      G => XLXI_122_XLXN_2,
      GE => ctl_r0_w,
      Q => r0_o(7)
    );
  XLXI_126_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_905,
      G => XLXI_122_XLXN_2,
      GE => ctl_r0_w,
      Q => r0_o(0)
    );
  XLXI_126_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_904,
      G => XLXI_122_XLXN_2,
      GE => ctl_r0_w,
      Q => r0_o(1)
    );
  XLXI_126_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_903,
      G => XLXI_122_XLXN_2,
      GE => ctl_r0_w,
      Q => r0_o(2)
    );
  XLXI_126_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_902,
      G => XLXI_122_XLXN_2,
      GE => ctl_r0_w,
      Q => r0_o(3)
    );
  XLXI_126_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_901,
      G => XLXI_122_XLXN_2,
      GE => ctl_r0_w,
      Q => r0_o(4)
    );
  XLXI_126_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_900,
      G => XLXI_122_XLXN_2,
      GE => ctl_r0_w,
      Q => r0_o(5)
    );
  XLXI_126_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_899,
      G => XLXI_122_XLXN_2,
      GE => ctl_r0_w,
      Q => r0_o(6)
    );
  XLXI_127_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_898,
      G => XLXI_122_XLXN_2,
      GE => ctl_r1_w,
      Q => r1_o(7)
    );
  XLXI_127_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_905,
      G => XLXI_122_XLXN_2,
      GE => ctl_r1_w,
      Q => r1_o(0)
    );
  XLXI_127_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_904,
      G => XLXI_122_XLXN_2,
      GE => ctl_r1_w,
      Q => r1_o(1)
    );
  XLXI_127_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_903,
      G => XLXI_122_XLXN_2,
      GE => ctl_r1_w,
      Q => r1_o(2)
    );
  XLXI_127_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_902,
      G => XLXI_122_XLXN_2,
      GE => ctl_r1_w,
      Q => r1_o(3)
    );
  XLXI_127_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_901,
      G => XLXI_122_XLXN_2,
      GE => ctl_r1_w,
      Q => r1_o(4)
    );
  XLXI_127_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_900,
      G => XLXI_122_XLXN_2,
      GE => ctl_r1_w,
      Q => r1_o(5)
    );
  XLXI_127_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_899,
      G => XLXI_122_XLXN_2,
      GE => ctl_r1_w,
      Q => r1_o(6)
    );
  XLXI_128_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_898,
      G => XLXI_122_XLXN_2,
      GE => r2_w,
      Q => r2_o(7)
    );
  XLXI_128_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_905,
      G => XLXI_122_XLXN_2,
      GE => r2_w,
      Q => r2_o(0)
    );
  XLXI_128_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_904,
      G => XLXI_122_XLXN_2,
      GE => r2_w,
      Q => r2_o(1)
    );
  XLXI_128_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_903,
      G => XLXI_122_XLXN_2,
      GE => r2_w,
      Q => r2_o(2)
    );
  XLXI_128_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_902,
      G => XLXI_122_XLXN_2,
      GE => r2_w,
      Q => r2_o(3)
    );
  XLXI_128_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_901,
      G => XLXI_122_XLXN_2,
      GE => r2_w,
      Q => r2_o(4)
    );
  XLXI_128_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_900,
      G => XLXI_122_XLXN_2,
      GE => r2_w,
      Q => r2_o(5)
    );
  XLXI_128_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_899,
      G => XLXI_122_XLXN_2,
      GE => r2_w,
      Q => r2_o(6)
    );
  XLXI_129_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_898,
      G => XLXI_122_XLXN_2,
      GE => r3_w,
      Q => r3_o(7)
    );
  XLXI_129_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_905,
      G => XLXI_122_XLXN_2,
      GE => r3_w,
      Q => r3_o(0)
    );
  XLXI_129_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_904,
      G => XLXI_122_XLXN_2,
      GE => r3_w,
      Q => r3_o(1)
    );
  XLXI_129_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_903,
      G => XLXI_122_XLXN_2,
      GE => r3_w,
      Q => r3_o(2)
    );
  XLXI_129_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_902,
      G => XLXI_122_XLXN_2,
      GE => r3_w,
      Q => r3_o(3)
    );
  XLXI_129_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_901,
      G => XLXI_122_XLXN_2,
      GE => r3_w,
      Q => r3_o(4)
    );
  XLXI_129_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_900,
      G => XLXI_122_XLXN_2,
      GE => r3_w,
      Q => r3_o(5)
    );
  XLXI_129_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_899,
      G => XLXI_122_XLXN_2,
      GE => r3_w,
      Q => r3_o(6)
    );
  cpu_ctl_stp_XLXI_24_Mcount_COUNT_xor_0_11_INV_0 : INV
    port map (
      I => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_stp_XLXI_24_Result(0)
    );
  cpu_ctl_stp_XLXI_24_Result_2_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => cpu_ctl_stp_XLXN_20,
      I1 => cpu_ctl_stp_XLXN_18,
      I2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_stp_XLXI_24_Result(2)
    );
  cpu_ctl_stp_XLXI_24_Mcount_COUNT_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => cpu_ctl_stp_XLXN_19,
      I1 => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_stp_XLXI_24_Result(1)
    );
  cpu_ctl_stp_XLXI_24_COUNT_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => cpu_ctl_stp_XLXN_23,
      CE => XLXI_122_XLXN_2,
      CLR => cpu_ctl_stp_XLXN_22,
      D => cpu_ctl_stp_XLXI_24_Result(2),
      Q => cpu_ctl_stp_XLXN_20
    );
  cpu_ctl_stp_XLXI_24_COUNT_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => cpu_ctl_stp_XLXN_23,
      CE => XLXI_122_XLXN_2,
      CLR => cpu_ctl_stp_XLXN_22,
      D => cpu_ctl_stp_XLXI_24_Result(1),
      Q => cpu_ctl_stp_XLXN_19
    );
  cpu_ctl_stp_XLXI_24_COUNT_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => cpu_ctl_stp_XLXN_23,
      CE => XLXI_122_XLXN_2,
      CLR => cpu_ctl_stp_XLXN_22,
      D => cpu_ctl_stp_XLXI_24_Result(0),
      Q => cpu_ctl_stp_XLXN_18
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp41 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => cpu_ctl_stp_XLXN_19,
      I1 => cpu_ctl_stp_XLXN_18,
      I2 => cpu_ctl_stp_XLXN_20,
      O => cpu_ctl_s3_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp31 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => cpu_ctl_stp_XLXN_19,
      I1 => cpu_ctl_stp_XLXN_20,
      I2 => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_s2_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp71 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => cpu_ctl_stp_XLXN_19,
      I1 => cpu_ctl_stp_XLXN_20,
      I2 => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_stp_XLXN_22
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp21 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => cpu_ctl_stp_XLXN_18,
      I1 => cpu_ctl_stp_XLXN_20,
      I2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s1_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp61 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => cpu_ctl_stp_XLXN_20,
      I1 => cpu_ctl_stp_XLXN_18,
      I2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s5_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => cpu_ctl_stp_XLXN_20,
      I1 => cpu_ctl_stp_XLXN_18,
      I2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s6_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp51 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => cpu_ctl_stp_XLXN_20,
      I1 => cpu_ctl_stp_XLXN_18,
      I2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s4_DUMMY
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp41 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o(5),
      I1 => ir_o(4),
      I2 => ir_o(6),
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_jmp_jmpr
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp31 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o(5),
      I1 => ir_o(6),
      I2 => ir_o(4),
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_ls_ldc
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp71 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o(5),
      I1 => ir_o(6),
      I2 => ir_o(4),
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_flg_clf
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp21 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o(4),
      I1 => ir_o(6),
      I2 => ir_o(5),
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_ls_st
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp61 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o(6),
      I1 => ir_o(4),
      I2 => ir_o(5),
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_jmp_ifjmp
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp11 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => ir_o(6),
      I1 => ir_o(4),
      I2 => ir_o(5),
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_ls_ld
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp51 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o(6),
      I1 => ir_o(4),
      I2 => ir_o(5),
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_jmp_jmp
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp41 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o(5),
      I1 => ir_o(4),
      I2 => ir_o(6),
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_not_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp31 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o(5),
      I1 => ir_o(6),
      I2 => ir_o(4),
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_rshift_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp71 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o(5),
      I1 => ir_o(6),
      I2 => ir_o(4),
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_xor_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp21 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o(4),
      I1 => ir_o(6),
      I2 => ir_o(5),
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_lshift_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp61 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o(6),
      I1 => ir_o(4),
      I2 => ir_o(5),
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_or_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp11 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => ir_o(6),
      I1 => ir_o(4),
      I2 => ir_o(5),
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_sum_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp51 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o(6),
      I1 => ir_o(4),
      I2 => ir_o(5),
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_and_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ir_o(1),
      I1 => ir_o(0),
      O => cpu_ctl_rb_0_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ir_o(0),
      I1 => ir_o(1),
      O => cpu_ctl_rb_1_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ir_o(1),
      I1 => ir_o(0),
      O => cpu_ctl_rb_2_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp41 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ir_o(1),
      I1 => ir_o(0),
      O => cpu_ctl_rb_3_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ir_o(3),
      I1 => ir_o(2),
      O => cpu_ctl_ra_0_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ir_o(2),
      I1 => ir_o(3),
      O => cpu_ctl_ra_1_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ir_o(3),
      I1 => ir_o(2),
      O => cpu_ctl_ra_2_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp41 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ir_o(3),
      I1 => ir_o(2),
      O => cpu_ctl_ra_3_DUMMY
    );
  cpu_ctl_XLXI_577_O1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => cpu_ctl_ls_ldc_s6,
      I1 => cpu_ctl_s3_DUMMY,
      I2 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5,
      I3 => cpu_ctl_jmp_ifjmp_flag_equals_op_s5,
      I4 => cpu_ctl_jmp_jmp_s5,
      I5 => cpu_ctl_jmp_jmpr_s4,
      O => cpu_ctl_XLXN_11
    );
  XLXI_9_XLXI_15_Q_7 : LD
    port map (
      D => sysbus_7_OBUF_898,
      G => ram_a_w,
      Q => XLXI_9_a_o_DUMMY(7)
    );
  XLXI_9_XLXI_15_Q_0 : LD
    port map (
      D => sysbus_0_OBUF_905,
      G => ram_a_w,
      Q => XLXI_9_a_o_DUMMY(0)
    );
  XLXI_9_XLXI_15_Q_1 : LD
    port map (
      D => sysbus_1_OBUF_904,
      G => ram_a_w,
      Q => XLXI_9_a_o_DUMMY(1)
    );
  XLXI_9_XLXI_15_Q_2 : LD
    port map (
      D => sysbus_2_OBUF_903,
      G => ram_a_w,
      Q => XLXI_9_a_o_DUMMY(2)
    );
  XLXI_9_XLXI_15_Q_3 : LD
    port map (
      D => sysbus_3_OBUF_902,
      G => ram_a_w,
      Q => XLXI_9_a_o_DUMMY(3)
    );
  XLXI_9_XLXI_15_Q_4 : LD
    port map (
      D => sysbus_4_OBUF_901,
      G => ram_a_w,
      Q => XLXI_9_a_o_DUMMY(4)
    );
  XLXI_9_XLXI_15_Q_5 : LD
    port map (
      D => sysbus_5_OBUF_900,
      G => ram_a_w,
      Q => XLXI_9_a_o_DUMMY(5)
    );
  XLXI_9_XLXI_15_Q_6 : LD
    port map (
      D => sysbus_6_OBUF_899,
      G => ram_a_w,
      Q => XLXI_9_a_o_DUMMY(6)
    );
  XLXI_104_Q_7 : LD
    port map (
      D => sysbus_7_OBUF_898,
      G => ctl_r0_w,
      Q => monitor_7_OBUF_915
    );
  XLXI_104_Q_0 : LD
    port map (
      D => sysbus_0_OBUF_905,
      G => ctl_r0_w,
      Q => monitor_0_OBUF_922
    );
  XLXI_104_Q_1 : LD
    port map (
      D => sysbus_1_OBUF_904,
      G => ctl_r0_w,
      Q => monitor_1_OBUF_921
    );
  XLXI_104_Q_2 : LD
    port map (
      D => sysbus_2_OBUF_903,
      G => ctl_r0_w,
      Q => monitor_2_OBUF_920
    );
  XLXI_104_Q_3 : LD
    port map (
      D => sysbus_3_OBUF_902,
      G => ctl_r0_w,
      Q => monitor_3_OBUF_919
    );
  XLXI_104_Q_4 : LD
    port map (
      D => sysbus_4_OBUF_901,
      G => ctl_r0_w,
      Q => monitor_4_OBUF_918
    );
  XLXI_104_Q_5 : LD
    port map (
      D => sysbus_5_OBUF_900,
      G => ctl_r0_w,
      Q => monitor_5_OBUF_917
    );
  XLXI_104_Q_6 : LD
    port map (
      D => sysbus_6_OBUF_899,
      G => ctl_r0_w,
      Q => monitor_6_OBUF_916
    );
  XLXI_87_Q3 : LDCE
    port map (
      CLR => XLXN_217,
      D => alu_z,
      G => XLXI_122_XLXN_2,
      GE => flags_w,
      Q => flags_o(3)
    );
  XLXI_87_Q0 : LDCE
    port map (
      CLR => XLXN_217,
      D => alu_C_out,
      G => XLXI_122_XLXN_2,
      GE => flags_w,
      Q => flags_o(0)
    );
  XLXI_87_Q1 : LDCE
    port map (
      CLR => XLXN_217,
      D => alu_gt,
      G => XLXI_122_XLXN_2,
      GE => flags_w,
      Q => flags_o(1)
    );
  XLXI_87_Q2 : LDCE
    port map (
      CLR => XLXN_217,
      D => alu_eq,
      G => XLXI_122_XLXN_2,
      GE => flags_w,
      Q => flags_o(2)
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_O11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_130_XLXN_73,
      I1 => XLXI_130_XLXI_1_XLXI_17_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o3
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => r3_o(3),
      I3 => clck_gen_clr,
      I4 => r2_o(3),
      I5 => r1_o(3),
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51_402
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => ram_o(3),
      I3 => r0_o(3),
      I4 => acc_o(3),
      I5 => iar_o(3),
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6_401
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6_401,
      I1 => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51_402,
      S => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_400
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_400,
      I1 => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_17_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_17_XST_GND : GND
    port map (
      G => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_O11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_130_XLXN_73,
      I1 => XLXI_130_XLXI_1_XLXI_16_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o7
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => r3_o(7),
      I3 => clck_gen_clr,
      I4 => r2_o(7),
      I5 => r1_o(7),
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51_421
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => ram_o(7),
      I3 => r0_o(7),
      I4 => acc_o(7),
      I5 => iar_o(7),
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6_420
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6_420,
      I1 => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51_421,
      S => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_419
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_419,
      I1 => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_16_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_16_XST_GND : GND
    port map (
      G => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_O11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_130_XLXN_73,
      I1 => XLXI_130_XLXI_1_XLXI_15_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o2
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => r3_o(2),
      I3 => clck_gen_clr,
      I4 => r2_o(2),
      I5 => r1_o(2),
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51_440
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => ram_o(2),
      I3 => r0_o(2),
      I4 => acc_o(2),
      I5 => iar_o(2),
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6_439
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6_439,
      I1 => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51_440,
      S => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_438
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_438,
      I1 => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_15_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_15_XST_GND : GND
    port map (
      G => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_O11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_130_XLXN_73,
      I1 => XLXI_130_XLXI_1_XLXI_14_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o6
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => r3_o(6),
      I3 => clck_gen_clr,
      I4 => r2_o(6),
      I5 => r1_o(6),
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51_459
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => ram_o(6),
      I3 => r0_o(6),
      I4 => acc_o(6),
      I5 => iar_o(6),
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6_458
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6_458,
      I1 => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51_459,
      S => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_457
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_457,
      I1 => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_14_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_14_XST_GND : GND
    port map (
      G => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_O11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_130_XLXN_73,
      I1 => XLXI_130_XLXI_1_XLXI_13_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o1
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => r3_o(1),
      I3 => clck_gen_clr,
      I4 => r2_o(1),
      I5 => r1_o(1),
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51_478
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => ram_o(1),
      I3 => r0_o(1),
      I4 => acc_o(1),
      I5 => iar_o(1),
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6_477
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6_477,
      I1 => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51_478,
      S => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_476
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_476,
      I1 => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_13_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_13_XST_GND : GND
    port map (
      G => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_O11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_130_XLXN_73,
      I1 => XLXI_130_XLXI_1_XLXI_12_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o5
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => r3_o(5),
      I3 => clck_gen_clr,
      I4 => r2_o(5),
      I5 => r1_o(5),
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51_497
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => ram_o(5),
      I3 => r0_o(5),
      I4 => acc_o(5),
      I5 => iar_o(5),
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6_496
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6_496,
      I1 => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51_497,
      S => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_495
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_495,
      I1 => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_12_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_12_XST_GND : GND
    port map (
      G => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_O11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_130_XLXN_73,
      I1 => XLXI_130_XLXI_1_XLXI_2_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o4
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => r3_o(4),
      I3 => clck_gen_clr,
      I4 => r2_o(4),
      I5 => r1_o(4),
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51_516
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => ram_o(4),
      I3 => r0_o(4),
      I4 => acc_o(4),
      I5 => iar_o(4),
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6_515
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6_515,
      I1 => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51_516,
      S => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_514
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_514,
      I1 => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_2_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_2_XST_GND : GND
    port map (
      G => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_O11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_130_XLXN_73,
      I1 => XLXI_130_XLXI_1_XLXI_1_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o0
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => r3_o(0),
      I3 => clck_gen_clr,
      I4 => r2_o(0),
      I5 => r1_o(0),
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51_535
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => XLXI_130_a(1),
      I1 => XLXI_130_a(0),
      I2 => ram_o(0),
      I3 => r0_o(0),
      I4 => acc_o(0),
      I5 => iar_o(0),
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6_534
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6_534,
      I1 => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51_535,
      S => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_533
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_533,
      I1 => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_1_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_1_XST_GND : GND
    port map (
      G => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_2_XLXI_4_O : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => XLXI_130_XLXI_2_XLXN_4,
      I1 => XLXI_130_XLXI_2_XLXN_5,
      I2 => XLXI_130_XLXI_2_XLXN_6,
      I3 => XLXI_130_XLXI_2_XLXN_7,
      I4 => XLXI_130_XLXI_2_XLXN_2,
      I5 => XLXI_130_XLXI_2_XLXI_4_N01,
      O => XLXI_130_g
    );
  XLXI_130_XLXI_2_XLXI_4_O_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_130_XLXI_2_XLXN_1,
      I1 => XLXI_130_XLXI_2_XLXN_3,
      I2 => XLXI_130_XLXI_2_XLXN_8,
      O => XLXI_130_XLXI_2_XLXI_4_N01
    );
  pass_th_XLXI_13_Mmux_O11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => bus1,
      I1 => temp_o(0),
      O => pto(0)
    );
  pass_th_XLXI_8_Mmux_O11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => temp_o(7),
      I1 => bus1,
      O => pto(7)
    );
  pass_th_XLXI_7_Mmux_O11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => temp_o(6),
      I1 => bus1,
      O => pto(6)
    );
  pass_th_XLXI_6_Mmux_O11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => temp_o(5),
      I1 => bus1,
      O => pto(5)
    );
  pass_th_XLXI_5_Mmux_O11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => temp_o(4),
      I1 => bus1,
      O => pto(4)
    );
  pass_th_XLXI_4_Mmux_O11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => temp_o(3),
      I1 => bus1,
      O => pto(3)
    );
  pass_th_XLXI_3_Mmux_O11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => temp_o(2),
      I1 => bus1,
      O => pto(2)
    );
  pass_th_XLXI_1_Mmux_O11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => temp_o(1),
      I1 => bus1,
      O => pto(1)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_xor_o(0),
      I3 => clck_gen_clr,
      I4 => alu_inst_or_o(0),
      I5 => alu_inst_and_o(0),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51_586
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_rsh_o(0),
      I3 => alu_inst_not_o(0),
      I4 => alu_inst_lsh_o(0),
      I5 => alu_inst_add_o(0),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6_585
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6_585,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51_586,
      S => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_584
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_584,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o0
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_XST_GND : GND
    port map (
      G => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_xor_o(4),
      I3 => clck_gen_clr,
      I4 => alu_inst_or_o(4),
      I5 => alu_inst_and_o(4),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51_603
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_rsh_o(4),
      I3 => alu_inst_not_o(4),
      I4 => alu_inst_lsh_o(4),
      I5 => alu_inst_add_o(4),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6_602
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6_602,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51_603,
      S => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_601
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_601,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o4
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_XST_GND : GND
    port map (
      G => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_xor_o(5),
      I3 => clck_gen_clr,
      I4 => alu_inst_or_o(5),
      I5 => alu_inst_and_o(5),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51_620
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_rsh_o(5),
      I3 => alu_inst_not_o(5),
      I4 => alu_inst_lsh_o(5),
      I5 => alu_inst_add_o(5),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6_619
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6_619,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51_620,
      S => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_618
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_618,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o5
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_XST_GND : GND
    port map (
      G => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_xor_o(1),
      I3 => clck_gen_clr,
      I4 => alu_inst_or_o(1),
      I5 => alu_inst_and_o(1),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51_637
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_rsh_o(1),
      I3 => alu_inst_not_o(1),
      I4 => alu_inst_lsh_o(1),
      I5 => alu_inst_add_o(1),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6_636
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6_636,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51_637,
      S => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_635
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_635,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o1
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_XST_GND : GND
    port map (
      G => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_xor_o(6),
      I3 => clck_gen_clr,
      I4 => alu_inst_or_o(6),
      I5 => alu_inst_and_o(6),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51_654
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_rsh_o(6),
      I3 => alu_inst_not_o(6),
      I4 => alu_inst_lsh_o(6),
      I5 => alu_inst_add_o(6),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6_653
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6_653,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51_654,
      S => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_652
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_652,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o6
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_XST_GND : GND
    port map (
      G => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_xor_o(2),
      I3 => clck_gen_clr,
      I4 => alu_inst_or_o(2),
      I5 => alu_inst_and_o(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51_671
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_rsh_o(2),
      I3 => alu_inst_not_o(2),
      I4 => alu_inst_lsh_o(2),
      I5 => alu_inst_add_o(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6_670
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6_670,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51_671,
      S => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_669
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_669,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o2
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_XST_GND : GND
    port map (
      G => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_xor_o(7),
      I3 => clck_gen_clr,
      I4 => alu_inst_or_o(7),
      I5 => alu_inst_and_o(7),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51_688
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_rsh_o(7),
      I3 => alu_inst_not_o(7),
      I4 => alu_inst_lsh_o(7),
      I5 => alu_inst_add_o(7),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6_687
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6_687,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51_688,
      S => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_686
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_686,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_XST_GND : GND
    port map (
      G => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_xor_o(3),
      I3 => clck_gen_clr,
      I4 => alu_inst_or_o(3),
      I5 => alu_inst_and_o(3),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51_705
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => alu_inst_XLXI_138_a(1),
      I1 => alu_inst_XLXI_138_a(0),
      I2 => alu_inst_rsh_o(3),
      I3 => alu_inst_not_o(3),
      I4 => alu_inst_lsh_o(3),
      I5 => alu_inst_add_o(3),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6_704
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7 : MUXF7
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6_704,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51_705,
      S => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_703
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_2_f8 : MUXF8
    port map (
      I0 => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_703,
      I1 => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7,
      S => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o3
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_XST_GND : GND
    port map (
      G => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_1_Mmux_d_tmp31 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => alu_op(0),
      O => alu_inst_XLXN_192
    );
  alu_inst_XLXI_1_Mmux_d_tmp21 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => alu_op(0),
      I1 => alu_op(2),
      I2 => alu_op(1),
      O => alu_inst_XLXN_105
    );
  alu_inst_XLXI_1_Mmux_d_tmp11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => alu_op(2),
      I1 => alu_op(0),
      I2 => alu_op(1),
      O => alu_inst_XLXN_8
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_7_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(6),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7),
      O => alu_inst_add_o(7)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(6),
      DI => sysbus_7_OBUF_898,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7),
      O => alu_inst_XLXN_91
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_7_OBUF_898,
      I1 => pto(7),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_6_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(5),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6),
      O => alu_inst_add_o(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_6_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(5),
      DI => sysbus_6_OBUF_899,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_6_OBUF_899,
      I1 => pto(6),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_5_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(4),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5),
      O => alu_inst_add_o(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_5_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(4),
      DI => sysbus_5_OBUF_900,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_5_OBUF_900,
      I1 => pto(5),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_4_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4),
      O => alu_inst_add_o(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_4_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3),
      DI => sysbus_4_OBUF_901,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_4_OBUF_901,
      I1 => pto(4),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_3_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(2),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3),
      O => alu_inst_add_o(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(2),
      DI => sysbus_3_OBUF_902,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_3_OBUF_902,
      I1 => pto(3),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_2_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(1),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2),
      O => alu_inst_add_o(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_2_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(1),
      DI => sysbus_2_OBUF_903,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_2_OBUF_903,
      I1 => pto(2),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_1_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(0),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1),
      O => alu_inst_add_o(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_1_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(0),
      DI => sysbus_1_OBUF_904,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_1_OBUF_904,
      I1 => pto(1),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_0_Q : XORCY
    port map (
      CI => alu_C_in,
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0),
      O => alu_inst_add_o(0)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_0_Q : MUXCY
    port map (
      CI => alu_C_in,
      DI => sysbus_0_OBUF_905,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(0)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_0_OBUF_905,
      I1 => pto(0),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0)
    );
  alu_inst_XLXI_102_O_0_1_INV_0 : INV
    port map (
      I => sysbus_0_OBUF_905,
      O => alu_inst_not_o(0)
    );
  alu_inst_XLXI_102_O_1_1_INV_0 : INV
    port map (
      I => sysbus_1_OBUF_904,
      O => alu_inst_not_o(1)
    );
  alu_inst_XLXI_102_O_2_1_INV_0 : INV
    port map (
      I => sysbus_2_OBUF_903,
      O => alu_inst_not_o(2)
    );
  alu_inst_XLXI_102_O_3_1_INV_0 : INV
    port map (
      I => sysbus_3_OBUF_902,
      O => alu_inst_not_o(3)
    );
  alu_inst_XLXI_102_O_4_1_INV_0 : INV
    port map (
      I => sysbus_4_OBUF_901,
      O => alu_inst_not_o(4)
    );
  alu_inst_XLXI_102_O_5_1_INV_0 : INV
    port map (
      I => sysbus_5_OBUF_900,
      O => alu_inst_not_o(5)
    );
  alu_inst_XLXI_102_O_6_1_INV_0 : INV
    port map (
      I => sysbus_6_OBUF_899,
      O => alu_inst_not_o(6)
    );
  alu_inst_XLXI_102_O_7_1_INV_0 : INV
    port map (
      I => sysbus_7_OBUF_898,
      O => alu_inst_not_o(7)
    );
  alu_inst_XLXI_137_XLXI_1_O : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => sysbus_0_OBUF_905,
      I1 => sysbus_1_OBUF_904,
      I2 => sysbus_2_OBUF_903,
      I3 => sysbus_3_OBUF_902,
      I4 => sysbus_4_OBUF_901,
      I5 => alu_inst_XLXI_137_XLXI_1_N01,
      O => alu_z
    );
  alu_inst_XLXI_137_XLXI_1_O_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => sysbus_5_OBUF_900,
      I1 => sysbus_6_OBUF_899,
      I2 => sysbus_7_OBUF_898,
      O => alu_inst_XLXI_137_XLXI_1_N01
    );

end Structure;

