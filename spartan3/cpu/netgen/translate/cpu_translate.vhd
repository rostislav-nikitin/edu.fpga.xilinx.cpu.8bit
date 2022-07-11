--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.40xd
--  \   \         Application: netgen
--  /   /         Filename: cpu_translate.vhd
-- /___/   /\     Timestamp: Sat Apr  9 01:58:12 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm cpu -w -dir netgen/translate -ofmt vhdl -sim cpu.ngd cpu_translate.vhd 
-- Device	: xa6slx9ftg256-3
-- Input file	: cpu.ngd
-- Output file	: /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/netgen/translate/cpu_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity cpu is
  port (
    clk : in STD_LOGIC := 'X'; 
    rinr : in STD_LOGIC := 'X'; 
    rinw : in STD_LOGIC := 'X'; 
    rst_in : in STD_LOGIC := 'X'; 
    acc_r : out STD_LOGIC; 
    acc_w : out STD_LOGIC; 
    alu_C_in : out STD_LOGIC; 
    alu_C_in_enabled : out STD_LOGIC; 
    alu_C_out : out STD_LOGIC; 
    alu_eq : out STD_LOGIC; 
    alu_gt : out STD_LOGIC; 
    alu_z : out STD_LOGIC; 
    bus1 : out STD_LOGIC; 
    clkc : out STD_LOGIC; 
    clkr : out STD_LOGIC; 
    clkw : out STD_LOGIC; 
    ctl_iar_w : out STD_LOGIC; 
    ctl_r0_w : out STD_LOGIC; 
    ctl_r1_w : out STD_LOGIC; 
    flags_clr : out STD_LOGIC; 
    flags_w : out STD_LOGIC; 
    iar_r : out STD_LOGIC; 
    iar_w : out STD_LOGIC; 
    ir_w : out STD_LOGIC; 
    ram_a_w : out STD_LOGIC; 
    ram_r : out STD_LOGIC; 
    ram_w : out STD_LOGIC; 
    r0_r : out STD_LOGIC; 
    r1_r : out STD_LOGIC; 
    r2_r : out STD_LOGIC; 
    r2_w : out STD_LOGIC; 
    r3_r : out STD_LOGIC; 
    r3_w : out STD_LOGIC; 
    temp_w : out STD_LOGIC; 
    rind : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    alu_op : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    flags_o : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ir_o : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    monitor : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ram_a_o : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sysbus : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end cpu;

architecture Structure of cpu is
  signal clk_BUFGP : STD_LOGIC; 
  signal rst_in_IBUF_773 : STD_LOGIC; 
  signal XLXN_235 : STD_LOGIC; 
  signal XLXN_233 : STD_LOGIC; 
  signal rst : STD_LOGIC; 
  signal clkc_OBUF_778 : STD_LOGIC; 
  signal clkr_OBUF_779 : STD_LOGIC; 
  signal clkw_OBUF_780 : STD_LOGIC; 
  signal XLXN_216 : STD_LOGIC; 
  signal XLXN_217 : STD_LOGIC; 
  signal ir_o_7_OBUF_791 : STD_LOGIC; 
  signal ir_o_6_OBUF_792 : STD_LOGIC; 
  signal ir_o_5_OBUF_793 : STD_LOGIC; 
  signal ir_o_4_OBUF_794 : STD_LOGIC; 
  signal ir_o_3_OBUF_795 : STD_LOGIC; 
  signal ir_o_2_OBUF_796 : STD_LOGIC; 
  signal ir_o_1_OBUF_797 : STD_LOGIC; 
  signal ir_o_0_OBUF_798 : STD_LOGIC; 
  signal acc_r_OBUF_847 : STD_LOGIC; 
  signal acc_w_OBUF_848 : STD_LOGIC; 
  signal alu_C_in_enabled_OBUF_849 : STD_LOGIC; 
  signal alu_op_0_OBUF_850 : STD_LOGIC; 
  signal alu_op_1_OBUF_851 : STD_LOGIC; 
  signal alu_op_2_OBUF_852 : STD_LOGIC; 
  signal bus1_OBUF_853 : STD_LOGIC; 
  signal flags_clr_OBUF_854 : STD_LOGIC; 
  signal flags_w_OBUF_855 : STD_LOGIC; 
  signal iar_r_OBUF_856 : STD_LOGIC; 
  signal ctl_iar_w_OBUF_857 : STD_LOGIC; 
  signal ir_w_OBUF_858 : STD_LOGIC; 
  signal ram_a_w_OBUF_859 : STD_LOGIC; 
  signal ram_r_OBUF_860 : STD_LOGIC; 
  signal ram_w_OBUF_861 : STD_LOGIC; 
  signal r0_r_OBUF_862 : STD_LOGIC; 
  signal ctl_r0_w_OBUF_863 : STD_LOGIC; 
  signal r1_r_OBUF_864 : STD_LOGIC; 
  signal ctl_r1_w_OBUF_865 : STD_LOGIC; 
  signal r2_r_OBUF_866 : STD_LOGIC; 
  signal r2_w_OBUF_867 : STD_LOGIC; 
  signal r3_r_OBUF_868 : STD_LOGIC; 
  signal r3_w_OBUF_869 : STD_LOGIC; 
  signal temp_w_OBUF_870 : STD_LOGIC; 
  signal ram_a_o_7_OBUF_871 : STD_LOGIC; 
  signal ram_a_o_6_OBUF_872 : STD_LOGIC; 
  signal ram_a_o_5_OBUF_873 : STD_LOGIC; 
  signal ram_a_o_4_OBUF_874 : STD_LOGIC; 
  signal ram_a_o_3_OBUF_875 : STD_LOGIC; 
  signal ram_a_o_2_OBUF_876 : STD_LOGIC; 
  signal ram_a_o_1_OBUF_877 : STD_LOGIC; 
  signal ram_a_o_0_OBUF_878 : STD_LOGIC; 
  signal alu_C_in_OBUF_887 : STD_LOGIC; 
  signal flags_o_0_OBUF_888 : STD_LOGIC; 
  signal flags_o_1_OBUF_889 : STD_LOGIC; 
  signal flags_o_2_OBUF_890 : STD_LOGIC; 
  signal flags_o_3_OBUF_891 : STD_LOGIC; 
  signal sysbus_7_OBUF_892 : STD_LOGIC; 
  signal sysbus_6_OBUF_893 : STD_LOGIC; 
  signal sysbus_5_OBUF_894 : STD_LOGIC; 
  signal sysbus_4_OBUF_895 : STD_LOGIC; 
  signal sysbus_3_OBUF_896 : STD_LOGIC; 
  signal sysbus_2_OBUF_897 : STD_LOGIC; 
  signal sysbus_1_OBUF_898 : STD_LOGIC; 
  signal sysbus_0_OBUF_899 : STD_LOGIC; 
  signal iar_w_OBUF_908 : STD_LOGIC; 
  signal monitor_7_OBUF_909 : STD_LOGIC; 
  signal monitor_6_OBUF_910 : STD_LOGIC; 
  signal monitor_5_OBUF_911 : STD_LOGIC; 
  signal monitor_4_OBUF_912 : STD_LOGIC; 
  signal monitor_3_OBUF_913 : STD_LOGIC; 
  signal monitor_2_OBUF_914 : STD_LOGIC; 
  signal monitor_1_OBUF_915 : STD_LOGIC; 
  signal monitor_0_OBUF_916 : STD_LOGIC; 
  signal alu_C_out_OBUF_925 : STD_LOGIC; 
  signal alu_eq_OBUF_926 : STD_LOGIC; 
  signal alu_gt_OBUF_927 : STD_LOGIC; 
  signal alu_z_OBUF_928 : STD_LOGIC; 
  signal XLXI_122_XLXN_2 : STD_LOGIC; 
  signal clck_gen_clr : STD_LOGIC; 
  signal clck_gen_XLXN_1 : STD_LOGIC; 
  signal clck_gen_XLXN_9 : STD_LOGIC; 
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
  signal XLXI_132_Mcount_COUNT_cy_7_rt_190 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_6_rt_189 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_5_rt_188 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_4_rt_187 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_3_rt_186 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_2_rt_185 : STD_LOGIC; 
  signal XLXI_132_Mcount_COUNT_cy_1_rt_184 : STD_LOGIC; 
  signal XLXI_132_N1 : STD_LOGIC; 
  signal XLXI_132_N0 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_xor_15_rt_261 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_14_rt_260 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_13_rt_259 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_12_rt_258 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_11_rt_257 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_10_rt_256 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_9_rt_255 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_8_rt_254 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_7_rt_253 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_6_rt_252 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_5_rt_251 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_4_rt_250 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_3_rt_249 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_2_rt_248 : STD_LOGIC; 
  signal XLXI_131_Mcount_COUNT_cy_1_rt_247 : STD_LOGIC; 
  signal XLXI_131_TC_15_1_246 : STD_LOGIC; 
  signal XLXI_131_N1 : STD_LOGIC; 
  signal XLXI_131_N0 : STD_LOGIC; 
  signal clck_gen_XLXI_4_n0009_inv : STD_LOGIC; 
  signal clck_gen_XLXI_4_q_tmp_q_tmp_MUX_34_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51_391 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6_390 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_389 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51_410 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6_409 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_408 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51_429 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6_428 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_427 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51_448 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6_447 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_446 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51_467 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6_466 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_465 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51_486 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6_485 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_484 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51_505 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6_504 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_503 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51_524 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6_523 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_522 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_S3_D15_Mux_0_o : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXI_4_N01 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51_575 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6_574 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_573 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51_592 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6_591 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_590 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51_609 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6_608 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_607 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51_626 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6_625 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_624 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51_643 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6_642 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_641 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51_660 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6_659 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_658 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51_677 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6_676 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_675 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51_694 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6_693 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_692 : STD_LOGIC; 
  signal alu_inst_XLXI_137_XLXI_1_N01 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_771 : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_102_C : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_XLXI_7_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_8_O_UNCONNECTED : STD_LOGIC; 
  signal NlwInverterSignal_clck_gen_XLXI_10_I0 : STD_LOGIC; 
  signal NlwInverterSignal_cpu_ctl_XLXI_556_I0 : STD_LOGIC; 
  signal NLW_cpu_ctl_XLXI_556_O_UNCONNECTED : STD_LOGIC; 
  signal NlwInverterSignal_cpu_ctl_XLXI_559_I0 : STD_LOGIC; 
  signal NlwInverterSignal_cpu_ctl_XLXI_558_I0 : STD_LOGIC; 
  signal NlwInverterSignal_cpu_ctl_XLXI_557_I0 : STD_LOGIC; 
  signal NLW_XLXI_9_XLXI_42_O_UNCONNECTED : STD_LOGIC; 
  signal NlwInverterSignal_alu_inst_XLXI_135_XLXI_2_XLXI_1_O : STD_LOGIC; 
  signal NlwInverterSignal_alu_inst_XLXI_135_XLXI_3_XLXI_1_O : STD_LOGIC; 
  signal NlwInverterSignal_alu_inst_XLXI_135_XLXI_4_XLXI_1_O : STD_LOGIC; 
  signal NlwInverterSignal_alu_inst_XLXI_135_XLXI_5_XLXI_1_O : STD_LOGIC; 
  signal NlwInverterSignal_alu_inst_XLXI_135_XLXI_6_XLXI_1_O : STD_LOGIC; 
  signal NlwInverterSignal_alu_inst_XLXI_135_XLXI_7_XLXI_1_O : STD_LOGIC; 
  signal NlwInverterSignal_alu_inst_XLXI_135_XLXI_8_XLXI_1_O : STD_LOGIC; 
  signal NlwInverterSignal_alu_inst_XLXI_135_XLXI_9_XLXI_1_O : STD_LOGIC; 
  signal clk_cnt : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal iar_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal temp_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal acc_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r0_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r1_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r2_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r3_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal pto : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_x : STD_LOGIC_VECTOR ( 7 downto 0 ); 
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
  signal XLXI_132_Mcount_COUNT_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_132_Mcount_COUNT_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_132_Result : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal XLXI_132_COUNT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_131_TC : STD_LOGIC_VECTOR ( 15 downto 15 ); 
  signal XLXI_131_Mcount_COUNT_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal XLXI_131_Mcount_COUNT_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_131_Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal XLXI_131_COUNT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cpu_ctl_stp_XLXI_24_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  XLXI_102 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => NlwInverterSignal_XLXI_102_C,
      RST => rst,
      I => flags_o_0_OBUF_888,
      O => XLXN_216,
      CE => VCC,
      SET => GND
    );
  XLXI_116 : X_BUF
    port map (
      I => rst_in_IBUF_773,
      O => XLXN_233
    );
  XLXI_117 : X_INV
    port map (
      I => XLXN_233,
      O => rst
    );
  XLXI_103 : X_OR2
    port map (
      I0 => rst,
      I1 => flags_clr_OBUF_854,
      O => XLXN_217
    );
  XLXI_89 : X_AND2
    port map (
      I0 => XLXN_216,
      I1 => alu_C_in_enabled_OBUF_849,
      O => alu_C_in_OBUF_887
    );
  XLXI_10 : X_OR2
    port map (
      I0 => clck_gen_clr,
      I1 => ctl_iar_w_OBUF_857,
      O => iar_w_OBUF_908
    );
  XLXI_7 : X_PU
    port map (
      O => NLW_XLXI_7_O_UNCONNECTED
    );
  XLXI_8 : X_PU
    port map (
      O => NLW_XLXI_8_O_UNCONNECTED
    );
  XLXI_129_XLXI_7 : X_PD
    port map (
      O => rst
    );
  XLXI_128_XLXI_7 : X_PD
    port map (
      O => rst
    );
  XLXI_127_XLXI_7 : X_PD
    port map (
      O => rst
    );
  XLXI_126_XLXI_7 : X_PD
    port map (
      O => rst
    );
  XLXI_125_XLXI_7 : X_PD
    port map (
      O => rst
    );
  XLXI_124_XLXI_7 : X_PD
    port map (
      O => rst
    );
  XLXI_123_XLXI_7 : X_PD
    port map (
      O => rst
    );
  XLXI_122_XLXI_7 : X_PD
    port map (
      O => rst
    );
  XLXI_121_XLXI_7 : X_PD
    port map (
      O => rst
    );
  XLXI_121_XLXI_6 : X_ONE
    port map (
      O => XLXI_122_XLXN_2
    );
  clck_gen_XLXI_11 : X_ZERO
    port map (
      O => clck_gen_clr
    );
  clck_gen_XLXI_6 : X_PU
    port map (
      O => clck_gen_XLXN_1
    );
  clck_gen_XLXI_12 : X_INV
    port map (
      I => clk_cnt(8),
      O => clck_gen_XLXN_9
    );
  clck_gen_XLXI_10 : X_AND2
    port map (
      I0 => NlwInverterSignal_clck_gen_XLXI_10_I0,
      I1 => clkc_OBUF_778,
      O => clkw_OBUF_780
    );
  clck_gen_XLXI_9 : X_OR2
    port map (
      I0 => clkc_OBUF_778,
      I1 => clk_cnt(8),
      O => clkr_OBUF_779
    );
  cpu_ctl_stp_XLXI_26 : X_INV
    port map (
      I => clkc_OBUF_778,
      O => cpu_ctl_stp_XLXN_23
    );
  cpu_ctl_XLXI_556 : X_AND3
    port map (
      I0 => NlwInverterSignal_cpu_ctl_XLXI_556_I0,
      I1 => clck_gen_clr,
      I2 => clck_gen_clr,
      O => NLW_cpu_ctl_XLXI_556_O_UNCONNECTED
    );
  cpu_ctl_XLXI_574 : X_INV
    port map (
      I => cpu_ctl_flag_equals_op,
      O => cpu_ctl_XLXN_1063
    );
  cpu_ctl_XLXI_478 : X_OR2
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ra3_w,
      O => cpu_ctl_XLXN_155
    );
  cpu_ctl_XLXI_410 : X_OR2
    port map (
      I0 => cpu_ctl_ra3_r,
      I1 => cpu_ctl_rb3_r,
      O => cpu_ctl_XLXN_814
    );
  cpu_ctl_XLXI_477 : X_OR2
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ra2_w,
      O => cpu_ctl_XLXN_156
    );
  cpu_ctl_XLXI_409 : X_OR2
    port map (
      I0 => cpu_ctl_ra2_r,
      I1 => cpu_ctl_rb2_r,
      O => cpu_ctl_XLXN_813
    );
  cpu_ctl_XLXI_476 : X_OR2
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ra1_w,
      O => cpu_ctl_XLXN_157
    );
  cpu_ctl_XLXI_408 : X_OR2
    port map (
      I0 => cpu_ctl_ra1_r,
      I1 => cpu_ctl_rb1_r,
      O => cpu_ctl_XLXN_812
    );
  cpu_ctl_XLXI_475 : X_OR2
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ra0_w,
      O => cpu_ctl_XLXN_158
    );
  cpu_ctl_XLXI_407 : X_OR2
    port map (
      I0 => cpu_ctl_ra0_r,
      I1 => cpu_ctl_rb0_r,
      O => cpu_ctl_XLXN_811
    );
  cpu_ctl_XLXI_530 : X_OR4
    port map (
      I0 => cpu_ctl_XLXN_1021,
      I1 => cpu_ctl_XLXN_1020,
      I2 => cpu_ctl_XLXN_1019,
      I3 => cpu_ctl_XLXN_1018,
      O => cpu_ctl_flag_equals_op
    );
  cpu_ctl_XLXI_493 : X_OR4
    port map (
      I0 => clck_gen_clr,
      I1 => clck_gen_clr,
      I2 => clck_gen_clr,
      I3 => cpu_ctl_ls_st_s5,
      O => cpu_ctl_XLXN_981
    );
  cpu_ctl_XLXI_465 : X_OR4
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ls_ldc_s5,
      I2 => cpu_ctl_ls_ld_s5,
      I3 => cpu_ctl_alu_s6,
      O => cpu_ctl_raw_int
    );
  cpu_ctl_XLXI_315 : X_OR3
    port map (
      I0 => cpu_ctl_jmp_jmpr_s4,
      I1 => cpu_ctl_ls_st_s5,
      I2 => cpu_ctl_alu_s4,
      O => cpu_ctl_ra_int
    );
  cpu_ctl_XLXI_399 : X_OR3
    port map (
      I0 => clck_gen_clr,
      I1 => cpu_ctl_ls_ldst_s4,
      I2 => cpu_ctl_alu_binary_s5,
      O => cpu_ctl_rb_int
    );
  cpu_ctl_XLXI_230 : X_OR4
    port map (
      I0 => clck_gen_clr,
      I1 => clck_gen_clr,
      I2 => clck_gen_clr,
      I3 => cpu_ctl_alu_binary_s4,
      O => cpu_ctl_XLXN_435
    );
  cpu_ctl_XLXI_555 : X_OR2
    port map (
      I0 => cpu_ctl_alu_binary_s5,
      I1 => cpu_ctl_alu_unari_s4,
      O => cpu_ctl_alu_calc
    );
  cpu_ctl_XLXI_553 : X_OR2
    port map (
      I0 => cpu_ctl_alu_binary_s5,
      I1 => cpu_ctl_alu_unari_s4,
      O => cpu_ctl_XLXN_1034
    );
  cpu_ctl_XLXI_509 : X_OR2
    port map (
      I0 => cpu_ctl_alu_binary_s5,
      I1 => cpu_ctl_alu_unari_s4,
      O => cpu_ctl_XLXN_997
    );
  cpu_ctl_XLXI_403 : X_AND2
    port map (
      I0 => cpu_ctl_rb_3_DUMMY,
      I1 => cpu_ctl_rb_int,
      O => cpu_ctl_rb3_r
    );
  cpu_ctl_XLXI_402 : X_AND2
    port map (
      I0 => cpu_ctl_rb_2_DUMMY,
      I1 => cpu_ctl_rb_int,
      O => cpu_ctl_rb2_r
    );
  cpu_ctl_XLXI_401 : X_AND2
    port map (
      I0 => cpu_ctl_rb_1_DUMMY,
      I1 => cpu_ctl_rb_int,
      O => cpu_ctl_rb1_r
    );
  cpu_ctl_XLXI_400 : X_AND2
    port map (
      I0 => cpu_ctl_rb_0_DUMMY,
      I1 => cpu_ctl_rb_int,
      O => cpu_ctl_rb0_r
    );
  cpu_ctl_XLXI_461 : X_AND2
    port map (
      I0 => cpu_ctl_ra_3_DUMMY,
      I1 => cpu_ctl_raw_int,
      O => cpu_ctl_ra3_w
    );
  cpu_ctl_XLXI_275 : X_AND2
    port map (
      I0 => cpu_ctl_ra_3_DUMMY,
      I1 => cpu_ctl_ra_int,
      O => cpu_ctl_ra3_r
    );
  cpu_ctl_XLXI_460 : X_AND2
    port map (
      I0 => cpu_ctl_ra_2_DUMMY,
      I1 => cpu_ctl_raw_int,
      O => cpu_ctl_ra2_w
    );
  cpu_ctl_XLXI_274 : X_AND2
    port map (
      I0 => cpu_ctl_ra_2_DUMMY,
      I1 => cpu_ctl_ra_int,
      O => cpu_ctl_ra2_r
    );
  cpu_ctl_XLXI_459 : X_AND2
    port map (
      I0 => cpu_ctl_ra_1_DUMMY,
      I1 => cpu_ctl_raw_int,
      O => cpu_ctl_ra1_w
    );
  cpu_ctl_XLXI_273 : X_AND2
    port map (
      I0 => cpu_ctl_ra_1_DUMMY,
      I1 => cpu_ctl_ra_int,
      O => cpu_ctl_ra1_r
    );
  cpu_ctl_XLXI_458 : X_AND2
    port map (
      I0 => cpu_ctl_ra_0_DUMMY,
      I1 => cpu_ctl_raw_int,
      O => cpu_ctl_ra0_w
    );
  cpu_ctl_XLXI_272 : X_AND2
    port map (
      I0 => cpu_ctl_ra_0_DUMMY,
      I1 => cpu_ctl_ra_int,
      O => cpu_ctl_ra0_r
    );
  cpu_ctl_XLXI_251 : X_INV
    port map (
      I => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_ls_jmp_flg
    );
  cpu_ctl_XLXI_46 : X_AND2
    port map (
      I0 => cpu_ctl_alu_DUMMY,
      I1 => cpu_ctl_XLXN_84,
      O => cpu_ctl_alu_binary
    );
  cpu_ctl_XLXI_45 : X_AND2
    port map (
      I0 => cpu_ctl_alu_DUMMY,
      I1 => cpu_ctl_XLXN_83,
      O => cpu_ctl_alu_unari
    );
  cpu_ctl_XLXI_23 : X_OR2
    port map (
      I0 => cpu_ctl_XLXN_32,
      I1 => clck_gen_clr,
      O => alu_op_2_OBUF_852
    );
  cpu_ctl_XLXI_22 : X_OR2
    port map (
      I0 => cpu_ctl_XLXN_31,
      I1 => clck_gen_clr,
      O => alu_op_1_OBUF_851
    );
  cpu_ctl_XLXI_21 : X_OR2
    port map (
      I0 => cpu_ctl_XLXN_30,
      I1 => clck_gen_clr,
      O => alu_op_0_OBUF_850
    );
  cpu_ctl_XLXI_573 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_1063,
      I1 => cpu_ctl_jmp_ifjmp,
      O => cpu_ctl_jmp_ifjmp_flag_not_equals_op
    );
  cpu_ctl_XLXI_541 : X_AND2
    port map (
      I0 => cpu_ctl_flag_equals_op,
      I1 => cpu_ctl_jmp_ifjmp,
      O => cpu_ctl_jmp_ifjmp_flag_equals_op
    );
  cpu_ctl_XLXI_260 : X_OR2
    port map (
      I0 => cpu_ctl_ls_st,
      I1 => cpu_ctl_ls_ld,
      O => cpu_ctl_XLXN_462
    );
  cpu_ctl_XLXI_41 : X_OR3
    port map (
      I0 => cpu_ctl_alu_not_DUMMY,
      I1 => cpu_ctl_alu_rshift_DUMMY,
      I2 => cpu_ctl_alu_lshift_DUMMY,
      O => cpu_ctl_XLXN_83
    );
  cpu_ctl_XLXI_42 : X_OR4
    port map (
      I0 => cpu_ctl_alu_xor_DUMMY,
      I1 => cpu_ctl_alu_and_DUMMY,
      I2 => cpu_ctl_alu_or_DUMMY,
      I3 => cpu_ctl_alu_sum_DUMMY,
      O => cpu_ctl_XLXN_84
    );
  cpu_ctl_XLXI_532 : X_AND2
    port map (
      I0 => cpu_ctl_op_c,
      I1 => cpu_ctl_flags_c,
      O => cpu_ctl_XLXN_1018
    );
  cpu_ctl_XLXI_533 : X_AND2
    port map (
      I0 => cpu_ctl_op_gt,
      I1 => cpu_ctl_flags_gt,
      O => cpu_ctl_XLXN_1019
    );
  cpu_ctl_XLXI_534 : X_AND2
    port map (
      I0 => cpu_ctl_op_eq,
      I1 => cpu_ctl_flags_eq,
      O => cpu_ctl_XLXN_1020
    );
  cpu_ctl_XLXI_535 : X_AND2
    port map (
      I0 => cpu_ctl_op_z,
      I1 => cpu_ctl_flags_z,
      O => cpu_ctl_XLXN_1021
    );
  cpu_ctl_XLXI_499 : X_AND2
    port map (
      I0 => cpu_ctl_ls_ldc,
      I1 => cpu_ctl_s6_DUMMY,
      O => cpu_ctl_ls_ldc_s6
    );
  cpu_ctl_XLXI_137 : X_AND2
    port map (
      I0 => cpu_ctl_s6_DUMMY,
      I1 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_s6
    );
  cpu_ctl_XLXI_572 : X_AND2
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_not_equals_op,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5
    );
  cpu_ctl_XLXI_563 : X_AND2
    port map (
      I0 => cpu_ctl_jmp_jmp,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_jmp_jmp_s5
    );
  cpu_ctl_XLXI_548 : X_AND2
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_equals_op,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_equals_op_s5
    );
  cpu_ctl_XLXI_498 : X_AND2
    port map (
      I0 => cpu_ctl_ls_ldc,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_ls_ldc_s5
    );
  cpu_ctl_XLXI_491 : X_AND2
    port map (
      I0 => cpu_ctl_ls_st,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_ls_st_s5
    );
  cpu_ctl_XLXI_487 : X_AND2
    port map (
      I0 => cpu_ctl_ls_ld,
      I1 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_ls_ld_s5
    );
  cpu_ctl_XLXI_250 : X_AND2
    port map (
      I0 => cpu_ctl_s5_DUMMY,
      I1 => cpu_ctl_alu_binary,
      O => cpu_ctl_alu_binary_s5
    );
  cpu_ctl_XLXI_571 : X_AND2
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_not_equals_op,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4
    );
  cpu_ctl_XLXI_552 : X_AND2
    port map (
      I0 => cpu_ctl_flg_clf,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_flg_clf_s4
    );
  cpu_ctl_XLXI_547 : X_AND2
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_equals_op,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_equals_op_s4
    );
  cpu_ctl_XLXI_501 : X_AND2
    port map (
      I0 => cpu_ctl_jmp_jmp,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_jmp_s4
    );
  cpu_ctl_XLXI_500 : X_AND2
    port map (
      I0 => cpu_ctl_jmp_jmpr,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_jmpr_s4
    );
  cpu_ctl_XLXI_494 : X_AND2
    port map (
      I0 => cpu_ctl_ls_ldc,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_ls_ldc_s4
    );
  cpu_ctl_XLXI_298 : X_AND2
    port map (
      I0 => cpu_ctl_s4_DUMMY,
      I1 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_s4
    );
  cpu_ctl_XLXI_255 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_462,
      I1 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_ls_ldst_s4
    );
  cpu_ctl_XLXI_228 : X_AND2
    port map (
      I0 => cpu_ctl_s4_DUMMY,
      I1 => cpu_ctl_alu_binary,
      O => cpu_ctl_alu_binary_s4
    );
  cpu_ctl_XLXI_105 : X_AND2
    port map (
      I0 => cpu_ctl_s4_DUMMY,
      I1 => cpu_ctl_alu_unari,
      O => cpu_ctl_alu_unari_s4
    );
  cpu_ctl_XLXI_19 : X_OR4
    port map (
      I0 => cpu_ctl_s3_DUMMY,
      I1 => cpu_ctl_alu_s6,
      I2 => cpu_ctl_ls_ldc_s6,
      I3 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5,
      O => cpu_ctl_XLXN_22
    );
  cpu_ctl_XLXI_549 : X_OR5
    port map (
      I0 => cpu_ctl_s2_DUMMY,
      I1 => cpu_ctl_ls_ld_s5,
      I2 => cpu_ctl_ls_ldc_s5,
      I3 => cpu_ctl_jmp_jmp_s5,
      I4 => cpu_ctl_jmp_ifjmp_flag_equals_op_s5,
      O => cpu_ctl_XLXN_7
    );
  cpu_ctl_XLXI_14 : X_OR4
    port map (
      I0 => clck_gen_clr,
      I1 => clck_gen_clr,
      I2 => clck_gen_clr,
      I3 => cpu_ctl_s2_DUMMY,
      O => cpu_ctl_XLXN_12
    );
  cpu_ctl_XLXI_576 : X_OR5
    port map (
      I0 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4,
      I1 => cpu_ctl_ls_ldc_s4,
      I2 => cpu_ctl_alu_binary_s5,
      I3 => cpu_ctl_alu_unari_s4,
      I4 => cpu_ctl_s1_DUMMY,
      O => cpu_ctl_XLXN_23
    );
  cpu_ctl_XLXI_575 : X_OR5
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => cpu_ctl_ls_ldc_s4,
      I2 => cpu_ctl_jmp_ifjmp_flag_equals_op_s4,
      I3 => cpu_ctl_jmp_jmp_s4,
      I4 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4,
      O => cpu_ctl_XLXN_4
    );
  cpu_ctl_XLXI_562 : X_OR5
    port map (
      I0 => cpu_ctl_jmp_jmp_s4,
      I1 => cpu_ctl_jmp_ifjmp_flag_equals_op_s4,
      I2 => cpu_ctl_ls_ldc_s4,
      I3 => cpu_ctl_ls_ldst_s4,
      I4 => cpu_ctl_s1_DUMMY,
      O => cpu_ctl_XLXN_16
    );
  cpu_ctl_XLXI_11 : X_OR4
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => cpu_ctl_ls_ldc_s4,
      I2 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4,
      I3 => clck_gen_clr,
      O => cpu_ctl_XLXN_5
    );
  cpu_ctl_XLXI_527 : X_BUF
    port map (
      I => ir_o_1_OBUF_797,
      O => cpu_ctl_op_gt
    );
  cpu_ctl_XLXI_526 : X_BUF
    port map (
      I => ir_o_0_OBUF_798,
      O => cpu_ctl_op_c
    );
  cpu_ctl_XLXI_529 : X_BUF
    port map (
      I => ir_o_3_OBUF_795,
      O => cpu_ctl_op_z
    );
  cpu_ctl_XLXI_528 : X_BUF
    port map (
      I => ir_o_2_OBUF_796,
      O => cpu_ctl_op_eq
    );
  cpu_ctl_XLXI_40 : X_BUF
    port map (
      I => ir_o_7_OBUF_791,
      O => cpu_ctl_alu_DUMMY
    );
  cpu_ctl_XLXI_559 : X_AND3
    port map (
      I0 => NlwInverterSignal_cpu_ctl_XLXI_559_I0,
      I1 => ir_o_6_OBUF_792,
      I2 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_32
    );
  cpu_ctl_XLXI_558 : X_AND3
    port map (
      I0 => NlwInverterSignal_cpu_ctl_XLXI_558_I0,
      I1 => ir_o_5_OBUF_793,
      I2 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_31
    );
  cpu_ctl_XLXI_557 : X_AND3
    port map (
      I0 => NlwInverterSignal_cpu_ctl_XLXI_557_I0,
      I1 => ir_o_4_OBUF_794,
      I2 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_30
    );
  cpu_ctl_XLXI_508 : X_BUF
    port map (
      I => flags_o_0_OBUF_888,
      O => cpu_ctl_flags_c
    );
  cpu_ctl_XLXI_507 : X_BUF
    port map (
      I => flags_o_1_OBUF_889,
      O => cpu_ctl_flags_gt
    );
  cpu_ctl_XLXI_506 : X_BUF
    port map (
      I => flags_o_2_OBUF_890,
      O => cpu_ctl_flags_eq
    );
  cpu_ctl_XLXI_505 : X_BUF
    port map (
      I => flags_o_3_OBUF_891,
      O => cpu_ctl_flags_z
    );
  cpu_ctl_XLXI_551 : X_AND2
    port map (
      I0 => cpu_ctl_flg_clf_s4,
      I1 => clkw_OBUF_780,
      O => flags_clr_OBUF_854
    );
  cpu_ctl_XLXI_503 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_997,
      I1 => clkw_OBUF_780,
      O => flags_w_OBUF_855
    );
  cpu_ctl_XLXI_492 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_981,
      I1 => clkw_OBUF_780,
      O => ram_w_OBUF_861
    );
  cpu_ctl_XLXI_229 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_435,
      I1 => clkw_OBUF_780,
      O => temp_w_OBUF_870
    );
  cpu_ctl_XLXI_83 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_155,
      I1 => clkw_OBUF_780,
      O => r3_w_OBUF_869
    );
  cpu_ctl_XLXI_82 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_156,
      I1 => clkw_OBUF_780,
      O => r2_w_OBUF_867
    );
  cpu_ctl_XLXI_81 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_157,
      I1 => clkw_OBUF_780,
      O => ctl_r1_w_OBUF_865
    );
  cpu_ctl_XLXI_80 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_158,
      I1 => clkw_OBUF_780,
      O => ctl_r0_w_OBUF_863
    );
  cpu_ctl_XLXI_17 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_23,
      I1 => clkw_OBUF_780,
      O => acc_w_OBUF_848
    );
  cpu_ctl_XLXI_7 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_16,
      I1 => clkw_OBUF_780,
      O => ram_a_w_OBUF_859
    );
  cpu_ctl_XLXI_6 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_12,
      I1 => clkw_OBUF_780,
      O => ir_w_OBUF_858
    );
  cpu_ctl_XLXI_5 : X_AND2
    port map (
      I0 => cpu_ctl_XLXN_11,
      I1 => clkw_OBUF_780,
      O => ctl_iar_w_OBUF_857
    );
  cpu_ctl_XLXI_554 : X_AND2
    port map (
      I0 => clkr_OBUF_779,
      I1 => cpu_ctl_XLXN_1034,
      O => alu_C_in_enabled_OBUF_849
    );
  cpu_ctl_XLXI_141 : X_AND2
    port map (
      I0 => clkr_OBUF_779,
      I1 => cpu_ctl_XLXN_814,
      O => r3_r_OBUF_868
    );
  cpu_ctl_XLXI_140 : X_AND2
    port map (
      I0 => clkr_OBUF_779,
      I1 => cpu_ctl_XLXN_813,
      O => r2_r_OBUF_866
    );
  cpu_ctl_XLXI_139 : X_AND2
    port map (
      I0 => clkr_OBUF_779,
      I1 => cpu_ctl_XLXN_812,
      O => r1_r_OBUF_864
    );
  cpu_ctl_XLXI_138 : X_AND2
    port map (
      I0 => clkr_OBUF_779,
      I1 => cpu_ctl_XLXN_811,
      O => r0_r_OBUF_862
    );
  cpu_ctl_XLXI_16 : X_AND2
    port map (
      I0 => clkr_OBUF_779,
      I1 => cpu_ctl_XLXN_22,
      O => acc_r_OBUF_847
    );
  cpu_ctl_XLXI_4 : X_AND2
    port map (
      I0 => clkr_OBUF_779,
      I1 => cpu_ctl_XLXN_7,
      O => ram_r_OBUF_860
    );
  cpu_ctl_XLXI_3 : X_AND2
    port map (
      I0 => clkr_OBUF_779,
      I1 => cpu_ctl_XLXN_5,
      O => bus1_OBUF_853
    );
  cpu_ctl_XLXI_2 : X_AND2
    port map (
      I0 => clkr_OBUF_779,
      I1 => cpu_ctl_XLXN_4,
      O => iar_r_OBUF_856
    );
  XLXI_9_XLXI_23 : X_RAMS256
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000010"
    )
    port map (
      CLK => clkw_OBUF_780,
      I => sysbus_7_OBUF_892,
      WE => ram_w_OBUF_861,
      O => ram_o(7),
      ADR7 => ram_a_o_7_OBUF_871,
      ADR6 => ram_a_o_6_OBUF_872,
      ADR5 => ram_a_o_5_OBUF_873,
      ADR4 => ram_a_o_4_OBUF_874,
      ADR3 => ram_a_o_3_OBUF_875,
      ADR2 => ram_a_o_2_OBUF_876,
      ADR1 => ram_a_o_1_OBUF_877,
      ADR0 => ram_a_o_0_OBUF_878
    );
  XLXI_9_XLXI_22 : X_RAMS256
    generic map(
      INIT => X"00000000000000000000000000000000000000000000000000000000000006A0"
    )
    port map (
      CLK => clkw_OBUF_780,
      I => sysbus_6_OBUF_893,
      WE => ram_w_OBUF_861,
      O => ram_o(6),
      ADR7 => ram_a_o_7_OBUF_871,
      ADR6 => ram_a_o_6_OBUF_872,
      ADR5 => ram_a_o_5_OBUF_873,
      ADR4 => ram_a_o_4_OBUF_874,
      ADR3 => ram_a_o_3_OBUF_875,
      ADR2 => ram_a_o_2_OBUF_876,
      ADR1 => ram_a_o_1_OBUF_877,
      ADR0 => ram_a_o_0_OBUF_878
    );
  XLXI_9_XLXI_21 : X_RAMS256
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000205"
    )
    port map (
      CLK => clkw_OBUF_780,
      I => sysbus_5_OBUF_894,
      WE => ram_w_OBUF_861,
      O => ram_o(5),
      ADR7 => ram_a_o_7_OBUF_871,
      ADR6 => ram_a_o_6_OBUF_872,
      ADR5 => ram_a_o_5_OBUF_873,
      ADR4 => ram_a_o_4_OBUF_874,
      ADR3 => ram_a_o_3_OBUF_875,
      ADR2 => ram_a_o_2_OBUF_876,
      ADR1 => ram_a_o_1_OBUF_877,
      ADR0 => ram_a_o_0_OBUF_878
    );
  XLXI_9_XLXI_20 : X_RAMS256
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000020"
    )
    port map (
      CLK => clkw_OBUF_780,
      I => sysbus_4_OBUF_895,
      WE => ram_w_OBUF_861,
      O => ram_o(4),
      ADR7 => ram_a_o_7_OBUF_871,
      ADR6 => ram_a_o_6_OBUF_872,
      ADR5 => ram_a_o_5_OBUF_873,
      ADR4 => ram_a_o_4_OBUF_874,
      ADR3 => ram_a_o_3_OBUF_875,
      ADR2 => ram_a_o_2_OBUF_876,
      ADR1 => ram_a_o_1_OBUF_877,
      ADR0 => ram_a_o_0_OBUF_878
    );
  XLXI_9_XLXI_19 : X_RAMS256
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000040"
    )
    port map (
      CLK => clkw_OBUF_780,
      I => sysbus_3_OBUF_896,
      WE => ram_w_OBUF_861,
      O => ram_o(3),
      ADR7 => ram_a_o_7_OBUF_871,
      ADR6 => ram_a_o_6_OBUF_872,
      ADR5 => ram_a_o_5_OBUF_873,
      ADR4 => ram_a_o_4_OBUF_874,
      ADR3 => ram_a_o_3_OBUF_875,
      ADR2 => ram_a_o_2_OBUF_876,
      ADR1 => ram_a_o_1_OBUF_877,
      ADR0 => ram_a_o_0_OBUF_878
    );
  XLXI_9_XLXI_18 : X_RAMS256
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000901"
    )
    port map (
      CLK => clkw_OBUF_780,
      I => sysbus_2_OBUF_897,
      WE => ram_w_OBUF_861,
      O => ram_o(2),
      ADR7 => ram_a_o_7_OBUF_871,
      ADR6 => ram_a_o_6_OBUF_872,
      ADR5 => ram_a_o_5_OBUF_873,
      ADR4 => ram_a_o_4_OBUF_874,
      ADR3 => ram_a_o_3_OBUF_875,
      ADR2 => ram_a_o_2_OBUF_876,
      ADR1 => ram_a_o_1_OBUF_877,
      ADR0 => ram_a_o_0_OBUF_878
    );
  XLXI_9_XLXI_17 : X_RAMS256
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      CLK => clkw_OBUF_780,
      I => sysbus_1_OBUF_898,
      WE => ram_w_OBUF_861,
      O => ram_o(1),
      ADR7 => ram_a_o_7_OBUF_871,
      ADR6 => ram_a_o_6_OBUF_872,
      ADR5 => ram_a_o_5_OBUF_873,
      ADR4 => ram_a_o_4_OBUF_874,
      ADR3 => ram_a_o_3_OBUF_875,
      ADR2 => ram_a_o_2_OBUF_876,
      ADR1 => ram_a_o_1_OBUF_877,
      ADR0 => ram_a_o_0_OBUF_878
    );
  XLXI_9_XLXI_1 : X_RAMS256
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000072"
    )
    port map (
      CLK => clkw_OBUF_780,
      I => sysbus_0_OBUF_899,
      WE => ram_w_OBUF_861,
      O => ram_o(0),
      ADR7 => ram_a_o_7_OBUF_871,
      ADR6 => ram_a_o_6_OBUF_872,
      ADR5 => ram_a_o_5_OBUF_873,
      ADR4 => ram_a_o_4_OBUF_874,
      ADR3 => ram_a_o_3_OBUF_875,
      ADR2 => ram_a_o_2_OBUF_876,
      ADR1 => ram_a_o_1_OBUF_877,
      ADR0 => ram_a_o_0_OBUF_878
    );
  XLXI_9_XLXI_42 : X_INV
    port map (
      I => ram_r_OBUF_860,
      O => NLW_XLXI_9_XLXI_42_O_UNCONNECTED
    );
  XLXI_130_XLXI_10 : X_BUF
    port map (
      I => clck_gen_clr,
      O => XLXI_130_i(7)
    );
  XLXI_130_XLXI_16 : X_BUF
    port map (
      I => XLXI_130_enc_o(2),
      O => XLXI_130_a(2)
    );
  XLXI_130_XLXI_15 : X_BUF
    port map (
      I => XLXI_130_enc_o(1),
      O => XLXI_130_a(1)
    );
  XLXI_130_XLXI_14 : X_BUF
    port map (
      I => XLXI_130_enc_o(0),
      O => XLXI_130_a(0)
    );
  XLXI_130_XLXI_21 : X_INV
    port map (
      I => XLXI_130_g,
      O => XLXI_130_XLXN_73
    );
  XLXI_130_XLXI_9 : X_BUF
    port map (
      I => r3_r_OBUF_868,
      O => XLXI_130_i(6)
    );
  XLXI_130_XLXI_8 : X_BUF
    port map (
      I => r2_r_OBUF_866,
      O => XLXI_130_i(5)
    );
  XLXI_130_XLXI_7 : X_BUF
    port map (
      I => r1_r_OBUF_864,
      O => XLXI_130_i(4)
    );
  XLXI_130_XLXI_6 : X_BUF
    port map (
      I => r0_r_OBUF_862,
      O => XLXI_130_i(3)
    );
  XLXI_130_XLXI_5 : X_BUF
    port map (
      I => ram_r_OBUF_860,
      O => XLXI_130_i(2)
    );
  XLXI_130_XLXI_3 : X_BUF
    port map (
      I => iar_r_OBUF_856,
      O => XLXI_130_i(0)
    );
  XLXI_130_XLXI_4 : X_BUF
    port map (
      I => acc_r_OBUF_847,
      O => XLXI_130_i(1)
    );
  XLXI_130_XLXI_1_XLXI_21 : X_BUF
    port map (
      I => XLXI_130_XLXI_1_o3,
      O => sysbus_3_OBUF_896
    );
  XLXI_130_XLXI_1_XLXI_26 : X_BUF
    port map (
      I => XLXI_130_XLXI_1_o7,
      O => sysbus_7_OBUF_892
    );
  XLXI_130_XLXI_1_XLXI_20 : X_BUF
    port map (
      I => XLXI_130_XLXI_1_o2,
      O => sysbus_2_OBUF_897
    );
  XLXI_130_XLXI_1_XLXI_24 : X_BUF
    port map (
      I => XLXI_130_XLXI_1_o6,
      O => sysbus_6_OBUF_893
    );
  XLXI_130_XLXI_1_XLXI_19 : X_BUF
    port map (
      I => XLXI_130_XLXI_1_o1,
      O => sysbus_1_OBUF_898
    );
  XLXI_130_XLXI_1_XLXI_23 : X_BUF
    port map (
      I => XLXI_130_XLXI_1_o5,
      O => sysbus_5_OBUF_894
    );
  XLXI_130_XLXI_1_XLXI_22 : X_BUF
    port map (
      I => XLXI_130_XLXI_1_o4,
      O => sysbus_4_OBUF_895
    );
  XLXI_130_XLXI_1_XLXI_18 : X_BUF
    port map (
      I => XLXI_130_XLXI_1_o0,
      O => sysbus_0_OBUF_899
    );
  XLXI_130_XLXI_2_XLXI_5 : X_INV
    port map (
      I => XLXI_130_i(0),
      O => XLXI_130_XLXI_2_XLXN_1
    );
  XLXI_130_XLXI_2_XLXI_9 : X_INV
    port map (
      I => XLXI_130_i(4),
      O => XLXI_130_XLXI_2_XLXN_5
    );
  XLXI_130_XLXI_2_XLXI_11 : X_INV
    port map (
      I => XLXI_130_i(6),
      O => XLXI_130_XLXI_2_XLXN_7
    );
  XLXI_130_XLXI_2_XLXI_7 : X_INV
    port map (
      I => XLXI_130_i(2),
      O => XLXI_130_XLXI_2_XLXN_3
    );
  XLXI_130_XLXI_2_XLXI_12 : X_INV
    port map (
      I => XLXI_130_i(7),
      O => XLXI_130_XLXI_2_XLXN_8
    );
  XLXI_130_XLXI_2_XLXI_10 : X_INV
    port map (
      I => XLXI_130_i(5),
      O => XLXI_130_XLXI_2_XLXN_6
    );
  XLXI_130_XLXI_2_XLXI_3 : X_OR4
    port map (
      I0 => XLXI_130_i(4),
      I1 => XLXI_130_i(5),
      I2 => XLXI_130_i(6),
      I3 => XLXI_130_i(7),
      O => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_2_XLXI_8 : X_INV
    port map (
      I => XLXI_130_i(3),
      O => XLXI_130_XLXI_2_XLXN_4
    );
  XLXI_130_XLXI_2_XLXI_2 : X_OR4
    port map (
      I0 => XLXI_130_i(2),
      I1 => XLXI_130_i(3),
      I2 => XLXI_130_i(6),
      I3 => XLXI_130_i(7),
      O => XLXI_130_enc_o(1)
    );
  XLXI_130_XLXI_2_XLXI_6 : X_INV
    port map (
      I => XLXI_130_i(1),
      O => XLXI_130_XLXI_2_XLXN_2
    );
  XLXI_130_XLXI_2_XLXI_1 : X_OR4
    port map (
      I0 => XLXI_130_i(1),
      I1 => XLXI_130_i(3),
      I2 => XLXI_130_i(5),
      I3 => XLXI_130_i(7),
      O => XLXI_130_enc_o(0)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_18 : X_BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o0,
      O => alu_x(0)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_22 : X_BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o4,
      O => alu_x(4)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_23 : X_BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o5,
      O => alu_x(5)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_19 : X_BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o1,
      O => alu_x(1)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_24 : X_BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o6,
      O => alu_x(6)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_20 : X_BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o2,
      O => alu_x(2)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_26 : X_BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o7,
      O => alu_x(7)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_21 : X_BUF
    port map (
      I => alu_inst_XLXI_138_XLXI_14_o3,
      O => alu_x(3)
    );
  alu_inst_XLXI_138_XLXI_9 : X_BUF
    port map (
      I => alu_op_0_OBUF_850,
      O => alu_inst_XLXI_138_a(0)
    );
  alu_inst_XLXI_138_XLXI_10 : X_BUF
    port map (
      I => alu_op_1_OBUF_851,
      O => alu_inst_XLXI_138_a(1)
    );
  alu_inst_XLXI_138_XLXI_11 : X_BUF
    port map (
      I => alu_op_2_OBUF_852,
      O => alu_inst_XLXI_138_a(2)
    );
  alu_inst_XLXI_45 : X_AND2
    port map (
      I0 => alu_inst_XLXN_93,
      I1 => alu_inst_XLXN_105,
      O => alu_inst_XLXN_202
    );
  alu_inst_XLXI_99 : X_AND2
    port map (
      I0 => alu_inst_XLXN_191,
      I1 => alu_inst_XLXN_192,
      O => alu_inst_XLXN_201
    );
  alu_inst_XLXI_101 : X_OR3
    port map (
      I0 => alu_inst_XLXN_201,
      I1 => alu_inst_XLXN_202,
      I2 => alu_inst_XLXN_199,
      O => alu_C_out_OBUF_925
    );
  alu_inst_XLXI_127 : X_OR2
    port map (
      I0 => sysbus_7_OBUF_892,
      I1 => pto(7),
      O => alu_inst_or_o(7)
    );
  alu_inst_XLXI_114 : X_AND2
    port map (
      I0 => sysbus_7_OBUF_892,
      I1 => pto(7),
      O => alu_inst_and_o(7)
    );
  alu_inst_XLXI_96 : X_BUF
    port map (
      I => sysbus_7_OBUF_892,
      O => alu_inst_rsh_o(6)
    );
  alu_inst_XLXI_47 : X_BUF
    port map (
      I => sysbus_7_OBUF_892,
      O => alu_inst_XLXN_93
    );
  alu_inst_XLXI_128 : X_OR2
    port map (
      I0 => sysbus_6_OBUF_893,
      I1 => pto(6),
      O => alu_inst_or_o(6)
    );
  alu_inst_XLXI_115 : X_AND2
    port map (
      I0 => sysbus_6_OBUF_893,
      I1 => pto(6),
      O => alu_inst_and_o(6)
    );
  alu_inst_XLXI_95 : X_BUF
    port map (
      I => sysbus_6_OBUF_893,
      O => alu_inst_rsh_o(5)
    );
  alu_inst_XLXI_19 : X_BUF
    port map (
      I => sysbus_6_OBUF_893,
      O => alu_inst_lsh_o(7)
    );
  alu_inst_XLXI_129 : X_OR2
    port map (
      I0 => sysbus_5_OBUF_894,
      I1 => pto(5),
      O => alu_inst_or_o(5)
    );
  alu_inst_XLXI_116 : X_AND2
    port map (
      I0 => sysbus_5_OBUF_894,
      I1 => pto(5),
      O => alu_inst_and_o(5)
    );
  alu_inst_XLXI_94 : X_BUF
    port map (
      I => sysbus_5_OBUF_894,
      O => alu_inst_rsh_o(4)
    );
  alu_inst_XLXI_18 : X_BUF
    port map (
      I => sysbus_5_OBUF_894,
      O => alu_inst_lsh_o(6)
    );
  alu_inst_XLXI_130 : X_OR2
    port map (
      I0 => sysbus_4_OBUF_895,
      I1 => pto(4),
      O => alu_inst_or_o(4)
    );
  alu_inst_XLXI_117 : X_AND2
    port map (
      I0 => sysbus_4_OBUF_895,
      I1 => pto(4),
      O => alu_inst_and_o(4)
    );
  alu_inst_XLXI_93 : X_BUF
    port map (
      I => sysbus_4_OBUF_895,
      O => alu_inst_rsh_o(3)
    );
  alu_inst_XLXI_17 : X_BUF
    port map (
      I => sysbus_4_OBUF_895,
      O => alu_inst_lsh_o(5)
    );
  alu_inst_XLXI_131 : X_OR2
    port map (
      I0 => sysbus_3_OBUF_896,
      I1 => pto(3),
      O => alu_inst_or_o(3)
    );
  alu_inst_XLXI_118 : X_AND2
    port map (
      I0 => sysbus_3_OBUF_896,
      I1 => pto(3),
      O => alu_inst_and_o(3)
    );
  alu_inst_XLXI_92 : X_BUF
    port map (
      I => sysbus_3_OBUF_896,
      O => alu_inst_rsh_o(2)
    );
  alu_inst_XLXI_16 : X_BUF
    port map (
      I => sysbus_3_OBUF_896,
      O => alu_inst_lsh_o(4)
    );
  alu_inst_XLXI_132 : X_OR2
    port map (
      I0 => sysbus_2_OBUF_897,
      I1 => pto(2),
      O => alu_inst_or_o(2)
    );
  alu_inst_XLXI_119 : X_AND2
    port map (
      I0 => sysbus_2_OBUF_897,
      I1 => pto(2),
      O => alu_inst_and_o(2)
    );
  alu_inst_XLXI_91 : X_BUF
    port map (
      I => sysbus_2_OBUF_897,
      O => alu_inst_rsh_o(1)
    );
  alu_inst_XLXI_15 : X_BUF
    port map (
      I => sysbus_2_OBUF_897,
      O => alu_inst_lsh_o(3)
    );
  alu_inst_XLXI_133 : X_OR2
    port map (
      I0 => sysbus_1_OBUF_898,
      I1 => pto(1),
      O => alu_inst_or_o(1)
    );
  alu_inst_XLXI_120 : X_AND2
    port map (
      I0 => sysbus_1_OBUF_898,
      I1 => pto(1),
      O => alu_inst_and_o(1)
    );
  alu_inst_XLXI_90 : X_BUF
    port map (
      I => sysbus_1_OBUF_898,
      O => alu_inst_rsh_o(0)
    );
  alu_inst_XLXI_14 : X_BUF
    port map (
      I => sysbus_1_OBUF_898,
      O => alu_inst_lsh_o(2)
    );
  alu_inst_XLXI_134 : X_OR2
    port map (
      I0 => sysbus_0_OBUF_899,
      I1 => pto(0),
      O => alu_inst_or_o(0)
    );
  alu_inst_XLXI_121 : X_AND2
    port map (
      I0 => sysbus_0_OBUF_899,
      I1 => pto(0),
      O => alu_inst_and_o(0)
    );
  alu_inst_XLXI_89 : X_BUF
    port map (
      I => sysbus_0_OBUF_899,
      O => alu_inst_XLXN_191
    );
  alu_inst_XLXI_13 : X_BUF
    port map (
      I => sysbus_0_OBUF_899,
      O => alu_inst_lsh_o(1)
    );
  alu_inst_XLXI_44 : X_AND2
    port map (
      I0 => alu_inst_XLXN_91,
      I1 => alu_inst_XLXN_8,
      O => alu_inst_XLXN_199
    );
  alu_inst_XLXI_98 : X_BUF
    port map (
      I => alu_C_in_OBUF_887,
      O => alu_inst_rsh_o(7)
    );
  alu_inst_XLXI_12 : X_BUF
    port map (
      I => alu_C_in_OBUF_887,
      O => alu_inst_lsh_o(0)
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_1 : X_XOR2
    port map (
      I0 => pto(7),
      I1 => sysbus_7_OBUF_892,
      O => NlwInverterSignal_alu_inst_XLXI_135_XLXI_2_XLXI_1_O
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_4 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_2_XLXN_9,
      I1 => sysbus_7_OBUF_892,
      O => alu_inst_XLXI_135_XLXI_2_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_5 : X_INV
    port map (
      I => pto(7),
      O => alu_inst_XLXI_135_XLXI_2_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_2 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_2_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_42,
      O => alu_eq_OBUF_926
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_3 : X_OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_2_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_43,
      O => alu_gt_OBUF_927
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_6 : X_INV
    port map (
      I => alu_inst_XLXI_135_XLXI_2_XLXN_3,
      O => alu_inst_xor_o(7)
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_1 : X_XOR2
    port map (
      I0 => pto(6),
      I1 => sysbus_6_OBUF_893,
      O => NlwInverterSignal_alu_inst_XLXI_135_XLXI_3_XLXI_1_O
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_4 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_3_XLXN_9,
      I1 => sysbus_6_OBUF_893,
      O => alu_inst_XLXI_135_XLXI_3_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_5 : X_INV
    port map (
      I => pto(6),
      O => alu_inst_XLXI_135_XLXI_3_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_2 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_3_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_44,
      O => alu_inst_XLXI_135_XLXN_42
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_3 : X_OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_3_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_45,
      O => alu_inst_XLXI_135_XLXN_43
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_6 : X_INV
    port map (
      I => alu_inst_XLXI_135_XLXI_3_XLXN_3,
      O => alu_inst_xor_o(6)
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_1 : X_XOR2
    port map (
      I0 => pto(5),
      I1 => sysbus_5_OBUF_894,
      O => NlwInverterSignal_alu_inst_XLXI_135_XLXI_4_XLXI_1_O
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_4 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_4_XLXN_9,
      I1 => sysbus_5_OBUF_894,
      O => alu_inst_XLXI_135_XLXI_4_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_5 : X_INV
    port map (
      I => pto(5),
      O => alu_inst_XLXI_135_XLXI_4_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_2 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_4_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_46,
      O => alu_inst_XLXI_135_XLXN_44
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_3 : X_OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_4_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_47,
      O => alu_inst_XLXI_135_XLXN_45
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_6 : X_INV
    port map (
      I => alu_inst_XLXI_135_XLXI_4_XLXN_3,
      O => alu_inst_xor_o(5)
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_1 : X_XOR2
    port map (
      I0 => pto(4),
      I1 => sysbus_4_OBUF_895,
      O => NlwInverterSignal_alu_inst_XLXI_135_XLXI_5_XLXI_1_O
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_4 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_5_XLXN_9,
      I1 => sysbus_4_OBUF_895,
      O => alu_inst_XLXI_135_XLXI_5_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_5 : X_INV
    port map (
      I => pto(4),
      O => alu_inst_XLXI_135_XLXI_5_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_2 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_5_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_52,
      O => alu_inst_XLXI_135_XLXN_46
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_3 : X_OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_5_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_53,
      O => alu_inst_XLXI_135_XLXN_47
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_6 : X_INV
    port map (
      I => alu_inst_XLXI_135_XLXI_5_XLXN_3,
      O => alu_inst_xor_o(4)
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_1 : X_XOR2
    port map (
      I0 => pto(3),
      I1 => sysbus_3_OBUF_896,
      O => NlwInverterSignal_alu_inst_XLXI_135_XLXI_6_XLXI_1_O
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_4 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_6_XLXN_9,
      I1 => sysbus_3_OBUF_896,
      O => alu_inst_XLXI_135_XLXI_6_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_5 : X_INV
    port map (
      I => pto(3),
      O => alu_inst_XLXI_135_XLXI_6_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_2 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_6_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_48,
      O => alu_inst_XLXI_135_XLXN_52
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_3 : X_OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_6_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_51,
      O => alu_inst_XLXI_135_XLXN_53
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_6 : X_INV
    port map (
      I => alu_inst_XLXI_135_XLXI_6_XLXN_3,
      O => alu_inst_xor_o(3)
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_1 : X_XOR2
    port map (
      I0 => pto(2),
      I1 => sysbus_2_OBUF_897,
      O => NlwInverterSignal_alu_inst_XLXI_135_XLXI_7_XLXI_1_O
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_4 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_7_XLXN_9,
      I1 => sysbus_2_OBUF_897,
      O => alu_inst_XLXI_135_XLXI_7_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_5 : X_INV
    port map (
      I => pto(2),
      O => alu_inst_XLXI_135_XLXI_7_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_2 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_7_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_54,
      O => alu_inst_XLXI_135_XLXN_48
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_3 : X_OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_7_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_55,
      O => alu_inst_XLXI_135_XLXN_51
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_6 : X_INV
    port map (
      I => alu_inst_XLXI_135_XLXI_7_XLXN_3,
      O => alu_inst_xor_o(2)
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_1 : X_XOR2
    port map (
      I0 => pto(1),
      I1 => sysbus_1_OBUF_898,
      O => NlwInverterSignal_alu_inst_XLXI_135_XLXI_8_XLXI_1_O
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_4 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_8_XLXN_9,
      I1 => sysbus_1_OBUF_898,
      O => alu_inst_XLXI_135_XLXI_8_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_5 : X_INV
    port map (
      I => pto(1),
      O => alu_inst_XLXI_135_XLXI_8_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_2 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_8_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_56,
      O => alu_inst_XLXI_135_XLXN_54
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_3 : X_OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_8_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_57,
      O => alu_inst_XLXI_135_XLXN_55
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_6 : X_INV
    port map (
      I => alu_inst_XLXI_135_XLXI_8_XLXN_3,
      O => alu_inst_xor_o(1)
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_1 : X_XOR2
    port map (
      I0 => pto(0),
      I1 => sysbus_0_OBUF_899,
      O => NlwInverterSignal_alu_inst_XLXI_135_XLXI_9_XLXI_1_O
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_4 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_9_XLXN_9,
      I1 => sysbus_0_OBUF_899,
      O => alu_inst_XLXI_135_XLXI_9_XLXN_8
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_5 : X_INV
    port map (
      I => pto(0),
      O => alu_inst_XLXI_135_XLXI_9_XLXN_9
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_2 : X_AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_9_XLXN_3,
      I1 => alu_inst_XLXI_135_XLXN_58,
      O => alu_inst_XLXI_135_XLXN_56
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_3 : X_OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_9_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_59,
      O => alu_inst_XLXI_135_XLXN_57
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_6 : X_INV
    port map (
      I => alu_inst_XLXI_135_XLXI_9_XLXN_3,
      O => alu_inst_xor_o(0)
    );
  alu_inst_XLXI_135_XLXI_12 : X_PD
    port map (
      O => alu_inst_XLXI_135_XLXN_59
    );
  alu_inst_XLXI_135_XLXI_11 : X_PU
    port map (
      O => alu_inst_XLXI_135_XLXN_58
    );
  rst_in_IBUF : X_BUF
    port map (
      I => rst_in,
      O => rst_in_IBUF_773
    );
  XLXI_122_XLXI_5_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_7_OBUF_892,
      CLK => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_908,
      O => iar_o(7),
      SET => GND
    );
  XLXI_122_XLXI_5_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_0_OBUF_899,
      CLK => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_908,
      O => iar_o(0),
      SET => GND
    );
  XLXI_122_XLXI_5_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_1_OBUF_898,
      CLK => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_908,
      O => iar_o(1),
      SET => GND
    );
  XLXI_122_XLXI_5_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_2_OBUF_897,
      CLK => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_908,
      O => iar_o(2),
      SET => GND
    );
  XLXI_122_XLXI_5_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_3_OBUF_896,
      CLK => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_908,
      O => iar_o(3),
      SET => GND
    );
  XLXI_122_XLXI_5_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_4_OBUF_895,
      CLK => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_908,
      O => iar_o(4),
      SET => GND
    );
  XLXI_122_XLXI_5_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_5_OBUF_894,
      CLK => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_908,
      O => iar_o(5),
      SET => GND
    );
  XLXI_122_XLXI_5_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_6_OBUF_893,
      CLK => XLXI_122_XLXN_2,
      GE => iar_w_OBUF_908,
      O => iar_o(6),
      SET => GND
    );
  XLXI_123_XLXI_5_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_7_OBUF_892,
      CLK => XLXI_122_XLXN_2,
      GE => ir_w_OBUF_858,
      O => ir_o_7_OBUF_791,
      SET => GND
    );
  XLXI_123_XLXI_5_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_0_OBUF_899,
      CLK => XLXI_122_XLXN_2,
      GE => ir_w_OBUF_858,
      O => ir_o_0_OBUF_798,
      SET => GND
    );
  XLXI_123_XLXI_5_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_1_OBUF_898,
      CLK => XLXI_122_XLXN_2,
      GE => ir_w_OBUF_858,
      O => ir_o_1_OBUF_797,
      SET => GND
    );
  XLXI_123_XLXI_5_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_2_OBUF_897,
      CLK => XLXI_122_XLXN_2,
      GE => ir_w_OBUF_858,
      O => ir_o_2_OBUF_796,
      SET => GND
    );
  XLXI_123_XLXI_5_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_3_OBUF_896,
      CLK => XLXI_122_XLXN_2,
      GE => ir_w_OBUF_858,
      O => ir_o_3_OBUF_795,
      SET => GND
    );
  XLXI_123_XLXI_5_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_4_OBUF_895,
      CLK => XLXI_122_XLXN_2,
      GE => ir_w_OBUF_858,
      O => ir_o_4_OBUF_794,
      SET => GND
    );
  XLXI_123_XLXI_5_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_5_OBUF_894,
      CLK => XLXI_122_XLXN_2,
      GE => ir_w_OBUF_858,
      O => ir_o_5_OBUF_793,
      SET => GND
    );
  XLXI_123_XLXI_5_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_6_OBUF_893,
      CLK => XLXI_122_XLXN_2,
      GE => ir_w_OBUF_858,
      O => ir_o_6_OBUF_792,
      SET => GND
    );
  XLXI_124_XLXI_5_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_7_OBUF_892,
      CLK => XLXI_122_XLXN_2,
      GE => temp_w_OBUF_870,
      O => temp_o(7),
      SET => GND
    );
  XLXI_124_XLXI_5_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_0_OBUF_899,
      CLK => XLXI_122_XLXN_2,
      GE => temp_w_OBUF_870,
      O => temp_o(0),
      SET => GND
    );
  XLXI_124_XLXI_5_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_1_OBUF_898,
      CLK => XLXI_122_XLXN_2,
      GE => temp_w_OBUF_870,
      O => temp_o(1),
      SET => GND
    );
  XLXI_124_XLXI_5_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_2_OBUF_897,
      CLK => XLXI_122_XLXN_2,
      GE => temp_w_OBUF_870,
      O => temp_o(2),
      SET => GND
    );
  XLXI_124_XLXI_5_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_3_OBUF_896,
      CLK => XLXI_122_XLXN_2,
      GE => temp_w_OBUF_870,
      O => temp_o(3),
      SET => GND
    );
  XLXI_124_XLXI_5_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_4_OBUF_895,
      CLK => XLXI_122_XLXN_2,
      GE => temp_w_OBUF_870,
      O => temp_o(4),
      SET => GND
    );
  XLXI_124_XLXI_5_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_5_OBUF_894,
      CLK => XLXI_122_XLXN_2,
      GE => temp_w_OBUF_870,
      O => temp_o(5),
      SET => GND
    );
  XLXI_124_XLXI_5_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_6_OBUF_893,
      CLK => XLXI_122_XLXN_2,
      GE => temp_w_OBUF_870,
      O => temp_o(6),
      SET => GND
    );
  XLXI_125_XLXI_5_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => alu_x(7),
      CLK => XLXI_122_XLXN_2,
      GE => acc_w_OBUF_848,
      O => acc_o(7),
      SET => GND
    );
  XLXI_125_XLXI_5_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => alu_x(0),
      CLK => XLXI_122_XLXN_2,
      GE => acc_w_OBUF_848,
      O => acc_o(0),
      SET => GND
    );
  XLXI_125_XLXI_5_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => alu_x(1),
      CLK => XLXI_122_XLXN_2,
      GE => acc_w_OBUF_848,
      O => acc_o(1),
      SET => GND
    );
  XLXI_125_XLXI_5_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => alu_x(2),
      CLK => XLXI_122_XLXN_2,
      GE => acc_w_OBUF_848,
      O => acc_o(2),
      SET => GND
    );
  XLXI_125_XLXI_5_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => alu_x(3),
      CLK => XLXI_122_XLXN_2,
      GE => acc_w_OBUF_848,
      O => acc_o(3),
      SET => GND
    );
  XLXI_125_XLXI_5_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => alu_x(4),
      CLK => XLXI_122_XLXN_2,
      GE => acc_w_OBUF_848,
      O => acc_o(4),
      SET => GND
    );
  XLXI_125_XLXI_5_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => alu_x(5),
      CLK => XLXI_122_XLXN_2,
      GE => acc_w_OBUF_848,
      O => acc_o(5),
      SET => GND
    );
  XLXI_125_XLXI_5_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => alu_x(6),
      CLK => XLXI_122_XLXN_2,
      GE => acc_w_OBUF_848,
      O => acc_o(6),
      SET => GND
    );
  XLXI_126_XLXI_5_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_7_OBUF_892,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r0_w_OBUF_863,
      O => r0_o(7),
      SET => GND
    );
  XLXI_126_XLXI_5_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_0_OBUF_899,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r0_w_OBUF_863,
      O => r0_o(0),
      SET => GND
    );
  XLXI_126_XLXI_5_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_1_OBUF_898,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r0_w_OBUF_863,
      O => r0_o(1),
      SET => GND
    );
  XLXI_126_XLXI_5_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_2_OBUF_897,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r0_w_OBUF_863,
      O => r0_o(2),
      SET => GND
    );
  XLXI_126_XLXI_5_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_3_OBUF_896,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r0_w_OBUF_863,
      O => r0_o(3),
      SET => GND
    );
  XLXI_126_XLXI_5_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_4_OBUF_895,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r0_w_OBUF_863,
      O => r0_o(4),
      SET => GND
    );
  XLXI_126_XLXI_5_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_5_OBUF_894,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r0_w_OBUF_863,
      O => r0_o(5),
      SET => GND
    );
  XLXI_126_XLXI_5_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_6_OBUF_893,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r0_w_OBUF_863,
      O => r0_o(6),
      SET => GND
    );
  XLXI_127_XLXI_5_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_7_OBUF_892,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r1_w_OBUF_865,
      O => r1_o(7),
      SET => GND
    );
  XLXI_127_XLXI_5_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_0_OBUF_899,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r1_w_OBUF_865,
      O => r1_o(0),
      SET => GND
    );
  XLXI_127_XLXI_5_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_1_OBUF_898,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r1_w_OBUF_865,
      O => r1_o(1),
      SET => GND
    );
  XLXI_127_XLXI_5_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_2_OBUF_897,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r1_w_OBUF_865,
      O => r1_o(2),
      SET => GND
    );
  XLXI_127_XLXI_5_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_3_OBUF_896,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r1_w_OBUF_865,
      O => r1_o(3),
      SET => GND
    );
  XLXI_127_XLXI_5_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_4_OBUF_895,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r1_w_OBUF_865,
      O => r1_o(4),
      SET => GND
    );
  XLXI_127_XLXI_5_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_5_OBUF_894,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r1_w_OBUF_865,
      O => r1_o(5),
      SET => GND
    );
  XLXI_127_XLXI_5_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_6_OBUF_893,
      CLK => XLXI_122_XLXN_2,
      GE => ctl_r1_w_OBUF_865,
      O => r1_o(6),
      SET => GND
    );
  XLXI_128_XLXI_5_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_7_OBUF_892,
      CLK => XLXI_122_XLXN_2,
      GE => r2_w_OBUF_867,
      O => r2_o(7),
      SET => GND
    );
  XLXI_128_XLXI_5_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_0_OBUF_899,
      CLK => XLXI_122_XLXN_2,
      GE => r2_w_OBUF_867,
      O => r2_o(0),
      SET => GND
    );
  XLXI_128_XLXI_5_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_1_OBUF_898,
      CLK => XLXI_122_XLXN_2,
      GE => r2_w_OBUF_867,
      O => r2_o(1),
      SET => GND
    );
  XLXI_128_XLXI_5_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_2_OBUF_897,
      CLK => XLXI_122_XLXN_2,
      GE => r2_w_OBUF_867,
      O => r2_o(2),
      SET => GND
    );
  XLXI_128_XLXI_5_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_3_OBUF_896,
      CLK => XLXI_122_XLXN_2,
      GE => r2_w_OBUF_867,
      O => r2_o(3),
      SET => GND
    );
  XLXI_128_XLXI_5_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_4_OBUF_895,
      CLK => XLXI_122_XLXN_2,
      GE => r2_w_OBUF_867,
      O => r2_o(4),
      SET => GND
    );
  XLXI_128_XLXI_5_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_5_OBUF_894,
      CLK => XLXI_122_XLXN_2,
      GE => r2_w_OBUF_867,
      O => r2_o(5),
      SET => GND
    );
  XLXI_128_XLXI_5_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_6_OBUF_893,
      CLK => XLXI_122_XLXN_2,
      GE => r2_w_OBUF_867,
      O => r2_o(6),
      SET => GND
    );
  XLXI_129_XLXI_5_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_7_OBUF_892,
      CLK => XLXI_122_XLXN_2,
      GE => r3_w_OBUF_869,
      O => r3_o(7),
      SET => GND
    );
  XLXI_129_XLXI_5_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_0_OBUF_899,
      CLK => XLXI_122_XLXN_2,
      GE => r3_w_OBUF_869,
      O => r3_o(0),
      SET => GND
    );
  XLXI_129_XLXI_5_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_1_OBUF_898,
      CLK => XLXI_122_XLXN_2,
      GE => r3_w_OBUF_869,
      O => r3_o(1),
      SET => GND
    );
  XLXI_129_XLXI_5_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_2_OBUF_897,
      CLK => XLXI_122_XLXN_2,
      GE => r3_w_OBUF_869,
      O => r3_o(2),
      SET => GND
    );
  XLXI_129_XLXI_5_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_3_OBUF_896,
      CLK => XLXI_122_XLXN_2,
      GE => r3_w_OBUF_869,
      O => r3_o(3),
      SET => GND
    );
  XLXI_129_XLXI_5_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_4_OBUF_895,
      CLK => XLXI_122_XLXN_2,
      GE => r3_w_OBUF_869,
      O => r3_o(4),
      SET => GND
    );
  XLXI_129_XLXI_5_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_5_OBUF_894,
      CLK => XLXI_122_XLXN_2,
      GE => r3_w_OBUF_869,
      O => r3_o(5),
      SET => GND
    );
  XLXI_129_XLXI_5_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => rst,
      I => sysbus_6_OBUF_893,
      CLK => XLXI_122_XLXN_2,
      GE => r3_w_OBUF_869,
      O => r3_o(6),
      SET => GND
    );
  XLXI_132_Mcount_COUNT_lut_0_INV_0 : X_INV
    port map (
      I => XLXI_132_COUNT(0),
      O => XLXI_132_Mcount_COUNT_lut(0)
    );
  XLXI_132_Mcount_COUNT_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_132_COUNT(7),
      O => XLXI_132_Mcount_COUNT_cy_7_rt_190,
      ADR1 => GND
    );
  XLXI_132_Mcount_COUNT_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_132_COUNT(6),
      O => XLXI_132_Mcount_COUNT_cy_6_rt_189,
      ADR1 => GND
    );
  XLXI_132_Mcount_COUNT_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_132_COUNT(5),
      O => XLXI_132_Mcount_COUNT_cy_5_rt_188,
      ADR1 => GND
    );
  XLXI_132_Mcount_COUNT_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_132_COUNT(4),
      O => XLXI_132_Mcount_COUNT_cy_4_rt_187,
      ADR1 => GND
    );
  XLXI_132_Mcount_COUNT_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_132_COUNT(3),
      O => XLXI_132_Mcount_COUNT_cy_3_rt_186,
      ADR1 => GND
    );
  XLXI_132_Mcount_COUNT_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_132_COUNT(2),
      O => XLXI_132_Mcount_COUNT_cy_2_rt_185,
      ADR1 => GND
    );
  XLXI_132_Mcount_COUNT_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_132_COUNT(1),
      O => XLXI_132_Mcount_COUNT_cy_1_rt_184,
      ADR1 => GND
    );
  XLXI_132_Mcount_COUNT_xor_8_Q : X_XOR2
    port map (
      I0 => XLXI_132_Mcount_COUNT_cy(7),
      I1 => clk_cnt(8),
      O => XLXI_132_Result(8)
    );
  XLXI_132_Mcount_COUNT_xor_7_Q : X_XOR2
    port map (
      I0 => XLXI_132_Mcount_COUNT_cy(6),
      I1 => XLXI_132_Mcount_COUNT_cy_7_rt_190,
      O => XLXI_132_Result(7)
    );
  XLXI_132_Mcount_COUNT_cy_7_Q : X_MUX2
    port map (
      IB => XLXI_132_Mcount_COUNT_cy(6),
      IA => XLXI_132_N1,
      SEL => XLXI_132_Mcount_COUNT_cy_7_rt_190,
      O => XLXI_132_Mcount_COUNT_cy(7)
    );
  XLXI_132_Mcount_COUNT_xor_6_Q : X_XOR2
    port map (
      I0 => XLXI_132_Mcount_COUNT_cy(5),
      I1 => XLXI_132_Mcount_COUNT_cy_6_rt_189,
      O => XLXI_132_Result(6)
    );
  XLXI_132_Mcount_COUNT_cy_6_Q : X_MUX2
    port map (
      IB => XLXI_132_Mcount_COUNT_cy(5),
      IA => XLXI_132_N1,
      SEL => XLXI_132_Mcount_COUNT_cy_6_rt_189,
      O => XLXI_132_Mcount_COUNT_cy(6)
    );
  XLXI_132_Mcount_COUNT_xor_5_Q : X_XOR2
    port map (
      I0 => XLXI_132_Mcount_COUNT_cy(4),
      I1 => XLXI_132_Mcount_COUNT_cy_5_rt_188,
      O => XLXI_132_Result(5)
    );
  XLXI_132_Mcount_COUNT_cy_5_Q : X_MUX2
    port map (
      IB => XLXI_132_Mcount_COUNT_cy(4),
      IA => XLXI_132_N1,
      SEL => XLXI_132_Mcount_COUNT_cy_5_rt_188,
      O => XLXI_132_Mcount_COUNT_cy(5)
    );
  XLXI_132_Mcount_COUNT_xor_4_Q : X_XOR2
    port map (
      I0 => XLXI_132_Mcount_COUNT_cy(3),
      I1 => XLXI_132_Mcount_COUNT_cy_4_rt_187,
      O => XLXI_132_Result(4)
    );
  XLXI_132_Mcount_COUNT_cy_4_Q : X_MUX2
    port map (
      IB => XLXI_132_Mcount_COUNT_cy(3),
      IA => XLXI_132_N1,
      SEL => XLXI_132_Mcount_COUNT_cy_4_rt_187,
      O => XLXI_132_Mcount_COUNT_cy(4)
    );
  XLXI_132_Mcount_COUNT_xor_3_Q : X_XOR2
    port map (
      I0 => XLXI_132_Mcount_COUNT_cy(2),
      I1 => XLXI_132_Mcount_COUNT_cy_3_rt_186,
      O => XLXI_132_Result(3)
    );
  XLXI_132_Mcount_COUNT_cy_3_Q : X_MUX2
    port map (
      IB => XLXI_132_Mcount_COUNT_cy(2),
      IA => XLXI_132_N1,
      SEL => XLXI_132_Mcount_COUNT_cy_3_rt_186,
      O => XLXI_132_Mcount_COUNT_cy(3)
    );
  XLXI_132_Mcount_COUNT_xor_2_Q : X_XOR2
    port map (
      I0 => XLXI_132_Mcount_COUNT_cy(1),
      I1 => XLXI_132_Mcount_COUNT_cy_2_rt_185,
      O => XLXI_132_Result(2)
    );
  XLXI_132_Mcount_COUNT_cy_2_Q : X_MUX2
    port map (
      IB => XLXI_132_Mcount_COUNT_cy(1),
      IA => XLXI_132_N1,
      SEL => XLXI_132_Mcount_COUNT_cy_2_rt_185,
      O => XLXI_132_Mcount_COUNT_cy(2)
    );
  XLXI_132_Mcount_COUNT_xor_1_Q : X_XOR2
    port map (
      I0 => XLXI_132_Mcount_COUNT_cy(0),
      I1 => XLXI_132_Mcount_COUNT_cy_1_rt_184,
      O => XLXI_132_Result(1)
    );
  XLXI_132_Mcount_COUNT_cy_1_Q : X_MUX2
    port map (
      IB => XLXI_132_Mcount_COUNT_cy(0),
      IA => XLXI_132_N1,
      SEL => XLXI_132_Mcount_COUNT_cy_1_rt_184,
      O => XLXI_132_Mcount_COUNT_cy(1)
    );
  XLXI_132_Mcount_COUNT_xor_0_Q : X_XOR2
    port map (
      I0 => XLXI_132_N1,
      I1 => XLXI_132_Mcount_COUNT_lut(0),
      O => XLXI_132_Result(0)
    );
  XLXI_132_Mcount_COUNT_cy_0_Q : X_MUX2
    port map (
      IB => XLXI_132_N1,
      IA => XLXI_132_N0,
      SEL => XLXI_132_Mcount_COUNT_lut(0),
      O => XLXI_132_Mcount_COUNT_cy(0)
    );
  XLXI_132_COUNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXN_235,
      RST => clck_gen_clr,
      I => XLXI_132_Result(8),
      O => clk_cnt(8),
      SET => GND
    );
  XLXI_132_COUNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXN_235,
      RST => clck_gen_clr,
      I => XLXI_132_Result(7),
      O => XLXI_132_COUNT(7),
      SET => GND
    );
  XLXI_132_COUNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXN_235,
      RST => clck_gen_clr,
      I => XLXI_132_Result(6),
      O => XLXI_132_COUNT(6),
      SET => GND
    );
  XLXI_132_COUNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXN_235,
      RST => clck_gen_clr,
      I => XLXI_132_Result(5),
      O => XLXI_132_COUNT(5),
      SET => GND
    );
  XLXI_132_COUNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXN_235,
      RST => clck_gen_clr,
      I => XLXI_132_Result(4),
      O => XLXI_132_COUNT(4),
      SET => GND
    );
  XLXI_132_COUNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXN_235,
      RST => clck_gen_clr,
      I => XLXI_132_Result(3),
      O => XLXI_132_COUNT(3),
      SET => GND
    );
  XLXI_132_COUNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXN_235,
      RST => clck_gen_clr,
      I => XLXI_132_Result(2),
      O => XLXI_132_COUNT(2),
      SET => GND
    );
  XLXI_132_COUNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXN_235,
      RST => clck_gen_clr,
      I => XLXI_132_Result(1),
      O => XLXI_132_COUNT(1),
      SET => GND
    );
  XLXI_132_COUNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXN_235,
      RST => clck_gen_clr,
      I => XLXI_132_Result(0),
      O => XLXI_132_COUNT(0),
      SET => GND
    );
  XLXI_132_XST_GND : X_ZERO
    port map (
      O => XLXI_132_N1
    );
  XLXI_132_XST_VCC : X_ONE
    port map (
      O => XLXI_132_N0
    );
  XLXI_131_Mcount_COUNT_lut_0_INV_0 : X_INV
    port map (
      I => XLXI_131_COUNT(0),
      O => XLXI_131_Mcount_COUNT_lut(0)
    );
  XLXI_131_Mcount_COUNT_xor_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(15),
      O => XLXI_131_Mcount_COUNT_xor_15_rt_261,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(14),
      O => XLXI_131_Mcount_COUNT_cy_14_rt_260,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(13),
      O => XLXI_131_Mcount_COUNT_cy_13_rt_259,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(12),
      O => XLXI_131_Mcount_COUNT_cy_12_rt_258,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(11),
      O => XLXI_131_Mcount_COUNT_cy_11_rt_257,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(10),
      O => XLXI_131_Mcount_COUNT_cy_10_rt_256,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(9),
      O => XLXI_131_Mcount_COUNT_cy_9_rt_255,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(8),
      O => XLXI_131_Mcount_COUNT_cy_8_rt_254,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(7),
      O => XLXI_131_Mcount_COUNT_cy_7_rt_253,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(6),
      O => XLXI_131_Mcount_COUNT_cy_6_rt_252,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(5),
      O => XLXI_131_Mcount_COUNT_cy_5_rt_251,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(4),
      O => XLXI_131_Mcount_COUNT_cy_4_rt_250,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(3),
      O => XLXI_131_Mcount_COUNT_cy_3_rt_249,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(2),
      O => XLXI_131_Mcount_COUNT_cy_2_rt_248,
      ADR1 => GND
    );
  XLXI_131_Mcount_COUNT_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_131_COUNT(1),
      O => XLXI_131_Mcount_COUNT_cy_1_rt_247,
      ADR1 => GND
    );
  XLXI_131_TC_15_3 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => XLXI_131_COUNT(2),
      ADR1 => XLXI_131_COUNT(3),
      ADR2 => XLXI_131_COUNT(0),
      ADR3 => XLXI_131_COUNT(1),
      ADR4 => XLXI_131_TC_15_1_246,
      ADR5 => XLXI_131_TC(15),
      O => XLXN_235
    );
  XLXI_131_TC_15_2 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => XLXI_131_COUNT(5),
      ADR1 => XLXI_131_COUNT(4),
      ADR2 => XLXI_131_COUNT(7),
      ADR3 => XLXI_131_COUNT(6),
      ADR4 => XLXI_131_COUNT(9),
      ADR5 => XLXI_131_COUNT(8),
      O => XLXI_131_TC_15_1_246
    );
  XLXI_131_TC_15_1 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => XLXI_131_COUNT(11),
      ADR1 => XLXI_131_COUNT(10),
      ADR2 => XLXI_131_COUNT(13),
      ADR3 => XLXI_131_COUNT(12),
      ADR4 => XLXI_131_COUNT(15),
      ADR5 => XLXI_131_COUNT(14),
      O => XLXI_131_TC(15)
    );
  XLXI_131_Mcount_COUNT_xor_15_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(14),
      I1 => XLXI_131_Mcount_COUNT_xor_15_rt_261,
      O => XLXI_131_Result(15)
    );
  XLXI_131_Mcount_COUNT_xor_14_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(13),
      I1 => XLXI_131_Mcount_COUNT_cy_14_rt_260,
      O => XLXI_131_Result(14)
    );
  XLXI_131_Mcount_COUNT_cy_14_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(13),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_14_rt_260,
      O => XLXI_131_Mcount_COUNT_cy(14)
    );
  XLXI_131_Mcount_COUNT_xor_13_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(12),
      I1 => XLXI_131_Mcount_COUNT_cy_13_rt_259,
      O => XLXI_131_Result(13)
    );
  XLXI_131_Mcount_COUNT_cy_13_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(12),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_13_rt_259,
      O => XLXI_131_Mcount_COUNT_cy(13)
    );
  XLXI_131_Mcount_COUNT_xor_12_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(11),
      I1 => XLXI_131_Mcount_COUNT_cy_12_rt_258,
      O => XLXI_131_Result(12)
    );
  XLXI_131_Mcount_COUNT_cy_12_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(11),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_12_rt_258,
      O => XLXI_131_Mcount_COUNT_cy(12)
    );
  XLXI_131_Mcount_COUNT_xor_11_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(10),
      I1 => XLXI_131_Mcount_COUNT_cy_11_rt_257,
      O => XLXI_131_Result(11)
    );
  XLXI_131_Mcount_COUNT_cy_11_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(10),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_11_rt_257,
      O => XLXI_131_Mcount_COUNT_cy(11)
    );
  XLXI_131_Mcount_COUNT_xor_10_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(9),
      I1 => XLXI_131_Mcount_COUNT_cy_10_rt_256,
      O => XLXI_131_Result(10)
    );
  XLXI_131_Mcount_COUNT_cy_10_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(9),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_10_rt_256,
      O => XLXI_131_Mcount_COUNT_cy(10)
    );
  XLXI_131_Mcount_COUNT_xor_9_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(8),
      I1 => XLXI_131_Mcount_COUNT_cy_9_rt_255,
      O => XLXI_131_Result(9)
    );
  XLXI_131_Mcount_COUNT_cy_9_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(8),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_9_rt_255,
      O => XLXI_131_Mcount_COUNT_cy(9)
    );
  XLXI_131_Mcount_COUNT_xor_8_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(7),
      I1 => XLXI_131_Mcount_COUNT_cy_8_rt_254,
      O => XLXI_131_Result(8)
    );
  XLXI_131_Mcount_COUNT_cy_8_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(7),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_8_rt_254,
      O => XLXI_131_Mcount_COUNT_cy(8)
    );
  XLXI_131_Mcount_COUNT_xor_7_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(6),
      I1 => XLXI_131_Mcount_COUNT_cy_7_rt_253,
      O => XLXI_131_Result(7)
    );
  XLXI_131_Mcount_COUNT_cy_7_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(6),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_7_rt_253,
      O => XLXI_131_Mcount_COUNT_cy(7)
    );
  XLXI_131_Mcount_COUNT_xor_6_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(5),
      I1 => XLXI_131_Mcount_COUNT_cy_6_rt_252,
      O => XLXI_131_Result(6)
    );
  XLXI_131_Mcount_COUNT_cy_6_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(5),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_6_rt_252,
      O => XLXI_131_Mcount_COUNT_cy(6)
    );
  XLXI_131_Mcount_COUNT_xor_5_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(4),
      I1 => XLXI_131_Mcount_COUNT_cy_5_rt_251,
      O => XLXI_131_Result(5)
    );
  XLXI_131_Mcount_COUNT_cy_5_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(4),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_5_rt_251,
      O => XLXI_131_Mcount_COUNT_cy(5)
    );
  XLXI_131_Mcount_COUNT_xor_4_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(3),
      I1 => XLXI_131_Mcount_COUNT_cy_4_rt_250,
      O => XLXI_131_Result(4)
    );
  XLXI_131_Mcount_COUNT_cy_4_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(3),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_4_rt_250,
      O => XLXI_131_Mcount_COUNT_cy(4)
    );
  XLXI_131_Mcount_COUNT_xor_3_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(2),
      I1 => XLXI_131_Mcount_COUNT_cy_3_rt_249,
      O => XLXI_131_Result(3)
    );
  XLXI_131_Mcount_COUNT_cy_3_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(2),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_3_rt_249,
      O => XLXI_131_Mcount_COUNT_cy(3)
    );
  XLXI_131_Mcount_COUNT_xor_2_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(1),
      I1 => XLXI_131_Mcount_COUNT_cy_2_rt_248,
      O => XLXI_131_Result(2)
    );
  XLXI_131_Mcount_COUNT_cy_2_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(1),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_2_rt_248,
      O => XLXI_131_Mcount_COUNT_cy(2)
    );
  XLXI_131_Mcount_COUNT_xor_1_Q : X_XOR2
    port map (
      I0 => XLXI_131_Mcount_COUNT_cy(0),
      I1 => XLXI_131_Mcount_COUNT_cy_1_rt_247,
      O => XLXI_131_Result(1)
    );
  XLXI_131_Mcount_COUNT_cy_1_Q : X_MUX2
    port map (
      IB => XLXI_131_Mcount_COUNT_cy(0),
      IA => XLXI_131_N1,
      SEL => XLXI_131_Mcount_COUNT_cy_1_rt_247,
      O => XLXI_131_Mcount_COUNT_cy(1)
    );
  XLXI_131_Mcount_COUNT_xor_0_Q : X_XOR2
    port map (
      I0 => XLXI_131_N1,
      I1 => XLXI_131_Mcount_COUNT_lut(0),
      O => XLXI_131_Result(0)
    );
  XLXI_131_Mcount_COUNT_cy_0_Q : X_MUX2
    port map (
      IB => XLXI_131_N1,
      IA => XLXI_131_N0,
      SEL => XLXI_131_Mcount_COUNT_lut(0),
      O => XLXI_131_Mcount_COUNT_cy(0)
    );
  XLXI_131_COUNT_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(15),
      O => XLXI_131_COUNT(15),
      SET => GND
    );
  XLXI_131_COUNT_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(14),
      O => XLXI_131_COUNT(14),
      SET => GND
    );
  XLXI_131_COUNT_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(13),
      O => XLXI_131_COUNT(13),
      SET => GND
    );
  XLXI_131_COUNT_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(12),
      O => XLXI_131_COUNT(12),
      SET => GND
    );
  XLXI_131_COUNT_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(11),
      O => XLXI_131_COUNT(11),
      SET => GND
    );
  XLXI_131_COUNT_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(10),
      O => XLXI_131_COUNT(10),
      SET => GND
    );
  XLXI_131_COUNT_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(9),
      O => XLXI_131_COUNT(9),
      SET => GND
    );
  XLXI_131_COUNT_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(8),
      O => XLXI_131_COUNT(8),
      SET => GND
    );
  XLXI_131_COUNT_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(7),
      O => XLXI_131_COUNT(7),
      SET => GND
    );
  XLXI_131_COUNT_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(6),
      O => XLXI_131_COUNT(6),
      SET => GND
    );
  XLXI_131_COUNT_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(5),
      O => XLXI_131_COUNT(5),
      SET => GND
    );
  XLXI_131_COUNT_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(4),
      O => XLXI_131_COUNT(4),
      SET => GND
    );
  XLXI_131_COUNT_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(3),
      O => XLXI_131_COUNT(3),
      SET => GND
    );
  XLXI_131_COUNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(2),
      O => XLXI_131_COUNT(2),
      SET => GND
    );
  XLXI_131_COUNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(1),
      O => XLXI_131_COUNT(1),
      SET => GND
    );
  XLXI_131_COUNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => XLXI_122_XLXN_2,
      RST => clck_gen_clr,
      I => XLXI_131_Result(0),
      O => XLXI_131_COUNT(0),
      SET => GND
    );
  XLXI_131_XST_GND : X_ZERO
    port map (
      O => XLXI_131_N1
    );
  XLXI_131_XST_VCC : X_ONE
    port map (
      O => XLXI_131_N0
    );
  clck_gen_XLXI_4_Mmux_q_tmp_q_tmp_MUX_34_o11 : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => clck_gen_XLXN_1,
      ADR1 => clck_gen_XLXN_1,
      ADR2 => clkc_OBUF_778,
      O => clck_gen_XLXI_4_q_tmp_q_tmp_MUX_34_o
    );
  clck_gen_XLXI_4_n0009_inv1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => clck_gen_XLXN_1,
      ADR1 => clck_gen_XLXN_1,
      O => clck_gen_XLXI_4_n0009_inv
    );
  clck_gen_XLXI_4_q_tmp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clck_gen_XLXN_9,
      CE => clck_gen_XLXI_4_n0009_inv,
      RST => clck_gen_clr,
      I => clck_gen_XLXI_4_q_tmp_q_tmp_MUX_34_o,
      O => clkc_OBUF_778,
      SET => GND
    );
  cpu_ctl_stp_XLXI_24_Mcount_COUNT_xor_0_11_INV_0 : X_INV
    port map (
      I => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_stp_XLXI_24_Result(0)
    );
  cpu_ctl_stp_XLXI_24_Result_2_1 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => cpu_ctl_stp_XLXN_20,
      ADR1 => cpu_ctl_stp_XLXN_18,
      ADR2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_stp_XLXI_24_Result(2)
    );
  cpu_ctl_stp_XLXI_24_Mcount_COUNT_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => cpu_ctl_stp_XLXN_19,
      ADR1 => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_stp_XLXI_24_Result(1)
    );
  cpu_ctl_stp_XLXI_24_COUNT_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => cpu_ctl_stp_XLXN_23,
      CE => XLXI_122_XLXN_2,
      RST => cpu_ctl_stp_XLXN_22,
      I => cpu_ctl_stp_XLXI_24_Result(2),
      O => cpu_ctl_stp_XLXN_20,
      SET => GND
    );
  cpu_ctl_stp_XLXI_24_COUNT_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => cpu_ctl_stp_XLXN_23,
      CE => XLXI_122_XLXN_2,
      RST => cpu_ctl_stp_XLXN_22,
      I => cpu_ctl_stp_XLXI_24_Result(1),
      O => cpu_ctl_stp_XLXN_19,
      SET => GND
    );
  cpu_ctl_stp_XLXI_24_COUNT_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => cpu_ctl_stp_XLXN_23,
      CE => XLXI_122_XLXN_2,
      RST => cpu_ctl_stp_XLXN_22,
      I => cpu_ctl_stp_XLXI_24_Result(0),
      O => cpu_ctl_stp_XLXN_18,
      SET => GND
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp41 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => cpu_ctl_stp_XLXN_19,
      ADR1 => cpu_ctl_stp_XLXN_18,
      ADR2 => cpu_ctl_stp_XLXN_20,
      O => cpu_ctl_s3_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp31 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => cpu_ctl_stp_XLXN_19,
      ADR1 => cpu_ctl_stp_XLXN_20,
      ADR2 => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_s2_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp71 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => cpu_ctl_stp_XLXN_19,
      ADR1 => cpu_ctl_stp_XLXN_20,
      ADR2 => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_stp_XLXN_22
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp21 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => cpu_ctl_stp_XLXN_18,
      ADR1 => cpu_ctl_stp_XLXN_20,
      ADR2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s1_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp61 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => cpu_ctl_stp_XLXN_20,
      ADR1 => cpu_ctl_stp_XLXN_18,
      ADR2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s5_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp11 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => cpu_ctl_stp_XLXN_20,
      ADR1 => cpu_ctl_stp_XLXN_18,
      ADR2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s6_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp51 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => cpu_ctl_stp_XLXN_20,
      ADR1 => cpu_ctl_stp_XLXN_18,
      ADR2 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s4_DUMMY
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp41 : X_LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      ADR0 => ir_o_5_OBUF_793,
      ADR1 => ir_o_4_OBUF_794,
      ADR2 => ir_o_6_OBUF_792,
      ADR3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_jmp_jmpr
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp31 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => ir_o_5_OBUF_793,
      ADR1 => ir_o_6_OBUF_792,
      ADR2 => ir_o_4_OBUF_794,
      ADR3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_ls_ldc
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp71 : X_LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      ADR0 => ir_o_5_OBUF_793,
      ADR1 => ir_o_6_OBUF_792,
      ADR2 => ir_o_4_OBUF_794,
      ADR3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_flg_clf
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp21 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => ir_o_4_OBUF_794,
      ADR1 => ir_o_6_OBUF_792,
      ADR2 => ir_o_5_OBUF_793,
      ADR3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_ls_st
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp61 : X_LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      ADR0 => ir_o_6_OBUF_792,
      ADR1 => ir_o_4_OBUF_794,
      ADR2 => ir_o_5_OBUF_793,
      ADR3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_jmp_ifjmp
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp11 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => ir_o_6_OBUF_792,
      ADR1 => ir_o_4_OBUF_794,
      ADR2 => ir_o_5_OBUF_793,
      ADR3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_ls_ld
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp51 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => ir_o_6_OBUF_792,
      ADR1 => ir_o_4_OBUF_794,
      ADR2 => ir_o_5_OBUF_793,
      ADR3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_jmp_jmp
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp41 : X_LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      ADR0 => ir_o_5_OBUF_793,
      ADR1 => ir_o_4_OBUF_794,
      ADR2 => ir_o_6_OBUF_792,
      ADR3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_not_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp31 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => ir_o_5_OBUF_793,
      ADR1 => ir_o_6_OBUF_792,
      ADR2 => ir_o_4_OBUF_794,
      ADR3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_rshift_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp71 : X_LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      ADR0 => ir_o_5_OBUF_793,
      ADR1 => ir_o_6_OBUF_792,
      ADR2 => ir_o_4_OBUF_794,
      ADR3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_xor_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp21 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => ir_o_4_OBUF_794,
      ADR1 => ir_o_6_OBUF_792,
      ADR2 => ir_o_5_OBUF_793,
      ADR3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_lshift_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp61 : X_LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      ADR0 => ir_o_6_OBUF_792,
      ADR1 => ir_o_4_OBUF_794,
      ADR2 => ir_o_5_OBUF_793,
      ADR3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_or_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp11 : X_LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      ADR0 => ir_o_6_OBUF_792,
      ADR1 => ir_o_4_OBUF_794,
      ADR2 => ir_o_5_OBUF_793,
      ADR3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_sum_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp51 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => ir_o_6_OBUF_792,
      ADR1 => ir_o_4_OBUF_794,
      ADR2 => ir_o_5_OBUF_793,
      ADR3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_and_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp11 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ir_o_1_OBUF_797,
      ADR1 => ir_o_0_OBUF_798,
      O => cpu_ctl_rb_0_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp21 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => ir_o_0_OBUF_798,
      ADR1 => ir_o_1_OBUF_797,
      O => cpu_ctl_rb_1_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp31 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => ir_o_1_OBUF_797,
      ADR1 => ir_o_0_OBUF_798,
      O => cpu_ctl_rb_2_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp41 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => ir_o_1_OBUF_797,
      ADR1 => ir_o_0_OBUF_798,
      O => cpu_ctl_rb_3_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp11 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => ir_o_3_OBUF_795,
      ADR1 => ir_o_2_OBUF_796,
      O => cpu_ctl_ra_0_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp21 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => ir_o_2_OBUF_796,
      ADR1 => ir_o_3_OBUF_795,
      O => cpu_ctl_ra_1_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp31 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => ir_o_3_OBUF_795,
      ADR1 => ir_o_2_OBUF_796,
      O => cpu_ctl_ra_2_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp41 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => ir_o_3_OBUF_795,
      ADR1 => ir_o_2_OBUF_796,
      O => cpu_ctl_ra_3_DUMMY
    );
  cpu_ctl_XLXI_577_O1 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => cpu_ctl_ls_ldc_s6,
      ADR1 => cpu_ctl_s3_DUMMY,
      ADR2 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5,
      ADR3 => cpu_ctl_jmp_ifjmp_flag_equals_op_s5,
      ADR4 => cpu_ctl_jmp_jmp_s5,
      ADR5 => cpu_ctl_jmp_jmpr_s4,
      O => cpu_ctl_XLXN_11
    );
  XLXI_9_XLXI_15_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_7_OBUF_892,
      CLK => ram_a_w_OBUF_859,
      O => ram_a_o_7_OBUF_871,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_9_XLXI_15_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_0_OBUF_899,
      CLK => ram_a_w_OBUF_859,
      O => ram_a_o_0_OBUF_878,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_9_XLXI_15_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_1_OBUF_898,
      CLK => ram_a_w_OBUF_859,
      O => ram_a_o_1_OBUF_877,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_9_XLXI_15_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_2_OBUF_897,
      CLK => ram_a_w_OBUF_859,
      O => ram_a_o_2_OBUF_876,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_9_XLXI_15_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_3_OBUF_896,
      CLK => ram_a_w_OBUF_859,
      O => ram_a_o_3_OBUF_875,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_9_XLXI_15_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_4_OBUF_895,
      CLK => ram_a_w_OBUF_859,
      O => ram_a_o_4_OBUF_874,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_9_XLXI_15_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_5_OBUF_894,
      CLK => ram_a_w_OBUF_859,
      O => ram_a_o_5_OBUF_873,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_9_XLXI_15_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_6_OBUF_893,
      CLK => ram_a_w_OBUF_859,
      O => ram_a_o_6_OBUF_872,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_104_Q_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_7_OBUF_892,
      CLK => ctl_r0_w_OBUF_863,
      O => monitor_7_OBUF_909,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_104_Q_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_0_OBUF_899,
      CLK => ctl_r0_w_OBUF_863,
      O => monitor_0_OBUF_916,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_104_Q_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_1_OBUF_898,
      CLK => ctl_r0_w_OBUF_863,
      O => monitor_1_OBUF_915,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_104_Q_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_2_OBUF_897,
      CLK => ctl_r0_w_OBUF_863,
      O => monitor_2_OBUF_914,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_104_Q_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_3_OBUF_896,
      CLK => ctl_r0_w_OBUF_863,
      O => monitor_3_OBUF_913,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_104_Q_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_4_OBUF_895,
      CLK => ctl_r0_w_OBUF_863,
      O => monitor_4_OBUF_912,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_104_Q_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_5_OBUF_894,
      CLK => ctl_r0_w_OBUF_863,
      O => monitor_5_OBUF_911,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_104_Q_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => sysbus_6_OBUF_893,
      CLK => ctl_r0_w_OBUF_863,
      O => monitor_6_OBUF_910,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_87_Q3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => XLXN_217,
      I => alu_z_OBUF_928,
      CLK => XLXI_122_XLXN_2,
      GE => flags_w_OBUF_855,
      O => flags_o_3_OBUF_891,
      SET => GND
    );
  XLXI_87_Q0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => XLXN_217,
      I => alu_C_out_OBUF_925,
      CLK => XLXI_122_XLXN_2,
      GE => flags_w_OBUF_855,
      O => flags_o_0_OBUF_888,
      SET => GND
    );
  XLXI_87_Q1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => XLXN_217,
      I => alu_gt_OBUF_927,
      CLK => XLXI_122_XLXN_2,
      GE => flags_w_OBUF_855,
      O => flags_o_1_OBUF_889,
      SET => GND
    );
  XLXI_87_Q2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => XLXN_217,
      I => alu_eq_OBUF_926,
      CLK => XLXI_122_XLXN_2,
      GE => flags_w_OBUF_855,
      O => flags_o_2_OBUF_890,
      SET => GND
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_130_XLXN_73,
      ADR1 => XLXI_130_XLXI_1_XLXI_17_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o3
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => r3_o(3),
      ADR3 => clck_gen_clr,
      ADR4 => r2_o(3),
      ADR5 => r1_o(3),
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51_391
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => ram_o(3),
      ADR3 => r0_o(3),
      ADR4 => acc_o(3),
      ADR5 => iar_o(3),
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6_390
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6_390,
      IB => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51_391,
      SEL => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_389
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_389,
      IB => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_17_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_17_XST_GND : X_ZERO
    port map (
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_130_XLXN_73,
      ADR1 => XLXI_130_XLXI_1_XLXI_16_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o7
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => r3_o(7),
      ADR3 => clck_gen_clr,
      ADR4 => r2_o(7),
      ADR5 => r1_o(7),
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51_410
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => ram_o(7),
      ADR3 => r0_o(7),
      ADR4 => acc_o(7),
      ADR5 => iar_o(7),
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6_409
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6_409,
      IB => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51_410,
      SEL => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_408
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_408,
      IB => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_16_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_16_XST_GND : X_ZERO
    port map (
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_130_XLXN_73,
      ADR1 => XLXI_130_XLXI_1_XLXI_15_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o2
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => r3_o(2),
      ADR3 => clck_gen_clr,
      ADR4 => r2_o(2),
      ADR5 => r1_o(2),
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51_429
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => ram_o(2),
      ADR3 => r0_o(2),
      ADR4 => acc_o(2),
      ADR5 => iar_o(2),
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6_428
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6_428,
      IB => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51_429,
      SEL => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_427
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_427,
      IB => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_15_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_15_XST_GND : X_ZERO
    port map (
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_130_XLXN_73,
      ADR1 => XLXI_130_XLXI_1_XLXI_14_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o6
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => r3_o(6),
      ADR3 => clck_gen_clr,
      ADR4 => r2_o(6),
      ADR5 => r1_o(6),
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51_448
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => ram_o(6),
      ADR3 => r0_o(6),
      ADR4 => acc_o(6),
      ADR5 => iar_o(6),
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6_447
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6_447,
      IB => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51_448,
      SEL => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_446
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_446,
      IB => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_14_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_14_XST_GND : X_ZERO
    port map (
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_130_XLXN_73,
      ADR1 => XLXI_130_XLXI_1_XLXI_13_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o1
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => r3_o(1),
      ADR3 => clck_gen_clr,
      ADR4 => r2_o(1),
      ADR5 => r1_o(1),
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51_467
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => ram_o(1),
      ADR3 => r0_o(1),
      ADR4 => acc_o(1),
      ADR5 => iar_o(1),
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6_466
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6_466,
      IB => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51_467,
      SEL => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_465
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_465,
      IB => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_13_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_13_XST_GND : X_ZERO
    port map (
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_130_XLXN_73,
      ADR1 => XLXI_130_XLXI_1_XLXI_12_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o5
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => r3_o(5),
      ADR3 => clck_gen_clr,
      ADR4 => r2_o(5),
      ADR5 => r1_o(5),
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51_486
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => ram_o(5),
      ADR3 => r0_o(5),
      ADR4 => acc_o(5),
      ADR5 => iar_o(5),
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6_485
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6_485,
      IB => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51_486,
      SEL => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_484
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_484,
      IB => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_12_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_12_XST_GND : X_ZERO
    port map (
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_130_XLXN_73,
      ADR1 => XLXI_130_XLXI_1_XLXI_2_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o4
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => r3_o(4),
      ADR3 => clck_gen_clr,
      ADR4 => r2_o(4),
      ADR5 => r1_o(4),
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51_505
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => ram_o(4),
      ADR3 => r0_o(4),
      ADR4 => acc_o(4),
      ADR5 => iar_o(4),
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6_504
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6_504,
      IB => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51_505,
      SEL => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_503
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_503,
      IB => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_2_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_2_XST_GND : X_ZERO
    port map (
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_130_XLXN_73,
      ADR1 => XLXI_130_XLXI_1_XLXI_1_S3_D15_Mux_0_o,
      O => XLXI_130_XLXI_1_o0
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => r3_o(0),
      ADR3 => clck_gen_clr,
      ADR4 => r2_o(0),
      ADR5 => r1_o(0),
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51_524
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_a(1),
      ADR1 => XLXI_130_a(0),
      ADR2 => ram_o(0),
      ADR3 => r0_o(0),
      ADR4 => acc_o(0),
      ADR5 => iar_o(0),
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6_523
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6_523,
      IB => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51_524,
      SEL => XLXI_130_a(2),
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_522
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_522,
      IB => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => XLXI_130_XLXI_1_XLXI_1_S3_D15_Mux_0_o
    );
  XLXI_130_XLXI_1_XLXI_1_XST_GND : X_ZERO
    port map (
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7
    );
  XLXI_130_XLXI_2_XLXI_4_O : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => XLXI_130_XLXI_2_XLXN_4,
      ADR1 => XLXI_130_XLXI_2_XLXN_5,
      ADR2 => XLXI_130_XLXI_2_XLXN_6,
      ADR3 => XLXI_130_XLXI_2_XLXN_7,
      ADR4 => XLXI_130_XLXI_2_XLXN_2,
      ADR5 => XLXI_130_XLXI_2_XLXI_4_N01,
      O => XLXI_130_g
    );
  XLXI_130_XLXI_2_XLXI_4_O_SW0 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => XLXI_130_XLXI_2_XLXN_1,
      ADR1 => XLXI_130_XLXI_2_XLXN_3,
      ADR2 => XLXI_130_XLXI_2_XLXN_8,
      O => XLXI_130_XLXI_2_XLXI_4_N01
    );
  pass_th_XLXI_13_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => bus1_OBUF_853,
      ADR1 => temp_o(0),
      O => pto(0)
    );
  pass_th_XLXI_8_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => temp_o(7),
      ADR1 => bus1_OBUF_853,
      O => pto(7)
    );
  pass_th_XLXI_7_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => temp_o(6),
      ADR1 => bus1_OBUF_853,
      O => pto(6)
    );
  pass_th_XLXI_6_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => temp_o(5),
      ADR1 => bus1_OBUF_853,
      O => pto(5)
    );
  pass_th_XLXI_5_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => temp_o(4),
      ADR1 => bus1_OBUF_853,
      O => pto(4)
    );
  pass_th_XLXI_4_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => temp_o(3),
      ADR1 => bus1_OBUF_853,
      O => pto(3)
    );
  pass_th_XLXI_3_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => temp_o(2),
      ADR1 => bus1_OBUF_853,
      O => pto(2)
    );
  pass_th_XLXI_1_Mmux_O11 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => temp_o(1),
      ADR1 => bus1_OBUF_853,
      O => pto(1)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_xor_o(0),
      ADR3 => clck_gen_clr,
      ADR4 => alu_inst_or_o(0),
      ADR5 => alu_inst_and_o(0),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51_575
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_rsh_o(0),
      ADR3 => alu_inst_not_o(0),
      ADR4 => alu_inst_lsh_o(0),
      ADR5 => alu_inst_add_o(0),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6_574
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6_574,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51_575,
      SEL => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_573
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_573,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o0
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_XST_GND : X_ZERO
    port map (
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_xor_o(4),
      ADR3 => clck_gen_clr,
      ADR4 => alu_inst_or_o(4),
      ADR5 => alu_inst_and_o(4),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51_592
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_rsh_o(4),
      ADR3 => alu_inst_not_o(4),
      ADR4 => alu_inst_lsh_o(4),
      ADR5 => alu_inst_add_o(4),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6_591
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6_591,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51_592,
      SEL => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_590
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_590,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o4
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_XST_GND : X_ZERO
    port map (
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_xor_o(5),
      ADR3 => clck_gen_clr,
      ADR4 => alu_inst_or_o(5),
      ADR5 => alu_inst_and_o(5),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51_609
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_rsh_o(5),
      ADR3 => alu_inst_not_o(5),
      ADR4 => alu_inst_lsh_o(5),
      ADR5 => alu_inst_add_o(5),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6_608
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6_608,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51_609,
      SEL => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_607
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_607,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o5
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_XST_GND : X_ZERO
    port map (
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_xor_o(1),
      ADR3 => clck_gen_clr,
      ADR4 => alu_inst_or_o(1),
      ADR5 => alu_inst_and_o(1),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51_626
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_rsh_o(1),
      ADR3 => alu_inst_not_o(1),
      ADR4 => alu_inst_lsh_o(1),
      ADR5 => alu_inst_add_o(1),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6_625
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6_625,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51_626,
      SEL => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_624
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_624,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o1
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_XST_GND : X_ZERO
    port map (
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_xor_o(6),
      ADR3 => clck_gen_clr,
      ADR4 => alu_inst_or_o(6),
      ADR5 => alu_inst_and_o(6),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51_643
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_rsh_o(6),
      ADR3 => alu_inst_not_o(6),
      ADR4 => alu_inst_lsh_o(6),
      ADR5 => alu_inst_add_o(6),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6_642
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6_642,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51_643,
      SEL => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_641
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_641,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o6
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_XST_GND : X_ZERO
    port map (
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_xor_o(2),
      ADR3 => clck_gen_clr,
      ADR4 => alu_inst_or_o(2),
      ADR5 => alu_inst_and_o(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51_660
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_rsh_o(2),
      ADR3 => alu_inst_not_o(2),
      ADR4 => alu_inst_lsh_o(2),
      ADR5 => alu_inst_add_o(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6_659
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6_659,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51_660,
      SEL => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_658
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_658,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o2
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_XST_GND : X_ZERO
    port map (
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_xor_o(7),
      ADR3 => clck_gen_clr,
      ADR4 => alu_inst_or_o(7),
      ADR5 => alu_inst_and_o(7),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51_677
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_rsh_o(7),
      ADR3 => alu_inst_not_o(7),
      ADR4 => alu_inst_lsh_o(7),
      ADR5 => alu_inst_add_o(7),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6_676
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6_676,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51_677,
      SEL => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_675
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_675,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_XST_GND : X_ZERO
    port map (
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_xor_o(3),
      ADR3 => clck_gen_clr,
      ADR4 => alu_inst_or_o(3),
      ADR5 => alu_inst_and_o(3),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51_694
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => alu_inst_XLXI_138_a(1),
      ADR1 => alu_inst_XLXI_138_a(0),
      ADR2 => alu_inst_rsh_o(3),
      ADR3 => alu_inst_not_o(3),
      ADR4 => alu_inst_lsh_o(3),
      ADR5 => alu_inst_add_o(3),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6_693
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6_693,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51_694,
      SEL => alu_inst_XLXI_138_a(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_692
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_2_f8 : X_MUX2
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_692,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7,
      SEL => clck_gen_clr,
      O => alu_inst_XLXI_138_XLXI_14_o3
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_XST_GND : X_ZERO
    port map (
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_3_f7
    );
  alu_inst_XLXI_1_Mmux_d_tmp31 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => alu_op_1_OBUF_851,
      ADR1 => alu_op_2_OBUF_852,
      ADR2 => alu_op_0_OBUF_850,
      O => alu_inst_XLXN_192
    );
  alu_inst_XLXI_1_Mmux_d_tmp21 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => alu_op_0_OBUF_850,
      ADR1 => alu_op_2_OBUF_852,
      ADR2 => alu_op_1_OBUF_851,
      O => alu_inst_XLXN_105
    );
  alu_inst_XLXI_1_Mmux_d_tmp11 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => alu_op_2_OBUF_852,
      ADR1 => alu_op_0_OBUF_850,
      ADR2 => alu_op_1_OBUF_851,
      O => alu_inst_XLXN_8
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_7_Q : X_XOR2
    port map (
      I0 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(6),
      I1 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7),
      O => alu_inst_add_o(7)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_Q : X_MUX2
    port map (
      IB => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(6),
      IA => sysbus_7_OBUF_892,
      SEL => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7),
      O => alu_inst_XLXN_91
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_7_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => sysbus_7_OBUF_892,
      ADR1 => pto(7),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_6_Q : X_XOR2
    port map (
      I0 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(5),
      I1 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6),
      O => alu_inst_add_o(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_6_Q : X_MUX2
    port map (
      IB => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(5),
      IA => sysbus_6_OBUF_893,
      SEL => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_6_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => sysbus_6_OBUF_893,
      ADR1 => pto(6),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_5_Q : X_XOR2
    port map (
      I0 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(4),
      I1 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5),
      O => alu_inst_add_o(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_5_Q : X_MUX2
    port map (
      IB => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(4),
      IA => sysbus_5_OBUF_894,
      SEL => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_5_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => sysbus_5_OBUF_894,
      ADR1 => pto(5),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_4_Q : X_XOR2
    port map (
      I0 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3),
      I1 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4),
      O => alu_inst_add_o(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_4_Q : X_MUX2
    port map (
      IB => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3),
      IA => sysbus_4_OBUF_895,
      SEL => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_4_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => sysbus_4_OBUF_895,
      ADR1 => pto(4),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_3_Q : X_XOR2
    port map (
      I0 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(2),
      I1 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3),
      O => alu_inst_add_o(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_Q : X_MUX2
    port map (
      IB => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(2),
      IA => sysbus_3_OBUF_896,
      SEL => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_3_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => sysbus_3_OBUF_896,
      ADR1 => pto(3),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_2_Q : X_XOR2
    port map (
      I0 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(1),
      I1 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2),
      O => alu_inst_add_o(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_2_Q : X_MUX2
    port map (
      IB => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(1),
      IA => sysbus_2_OBUF_897,
      SEL => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_2_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => sysbus_2_OBUF_897,
      ADR1 => pto(2),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_1_Q : X_XOR2
    port map (
      I0 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(0),
      I1 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1),
      O => alu_inst_add_o(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_1_Q : X_MUX2
    port map (
      IB => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(0),
      IA => sysbus_1_OBUF_898,
      SEL => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_1_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => sysbus_1_OBUF_898,
      ADR1 => pto(1),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_0_Q : X_XOR2
    port map (
      I0 => alu_C_in_OBUF_887,
      I1 => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0),
      O => alu_inst_add_o(0)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_0_Q : X_MUX2
    port map (
      IB => alu_C_in_OBUF_887,
      IA => sysbus_0_OBUF_899,
      SEL => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(0)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_0_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => sysbus_0_OBUF_899,
      ADR1 => pto(0),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0)
    );
  alu_inst_XLXI_102_O_0_1_INV_0 : X_INV
    port map (
      I => sysbus_0_OBUF_899,
      O => alu_inst_not_o(0)
    );
  alu_inst_XLXI_102_O_1_1_INV_0 : X_INV
    port map (
      I => sysbus_1_OBUF_898,
      O => alu_inst_not_o(1)
    );
  alu_inst_XLXI_102_O_2_1_INV_0 : X_INV
    port map (
      I => sysbus_2_OBUF_897,
      O => alu_inst_not_o(2)
    );
  alu_inst_XLXI_102_O_3_1_INV_0 : X_INV
    port map (
      I => sysbus_3_OBUF_896,
      O => alu_inst_not_o(3)
    );
  alu_inst_XLXI_102_O_4_1_INV_0 : X_INV
    port map (
      I => sysbus_4_OBUF_895,
      O => alu_inst_not_o(4)
    );
  alu_inst_XLXI_102_O_5_1_INV_0 : X_INV
    port map (
      I => sysbus_5_OBUF_894,
      O => alu_inst_not_o(5)
    );
  alu_inst_XLXI_102_O_6_1_INV_0 : X_INV
    port map (
      I => sysbus_6_OBUF_893,
      O => alu_inst_not_o(6)
    );
  alu_inst_XLXI_102_O_7_1_INV_0 : X_INV
    port map (
      I => sysbus_7_OBUF_892,
      O => alu_inst_not_o(7)
    );
  alu_inst_XLXI_137_XLXI_1_O : X_LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => sysbus_0_OBUF_899,
      ADR1 => sysbus_1_OBUF_898,
      ADR2 => sysbus_2_OBUF_897,
      ADR3 => sysbus_3_OBUF_896,
      ADR4 => sysbus_4_OBUF_895,
      ADR5 => alu_inst_XLXI_137_XLXI_1_N01,
      O => alu_z_OBUF_928
    );
  alu_inst_XLXI_137_XLXI_1_O_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => sysbus_5_OBUF_894,
      ADR1 => sysbus_6_OBUF_893,
      ADR2 => sysbus_7_OBUF_892,
      O => alu_inst_XLXI_137_XLXI_1_N01
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_771,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_771
    );
  alu_op_2_OBUF : X_OBUF
    port map (
      I => alu_op_2_OBUF_852,
      O => alu_op(2)
    );
  alu_op_1_OBUF : X_OBUF
    port map (
      I => alu_op_1_OBUF_851,
      O => alu_op(1)
    );
  alu_op_0_OBUF : X_OBUF
    port map (
      I => alu_op_0_OBUF_850,
      O => alu_op(0)
    );
  flags_o_3_OBUF : X_OBUF
    port map (
      I => flags_o_3_OBUF_891,
      O => flags_o(3)
    );
  flags_o_2_OBUF : X_OBUF
    port map (
      I => flags_o_2_OBUF_890,
      O => flags_o(2)
    );
  flags_o_1_OBUF : X_OBUF
    port map (
      I => flags_o_1_OBUF_889,
      O => flags_o(1)
    );
  flags_o_0_OBUF : X_OBUF
    port map (
      I => flags_o_0_OBUF_888,
      O => flags_o(0)
    );
  ir_o_7_OBUF : X_OBUF
    port map (
      I => ir_o_7_OBUF_791,
      O => ir_o(7)
    );
  ir_o_6_OBUF : X_OBUF
    port map (
      I => ir_o_6_OBUF_792,
      O => ir_o(6)
    );
  ir_o_5_OBUF : X_OBUF
    port map (
      I => ir_o_5_OBUF_793,
      O => ir_o(5)
    );
  ir_o_4_OBUF : X_OBUF
    port map (
      I => ir_o_4_OBUF_794,
      O => ir_o(4)
    );
  ir_o_3_OBUF : X_OBUF
    port map (
      I => ir_o_3_OBUF_795,
      O => ir_o(3)
    );
  ir_o_2_OBUF : X_OBUF
    port map (
      I => ir_o_2_OBUF_796,
      O => ir_o(2)
    );
  ir_o_1_OBUF : X_OBUF
    port map (
      I => ir_o_1_OBUF_797,
      O => ir_o(1)
    );
  ir_o_0_OBUF : X_OBUF
    port map (
      I => ir_o_0_OBUF_798,
      O => ir_o(0)
    );
  monitor_7_OBUF : X_OBUF
    port map (
      I => monitor_7_OBUF_909,
      O => monitor(7)
    );
  monitor_6_OBUF : X_OBUF
    port map (
      I => monitor_6_OBUF_910,
      O => monitor(6)
    );
  monitor_5_OBUF : X_OBUF
    port map (
      I => monitor_5_OBUF_911,
      O => monitor(5)
    );
  monitor_4_OBUF : X_OBUF
    port map (
      I => monitor_4_OBUF_912,
      O => monitor(4)
    );
  monitor_3_OBUF : X_OBUF
    port map (
      I => monitor_3_OBUF_913,
      O => monitor(3)
    );
  monitor_2_OBUF : X_OBUF
    port map (
      I => monitor_2_OBUF_914,
      O => monitor(2)
    );
  monitor_1_OBUF : X_OBUF
    port map (
      I => monitor_1_OBUF_915,
      O => monitor(1)
    );
  monitor_0_OBUF : X_OBUF
    port map (
      I => monitor_0_OBUF_916,
      O => monitor(0)
    );
  ram_a_o_7_OBUF : X_OBUF
    port map (
      I => ram_a_o_7_OBUF_871,
      O => ram_a_o(7)
    );
  ram_a_o_6_OBUF : X_OBUF
    port map (
      I => ram_a_o_6_OBUF_872,
      O => ram_a_o(6)
    );
  ram_a_o_5_OBUF : X_OBUF
    port map (
      I => ram_a_o_5_OBUF_873,
      O => ram_a_o(5)
    );
  ram_a_o_4_OBUF : X_OBUF
    port map (
      I => ram_a_o_4_OBUF_874,
      O => ram_a_o(4)
    );
  ram_a_o_3_OBUF : X_OBUF
    port map (
      I => ram_a_o_3_OBUF_875,
      O => ram_a_o(3)
    );
  ram_a_o_2_OBUF : X_OBUF
    port map (
      I => ram_a_o_2_OBUF_876,
      O => ram_a_o(2)
    );
  ram_a_o_1_OBUF : X_OBUF
    port map (
      I => ram_a_o_1_OBUF_877,
      O => ram_a_o(1)
    );
  ram_a_o_0_OBUF : X_OBUF
    port map (
      I => ram_a_o_0_OBUF_878,
      O => ram_a_o(0)
    );
  sysbus_7_OBUF : X_OBUF
    port map (
      I => sysbus_7_OBUF_892,
      O => sysbus(7)
    );
  sysbus_6_OBUF : X_OBUF
    port map (
      I => sysbus_6_OBUF_893,
      O => sysbus(6)
    );
  sysbus_5_OBUF : X_OBUF
    port map (
      I => sysbus_5_OBUF_894,
      O => sysbus(5)
    );
  sysbus_4_OBUF : X_OBUF
    port map (
      I => sysbus_4_OBUF_895,
      O => sysbus(4)
    );
  sysbus_3_OBUF : X_OBUF
    port map (
      I => sysbus_3_OBUF_896,
      O => sysbus(3)
    );
  sysbus_2_OBUF : X_OBUF
    port map (
      I => sysbus_2_OBUF_897,
      O => sysbus(2)
    );
  sysbus_1_OBUF : X_OBUF
    port map (
      I => sysbus_1_OBUF_898,
      O => sysbus(1)
    );
  sysbus_0_OBUF : X_OBUF
    port map (
      I => sysbus_0_OBUF_899,
      O => sysbus(0)
    );
  acc_r_OBUF : X_OBUF
    port map (
      I => acc_r_OBUF_847,
      O => acc_r
    );
  acc_w_OBUF : X_OBUF
    port map (
      I => acc_w_OBUF_848,
      O => acc_w
    );
  alu_C_in_OBUF : X_OBUF
    port map (
      I => alu_C_in_OBUF_887,
      O => alu_C_in
    );
  alu_C_in_enabled_OBUF : X_OBUF
    port map (
      I => alu_C_in_enabled_OBUF_849,
      O => alu_C_in_enabled
    );
  alu_C_out_OBUF : X_OBUF
    port map (
      I => alu_C_out_OBUF_925,
      O => alu_C_out
    );
  alu_eq_OBUF : X_OBUF
    port map (
      I => alu_eq_OBUF_926,
      O => alu_eq
    );
  alu_gt_OBUF : X_OBUF
    port map (
      I => alu_gt_OBUF_927,
      O => alu_gt
    );
  alu_z_OBUF : X_OBUF
    port map (
      I => alu_z_OBUF_928,
      O => alu_z
    );
  bus1_OBUF : X_OBUF
    port map (
      I => bus1_OBUF_853,
      O => bus1
    );
  clkc_OBUF : X_OBUF
    port map (
      I => clkc_OBUF_778,
      O => clkc
    );
  clkr_OBUF : X_OBUF
    port map (
      I => clkr_OBUF_779,
      O => clkr
    );
  clkw_OBUF : X_OBUF
    port map (
      I => clkw_OBUF_780,
      O => clkw
    );
  ctl_iar_w_OBUF : X_OBUF
    port map (
      I => ctl_iar_w_OBUF_857,
      O => ctl_iar_w
    );
  ctl_r0_w_OBUF : X_OBUF
    port map (
      I => ctl_r0_w_OBUF_863,
      O => ctl_r0_w
    );
  ctl_r1_w_OBUF : X_OBUF
    port map (
      I => ctl_r1_w_OBUF_865,
      O => ctl_r1_w
    );
  flags_clr_OBUF : X_OBUF
    port map (
      I => flags_clr_OBUF_854,
      O => flags_clr
    );
  flags_w_OBUF : X_OBUF
    port map (
      I => flags_w_OBUF_855,
      O => flags_w
    );
  iar_r_OBUF : X_OBUF
    port map (
      I => iar_r_OBUF_856,
      O => iar_r
    );
  iar_w_OBUF : X_OBUF
    port map (
      I => iar_w_OBUF_908,
      O => iar_w
    );
  ir_w_OBUF : X_OBUF
    port map (
      I => ir_w_OBUF_858,
      O => ir_w
    );
  ram_a_w_OBUF : X_OBUF
    port map (
      I => ram_a_w_OBUF_859,
      O => ram_a_w
    );
  ram_r_OBUF : X_OBUF
    port map (
      I => ram_r_OBUF_860,
      O => ram_r
    );
  ram_w_OBUF : X_OBUF
    port map (
      I => ram_w_OBUF_861,
      O => ram_w
    );
  r0_r_OBUF : X_OBUF
    port map (
      I => r0_r_OBUF_862,
      O => r0_r
    );
  r1_r_OBUF : X_OBUF
    port map (
      I => r1_r_OBUF_864,
      O => r1_r
    );
  r2_r_OBUF : X_OBUF
    port map (
      I => r2_r_OBUF_866,
      O => r2_r
    );
  r2_w_OBUF : X_OBUF
    port map (
      I => r2_w_OBUF_867,
      O => r2_w
    );
  r3_r_OBUF : X_OBUF
    port map (
      I => r3_r_OBUF_868,
      O => r3_r
    );
  r3_w_OBUF : X_OBUF
    port map (
      I => r3_w_OBUF_869,
      O => r3_w
    );
  temp_w_OBUF : X_OBUF
    port map (
      I => temp_w_OBUF_870,
      O => temp_w
    );
  NlwInverterBlock_XLXI_102_C : X_INV
    port map (
      I => clkr_OBUF_779,
      O => NlwInverterSignal_XLXI_102_C
    );
  NlwBlock_cpu_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_cpu_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_clck_gen_XLXI_10_I0 : X_INV
    port map (
      I => clk_cnt(8),
      O => NlwInverterSignal_clck_gen_XLXI_10_I0
    );
  NlwInverterBlock_cpu_ctl_XLXI_556_I0 : X_INV
    port map (
      I => clck_gen_clr,
      O => NlwInverterSignal_cpu_ctl_XLXI_556_I0
    );
  NlwInverterBlock_cpu_ctl_XLXI_559_I0 : X_INV
    port map (
      I => cpu_ctl_s1_DUMMY,
      O => NlwInverterSignal_cpu_ctl_XLXI_559_I0
    );
  NlwInverterBlock_cpu_ctl_XLXI_558_I0 : X_INV
    port map (
      I => cpu_ctl_s1_DUMMY,
      O => NlwInverterSignal_cpu_ctl_XLXI_558_I0
    );
  NlwInverterBlock_cpu_ctl_XLXI_557_I0 : X_INV
    port map (
      I => cpu_ctl_s1_DUMMY,
      O => NlwInverterSignal_cpu_ctl_XLXI_557_I0
    );
  NlwInverterBlock_alu_inst_XLXI_135_XLXI_2_XLXI_1_O : X_INV
    port map (
      I => NlwInverterSignal_alu_inst_XLXI_135_XLXI_2_XLXI_1_O,
      O => alu_inst_XLXI_135_XLXI_2_XLXN_3
    );
  NlwInverterBlock_alu_inst_XLXI_135_XLXI_3_XLXI_1_O : X_INV
    port map (
      I => NlwInverterSignal_alu_inst_XLXI_135_XLXI_3_XLXI_1_O,
      O => alu_inst_XLXI_135_XLXI_3_XLXN_3
    );
  NlwInverterBlock_alu_inst_XLXI_135_XLXI_4_XLXI_1_O : X_INV
    port map (
      I => NlwInverterSignal_alu_inst_XLXI_135_XLXI_4_XLXI_1_O,
      O => alu_inst_XLXI_135_XLXI_4_XLXN_3
    );
  NlwInverterBlock_alu_inst_XLXI_135_XLXI_5_XLXI_1_O : X_INV
    port map (
      I => NlwInverterSignal_alu_inst_XLXI_135_XLXI_5_XLXI_1_O,
      O => alu_inst_XLXI_135_XLXI_5_XLXN_3
    );
  NlwInverterBlock_alu_inst_XLXI_135_XLXI_6_XLXI_1_O : X_INV
    port map (
      I => NlwInverterSignal_alu_inst_XLXI_135_XLXI_6_XLXI_1_O,
      O => alu_inst_XLXI_135_XLXI_6_XLXN_3
    );
  NlwInverterBlock_alu_inst_XLXI_135_XLXI_7_XLXI_1_O : X_INV
    port map (
      I => NlwInverterSignal_alu_inst_XLXI_135_XLXI_7_XLXI_1_O,
      O => alu_inst_XLXI_135_XLXI_7_XLXN_3
    );
  NlwInverterBlock_alu_inst_XLXI_135_XLXI_8_XLXI_1_O : X_INV
    port map (
      I => NlwInverterSignal_alu_inst_XLXI_135_XLXI_8_XLXI_1_O,
      O => alu_inst_XLXI_135_XLXI_8_XLXN_3
    );
  NlwInverterBlock_alu_inst_XLXI_135_XLXI_9_XLXI_1_O : X_INV
    port map (
      I => NlwInverterSignal_alu_inst_XLXI_135_XLXI_9_XLXI_1_O,
      O => alu_inst_XLXI_135_XLXI_9_XLXN_3
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

