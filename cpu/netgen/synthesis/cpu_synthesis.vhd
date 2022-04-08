--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.40xd
--  \   \         Application: netgen
--  /   /         Filename: cpu_synthesis.vhd
-- /___/   /\     Timestamp: Wed Apr  6 23:20:19 2022
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
    r0_w : out STD_LOGIC; 
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
  signal rind_7_IBUF_684 : STD_LOGIC; 
  signal rind_6_IBUF_685 : STD_LOGIC; 
  signal rind_5_IBUF_686 : STD_LOGIC; 
  signal rind_4_IBUF_687 : STD_LOGIC; 
  signal rind_3_IBUF_688 : STD_LOGIC; 
  signal rind_2_IBUF_689 : STD_LOGIC; 
  signal rind_1_IBUF_690 : STD_LOGIC; 
  signal rind_0_IBUF_691 : STD_LOGIC; 
  signal clk_IBUF_BUFG_692 : STD_LOGIC; 
  signal rinr_IBUF_693 : STD_LOGIC; 
  signal rinw_IBUF_694 : STD_LOGIC; 
  signal rst_in_IBUF_695 : STD_LOGIC; 
  signal sysbus_7_OBUF_696 : STD_LOGIC; 
  signal sysbus_6_OBUF_697 : STD_LOGIC; 
  signal sysbus_5_OBUF_698 : STD_LOGIC; 
  signal sysbus_4_OBUF_699 : STD_LOGIC; 
  signal sysbus_3_OBUF_700 : STD_LOGIC; 
  signal sysbus_2_OBUF_701 : STD_LOGIC; 
  signal sysbus_1_OBUF_702 : STD_LOGIC; 
  signal sysbus_0_OBUF_703 : STD_LOGIC; 
  signal clkc_OBUF_704 : STD_LOGIC; 
  signal clkr_OBUF_705 : STD_LOGIC; 
  signal clkw_OBUF_706 : STD_LOGIC; 
  signal XLXN_233 : STD_LOGIC; 
  signal alu_C_out_OBUF_716 : STD_LOGIC; 
  signal alu_eq_OBUF_717 : STD_LOGIC; 
  signal alu_gt_OBUF_718 : STD_LOGIC; 
  signal alu_z_OBUF_719 : STD_LOGIC; 
  signal ram_a_o_7_OBUF_720 : STD_LOGIC; 
  signal ram_a_o_6_OBUF_721 : STD_LOGIC; 
  signal ram_a_o_5_OBUF_722 : STD_LOGIC; 
  signal ram_a_o_4_OBUF_723 : STD_LOGIC; 
  signal ram_a_o_3_OBUF_724 : STD_LOGIC; 
  signal ram_a_o_2_OBUF_725 : STD_LOGIC; 
  signal ram_a_o_1_OBUF_726 : STD_LOGIC; 
  signal ram_a_o_0_OBUF_727 : STD_LOGIC; 
  signal monitor_7_OBUF_728 : STD_LOGIC; 
  signal monitor_6_OBUF_729 : STD_LOGIC; 
  signal monitor_5_OBUF_730 : STD_LOGIC; 
  signal monitor_4_OBUF_731 : STD_LOGIC; 
  signal monitor_3_OBUF_732 : STD_LOGIC; 
  signal monitor_2_OBUF_733 : STD_LOGIC; 
  signal monitor_1_OBUF_734 : STD_LOGIC; 
  signal monitor_0_OBUF_735 : STD_LOGIC; 
  signal ir_o_7_OBUF_736 : STD_LOGIC; 
  signal ir_o_6_OBUF_737 : STD_LOGIC; 
  signal ir_o_5_OBUF_738 : STD_LOGIC; 
  signal ir_o_4_OBUF_739 : STD_LOGIC; 
  signal ir_o_3_OBUF_740 : STD_LOGIC; 
  signal ir_o_2_OBUF_741 : STD_LOGIC; 
  signal ir_o_1_OBUF_742 : STD_LOGIC; 
  signal ir_o_0_OBUF_743 : STD_LOGIC; 
  signal acc_r_OBUF_752 : STD_LOGIC; 
  signal acc_w_OBUF_753 : STD_LOGIC; 
  signal alu_C_in_enabled_OBUF_754 : STD_LOGIC; 
  signal alu_op_0_OBUF_755 : STD_LOGIC; 
  signal alu_op_1_OBUF_756 : STD_LOGIC; 
  signal alu_op_2_OBUF_757 : STD_LOGIC; 
  signal bus1_OBUF_758 : STD_LOGIC; 
  signal flags_clr_OBUF_759 : STD_LOGIC; 
  signal flags_w_OBUF_760 : STD_LOGIC; 
  signal iar_r_OBUF_761 : STD_LOGIC; 
  signal ctl_iar_w_OBUF_762 : STD_LOGIC; 
  signal ir_w_OBUF_763 : STD_LOGIC; 
  signal ram_a_w_OBUF_764 : STD_LOGIC; 
  signal ram_r_OBUF_765 : STD_LOGIC; 
  signal ram_w_OBUF_766 : STD_LOGIC; 
  signal r0_r_OBUF_767 : STD_LOGIC; 
  signal ctl_r0_w_OBUF_768 : STD_LOGIC; 
  signal r1_r_OBUF_769 : STD_LOGIC; 
  signal ctl_r1_w_OBUF_770 : STD_LOGIC; 
  signal r2_r_OBUF_771 : STD_LOGIC; 
  signal r2_w_OBUF_772 : STD_LOGIC; 
  signal r3_r_OBUF_773 : STD_LOGIC; 
  signal r3_w_OBUF_774 : STD_LOGIC; 
  signal temp_w_OBUF_775 : STD_LOGIC; 
  signal XLXN_216 : STD_LOGIC; 
  signal rst : STD_LOGIC; 
  signal flags_o_0_OBUF_778 : STD_LOGIC; 
  signal flags_o_1_OBUF_779 : STD_LOGIC; 
  signal flags_o_2_OBUF_780 : STD_LOGIC; 
  signal flags_o_3_OBUF_781 : STD_LOGIC; 
  signal alu_C_in_OBUF_790 : STD_LOGIC; 
  signal XLXN_217 : STD_LOGIC; 
  signal iar_w_OBUF_792 : STD_LOGIC; 
  signal r0_w_OBUF_793 : STD_LOGIC; 
  signal r1_w : STD_LOGIC; 
  signal XLXN_23 : STD_LOGIC; 
  signal temp_r : STD_LOGIC; 
  signal XLXI_105_XLXN_2 : STD_LOGIC; 
  signal XLXI_105_XLXI_4_XLXN_2 : STD_LOGIC; 
  signal XLXI_106_XLXI_4_XLXN_2 : STD_LOGIC; 
  signal XLXI_107_XLXI_4_XLXN_2 : STD_LOGIC; 
  signal XLXI_111_XLXI_4_XLXN_2 : STD_LOGIC; 
  signal XLXI_112_XLXI_4_XLXN_2 : STD_LOGIC; 
  signal XLXI_113_XLXI_4_XLXN_2 : STD_LOGIC; 
  signal XLXI_114_XLXI_4_XLXN_2 : STD_LOGIC; 
  signal XLXI_115_XLXI_4_XLXN_2 : STD_LOGIC; 
  signal XLXI_108_XLXI_4_XLXN_2 : STD_LOGIC; 
  signal clck_gen_clr : STD_LOGIC; 
  signal clck_gen_XLXN_1 : STD_LOGIC; 
  signal clck_gen_XLXN_9 : STD_LOGIC; 
  signal pass_th_buff_origin_XLXN_2 : STD_LOGIC; 
  signal pass_th_buff_const_one_XLXN_2 : STD_LOGIC; 
  signal pass_th_XLXN_32 : STD_LOGIC; 
  signal XLXI_9_XLXN_71 : STD_LOGIC; 
  signal alu_inst_XLXN_272 : STD_LOGIC; 
  signal alu_inst_XLXN_269 : STD_LOGIC; 
  signal alu_inst_XLXN_239 : STD_LOGIC; 
  signal alu_inst_XLXN_228 : STD_LOGIC; 
  signal alu_inst_XLXN_193 : STD_LOGIC; 
  signal alu_inst_XLXN_99 : STD_LOGIC; 
  signal alu_inst_XLXN_98 : STD_LOGIC; 
  signal alu_inst_XLXN_202 : STD_LOGIC; 
  signal alu_inst_XLXN_201 : STD_LOGIC; 
  signal alu_inst_XLXN_227 : STD_LOGIC; 
  signal alu_inst_XLXN_226 : STD_LOGIC; 
  signal alu_inst_XLXN_225 : STD_LOGIC; 
  signal alu_inst_XLXN_224 : STD_LOGIC; 
  signal alu_inst_XLXN_223 : STD_LOGIC; 
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
  signal pass_th_const_one_XLXN_11 : STD_LOGIC; 
  signal pass_th_const_one_XLXN_10 : STD_LOGIC; 
  signal clk_IBUF_1217 : STD_LOGIC; 
  signal clck_gen_XLXI_4_n0009_inv : STD_LOGIC; 
  signal clck_gen_XLXI_4_q_tmp_q_tmp_MUX_26_o : STD_LOGIC; 
  signal alu_inst_XLXI_137_XLXI_1_N01 : STD_LOGIC; 
  signal NLW_alu_inst_XLXI_126_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_cpu_ctl_XLXI_556_O_UNCONNECTED : STD_LOGIC; 
  signal alu_x : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal temp_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal pto : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_108_XLXN_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_115_XLXN_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_114_XLXN_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_113_XLXN_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_112_XLXN_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_111_XLXN_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_107_XLXN_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_106_XLXN_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_105_XLXN_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal pass_th_one_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_9_ro : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_lor : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_land : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_ls : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_t : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_XLXN_270 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_XLXN_204 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_XLXN_7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal cpu_ctl_stp_XLXI_24_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XLXI_102 : FDC_1
    port map (
      C => clkr_OBUF_705,
      CLR => rst,
      D => flags_o_0_OBUF_778,
      Q => XLXN_216
    );
  XLXI_116 : BUF
    port map (
      I => rst_in_IBUF_695,
      O => XLXN_233
    );
  XLXI_117 : INV
    port map (
      I => XLXN_233,
      O => rst
    );
  XLXI_89 : AND2
    port map (
      I0 => XLXN_216,
      I1 => alu_C_in_enabled_OBUF_754,
      O => alu_C_in_OBUF_790
    );
  XLXI_103 : OR2
    port map (
      I0 => rst,
      I1 => flags_clr_OBUF_759,
      O => XLXN_217
    );
  XLXI_10 : OR2
    port map (
      I0 => clck_gen_clr,
      I1 => ctl_iar_w_OBUF_762,
      O => iar_w_OBUF_792
    );
  XLXI_11 : OR2
    port map (
      I0 => clck_gen_clr,
      I1 => ctl_r0_w_OBUF_768,
      O => r0_w_OBUF_793
    );
  XLXI_12 : OR2
    port map (
      I0 => clck_gen_clr,
      I1 => ctl_r1_w_OBUF_770,
      O => r1_w
    );
  XLXI_7 : PULLUP
    port map (
      O => XLXN_23
    );
  XLXI_8 : PULLUP
    port map (
      O => temp_r
    );
  XLXI_108_XLXI_7 : PULLDOWN
    port map (
      O => rst
    );
  XLXI_115_XLXI_7 : PULLDOWN
    port map (
      O => rst
    );
  XLXI_114_XLXI_7 : PULLDOWN
    port map (
      O => rst
    );
  XLXI_113_XLXI_7 : PULLDOWN
    port map (
      O => rst
    );
  XLXI_112_XLXI_7 : PULLDOWN
    port map (
      O => rst
    );
  XLXI_111_XLXI_7 : PULLDOWN
    port map (
      O => rst
    );
  XLXI_107_XLXI_7 : PULLDOWN
    port map (
      O => rst
    );
  XLXI_106_XLXI_7 : PULLDOWN
    port map (
      O => rst
    );
  XLXI_105_XLXI_7 : PULLDOWN
    port map (
      O => rst
    );
  XLXI_105_XLXI_6 : VCC
    port map (
      P => XLXI_105_XLXN_2
    );
  XLXI_105_XLXI_4_XLXI_55 : INV
    port map (
      I => rinr_IBUF_693,
      O => XLXI_105_XLXI_4_XLXN_2
    );
  XLXI_106_XLXI_4_XLXI_55 : INV
    port map (
      I => iar_r_OBUF_761,
      O => XLXI_106_XLXI_4_XLXN_2
    );
  XLXI_107_XLXI_4_XLXI_55 : INV
    port map (
      I => XLXN_23,
      O => XLXI_107_XLXI_4_XLXN_2
    );
  XLXI_111_XLXI_4_XLXI_55 : INV
    port map (
      I => temp_r,
      O => XLXI_111_XLXI_4_XLXN_2
    );
  XLXI_112_XLXI_4_XLXI_55 : INV
    port map (
      I => r0_r_OBUF_767,
      O => XLXI_112_XLXI_4_XLXN_2
    );
  XLXI_113_XLXI_4_XLXI_55 : INV
    port map (
      I => r1_r_OBUF_769,
      O => XLXI_113_XLXI_4_XLXN_2
    );
  XLXI_114_XLXI_4_XLXI_55 : INV
    port map (
      I => r2_r_OBUF_771,
      O => XLXI_114_XLXI_4_XLXN_2
    );
  XLXI_115_XLXI_4_XLXI_55 : INV
    port map (
      I => r3_r_OBUF_773,
      O => XLXI_115_XLXI_4_XLXN_2
    );
  XLXI_108_XLXI_4_XLXI_55 : INV
    port map (
      I => acc_r_OBUF_752,
      O => XLXI_108_XLXI_4_XLXN_2
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
      I => clk_IBUF_BUFG_692,
      O => clck_gen_XLXN_9
    );
  clck_gen_XLXI_10 : AND2B1
    port map (
      I0 => clk_IBUF_1217,
      I1 => clkc_OBUF_704,
      O => clkw_OBUF_706
    );
  clck_gen_XLXI_9 : OR2
    port map (
      I0 => clkc_OBUF_704,
      I1 => clk_IBUF_1217,
      O => clkr_OBUF_705
    );
  pass_th_buff_origin_XLXI_55 : INV
    port map (
      I => pass_th_XLXN_32,
      O => pass_th_buff_origin_XLXN_2
    );
  pass_th_buff_const_one_XLXI_55 : INV
    port map (
      I => bus1_OBUF_758,
      O => pass_th_buff_const_one_XLXN_2
    );
  pass_th_inv_one : INV
    port map (
      I => bus1_OBUF_758,
      O => pass_th_XLXN_32
    );
  XLXI_9_XLXI_23 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000010"
    )
    port map (
      WCLK => clkw_OBUF_706,
      D => sysbus_7_OBUF_696,
      WE => ram_w_OBUF_766,
      O => XLXI_9_ro(7),
      A(7) => ram_a_o_7_OBUF_720,
      A(6) => ram_a_o_6_OBUF_721,
      A(5) => ram_a_o_5_OBUF_722,
      A(4) => ram_a_o_4_OBUF_723,
      A(3) => ram_a_o_3_OBUF_724,
      A(2) => ram_a_o_2_OBUF_725,
      A(1) => ram_a_o_1_OBUF_726,
      A(0) => ram_a_o_0_OBUF_727
    );
  XLXI_9_XLXI_22 : RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000000000000000000000000000000000000006A0"
    )
    port map (
      WCLK => clkw_OBUF_706,
      D => sysbus_6_OBUF_697,
      WE => ram_w_OBUF_766,
      O => XLXI_9_ro(6),
      A(7) => ram_a_o_7_OBUF_720,
      A(6) => ram_a_o_6_OBUF_721,
      A(5) => ram_a_o_5_OBUF_722,
      A(4) => ram_a_o_4_OBUF_723,
      A(3) => ram_a_o_3_OBUF_724,
      A(2) => ram_a_o_2_OBUF_725,
      A(1) => ram_a_o_1_OBUF_726,
      A(0) => ram_a_o_0_OBUF_727
    );
  XLXI_9_XLXI_21 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000205"
    )
    port map (
      WCLK => clkw_OBUF_706,
      D => sysbus_5_OBUF_698,
      WE => ram_w_OBUF_766,
      O => XLXI_9_ro(5),
      A(7) => ram_a_o_7_OBUF_720,
      A(6) => ram_a_o_6_OBUF_721,
      A(5) => ram_a_o_5_OBUF_722,
      A(4) => ram_a_o_4_OBUF_723,
      A(3) => ram_a_o_3_OBUF_724,
      A(2) => ram_a_o_2_OBUF_725,
      A(1) => ram_a_o_1_OBUF_726,
      A(0) => ram_a_o_0_OBUF_727
    );
  XLXI_9_XLXI_20 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000020"
    )
    port map (
      WCLK => clkw_OBUF_706,
      D => sysbus_4_OBUF_699,
      WE => ram_w_OBUF_766,
      O => XLXI_9_ro(4),
      A(7) => ram_a_o_7_OBUF_720,
      A(6) => ram_a_o_6_OBUF_721,
      A(5) => ram_a_o_5_OBUF_722,
      A(4) => ram_a_o_4_OBUF_723,
      A(3) => ram_a_o_3_OBUF_724,
      A(2) => ram_a_o_2_OBUF_725,
      A(1) => ram_a_o_1_OBUF_726,
      A(0) => ram_a_o_0_OBUF_727
    );
  XLXI_9_XLXI_19 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000040"
    )
    port map (
      WCLK => clkw_OBUF_706,
      D => sysbus_3_OBUF_700,
      WE => ram_w_OBUF_766,
      O => XLXI_9_ro(3),
      A(7) => ram_a_o_7_OBUF_720,
      A(6) => ram_a_o_6_OBUF_721,
      A(5) => ram_a_o_5_OBUF_722,
      A(4) => ram_a_o_4_OBUF_723,
      A(3) => ram_a_o_3_OBUF_724,
      A(2) => ram_a_o_2_OBUF_725,
      A(1) => ram_a_o_1_OBUF_726,
      A(0) => ram_a_o_0_OBUF_727
    );
  XLXI_9_XLXI_18 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000901"
    )
    port map (
      WCLK => clkw_OBUF_706,
      D => sysbus_2_OBUF_701,
      WE => ram_w_OBUF_766,
      O => XLXI_9_ro(2),
      A(7) => ram_a_o_7_OBUF_720,
      A(6) => ram_a_o_6_OBUF_721,
      A(5) => ram_a_o_5_OBUF_722,
      A(4) => ram_a_o_4_OBUF_723,
      A(3) => ram_a_o_3_OBUF_724,
      A(2) => ram_a_o_2_OBUF_725,
      A(1) => ram_a_o_1_OBUF_726,
      A(0) => ram_a_o_0_OBUF_727
    );
  XLXI_9_XLXI_17 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      WCLK => clkw_OBUF_706,
      D => sysbus_1_OBUF_702,
      WE => ram_w_OBUF_766,
      O => XLXI_9_ro(1),
      A(7) => ram_a_o_7_OBUF_720,
      A(6) => ram_a_o_6_OBUF_721,
      A(5) => ram_a_o_5_OBUF_722,
      A(4) => ram_a_o_4_OBUF_723,
      A(3) => ram_a_o_3_OBUF_724,
      A(2) => ram_a_o_2_OBUF_725,
      A(1) => ram_a_o_1_OBUF_726,
      A(0) => ram_a_o_0_OBUF_727
    );
  XLXI_9_XLXI_1 : RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000072"
    )
    port map (
      WCLK => clkw_OBUF_706,
      D => sysbus_0_OBUF_703,
      WE => ram_w_OBUF_766,
      O => XLXI_9_ro(0),
      A(7) => ram_a_o_7_OBUF_720,
      A(6) => ram_a_o_6_OBUF_721,
      A(5) => ram_a_o_5_OBUF_722,
      A(4) => ram_a_o_4_OBUF_723,
      A(3) => ram_a_o_3_OBUF_724,
      A(2) => ram_a_o_2_OBUF_725,
      A(1) => ram_a_o_1_OBUF_726,
      A(0) => ram_a_o_0_OBUF_727
    );
  XLXI_9_XLXI_42 : INV
    port map (
      I => ram_r_OBUF_765,
      O => XLXI_9_XLXN_71
    );
  alu_inst_XLXI_126 : INV
    port map (
      I => alu_inst_XLXN_227,
      O => NLW_alu_inst_XLXI_126_O_UNCONNECTED
    );
  alu_inst_XLXI_125 : INV
    port map (
      I => alu_inst_XLXN_226,
      O => alu_inst_XLXN_272
    );
  alu_inst_XLXI_124 : INV
    port map (
      I => alu_inst_XLXN_225,
      O => alu_inst_XLXN_269
    );
  alu_inst_XLXI_123 : INV
    port map (
      I => alu_inst_XLXN_224,
      O => alu_inst_XLXN_239
    );
  alu_inst_XLXI_122 : INV
    port map (
      I => alu_inst_XLXN_223,
      O => alu_inst_XLXN_228
    );
  alu_inst_XLXI_100 : INV
    port map (
      I => alu_inst_XLXN_192,
      O => alu_inst_XLXN_193
    );
  alu_inst_XLXI_42 : INV
    port map (
      I => alu_inst_XLXN_105,
      O => alu_inst_XLXN_99
    );
  alu_inst_XLXI_5 : INV
    port map (
      I => alu_inst_XLXN_8,
      O => alu_inst_XLXN_98
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
      O => alu_C_out_OBUF_716
    );
  alu_inst_XLXI_127 : OR2
    port map (
      I0 => sysbus_7_OBUF_696,
      I1 => pto(7),
      O => alu_inst_lor(7)
    );
  alu_inst_XLXI_114 : AND2
    port map (
      I0 => sysbus_7_OBUF_696,
      I1 => pto(7),
      O => alu_inst_land(7)
    );
  alu_inst_XLXI_96 : BUF
    port map (
      I => sysbus_7_OBUF_696,
      O => alu_inst_ls(6)
    );
  alu_inst_XLXI_47 : BUF
    port map (
      I => sysbus_7_OBUF_696,
      O => alu_inst_XLXN_93
    );
  alu_inst_XLXI_128 : OR2
    port map (
      I0 => sysbus_6_OBUF_697,
      I1 => pto(6),
      O => alu_inst_lor(6)
    );
  alu_inst_XLXI_115 : AND2
    port map (
      I0 => sysbus_6_OBUF_697,
      I1 => pto(6),
      O => alu_inst_land(6)
    );
  alu_inst_XLXI_95 : BUF
    port map (
      I => sysbus_6_OBUF_697,
      O => alu_inst_ls(5)
    );
  alu_inst_XLXI_19 : BUF
    port map (
      I => sysbus_6_OBUF_697,
      O => alu_inst_t(7)
    );
  alu_inst_XLXI_129 : OR2
    port map (
      I0 => sysbus_5_OBUF_698,
      I1 => pto(5),
      O => alu_inst_lor(5)
    );
  alu_inst_XLXI_116 : AND2
    port map (
      I0 => sysbus_5_OBUF_698,
      I1 => pto(5),
      O => alu_inst_land(5)
    );
  alu_inst_XLXI_94 : BUF
    port map (
      I => sysbus_5_OBUF_698,
      O => alu_inst_ls(4)
    );
  alu_inst_XLXI_18 : BUF
    port map (
      I => sysbus_5_OBUF_698,
      O => alu_inst_t(6)
    );
  alu_inst_XLXI_130 : OR2
    port map (
      I0 => sysbus_4_OBUF_699,
      I1 => pto(4),
      O => alu_inst_lor(4)
    );
  alu_inst_XLXI_117 : AND2
    port map (
      I0 => sysbus_4_OBUF_699,
      I1 => pto(4),
      O => alu_inst_land(4)
    );
  alu_inst_XLXI_93 : BUF
    port map (
      I => sysbus_4_OBUF_699,
      O => alu_inst_ls(3)
    );
  alu_inst_XLXI_17 : BUF
    port map (
      I => sysbus_4_OBUF_699,
      O => alu_inst_t(5)
    );
  alu_inst_XLXI_131 : OR2
    port map (
      I0 => sysbus_3_OBUF_700,
      I1 => pto(3),
      O => alu_inst_lor(3)
    );
  alu_inst_XLXI_118 : AND2
    port map (
      I0 => sysbus_3_OBUF_700,
      I1 => pto(3),
      O => alu_inst_land(3)
    );
  alu_inst_XLXI_92 : BUF
    port map (
      I => sysbus_3_OBUF_700,
      O => alu_inst_ls(2)
    );
  alu_inst_XLXI_16 : BUF
    port map (
      I => sysbus_3_OBUF_700,
      O => alu_inst_t(4)
    );
  alu_inst_XLXI_132 : OR2
    port map (
      I0 => sysbus_2_OBUF_701,
      I1 => pto(2),
      O => alu_inst_lor(2)
    );
  alu_inst_XLXI_119 : AND2
    port map (
      I0 => sysbus_2_OBUF_701,
      I1 => pto(2),
      O => alu_inst_land(2)
    );
  alu_inst_XLXI_91 : BUF
    port map (
      I => sysbus_2_OBUF_701,
      O => alu_inst_ls(1)
    );
  alu_inst_XLXI_15 : BUF
    port map (
      I => sysbus_2_OBUF_701,
      O => alu_inst_t(3)
    );
  alu_inst_XLXI_133 : OR2
    port map (
      I0 => sysbus_1_OBUF_702,
      I1 => pto(1),
      O => alu_inst_lor(1)
    );
  alu_inst_XLXI_120 : AND2
    port map (
      I0 => sysbus_1_OBUF_702,
      I1 => pto(1),
      O => alu_inst_land(1)
    );
  alu_inst_XLXI_90 : BUF
    port map (
      I => sysbus_1_OBUF_702,
      O => alu_inst_ls(0)
    );
  alu_inst_XLXI_14 : BUF
    port map (
      I => sysbus_1_OBUF_702,
      O => alu_inst_t(2)
    );
  alu_inst_XLXI_134 : OR2
    port map (
      I0 => sysbus_0_OBUF_703,
      I1 => pto(0),
      O => alu_inst_lor(0)
    );
  alu_inst_XLXI_121 : AND2
    port map (
      I0 => sysbus_0_OBUF_703,
      I1 => pto(0),
      O => alu_inst_land(0)
    );
  alu_inst_XLXI_89 : BUF
    port map (
      I => sysbus_0_OBUF_703,
      O => alu_inst_XLXN_191
    );
  alu_inst_XLXI_13 : BUF
    port map (
      I => sysbus_0_OBUF_703,
      O => alu_inst_t(1)
    );
  alu_inst_XLXI_44 : AND2
    port map (
      I0 => alu_inst_XLXN_91,
      I1 => alu_inst_XLXN_8,
      O => alu_inst_XLXN_199
    );
  alu_inst_XLXI_98 : BUF
    port map (
      I => alu_C_in_OBUF_790,
      O => alu_inst_ls(7)
    );
  alu_inst_XLXI_12 : BUF
    port map (
      I => alu_C_in_OBUF_790,
      O => alu_inst_t(0)
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_1 : XNOR2
    port map (
      I0 => pto(7),
      I1 => sysbus_7_OBUF_696,
      O => alu_inst_XLXI_135_XLXI_2_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_2_XLXN_9,
      I1 => sysbus_7_OBUF_696,
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
      O => alu_eq_OBUF_717
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_3 : OR2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_2_XLXN_8,
      I1 => alu_inst_XLXI_135_XLXN_43,
      O => alu_gt_OBUF_718
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_6 : INV
    port map (
      I => alu_inst_XLXI_135_XLXI_2_XLXN_3,
      O => alu_inst_XLXN_270(7)
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_1 : XNOR2
    port map (
      I0 => pto(6),
      I1 => sysbus_6_OBUF_697,
      O => alu_inst_XLXI_135_XLXI_3_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_3_XLXN_9,
      I1 => sysbus_6_OBUF_697,
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
      O => alu_inst_XLXN_270(6)
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_1 : XNOR2
    port map (
      I0 => pto(5),
      I1 => sysbus_5_OBUF_698,
      O => alu_inst_XLXI_135_XLXI_4_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_4_XLXN_9,
      I1 => sysbus_5_OBUF_698,
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
      O => alu_inst_XLXN_270(5)
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_1 : XNOR2
    port map (
      I0 => pto(4),
      I1 => sysbus_4_OBUF_699,
      O => alu_inst_XLXI_135_XLXI_5_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_5_XLXN_9,
      I1 => sysbus_4_OBUF_699,
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
      O => alu_inst_XLXN_270(4)
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_1 : XNOR2
    port map (
      I0 => pto(3),
      I1 => sysbus_3_OBUF_700,
      O => alu_inst_XLXI_135_XLXI_6_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_6_XLXN_9,
      I1 => sysbus_3_OBUF_700,
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
      O => alu_inst_XLXN_270(3)
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_1 : XNOR2
    port map (
      I0 => pto(2),
      I1 => sysbus_2_OBUF_701,
      O => alu_inst_XLXI_135_XLXI_7_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_7_XLXN_9,
      I1 => sysbus_2_OBUF_701,
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
      O => alu_inst_XLXN_270(2)
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_1 : XNOR2
    port map (
      I0 => pto(1),
      I1 => sysbus_1_OBUF_702,
      O => alu_inst_XLXI_135_XLXI_8_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_8_XLXN_9,
      I1 => sysbus_1_OBUF_702,
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
      O => alu_inst_XLXN_270(1)
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_1 : XNOR2
    port map (
      I0 => pto(0),
      I1 => sysbus_0_OBUF_703,
      O => alu_inst_XLXI_135_XLXI_9_XLXN_3
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_4 : AND2
    port map (
      I0 => alu_inst_XLXI_135_XLXI_9_XLXN_9,
      I1 => sysbus_0_OBUF_703,
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
      O => alu_inst_XLXN_270(0)
    );
  alu_inst_XLXI_135_XLXI_12 : PULLDOWN
    port map (
      O => alu_inst_XLXI_135_XLXN_59
    );
  alu_inst_XLXI_135_XLXI_11 : PULLUP
    port map (
      O => alu_inst_XLXI_135_XLXN_58
    );
  cpu_ctl_stp_XLXI_26 : INV
    port map (
      I => clkc_OBUF_704,
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
      O => alu_op_2_OBUF_757
    );
  cpu_ctl_XLXI_22 : OR2
    port map (
      I0 => cpu_ctl_XLXN_31,
      I1 => clck_gen_clr,
      O => alu_op_1_OBUF_756
    );
  cpu_ctl_XLXI_21 : OR2
    port map (
      I0 => cpu_ctl_XLXN_30,
      I1 => clck_gen_clr,
      O => alu_op_0_OBUF_755
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
      I => ir_o_1_OBUF_742,
      O => cpu_ctl_op_gt
    );
  cpu_ctl_XLXI_526 : BUF
    port map (
      I => ir_o_0_OBUF_743,
      O => cpu_ctl_op_c
    );
  cpu_ctl_XLXI_529 : BUF
    port map (
      I => ir_o_3_OBUF_740,
      O => cpu_ctl_op_z
    );
  cpu_ctl_XLXI_528 : BUF
    port map (
      I => ir_o_2_OBUF_741,
      O => cpu_ctl_op_eq
    );
  cpu_ctl_XLXI_40 : BUF
    port map (
      I => ir_o_7_OBUF_736,
      O => cpu_ctl_alu_DUMMY
    );
  cpu_ctl_XLXI_559 : AND3B1
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => ir_o_6_OBUF_737,
      I2 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_32
    );
  cpu_ctl_XLXI_558 : AND3B1
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => ir_o_5_OBUF_738,
      I2 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_31
    );
  cpu_ctl_XLXI_557 : AND3B1
    port map (
      I0 => cpu_ctl_s1_DUMMY,
      I1 => ir_o_4_OBUF_739,
      I2 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_30
    );
  cpu_ctl_XLXI_508 : BUF
    port map (
      I => flags_o_0_OBUF_778,
      O => cpu_ctl_flags_c
    );
  cpu_ctl_XLXI_507 : BUF
    port map (
      I => flags_o_1_OBUF_779,
      O => cpu_ctl_flags_gt
    );
  cpu_ctl_XLXI_506 : BUF
    port map (
      I => flags_o_2_OBUF_780,
      O => cpu_ctl_flags_eq
    );
  cpu_ctl_XLXI_505 : BUF
    port map (
      I => flags_o_3_OBUF_781,
      O => cpu_ctl_flags_z
    );
  cpu_ctl_XLXI_551 : AND2
    port map (
      I0 => cpu_ctl_flg_clf_s4,
      I1 => clkw_OBUF_706,
      O => flags_clr_OBUF_759
    );
  cpu_ctl_XLXI_503 : AND2
    port map (
      I0 => cpu_ctl_XLXN_997,
      I1 => clkw_OBUF_706,
      O => flags_w_OBUF_760
    );
  cpu_ctl_XLXI_492 : AND2
    port map (
      I0 => cpu_ctl_XLXN_981,
      I1 => clkw_OBUF_706,
      O => ram_w_OBUF_766
    );
  cpu_ctl_XLXI_229 : AND2
    port map (
      I0 => cpu_ctl_XLXN_435,
      I1 => clkw_OBUF_706,
      O => temp_w_OBUF_775
    );
  cpu_ctl_XLXI_83 : AND2
    port map (
      I0 => cpu_ctl_XLXN_155,
      I1 => clkw_OBUF_706,
      O => r3_w_OBUF_774
    );
  cpu_ctl_XLXI_82 : AND2
    port map (
      I0 => cpu_ctl_XLXN_156,
      I1 => clkw_OBUF_706,
      O => r2_w_OBUF_772
    );
  cpu_ctl_XLXI_81 : AND2
    port map (
      I0 => cpu_ctl_XLXN_157,
      I1 => clkw_OBUF_706,
      O => ctl_r1_w_OBUF_770
    );
  cpu_ctl_XLXI_80 : AND2
    port map (
      I0 => cpu_ctl_XLXN_158,
      I1 => clkw_OBUF_706,
      O => ctl_r0_w_OBUF_768
    );
  cpu_ctl_XLXI_17 : AND2
    port map (
      I0 => cpu_ctl_XLXN_23,
      I1 => clkw_OBUF_706,
      O => acc_w_OBUF_753
    );
  cpu_ctl_XLXI_7 : AND2
    port map (
      I0 => cpu_ctl_XLXN_16,
      I1 => clkw_OBUF_706,
      O => ram_a_w_OBUF_764
    );
  cpu_ctl_XLXI_6 : AND2
    port map (
      I0 => cpu_ctl_XLXN_12,
      I1 => clkw_OBUF_706,
      O => ir_w_OBUF_763
    );
  cpu_ctl_XLXI_5 : AND2
    port map (
      I0 => cpu_ctl_XLXN_11,
      I1 => clkw_OBUF_706,
      O => ctl_iar_w_OBUF_762
    );
  cpu_ctl_XLXI_554 : AND2
    port map (
      I0 => clkr_OBUF_705,
      I1 => cpu_ctl_XLXN_1034,
      O => alu_C_in_enabled_OBUF_754
    );
  cpu_ctl_XLXI_141 : AND2
    port map (
      I0 => clkr_OBUF_705,
      I1 => cpu_ctl_XLXN_814,
      O => r3_r_OBUF_773
    );
  cpu_ctl_XLXI_140 : AND2
    port map (
      I0 => clkr_OBUF_705,
      I1 => cpu_ctl_XLXN_813,
      O => r2_r_OBUF_771
    );
  cpu_ctl_XLXI_139 : AND2
    port map (
      I0 => clkr_OBUF_705,
      I1 => cpu_ctl_XLXN_812,
      O => r1_r_OBUF_769
    );
  cpu_ctl_XLXI_138 : AND2
    port map (
      I0 => clkr_OBUF_705,
      I1 => cpu_ctl_XLXN_811,
      O => r0_r_OBUF_767
    );
  cpu_ctl_XLXI_16 : AND2
    port map (
      I0 => clkr_OBUF_705,
      I1 => cpu_ctl_XLXN_22,
      O => acc_r_OBUF_752
    );
  cpu_ctl_XLXI_4 : AND2
    port map (
      I0 => clkr_OBUF_705,
      I1 => cpu_ctl_XLXN_7,
      O => ram_r_OBUF_765
    );
  cpu_ctl_XLXI_3 : AND2
    port map (
      I0 => clkr_OBUF_705,
      I1 => cpu_ctl_XLXN_5,
      O => bus1_OBUF_758
    );
  cpu_ctl_XLXI_2 : AND2
    port map (
      I0 => clkr_OBUF_705,
      I1 => cpu_ctl_XLXN_4,
      O => iar_r_OBUF_761
    );
  pass_th_const_one_XLXI_12 : PULLUP
    port map (
      O => pass_th_const_one_XLXN_11
    );
  pass_th_const_one_XLXI_11 : PULLDOWN
    port map (
      O => pass_th_const_one_XLXN_10
    );
  pass_th_const_one_XLXI_10 : BUF
    port map (
      I => pass_th_const_one_XLXN_11,
      O => pass_th_one_out(0)
    );
  pass_th_const_one_XLXI_9 : BUF
    port map (
      I => pass_th_const_one_XLXN_10,
      O => pass_th_one_out(1)
    );
  pass_th_const_one_XLXI_7 : BUF
    port map (
      I => pass_th_const_one_XLXN_10,
      O => pass_th_one_out(2)
    );
  pass_th_const_one_XLXI_6 : BUF
    port map (
      I => pass_th_const_one_XLXN_10,
      O => pass_th_one_out(3)
    );
  pass_th_const_one_XLXI_5 : BUF
    port map (
      I => pass_th_const_one_XLXN_10,
      O => pass_th_one_out(4)
    );
  pass_th_const_one_XLXI_4 : BUF
    port map (
      I => pass_th_const_one_XLXN_10,
      O => pass_th_one_out(5)
    );
  pass_th_const_one_XLXI_3 : BUF
    port map (
      I => pass_th_const_one_XLXN_10,
      O => pass_th_one_out(6)
    );
  pass_th_const_one_XLXI_2 : BUF
    port map (
      I => pass_th_const_one_XLXN_10,
      O => pass_th_one_out(7)
    );
  clk_IBUF : IBUF
    port map (
      I => clk,
      O => clk_IBUF_1217
    );
  rind_7_IBUF : IBUF
    port map (
      I => rind(7),
      O => rind_7_IBUF_684
    );
  rind_6_IBUF : IBUF
    port map (
      I => rind(6),
      O => rind_6_IBUF_685
    );
  rind_5_IBUF : IBUF
    port map (
      I => rind(5),
      O => rind_5_IBUF_686
    );
  rind_4_IBUF : IBUF
    port map (
      I => rind(4),
      O => rind_4_IBUF_687
    );
  rind_3_IBUF : IBUF
    port map (
      I => rind(3),
      O => rind_3_IBUF_688
    );
  rind_2_IBUF : IBUF
    port map (
      I => rind(2),
      O => rind_2_IBUF_689
    );
  rind_1_IBUF : IBUF
    port map (
      I => rind(1),
      O => rind_1_IBUF_690
    );
  rind_0_IBUF : IBUF
    port map (
      I => rind(0),
      O => rind_0_IBUF_691
    );
  rinr_IBUF : IBUF
    port map (
      I => rinr,
      O => rinr_IBUF_693
    );
  rinw_IBUF : IBUF
    port map (
      I => rinw,
      O => rinw_IBUF_694
    );
  rst_in_IBUF : IBUF
    port map (
      I => rst_in,
      O => rst_in_IBUF_695
    );
  alu_op_2_OBUF : OBUF
    port map (
      I => alu_op_2_OBUF_757,
      O => alu_op(2)
    );
  alu_op_1_OBUF : OBUF
    port map (
      I => alu_op_1_OBUF_756,
      O => alu_op(1)
    );
  alu_op_0_OBUF : OBUF
    port map (
      I => alu_op_0_OBUF_755,
      O => alu_op(0)
    );
  flags_o_3_OBUF : OBUF
    port map (
      I => flags_o_3_OBUF_781,
      O => flags_o(3)
    );
  flags_o_2_OBUF : OBUF
    port map (
      I => flags_o_2_OBUF_780,
      O => flags_o(2)
    );
  flags_o_1_OBUF : OBUF
    port map (
      I => flags_o_1_OBUF_779,
      O => flags_o(1)
    );
  flags_o_0_OBUF : OBUF
    port map (
      I => flags_o_0_OBUF_778,
      O => flags_o(0)
    );
  ir_o_7_OBUF : OBUF
    port map (
      I => ir_o_7_OBUF_736,
      O => ir_o(7)
    );
  ir_o_6_OBUF : OBUF
    port map (
      I => ir_o_6_OBUF_737,
      O => ir_o(6)
    );
  ir_o_5_OBUF : OBUF
    port map (
      I => ir_o_5_OBUF_738,
      O => ir_o(5)
    );
  ir_o_4_OBUF : OBUF
    port map (
      I => ir_o_4_OBUF_739,
      O => ir_o(4)
    );
  ir_o_3_OBUF : OBUF
    port map (
      I => ir_o_3_OBUF_740,
      O => ir_o(3)
    );
  ir_o_2_OBUF : OBUF
    port map (
      I => ir_o_2_OBUF_741,
      O => ir_o(2)
    );
  ir_o_1_OBUF : OBUF
    port map (
      I => ir_o_1_OBUF_742,
      O => ir_o(1)
    );
  ir_o_0_OBUF : OBUF
    port map (
      I => ir_o_0_OBUF_743,
      O => ir_o(0)
    );
  monitor_7_OBUF : OBUF
    port map (
      I => monitor_7_OBUF_728,
      O => monitor(7)
    );
  monitor_6_OBUF : OBUF
    port map (
      I => monitor_6_OBUF_729,
      O => monitor(6)
    );
  monitor_5_OBUF : OBUF
    port map (
      I => monitor_5_OBUF_730,
      O => monitor(5)
    );
  monitor_4_OBUF : OBUF
    port map (
      I => monitor_4_OBUF_731,
      O => monitor(4)
    );
  monitor_3_OBUF : OBUF
    port map (
      I => monitor_3_OBUF_732,
      O => monitor(3)
    );
  monitor_2_OBUF : OBUF
    port map (
      I => monitor_2_OBUF_733,
      O => monitor(2)
    );
  monitor_1_OBUF : OBUF
    port map (
      I => monitor_1_OBUF_734,
      O => monitor(1)
    );
  monitor_0_OBUF : OBUF
    port map (
      I => monitor_0_OBUF_735,
      O => monitor(0)
    );
  ram_a_o_7_OBUF : OBUF
    port map (
      I => ram_a_o_7_OBUF_720,
      O => ram_a_o(7)
    );
  ram_a_o_6_OBUF : OBUF
    port map (
      I => ram_a_o_6_OBUF_721,
      O => ram_a_o(6)
    );
  ram_a_o_5_OBUF : OBUF
    port map (
      I => ram_a_o_5_OBUF_722,
      O => ram_a_o(5)
    );
  ram_a_o_4_OBUF : OBUF
    port map (
      I => ram_a_o_4_OBUF_723,
      O => ram_a_o(4)
    );
  ram_a_o_3_OBUF : OBUF
    port map (
      I => ram_a_o_3_OBUF_724,
      O => ram_a_o(3)
    );
  ram_a_o_2_OBUF : OBUF
    port map (
      I => ram_a_o_2_OBUF_725,
      O => ram_a_o(2)
    );
  ram_a_o_1_OBUF : OBUF
    port map (
      I => ram_a_o_1_OBUF_726,
      O => ram_a_o(1)
    );
  ram_a_o_0_OBUF : OBUF
    port map (
      I => ram_a_o_0_OBUF_727,
      O => ram_a_o(0)
    );
  sysbus_7_OBUF : OBUF
    port map (
      I => sysbus_7_OBUF_696,
      O => sysbus(7)
    );
  sysbus_6_OBUF : OBUF
    port map (
      I => sysbus_6_OBUF_697,
      O => sysbus(6)
    );
  sysbus_5_OBUF : OBUF
    port map (
      I => sysbus_5_OBUF_698,
      O => sysbus(5)
    );
  sysbus_4_OBUF : OBUF
    port map (
      I => sysbus_4_OBUF_699,
      O => sysbus(4)
    );
  sysbus_3_OBUF : OBUF
    port map (
      I => sysbus_3_OBUF_700,
      O => sysbus(3)
    );
  sysbus_2_OBUF : OBUF
    port map (
      I => sysbus_2_OBUF_701,
      O => sysbus(2)
    );
  sysbus_1_OBUF : OBUF
    port map (
      I => sysbus_1_OBUF_702,
      O => sysbus(1)
    );
  sysbus_0_OBUF : OBUF
    port map (
      I => sysbus_0_OBUF_703,
      O => sysbus(0)
    );
  acc_r_OBUF : OBUF
    port map (
      I => acc_r_OBUF_752,
      O => acc_r
    );
  acc_w_OBUF : OBUF
    port map (
      I => acc_w_OBUF_753,
      O => acc_w
    );
  alu_C_in_OBUF : OBUF
    port map (
      I => alu_C_in_OBUF_790,
      O => alu_C_in
    );
  alu_C_in_enabled_OBUF : OBUF
    port map (
      I => alu_C_in_enabled_OBUF_754,
      O => alu_C_in_enabled
    );
  alu_C_out_OBUF : OBUF
    port map (
      I => alu_C_out_OBUF_716,
      O => alu_C_out
    );
  alu_eq_OBUF : OBUF
    port map (
      I => alu_eq_OBUF_717,
      O => alu_eq
    );
  alu_gt_OBUF : OBUF
    port map (
      I => alu_gt_OBUF_718,
      O => alu_gt
    );
  alu_z_OBUF : OBUF
    port map (
      I => alu_z_OBUF_719,
      O => alu_z
    );
  bus1_OBUF : OBUF
    port map (
      I => bus1_OBUF_758,
      O => bus1
    );
  clkc_OBUF : OBUF
    port map (
      I => clkc_OBUF_704,
      O => clkc
    );
  clkr_OBUF : OBUF
    port map (
      I => clkr_OBUF_705,
      O => clkr
    );
  clkw_OBUF : OBUF
    port map (
      I => clkw_OBUF_706,
      O => clkw
    );
  ctl_iar_w_OBUF : OBUF
    port map (
      I => ctl_iar_w_OBUF_762,
      O => ctl_iar_w
    );
  ctl_r0_w_OBUF : OBUF
    port map (
      I => ctl_r0_w_OBUF_768,
      O => ctl_r0_w
    );
  ctl_r1_w_OBUF : OBUF
    port map (
      I => ctl_r1_w_OBUF_770,
      O => ctl_r1_w
    );
  flags_clr_OBUF : OBUF
    port map (
      I => flags_clr_OBUF_759,
      O => flags_clr
    );
  flags_w_OBUF : OBUF
    port map (
      I => flags_w_OBUF_760,
      O => flags_w
    );
  iar_r_OBUF : OBUF
    port map (
      I => iar_r_OBUF_761,
      O => iar_r
    );
  iar_w_OBUF : OBUF
    port map (
      I => iar_w_OBUF_792,
      O => iar_w
    );
  ir_w_OBUF : OBUF
    port map (
      I => ir_w_OBUF_763,
      O => ir_w
    );
  ram_a_w_OBUF : OBUF
    port map (
      I => ram_a_w_OBUF_764,
      O => ram_a_w
    );
  ram_r_OBUF : OBUF
    port map (
      I => ram_r_OBUF_765,
      O => ram_r
    );
  ram_w_OBUF : OBUF
    port map (
      I => ram_w_OBUF_766,
      O => ram_w
    );
  r0_r_OBUF : OBUF
    port map (
      I => r0_r_OBUF_767,
      O => r0_r
    );
  r0_w_OBUF : OBUF
    port map (
      I => r0_w_OBUF_793,
      O => r0_w
    );
  r1_r_OBUF : OBUF
    port map (
      I => r1_r_OBUF_769,
      O => r1_r
    );
  r2_r_OBUF : OBUF
    port map (
      I => r2_r_OBUF_771,
      O => r2_r
    );
  r2_w_OBUF : OBUF
    port map (
      I => r2_w_OBUF_772,
      O => r2_w
    );
  r3_r_OBUF : OBUF
    port map (
      I => r3_r_OBUF_773,
      O => r3_r
    );
  r3_w_OBUF : OBUF
    port map (
      I => r3_w_OBUF_774,
      O => r3_w
    );
  temp_w_OBUF : OBUF
    port map (
      I => temp_w_OBUF_775,
      O => temp_w
    );
  clk_IBUF_BUFG : BUFG
    port map (
      O => clk_IBUF_BUFG_692,
      I => clk_IBUF_1217
    );
  XLXI_105_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => rind_7_IBUF_684,
      G => XLXI_105_XLXN_2,
      GE => rinw_IBUF_694,
      Q => XLXI_105_XLXN_1(7)
    );
  XLXI_105_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => rind_0_IBUF_691,
      G => XLXI_105_XLXN_2,
      GE => rinw_IBUF_694,
      Q => XLXI_105_XLXN_1(0)
    );
  XLXI_105_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => rind_1_IBUF_690,
      G => XLXI_105_XLXN_2,
      GE => rinw_IBUF_694,
      Q => XLXI_105_XLXN_1(1)
    );
  XLXI_105_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => rind_2_IBUF_689,
      G => XLXI_105_XLXN_2,
      GE => rinw_IBUF_694,
      Q => XLXI_105_XLXN_1(2)
    );
  XLXI_105_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => rind_3_IBUF_688,
      G => XLXI_105_XLXN_2,
      GE => rinw_IBUF_694,
      Q => XLXI_105_XLXN_1(3)
    );
  XLXI_105_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => rind_4_IBUF_687,
      G => XLXI_105_XLXN_2,
      GE => rinw_IBUF_694,
      Q => XLXI_105_XLXN_1(4)
    );
  XLXI_105_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => rind_5_IBUF_686,
      G => XLXI_105_XLXN_2,
      GE => rinw_IBUF_694,
      Q => XLXI_105_XLXN_1(5)
    );
  XLXI_105_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => rind_6_IBUF_685,
      G => XLXI_105_XLXN_2,
      GE => rinw_IBUF_694,
      Q => XLXI_105_XLXN_1(6)
    );
  XLXI_106_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_696,
      G => XLXI_105_XLXN_2,
      GE => iar_w_OBUF_792,
      Q => XLXI_106_XLXN_1(7)
    );
  XLXI_106_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_703,
      G => XLXI_105_XLXN_2,
      GE => iar_w_OBUF_792,
      Q => XLXI_106_XLXN_1(0)
    );
  XLXI_106_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_702,
      G => XLXI_105_XLXN_2,
      GE => iar_w_OBUF_792,
      Q => XLXI_106_XLXN_1(1)
    );
  XLXI_106_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_701,
      G => XLXI_105_XLXN_2,
      GE => iar_w_OBUF_792,
      Q => XLXI_106_XLXN_1(2)
    );
  XLXI_106_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_700,
      G => XLXI_105_XLXN_2,
      GE => iar_w_OBUF_792,
      Q => XLXI_106_XLXN_1(3)
    );
  XLXI_106_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_699,
      G => XLXI_105_XLXN_2,
      GE => iar_w_OBUF_792,
      Q => XLXI_106_XLXN_1(4)
    );
  XLXI_106_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_698,
      G => XLXI_105_XLXN_2,
      GE => iar_w_OBUF_792,
      Q => XLXI_106_XLXN_1(5)
    );
  XLXI_106_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_697,
      G => XLXI_105_XLXN_2,
      GE => iar_w_OBUF_792,
      Q => XLXI_106_XLXN_1(6)
    );
  XLXI_107_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_696,
      G => XLXI_105_XLXN_2,
      GE => ir_w_OBUF_763,
      Q => XLXI_107_XLXN_1(7)
    );
  XLXI_107_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_703,
      G => XLXI_105_XLXN_2,
      GE => ir_w_OBUF_763,
      Q => XLXI_107_XLXN_1(0)
    );
  XLXI_107_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_702,
      G => XLXI_105_XLXN_2,
      GE => ir_w_OBUF_763,
      Q => XLXI_107_XLXN_1(1)
    );
  XLXI_107_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_701,
      G => XLXI_105_XLXN_2,
      GE => ir_w_OBUF_763,
      Q => XLXI_107_XLXN_1(2)
    );
  XLXI_107_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_700,
      G => XLXI_105_XLXN_2,
      GE => ir_w_OBUF_763,
      Q => XLXI_107_XLXN_1(3)
    );
  XLXI_107_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_699,
      G => XLXI_105_XLXN_2,
      GE => ir_w_OBUF_763,
      Q => XLXI_107_XLXN_1(4)
    );
  XLXI_107_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_698,
      G => XLXI_105_XLXN_2,
      GE => ir_w_OBUF_763,
      Q => XLXI_107_XLXN_1(5)
    );
  XLXI_107_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_697,
      G => XLXI_105_XLXN_2,
      GE => ir_w_OBUF_763,
      Q => XLXI_107_XLXN_1(6)
    );
  XLXI_111_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_696,
      G => XLXI_105_XLXN_2,
      GE => temp_w_OBUF_775,
      Q => XLXI_111_XLXN_1(7)
    );
  XLXI_111_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_703,
      G => XLXI_105_XLXN_2,
      GE => temp_w_OBUF_775,
      Q => XLXI_111_XLXN_1(0)
    );
  XLXI_111_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_702,
      G => XLXI_105_XLXN_2,
      GE => temp_w_OBUF_775,
      Q => XLXI_111_XLXN_1(1)
    );
  XLXI_111_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_701,
      G => XLXI_105_XLXN_2,
      GE => temp_w_OBUF_775,
      Q => XLXI_111_XLXN_1(2)
    );
  XLXI_111_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_700,
      G => XLXI_105_XLXN_2,
      GE => temp_w_OBUF_775,
      Q => XLXI_111_XLXN_1(3)
    );
  XLXI_111_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_699,
      G => XLXI_105_XLXN_2,
      GE => temp_w_OBUF_775,
      Q => XLXI_111_XLXN_1(4)
    );
  XLXI_111_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_698,
      G => XLXI_105_XLXN_2,
      GE => temp_w_OBUF_775,
      Q => XLXI_111_XLXN_1(5)
    );
  XLXI_111_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_697,
      G => XLXI_105_XLXN_2,
      GE => temp_w_OBUF_775,
      Q => XLXI_111_XLXN_1(6)
    );
  XLXI_112_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_696,
      G => XLXI_105_XLXN_2,
      GE => r0_w_OBUF_793,
      Q => XLXI_112_XLXN_1(7)
    );
  XLXI_112_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_703,
      G => XLXI_105_XLXN_2,
      GE => r0_w_OBUF_793,
      Q => XLXI_112_XLXN_1(0)
    );
  XLXI_112_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_702,
      G => XLXI_105_XLXN_2,
      GE => r0_w_OBUF_793,
      Q => XLXI_112_XLXN_1(1)
    );
  XLXI_112_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_701,
      G => XLXI_105_XLXN_2,
      GE => r0_w_OBUF_793,
      Q => XLXI_112_XLXN_1(2)
    );
  XLXI_112_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_700,
      G => XLXI_105_XLXN_2,
      GE => r0_w_OBUF_793,
      Q => XLXI_112_XLXN_1(3)
    );
  XLXI_112_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_699,
      G => XLXI_105_XLXN_2,
      GE => r0_w_OBUF_793,
      Q => XLXI_112_XLXN_1(4)
    );
  XLXI_112_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_698,
      G => XLXI_105_XLXN_2,
      GE => r0_w_OBUF_793,
      Q => XLXI_112_XLXN_1(5)
    );
  XLXI_112_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_697,
      G => XLXI_105_XLXN_2,
      GE => r0_w_OBUF_793,
      Q => XLXI_112_XLXN_1(6)
    );
  XLXI_113_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_696,
      G => XLXI_105_XLXN_2,
      GE => r1_w,
      Q => XLXI_113_XLXN_1(7)
    );
  XLXI_113_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_703,
      G => XLXI_105_XLXN_2,
      GE => r1_w,
      Q => XLXI_113_XLXN_1(0)
    );
  XLXI_113_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_702,
      G => XLXI_105_XLXN_2,
      GE => r1_w,
      Q => XLXI_113_XLXN_1(1)
    );
  XLXI_113_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_701,
      G => XLXI_105_XLXN_2,
      GE => r1_w,
      Q => XLXI_113_XLXN_1(2)
    );
  XLXI_113_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_700,
      G => XLXI_105_XLXN_2,
      GE => r1_w,
      Q => XLXI_113_XLXN_1(3)
    );
  XLXI_113_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_699,
      G => XLXI_105_XLXN_2,
      GE => r1_w,
      Q => XLXI_113_XLXN_1(4)
    );
  XLXI_113_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_698,
      G => XLXI_105_XLXN_2,
      GE => r1_w,
      Q => XLXI_113_XLXN_1(5)
    );
  XLXI_113_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_697,
      G => XLXI_105_XLXN_2,
      GE => r1_w,
      Q => XLXI_113_XLXN_1(6)
    );
  XLXI_114_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_696,
      G => XLXI_105_XLXN_2,
      GE => r2_w_OBUF_772,
      Q => XLXI_114_XLXN_1(7)
    );
  XLXI_114_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_703,
      G => XLXI_105_XLXN_2,
      GE => r2_w_OBUF_772,
      Q => XLXI_114_XLXN_1(0)
    );
  XLXI_114_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_702,
      G => XLXI_105_XLXN_2,
      GE => r2_w_OBUF_772,
      Q => XLXI_114_XLXN_1(1)
    );
  XLXI_114_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_701,
      G => XLXI_105_XLXN_2,
      GE => r2_w_OBUF_772,
      Q => XLXI_114_XLXN_1(2)
    );
  XLXI_114_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_700,
      G => XLXI_105_XLXN_2,
      GE => r2_w_OBUF_772,
      Q => XLXI_114_XLXN_1(3)
    );
  XLXI_114_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_699,
      G => XLXI_105_XLXN_2,
      GE => r2_w_OBUF_772,
      Q => XLXI_114_XLXN_1(4)
    );
  XLXI_114_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_698,
      G => XLXI_105_XLXN_2,
      GE => r2_w_OBUF_772,
      Q => XLXI_114_XLXN_1(5)
    );
  XLXI_114_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_697,
      G => XLXI_105_XLXN_2,
      GE => r2_w_OBUF_772,
      Q => XLXI_114_XLXN_1(6)
    );
  XLXI_115_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => sysbus_7_OBUF_696,
      G => XLXI_105_XLXN_2,
      GE => r3_w_OBUF_774,
      Q => XLXI_115_XLXN_1(7)
    );
  XLXI_115_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => sysbus_0_OBUF_703,
      G => XLXI_105_XLXN_2,
      GE => r3_w_OBUF_774,
      Q => XLXI_115_XLXN_1(0)
    );
  XLXI_115_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => sysbus_1_OBUF_702,
      G => XLXI_105_XLXN_2,
      GE => r3_w_OBUF_774,
      Q => XLXI_115_XLXN_1(1)
    );
  XLXI_115_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => sysbus_2_OBUF_701,
      G => XLXI_105_XLXN_2,
      GE => r3_w_OBUF_774,
      Q => XLXI_115_XLXN_1(2)
    );
  XLXI_115_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => sysbus_3_OBUF_700,
      G => XLXI_105_XLXN_2,
      GE => r3_w_OBUF_774,
      Q => XLXI_115_XLXN_1(3)
    );
  XLXI_115_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => sysbus_4_OBUF_699,
      G => XLXI_105_XLXN_2,
      GE => r3_w_OBUF_774,
      Q => XLXI_115_XLXN_1(4)
    );
  XLXI_115_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => sysbus_5_OBUF_698,
      G => XLXI_105_XLXN_2,
      GE => r3_w_OBUF_774,
      Q => XLXI_115_XLXN_1(5)
    );
  XLXI_115_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => sysbus_6_OBUF_697,
      G => XLXI_105_XLXN_2,
      GE => r3_w_OBUF_774,
      Q => XLXI_115_XLXN_1(6)
    );
  XLXI_108_XLXI_5_Q_7 : LDCE
    port map (
      CLR => rst,
      D => alu_x(7),
      G => XLXI_105_XLXN_2,
      GE => acc_w_OBUF_753,
      Q => XLXI_108_XLXN_1(7)
    );
  XLXI_108_XLXI_5_Q_0 : LDCE
    port map (
      CLR => rst,
      D => alu_x(0),
      G => XLXI_105_XLXN_2,
      GE => acc_w_OBUF_753,
      Q => XLXI_108_XLXN_1(0)
    );
  XLXI_108_XLXI_5_Q_1 : LDCE
    port map (
      CLR => rst,
      D => alu_x(1),
      G => XLXI_105_XLXN_2,
      GE => acc_w_OBUF_753,
      Q => XLXI_108_XLXN_1(1)
    );
  XLXI_108_XLXI_5_Q_2 : LDCE
    port map (
      CLR => rst,
      D => alu_x(2),
      G => XLXI_105_XLXN_2,
      GE => acc_w_OBUF_753,
      Q => XLXI_108_XLXN_1(2)
    );
  XLXI_108_XLXI_5_Q_3 : LDCE
    port map (
      CLR => rst,
      D => alu_x(3),
      G => XLXI_105_XLXN_2,
      GE => acc_w_OBUF_753,
      Q => XLXI_108_XLXN_1(3)
    );
  XLXI_108_XLXI_5_Q_4 : LDCE
    port map (
      CLR => rst,
      D => alu_x(4),
      G => XLXI_105_XLXN_2,
      GE => acc_w_OBUF_753,
      Q => XLXI_108_XLXN_1(4)
    );
  XLXI_108_XLXI_5_Q_5 : LDCE
    port map (
      CLR => rst,
      D => alu_x(5),
      G => XLXI_105_XLXN_2,
      GE => acc_w_OBUF_753,
      Q => XLXI_108_XLXN_1(5)
    );
  XLXI_108_XLXI_5_Q_6 : LDCE
    port map (
      CLR => rst,
      D => alu_x(6),
      G => XLXI_105_XLXN_2,
      GE => acc_w_OBUF_753,
      Q => XLXI_108_XLXN_1(6)
    );
  XLXI_9_XLXI_41_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_9_ro(0),
      T => XLXI_9_XLXN_71,
      O => sysbus_0_OBUF_703
    );
  XLXI_9_XLXI_41_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_9_ro(1),
      T => XLXI_9_XLXN_71,
      O => sysbus_1_OBUF_702
    );
  XLXI_9_XLXI_41_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_9_ro(2),
      T => XLXI_9_XLXN_71,
      O => sysbus_2_OBUF_701
    );
  XLXI_9_XLXI_41_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_9_ro(3),
      T => XLXI_9_XLXN_71,
      O => sysbus_3_OBUF_700
    );
  XLXI_9_XLXI_41_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_9_ro(4),
      T => XLXI_9_XLXN_71,
      O => sysbus_4_OBUF_699
    );
  XLXI_9_XLXI_41_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_9_ro(5),
      T => XLXI_9_XLXN_71,
      O => sysbus_5_OBUF_698
    );
  XLXI_9_XLXI_41_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_9_ro(6),
      T => XLXI_9_XLXN_71,
      O => sysbus_6_OBUF_697
    );
  XLXI_9_XLXI_41_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_9_ro(7),
      T => XLXI_9_XLXN_71,
      O => sysbus_7_OBUF_696
    );
  pass_th_buff_origin_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => temp_o(0),
      T => pass_th_buff_origin_XLXN_2,
      O => pto(0)
    );
  pass_th_buff_origin_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => temp_o(1),
      T => pass_th_buff_origin_XLXN_2,
      O => pto(1)
    );
  pass_th_buff_origin_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => temp_o(2),
      T => pass_th_buff_origin_XLXN_2,
      O => pto(2)
    );
  pass_th_buff_origin_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => temp_o(3),
      T => pass_th_buff_origin_XLXN_2,
      O => pto(3)
    );
  pass_th_buff_origin_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => temp_o(4),
      T => pass_th_buff_origin_XLXN_2,
      O => pto(4)
    );
  pass_th_buff_origin_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => temp_o(5),
      T => pass_th_buff_origin_XLXN_2,
      O => pto(5)
    );
  pass_th_buff_origin_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => temp_o(6),
      T => pass_th_buff_origin_XLXN_2,
      O => pto(6)
    );
  pass_th_buff_origin_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => temp_o(7),
      T => pass_th_buff_origin_XLXN_2,
      O => pto(7)
    );
  pass_th_buff_const_one_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => pass_th_one_out(0),
      T => pass_th_buff_const_one_XLXN_2,
      O => pto(0)
    );
  pass_th_buff_const_one_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => pass_th_one_out(1),
      T => pass_th_buff_const_one_XLXN_2,
      O => pto(1)
    );
  pass_th_buff_const_one_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => pass_th_one_out(2),
      T => pass_th_buff_const_one_XLXN_2,
      O => pto(2)
    );
  pass_th_buff_const_one_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => pass_th_one_out(3),
      T => pass_th_buff_const_one_XLXN_2,
      O => pto(3)
    );
  pass_th_buff_const_one_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => pass_th_one_out(4),
      T => pass_th_buff_const_one_XLXN_2,
      O => pto(4)
    );
  pass_th_buff_const_one_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => pass_th_one_out(5),
      T => pass_th_buff_const_one_XLXN_2,
      O => pto(5)
    );
  pass_th_buff_const_one_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => pass_th_one_out(6),
      T => pass_th_buff_const_one_XLXN_2,
      O => pto(6)
    );
  pass_th_buff_const_one_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => pass_th_one_out(7),
      T => pass_th_buff_const_one_XLXN_2,
      O => pto(7)
    );
  XLXI_108_XLXI_4_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_108_XLXN_1(0),
      T => XLXI_108_XLXI_4_XLXN_2,
      O => sysbus_0_OBUF_703
    );
  XLXI_108_XLXI_4_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_108_XLXN_1(1),
      T => XLXI_108_XLXI_4_XLXN_2,
      O => sysbus_1_OBUF_702
    );
  XLXI_108_XLXI_4_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_108_XLXN_1(2),
      T => XLXI_108_XLXI_4_XLXN_2,
      O => sysbus_2_OBUF_701
    );
  XLXI_108_XLXI_4_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_108_XLXN_1(3),
      T => XLXI_108_XLXI_4_XLXN_2,
      O => sysbus_3_OBUF_700
    );
  XLXI_108_XLXI_4_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_108_XLXN_1(4),
      T => XLXI_108_XLXI_4_XLXN_2,
      O => sysbus_4_OBUF_699
    );
  XLXI_108_XLXI_4_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_108_XLXN_1(5),
      T => XLXI_108_XLXI_4_XLXN_2,
      O => sysbus_5_OBUF_698
    );
  XLXI_108_XLXI_4_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_108_XLXN_1(6),
      T => XLXI_108_XLXI_4_XLXN_2,
      O => sysbus_6_OBUF_697
    );
  XLXI_108_XLXI_4_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_108_XLXN_1(7),
      T => XLXI_108_XLXI_4_XLXN_2,
      O => sysbus_7_OBUF_696
    );
  XLXI_115_XLXI_4_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_115_XLXN_1(0),
      T => XLXI_115_XLXI_4_XLXN_2,
      O => sysbus_0_OBUF_703
    );
  XLXI_115_XLXI_4_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_115_XLXN_1(1),
      T => XLXI_115_XLXI_4_XLXN_2,
      O => sysbus_1_OBUF_702
    );
  XLXI_115_XLXI_4_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_115_XLXN_1(2),
      T => XLXI_115_XLXI_4_XLXN_2,
      O => sysbus_2_OBUF_701
    );
  XLXI_115_XLXI_4_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_115_XLXN_1(3),
      T => XLXI_115_XLXI_4_XLXN_2,
      O => sysbus_3_OBUF_700
    );
  XLXI_115_XLXI_4_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_115_XLXN_1(4),
      T => XLXI_115_XLXI_4_XLXN_2,
      O => sysbus_4_OBUF_699
    );
  XLXI_115_XLXI_4_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_115_XLXN_1(5),
      T => XLXI_115_XLXI_4_XLXN_2,
      O => sysbus_5_OBUF_698
    );
  XLXI_115_XLXI_4_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_115_XLXN_1(6),
      T => XLXI_115_XLXI_4_XLXN_2,
      O => sysbus_6_OBUF_697
    );
  XLXI_115_XLXI_4_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_115_XLXN_1(7),
      T => XLXI_115_XLXI_4_XLXN_2,
      O => sysbus_7_OBUF_696
    );
  XLXI_114_XLXI_4_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_114_XLXN_1(0),
      T => XLXI_114_XLXI_4_XLXN_2,
      O => sysbus_0_OBUF_703
    );
  XLXI_114_XLXI_4_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_114_XLXN_1(1),
      T => XLXI_114_XLXI_4_XLXN_2,
      O => sysbus_1_OBUF_702
    );
  XLXI_114_XLXI_4_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_114_XLXN_1(2),
      T => XLXI_114_XLXI_4_XLXN_2,
      O => sysbus_2_OBUF_701
    );
  XLXI_114_XLXI_4_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_114_XLXN_1(3),
      T => XLXI_114_XLXI_4_XLXN_2,
      O => sysbus_3_OBUF_700
    );
  XLXI_114_XLXI_4_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_114_XLXN_1(4),
      T => XLXI_114_XLXI_4_XLXN_2,
      O => sysbus_4_OBUF_699
    );
  XLXI_114_XLXI_4_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_114_XLXN_1(5),
      T => XLXI_114_XLXI_4_XLXN_2,
      O => sysbus_5_OBUF_698
    );
  XLXI_114_XLXI_4_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_114_XLXN_1(6),
      T => XLXI_114_XLXI_4_XLXN_2,
      O => sysbus_6_OBUF_697
    );
  XLXI_114_XLXI_4_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_114_XLXN_1(7),
      T => XLXI_114_XLXI_4_XLXN_2,
      O => sysbus_7_OBUF_696
    );
  XLXI_113_XLXI_4_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_113_XLXN_1(0),
      T => XLXI_113_XLXI_4_XLXN_2,
      O => sysbus_0_OBUF_703
    );
  XLXI_113_XLXI_4_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_113_XLXN_1(1),
      T => XLXI_113_XLXI_4_XLXN_2,
      O => sysbus_1_OBUF_702
    );
  XLXI_113_XLXI_4_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_113_XLXN_1(2),
      T => XLXI_113_XLXI_4_XLXN_2,
      O => sysbus_2_OBUF_701
    );
  XLXI_113_XLXI_4_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_113_XLXN_1(3),
      T => XLXI_113_XLXI_4_XLXN_2,
      O => sysbus_3_OBUF_700
    );
  XLXI_113_XLXI_4_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_113_XLXN_1(4),
      T => XLXI_113_XLXI_4_XLXN_2,
      O => sysbus_4_OBUF_699
    );
  XLXI_113_XLXI_4_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_113_XLXN_1(5),
      T => XLXI_113_XLXI_4_XLXN_2,
      O => sysbus_5_OBUF_698
    );
  XLXI_113_XLXI_4_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_113_XLXN_1(6),
      T => XLXI_113_XLXI_4_XLXN_2,
      O => sysbus_6_OBUF_697
    );
  XLXI_113_XLXI_4_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_113_XLXN_1(7),
      T => XLXI_113_XLXI_4_XLXN_2,
      O => sysbus_7_OBUF_696
    );
  XLXI_112_XLXI_4_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_112_XLXN_1(0),
      T => XLXI_112_XLXI_4_XLXN_2,
      O => sysbus_0_OBUF_703
    );
  XLXI_112_XLXI_4_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_112_XLXN_1(1),
      T => XLXI_112_XLXI_4_XLXN_2,
      O => sysbus_1_OBUF_702
    );
  XLXI_112_XLXI_4_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_112_XLXN_1(2),
      T => XLXI_112_XLXI_4_XLXN_2,
      O => sysbus_2_OBUF_701
    );
  XLXI_112_XLXI_4_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_112_XLXN_1(3),
      T => XLXI_112_XLXI_4_XLXN_2,
      O => sysbus_3_OBUF_700
    );
  XLXI_112_XLXI_4_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_112_XLXN_1(4),
      T => XLXI_112_XLXI_4_XLXN_2,
      O => sysbus_4_OBUF_699
    );
  XLXI_112_XLXI_4_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_112_XLXN_1(5),
      T => XLXI_112_XLXI_4_XLXN_2,
      O => sysbus_5_OBUF_698
    );
  XLXI_112_XLXI_4_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_112_XLXN_1(6),
      T => XLXI_112_XLXI_4_XLXN_2,
      O => sysbus_6_OBUF_697
    );
  XLXI_112_XLXI_4_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_112_XLXN_1(7),
      T => XLXI_112_XLXI_4_XLXN_2,
      O => sysbus_7_OBUF_696
    );
  XLXI_111_XLXI_4_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_111_XLXN_1(0),
      T => XLXI_111_XLXI_4_XLXN_2,
      O => temp_o(0)
    );
  XLXI_111_XLXI_4_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_111_XLXN_1(1),
      T => XLXI_111_XLXI_4_XLXN_2,
      O => temp_o(1)
    );
  XLXI_111_XLXI_4_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_111_XLXN_1(2),
      T => XLXI_111_XLXI_4_XLXN_2,
      O => temp_o(2)
    );
  XLXI_111_XLXI_4_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_111_XLXN_1(3),
      T => XLXI_111_XLXI_4_XLXN_2,
      O => temp_o(3)
    );
  XLXI_111_XLXI_4_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_111_XLXN_1(4),
      T => XLXI_111_XLXI_4_XLXN_2,
      O => temp_o(4)
    );
  XLXI_111_XLXI_4_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_111_XLXN_1(5),
      T => XLXI_111_XLXI_4_XLXN_2,
      O => temp_o(5)
    );
  XLXI_111_XLXI_4_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_111_XLXN_1(6),
      T => XLXI_111_XLXI_4_XLXN_2,
      O => temp_o(6)
    );
  XLXI_111_XLXI_4_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_111_XLXN_1(7),
      T => XLXI_111_XLXI_4_XLXN_2,
      O => temp_o(7)
    );
  XLXI_107_XLXI_4_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_107_XLXN_1(0),
      T => XLXI_107_XLXI_4_XLXN_2,
      O => ir_o_0_OBUF_743
    );
  XLXI_107_XLXI_4_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_107_XLXN_1(1),
      T => XLXI_107_XLXI_4_XLXN_2,
      O => ir_o_1_OBUF_742
    );
  XLXI_107_XLXI_4_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_107_XLXN_1(2),
      T => XLXI_107_XLXI_4_XLXN_2,
      O => ir_o_2_OBUF_741
    );
  XLXI_107_XLXI_4_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_107_XLXN_1(3),
      T => XLXI_107_XLXI_4_XLXN_2,
      O => ir_o_3_OBUF_740
    );
  XLXI_107_XLXI_4_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_107_XLXN_1(4),
      T => XLXI_107_XLXI_4_XLXN_2,
      O => ir_o_4_OBUF_739
    );
  XLXI_107_XLXI_4_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_107_XLXN_1(5),
      T => XLXI_107_XLXI_4_XLXN_2,
      O => ir_o_5_OBUF_738
    );
  XLXI_107_XLXI_4_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_107_XLXN_1(6),
      T => XLXI_107_XLXI_4_XLXN_2,
      O => ir_o_6_OBUF_737
    );
  XLXI_107_XLXI_4_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_107_XLXN_1(7),
      T => XLXI_107_XLXI_4_XLXN_2,
      O => ir_o_7_OBUF_736
    );
  XLXI_106_XLXI_4_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_106_XLXN_1(0),
      T => XLXI_106_XLXI_4_XLXN_2,
      O => sysbus_0_OBUF_703
    );
  XLXI_106_XLXI_4_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_106_XLXN_1(1),
      T => XLXI_106_XLXI_4_XLXN_2,
      O => sysbus_1_OBUF_702
    );
  XLXI_106_XLXI_4_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_106_XLXN_1(2),
      T => XLXI_106_XLXI_4_XLXN_2,
      O => sysbus_2_OBUF_701
    );
  XLXI_106_XLXI_4_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_106_XLXN_1(3),
      T => XLXI_106_XLXI_4_XLXN_2,
      O => sysbus_3_OBUF_700
    );
  XLXI_106_XLXI_4_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_106_XLXN_1(4),
      T => XLXI_106_XLXI_4_XLXN_2,
      O => sysbus_4_OBUF_699
    );
  XLXI_106_XLXI_4_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_106_XLXN_1(5),
      T => XLXI_106_XLXI_4_XLXN_2,
      O => sysbus_5_OBUF_698
    );
  XLXI_106_XLXI_4_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_106_XLXN_1(6),
      T => XLXI_106_XLXI_4_XLXN_2,
      O => sysbus_6_OBUF_697
    );
  XLXI_106_XLXI_4_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_106_XLXN_1(7),
      T => XLXI_106_XLXI_4_XLXN_2,
      O => sysbus_7_OBUF_696
    );
  XLXI_105_XLXI_4_XLXI_54_O_0_I_0_Q : BUFT
    port map (
      I => XLXI_105_XLXN_1(0),
      T => XLXI_105_XLXI_4_XLXN_2,
      O => sysbus_0_OBUF_703
    );
  XLXI_105_XLXI_4_XLXI_54_O_1_I_1_Q : BUFT
    port map (
      I => XLXI_105_XLXN_1(1),
      T => XLXI_105_XLXI_4_XLXN_2,
      O => sysbus_1_OBUF_702
    );
  XLXI_105_XLXI_4_XLXI_54_O_2_I_2_Q : BUFT
    port map (
      I => XLXI_105_XLXN_1(2),
      T => XLXI_105_XLXI_4_XLXN_2,
      O => sysbus_2_OBUF_701
    );
  XLXI_105_XLXI_4_XLXI_54_O_3_I_3_Q : BUFT
    port map (
      I => XLXI_105_XLXN_1(3),
      T => XLXI_105_XLXI_4_XLXN_2,
      O => sysbus_3_OBUF_700
    );
  XLXI_105_XLXI_4_XLXI_54_O_4_I_4_Q : BUFT
    port map (
      I => XLXI_105_XLXN_1(4),
      T => XLXI_105_XLXI_4_XLXN_2,
      O => sysbus_4_OBUF_699
    );
  XLXI_105_XLXI_4_XLXI_54_O_5_I_5_Q : BUFT
    port map (
      I => XLXI_105_XLXN_1(5),
      T => XLXI_105_XLXI_4_XLXN_2,
      O => sysbus_5_OBUF_698
    );
  XLXI_105_XLXI_4_XLXI_54_O_6_I_6_Q : BUFT
    port map (
      I => XLXI_105_XLXN_1(6),
      T => XLXI_105_XLXI_4_XLXN_2,
      O => sysbus_6_OBUF_697
    );
  XLXI_105_XLXI_4_XLXI_54_O_7_I_7_Q : BUFT
    port map (
      I => XLXI_105_XLXN_1(7),
      T => XLXI_105_XLXI_4_XLXN_2,
      O => sysbus_7_OBUF_696
    );
  clck_gen_XLXI_4_Mmux_q_tmp_q_tmp_MUX_26_o11 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => clck_gen_XLXN_1,
      I1 => clck_gen_XLXN_1,
      I2 => clkc_OBUF_704,
      O => clck_gen_XLXI_4_q_tmp_q_tmp_MUX_26_o
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
      D => clck_gen_XLXI_4_q_tmp_q_tmp_MUX_26_o,
      Q => clkc_OBUF_704
    );
  alu_inst_XLXI_4_O_0_I_0_Q : BUFT
    port map (
      I => alu_inst_XLXN_7(0),
      T => alu_inst_XLXN_98,
      O => alu_x(0)
    );
  alu_inst_XLXI_4_O_1_I_1_Q : BUFT
    port map (
      I => alu_inst_XLXN_7(1),
      T => alu_inst_XLXN_98,
      O => alu_x(1)
    );
  alu_inst_XLXI_4_O_2_I_2_Q : BUFT
    port map (
      I => alu_inst_XLXN_7(2),
      T => alu_inst_XLXN_98,
      O => alu_x(2)
    );
  alu_inst_XLXI_4_O_3_I_3_Q : BUFT
    port map (
      I => alu_inst_XLXN_7(3),
      T => alu_inst_XLXN_98,
      O => alu_x(3)
    );
  alu_inst_XLXI_4_O_4_I_4_Q : BUFT
    port map (
      I => alu_inst_XLXN_7(4),
      T => alu_inst_XLXN_98,
      O => alu_x(4)
    );
  alu_inst_XLXI_4_O_5_I_5_Q : BUFT
    port map (
      I => alu_inst_XLXN_7(5),
      T => alu_inst_XLXN_98,
      O => alu_x(5)
    );
  alu_inst_XLXI_4_O_6_I_6_Q : BUFT
    port map (
      I => alu_inst_XLXN_7(6),
      T => alu_inst_XLXN_98,
      O => alu_x(6)
    );
  alu_inst_XLXI_4_O_7_I_7_Q : BUFT
    port map (
      I => alu_inst_XLXN_7(7),
      T => alu_inst_XLXN_98,
      O => alu_x(7)
    );
  alu_inst_XLXI_111_O_0_I_0_Q : BUFT
    port map (
      I => alu_inst_XLXN_204(0),
      T => alu_inst_XLXN_228,
      O => alu_x(0)
    );
  alu_inst_XLXI_111_O_1_I_1_Q : BUFT
    port map (
      I => alu_inst_XLXN_204(1),
      T => alu_inst_XLXN_228,
      O => alu_x(1)
    );
  alu_inst_XLXI_111_O_2_I_2_Q : BUFT
    port map (
      I => alu_inst_XLXN_204(2),
      T => alu_inst_XLXN_228,
      O => alu_x(2)
    );
  alu_inst_XLXI_111_O_3_I_3_Q : BUFT
    port map (
      I => alu_inst_XLXN_204(3),
      T => alu_inst_XLXN_228,
      O => alu_x(3)
    );
  alu_inst_XLXI_111_O_4_I_4_Q : BUFT
    port map (
      I => alu_inst_XLXN_204(4),
      T => alu_inst_XLXN_228,
      O => alu_x(4)
    );
  alu_inst_XLXI_111_O_5_I_5_Q : BUFT
    port map (
      I => alu_inst_XLXN_204(5),
      T => alu_inst_XLXN_228,
      O => alu_x(5)
    );
  alu_inst_XLXI_111_O_6_I_6_Q : BUFT
    port map (
      I => alu_inst_XLXN_204(6),
      T => alu_inst_XLXN_228,
      O => alu_x(6)
    );
  alu_inst_XLXI_111_O_7_I_7_Q : BUFT
    port map (
      I => alu_inst_XLXN_204(7),
      T => alu_inst_XLXN_228,
      O => alu_x(7)
    );
  alu_inst_XLXI_136_O_0_I_0_Q : BUFT
    port map (
      I => alu_inst_XLXN_270(0),
      T => alu_inst_XLXN_272,
      O => alu_x(0)
    );
  alu_inst_XLXI_136_O_1_I_1_Q : BUFT
    port map (
      I => alu_inst_XLXN_270(1),
      T => alu_inst_XLXN_272,
      O => alu_x(1)
    );
  alu_inst_XLXI_136_O_2_I_2_Q : BUFT
    port map (
      I => alu_inst_XLXN_270(2),
      T => alu_inst_XLXN_272,
      O => alu_x(2)
    );
  alu_inst_XLXI_136_O_3_I_3_Q : BUFT
    port map (
      I => alu_inst_XLXN_270(3),
      T => alu_inst_XLXN_272,
      O => alu_x(3)
    );
  alu_inst_XLXI_136_O_4_I_4_Q : BUFT
    port map (
      I => alu_inst_XLXN_270(4),
      T => alu_inst_XLXN_272,
      O => alu_x(4)
    );
  alu_inst_XLXI_136_O_5_I_5_Q : BUFT
    port map (
      I => alu_inst_XLXN_270(5),
      T => alu_inst_XLXN_272,
      O => alu_x(5)
    );
  alu_inst_XLXI_136_O_6_I_6_Q : BUFT
    port map (
      I => alu_inst_XLXN_270(6),
      T => alu_inst_XLXN_272,
      O => alu_x(6)
    );
  alu_inst_XLXI_136_O_7_I_7_Q : BUFT
    port map (
      I => alu_inst_XLXN_270(7),
      T => alu_inst_XLXN_272,
      O => alu_x(7)
    );
  alu_inst_XLXI_7_O_0_I_0_Q : BUFT
    port map (
      I => alu_inst_t(0),
      T => alu_inst_XLXN_99,
      O => alu_x(0)
    );
  alu_inst_XLXI_7_O_1_I_1_Q : BUFT
    port map (
      I => alu_inst_t(1),
      T => alu_inst_XLXN_99,
      O => alu_x(1)
    );
  alu_inst_XLXI_7_O_2_I_2_Q : BUFT
    port map (
      I => alu_inst_t(2),
      T => alu_inst_XLXN_99,
      O => alu_x(2)
    );
  alu_inst_XLXI_7_O_3_I_3_Q : BUFT
    port map (
      I => alu_inst_t(3),
      T => alu_inst_XLXN_99,
      O => alu_x(3)
    );
  alu_inst_XLXI_7_O_4_I_4_Q : BUFT
    port map (
      I => alu_inst_t(4),
      T => alu_inst_XLXN_99,
      O => alu_x(4)
    );
  alu_inst_XLXI_7_O_5_I_5_Q : BUFT
    port map (
      I => alu_inst_t(5),
      T => alu_inst_XLXN_99,
      O => alu_x(5)
    );
  alu_inst_XLXI_7_O_6_I_6_Q : BUFT
    port map (
      I => alu_inst_t(6),
      T => alu_inst_XLXN_99,
      O => alu_x(6)
    );
  alu_inst_XLXI_7_O_7_I_7_Q : BUFT
    port map (
      I => alu_inst_t(7),
      T => alu_inst_XLXN_99,
      O => alu_x(7)
    );
  alu_inst_XLXI_97_O_0_I_0_Q : BUFT
    port map (
      I => alu_inst_ls(0),
      T => alu_inst_XLXN_193,
      O => alu_x(0)
    );
  alu_inst_XLXI_97_O_1_I_1_Q : BUFT
    port map (
      I => alu_inst_ls(1),
      T => alu_inst_XLXN_193,
      O => alu_x(1)
    );
  alu_inst_XLXI_97_O_2_I_2_Q : BUFT
    port map (
      I => alu_inst_ls(2),
      T => alu_inst_XLXN_193,
      O => alu_x(2)
    );
  alu_inst_XLXI_97_O_3_I_3_Q : BUFT
    port map (
      I => alu_inst_ls(3),
      T => alu_inst_XLXN_193,
      O => alu_x(3)
    );
  alu_inst_XLXI_97_O_4_I_4_Q : BUFT
    port map (
      I => alu_inst_ls(4),
      T => alu_inst_XLXN_193,
      O => alu_x(4)
    );
  alu_inst_XLXI_97_O_5_I_5_Q : BUFT
    port map (
      I => alu_inst_ls(5),
      T => alu_inst_XLXN_193,
      O => alu_x(5)
    );
  alu_inst_XLXI_97_O_6_I_6_Q : BUFT
    port map (
      I => alu_inst_ls(6),
      T => alu_inst_XLXN_193,
      O => alu_x(6)
    );
  alu_inst_XLXI_97_O_7_I_7_Q : BUFT
    port map (
      I => alu_inst_ls(7),
      T => alu_inst_XLXN_193,
      O => alu_x(7)
    );
  alu_inst_XLXI_112_O_0_I_0_Q : BUFT
    port map (
      I => alu_inst_land(0),
      T => alu_inst_XLXN_239,
      O => alu_x(0)
    );
  alu_inst_XLXI_112_O_1_I_1_Q : BUFT
    port map (
      I => alu_inst_land(1),
      T => alu_inst_XLXN_239,
      O => alu_x(1)
    );
  alu_inst_XLXI_112_O_2_I_2_Q : BUFT
    port map (
      I => alu_inst_land(2),
      T => alu_inst_XLXN_239,
      O => alu_x(2)
    );
  alu_inst_XLXI_112_O_3_I_3_Q : BUFT
    port map (
      I => alu_inst_land(3),
      T => alu_inst_XLXN_239,
      O => alu_x(3)
    );
  alu_inst_XLXI_112_O_4_I_4_Q : BUFT
    port map (
      I => alu_inst_land(4),
      T => alu_inst_XLXN_239,
      O => alu_x(4)
    );
  alu_inst_XLXI_112_O_5_I_5_Q : BUFT
    port map (
      I => alu_inst_land(5),
      T => alu_inst_XLXN_239,
      O => alu_x(5)
    );
  alu_inst_XLXI_112_O_6_I_6_Q : BUFT
    port map (
      I => alu_inst_land(6),
      T => alu_inst_XLXN_239,
      O => alu_x(6)
    );
  alu_inst_XLXI_112_O_7_I_7_Q : BUFT
    port map (
      I => alu_inst_land(7),
      T => alu_inst_XLXN_239,
      O => alu_x(7)
    );
  alu_inst_XLXI_113_O_0_I_0_Q : BUFT
    port map (
      I => alu_inst_lor(0),
      T => alu_inst_XLXN_269,
      O => alu_x(0)
    );
  alu_inst_XLXI_113_O_1_I_1_Q : BUFT
    port map (
      I => alu_inst_lor(1),
      T => alu_inst_XLXN_269,
      O => alu_x(1)
    );
  alu_inst_XLXI_113_O_2_I_2_Q : BUFT
    port map (
      I => alu_inst_lor(2),
      T => alu_inst_XLXN_269,
      O => alu_x(2)
    );
  alu_inst_XLXI_113_O_3_I_3_Q : BUFT
    port map (
      I => alu_inst_lor(3),
      T => alu_inst_XLXN_269,
      O => alu_x(3)
    );
  alu_inst_XLXI_113_O_4_I_4_Q : BUFT
    port map (
      I => alu_inst_lor(4),
      T => alu_inst_XLXN_269,
      O => alu_x(4)
    );
  alu_inst_XLXI_113_O_5_I_5_Q : BUFT
    port map (
      I => alu_inst_lor(5),
      T => alu_inst_XLXN_269,
      O => alu_x(5)
    );
  alu_inst_XLXI_113_O_6_I_6_Q : BUFT
    port map (
      I => alu_inst_lor(6),
      T => alu_inst_XLXN_269,
      O => alu_x(6)
    );
  alu_inst_XLXI_113_O_7_I_7_Q : BUFT
    port map (
      I => alu_inst_lor(7),
      T => alu_inst_XLXN_269,
      O => alu_x(7)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_7_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(6),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7),
      O => alu_inst_XLXN_7(7)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(6),
      DI => sysbus_7_OBUF_696,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7),
      O => alu_inst_XLXN_91
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_7_OBUF_696,
      I1 => pto(7),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_6_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(5),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6),
      O => alu_inst_XLXN_7(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_6_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(5),
      DI => sysbus_6_OBUF_697,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_6_OBUF_697,
      I1 => pto(6),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_5_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(4),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5),
      O => alu_inst_XLXN_7(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_5_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(4),
      DI => sysbus_5_OBUF_698,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_5_OBUF_698,
      I1 => pto(5),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_4_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4),
      O => alu_inst_XLXN_7(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_4_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3),
      DI => sysbus_4_OBUF_699,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_4_OBUF_699,
      I1 => pto(4),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_3_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(2),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3),
      O => alu_inst_XLXN_7(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(2),
      DI => sysbus_3_OBUF_700,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_3_OBUF_700,
      I1 => pto(3),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_2_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(1),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2),
      O => alu_inst_XLXN_7(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_2_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(1),
      DI => sysbus_2_OBUF_701,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_2_OBUF_701,
      I1 => pto(2),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_1_Q : XORCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(0),
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1),
      O => alu_inst_XLXN_7(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_1_Q : MUXCY
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(0),
      DI => sysbus_1_OBUF_702,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_1_OBUF_702,
      I1 => pto(1),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_xor_0_Q : XORCY
    port map (
      CI => alu_C_in_OBUF_790,
      LI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0),
      O => alu_inst_XLXN_7(0)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_0_Q : MUXCY
    port map (
      CI => alu_C_in_OBUF_790,
      DI => sysbus_0_OBUF_703,
      S => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(0)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sysbus_0_OBUF_703,
      I1 => pto(0),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0)
    );
  alu_inst_XLXI_102_O_0_1_INV_0 : INV
    port map (
      I => sysbus_0_OBUF_703,
      O => alu_inst_XLXN_204(0)
    );
  alu_inst_XLXI_102_O_1_1_INV_0 : INV
    port map (
      I => sysbus_1_OBUF_702,
      O => alu_inst_XLXN_204(1)
    );
  alu_inst_XLXI_102_O_2_1_INV_0 : INV
    port map (
      I => sysbus_2_OBUF_701,
      O => alu_inst_XLXN_204(2)
    );
  alu_inst_XLXI_102_O_3_1_INV_0 : INV
    port map (
      I => sysbus_3_OBUF_700,
      O => alu_inst_XLXN_204(3)
    );
  alu_inst_XLXI_102_O_4_1_INV_0 : INV
    port map (
      I => sysbus_4_OBUF_699,
      O => alu_inst_XLXN_204(4)
    );
  alu_inst_XLXI_102_O_5_1_INV_0 : INV
    port map (
      I => sysbus_5_OBUF_698,
      O => alu_inst_XLXN_204(5)
    );
  alu_inst_XLXI_102_O_6_1_INV_0 : INV
    port map (
      I => sysbus_6_OBUF_697,
      O => alu_inst_XLXN_204(6)
    );
  alu_inst_XLXI_102_O_7_1_INV_0 : INV
    port map (
      I => sysbus_7_OBUF_696,
      O => alu_inst_XLXN_204(7)
    );
  alu_inst_XLXI_1_Mmux_d_tmp41 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => alu_op_1_OBUF_756,
      I1 => alu_op_0_OBUF_755,
      I2 => alu_op_2_OBUF_757,
      O => alu_inst_XLXN_223
    );
  alu_inst_XLXI_1_Mmux_d_tmp81 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => alu_op_2_OBUF_757,
      I1 => alu_op_0_OBUF_755,
      I2 => alu_op_1_OBUF_756,
      O => alu_inst_XLXN_227
    );
  alu_inst_XLXI_1_Mmux_d_tmp31 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => alu_op_1_OBUF_756,
      I1 => alu_op_2_OBUF_757,
      I2 => alu_op_0_OBUF_755,
      O => alu_inst_XLXN_192
    );
  alu_inst_XLXI_1_Mmux_d_tmp71 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => alu_op_1_OBUF_756,
      I1 => alu_op_2_OBUF_757,
      I2 => alu_op_0_OBUF_755,
      O => alu_inst_XLXN_226
    );
  alu_inst_XLXI_1_Mmux_d_tmp21 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => alu_op_0_OBUF_755,
      I1 => alu_op_2_OBUF_757,
      I2 => alu_op_1_OBUF_756,
      O => alu_inst_XLXN_105
    );
  alu_inst_XLXI_1_Mmux_d_tmp61 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => alu_op_2_OBUF_757,
      I1 => alu_op_0_OBUF_755,
      I2 => alu_op_1_OBUF_756,
      O => alu_inst_XLXN_225
    );
  alu_inst_XLXI_1_Mmux_d_tmp11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => alu_op_2_OBUF_757,
      I1 => alu_op_0_OBUF_755,
      I2 => alu_op_1_OBUF_756,
      O => alu_inst_XLXN_8
    );
  alu_inst_XLXI_1_Mmux_d_tmp51 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => alu_op_2_OBUF_757,
      I1 => alu_op_0_OBUF_755,
      I2 => alu_op_1_OBUF_756,
      O => alu_inst_XLXN_224
    );
  alu_inst_XLXI_137_XLXI_1_O : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => alu_x(0),
      I1 => alu_x(1),
      I2 => alu_x(2),
      I3 => alu_x(3),
      I4 => alu_x(4),
      I5 => alu_inst_XLXI_137_XLXI_1_N01,
      O => alu_z_OBUF_719
    );
  alu_inst_XLXI_137_XLXI_1_O_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => alu_x(5),
      I1 => alu_x(6),
      I2 => alu_x(7),
      O => alu_inst_XLXI_137_XLXI_1_N01
    );
  XLXI_9_XLXI_15_Q_7 : LD
    port map (
      D => sysbus_7_OBUF_696,
      G => ram_a_w_OBUF_764,
      Q => ram_a_o_7_OBUF_720
    );
  XLXI_9_XLXI_15_Q_0 : LD
    port map (
      D => sysbus_0_OBUF_703,
      G => ram_a_w_OBUF_764,
      Q => ram_a_o_0_OBUF_727
    );
  XLXI_9_XLXI_15_Q_1 : LD
    port map (
      D => sysbus_1_OBUF_702,
      G => ram_a_w_OBUF_764,
      Q => ram_a_o_1_OBUF_726
    );
  XLXI_9_XLXI_15_Q_2 : LD
    port map (
      D => sysbus_2_OBUF_701,
      G => ram_a_w_OBUF_764,
      Q => ram_a_o_2_OBUF_725
    );
  XLXI_9_XLXI_15_Q_3 : LD
    port map (
      D => sysbus_3_OBUF_700,
      G => ram_a_w_OBUF_764,
      Q => ram_a_o_3_OBUF_724
    );
  XLXI_9_XLXI_15_Q_4 : LD
    port map (
      D => sysbus_4_OBUF_699,
      G => ram_a_w_OBUF_764,
      Q => ram_a_o_4_OBUF_723
    );
  XLXI_9_XLXI_15_Q_5 : LD
    port map (
      D => sysbus_5_OBUF_698,
      G => ram_a_w_OBUF_764,
      Q => ram_a_o_5_OBUF_722
    );
  XLXI_9_XLXI_15_Q_6 : LD
    port map (
      D => sysbus_6_OBUF_697,
      G => ram_a_w_OBUF_764,
      Q => ram_a_o_6_OBUF_721
    );
  XLXI_104_Q_7 : LD
    port map (
      D => sysbus_7_OBUF_696,
      G => r0_w_OBUF_793,
      Q => monitor_7_OBUF_728
    );
  XLXI_104_Q_0 : LD
    port map (
      D => sysbus_0_OBUF_703,
      G => r0_w_OBUF_793,
      Q => monitor_0_OBUF_735
    );
  XLXI_104_Q_1 : LD
    port map (
      D => sysbus_1_OBUF_702,
      G => r0_w_OBUF_793,
      Q => monitor_1_OBUF_734
    );
  XLXI_104_Q_2 : LD
    port map (
      D => sysbus_2_OBUF_701,
      G => r0_w_OBUF_793,
      Q => monitor_2_OBUF_733
    );
  XLXI_104_Q_3 : LD
    port map (
      D => sysbus_3_OBUF_700,
      G => r0_w_OBUF_793,
      Q => monitor_3_OBUF_732
    );
  XLXI_104_Q_4 : LD
    port map (
      D => sysbus_4_OBUF_699,
      G => r0_w_OBUF_793,
      Q => monitor_4_OBUF_731
    );
  XLXI_104_Q_5 : LD
    port map (
      D => sysbus_5_OBUF_698,
      G => r0_w_OBUF_793,
      Q => monitor_5_OBUF_730
    );
  XLXI_104_Q_6 : LD
    port map (
      D => sysbus_6_OBUF_697,
      G => r0_w_OBUF_793,
      Q => monitor_6_OBUF_729
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp41 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o_5_OBUF_738,
      I1 => ir_o_4_OBUF_739,
      I2 => ir_o_6_OBUF_737,
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_not_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp31 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o_5_OBUF_738,
      I1 => ir_o_6_OBUF_737,
      I2 => ir_o_4_OBUF_739,
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_rshift_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp71 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o_5_OBUF_738,
      I1 => ir_o_6_OBUF_737,
      I2 => ir_o_4_OBUF_739,
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_xor_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp21 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o_4_OBUF_739,
      I1 => ir_o_6_OBUF_737,
      I2 => ir_o_5_OBUF_738,
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_lshift_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp61 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o_6_OBUF_737,
      I1 => ir_o_4_OBUF_739,
      I2 => ir_o_5_OBUF_738,
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_or_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp11 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => ir_o_6_OBUF_737,
      I1 => ir_o_4_OBUF_739,
      I2 => ir_o_5_OBUF_738,
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_sum_DUMMY
    );
  cpu_ctl_XLXI_39_Mmux_d_tmp51 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o_6_OBUF_737,
      I1 => ir_o_4_OBUF_739,
      I2 => ir_o_5_OBUF_738,
      I3 => cpu_ctl_alu_DUMMY,
      O => cpu_ctl_alu_and_DUMMY
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp41 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o_5_OBUF_738,
      I1 => ir_o_4_OBUF_739,
      I2 => ir_o_6_OBUF_737,
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_jmp_jmpr
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp31 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o_5_OBUF_738,
      I1 => ir_o_6_OBUF_737,
      I2 => ir_o_4_OBUF_739,
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_ls_ldc
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp71 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o_5_OBUF_738,
      I1 => ir_o_6_OBUF_737,
      I2 => ir_o_4_OBUF_739,
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_flg_clf
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp21 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o_4_OBUF_739,
      I1 => ir_o_6_OBUF_737,
      I2 => ir_o_5_OBUF_738,
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_ls_st
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp61 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => ir_o_6_OBUF_737,
      I1 => ir_o_4_OBUF_739,
      I2 => ir_o_5_OBUF_738,
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_jmp_ifjmp
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp11 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => ir_o_6_OBUF_737,
      I1 => ir_o_4_OBUF_739,
      I2 => ir_o_5_OBUF_738,
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_ls_ld
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp51 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => ir_o_6_OBUF_737,
      I1 => ir_o_4_OBUF_739,
      I2 => ir_o_5_OBUF_738,
      I3 => cpu_ctl_ls_jmp_flg,
      O => cpu_ctl_jmp_jmp
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
      I0 => cpu_ctl_stp_XLXN_20,
      I1 => cpu_ctl_stp_XLXN_19,
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
      CE => XLXI_105_XLXN_2,
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
      CE => XLXI_105_XLXN_2,
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
      CE => XLXI_105_XLXN_2,
      CLR => cpu_ctl_stp_XLXN_22,
      D => cpu_ctl_stp_XLXI_24_Result(0),
      Q => cpu_ctl_stp_XLXN_18
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ir_o_1_OBUF_742,
      I1 => ir_o_0_OBUF_743,
      O => cpu_ctl_rb_0_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ir_o_0_OBUF_743,
      I1 => ir_o_1_OBUF_742,
      O => cpu_ctl_rb_1_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ir_o_1_OBUF_742,
      I1 => ir_o_0_OBUF_743,
      O => cpu_ctl_rb_2_DUMMY
    );
  cpu_ctl_XLXI_48_Mmux_d_tmp41 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ir_o_1_OBUF_742,
      I1 => ir_o_0_OBUF_743,
      O => cpu_ctl_rb_3_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ir_o_3_OBUF_740,
      I1 => ir_o_2_OBUF_741,
      O => cpu_ctl_ra_0_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ir_o_2_OBUF_741,
      I1 => ir_o_3_OBUF_740,
      O => cpu_ctl_ra_1_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ir_o_3_OBUF_740,
      I1 => ir_o_2_OBUF_741,
      O => cpu_ctl_ra_2_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp41 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ir_o_3_OBUF_740,
      I1 => ir_o_2_OBUF_741,
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
  XLXI_87_Q3 : LDCE
    port map (
      CLR => XLXN_217,
      D => alu_z_OBUF_719,
      G => XLXI_105_XLXN_2,
      GE => flags_w_OBUF_760,
      Q => flags_o_3_OBUF_781
    );
  XLXI_87_Q0 : LDCE
    port map (
      CLR => XLXN_217,
      D => alu_C_out_OBUF_716,
      G => XLXI_105_XLXN_2,
      GE => flags_w_OBUF_760,
      Q => flags_o_0_OBUF_778
    );
  XLXI_87_Q1 : LDCE
    port map (
      CLR => XLXN_217,
      D => alu_gt_OBUF_718,
      G => XLXI_105_XLXN_2,
      GE => flags_w_OBUF_760,
      Q => flags_o_1_OBUF_779
    );
  XLXI_87_Q2 : LDCE
    port map (
      CLR => XLXN_217,
      D => alu_eq_OBUF_717,
      G => XLXI_105_XLXN_2,
      GE => flags_w_OBUF_760,
      Q => flags_o_2_OBUF_780
    );

end Structure;

