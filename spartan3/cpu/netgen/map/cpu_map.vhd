--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.40xd
--  \   \         Application: netgen
--  /   /         Filename: cpu_map.vhd
-- /___/   /\     Timestamp: Sat Apr  9 00:58:20 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf cpu.pcf -rpw 100 -tpw 0 -ar Structure -tm cpu -w -dir netgen/map -ofmt vhdl -sim cpu_map.ncd cpu_map.vhd 
-- Device	: xa6slx9ftg256-3 (PRODUCTION 1.23 2012-10-12)
-- Input file	: cpu_map.ncd
-- Output file	: /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/netgen/map/cpu_map.vhd
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
  signal alu_inst_XLXI_135_XLXI_8_XLXN_3 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o1 : STD_LOGIC; 
  signal XLXI_130_g : STD_LOGIC; 
  signal acc_w_OBUF_1522 : STD_LOGIC; 
  signal clkw_OBUF_1523 : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4 : STD_LOGIC; 
  signal cpu_ctl_ls_ldc_s4 : STD_LOGIC; 
  signal cpu_ctl_alu_binary_s5 : STD_LOGIC; 
  signal cpu_ctl_alu_unari_s4 : STD_LOGIC; 
  signal cpu_ctl_s1_DUMMY_0 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_47 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o5 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o6 : STD_LOGIC; 
  signal flags_w_OBUF_1534 : STD_LOGIC; 
  signal alu_gt_OBUF_1536 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o7 : STD_LOGIC; 
  signal flags_o_1_OBUF_1539 : STD_LOGIC; 
  signal XLXN_217 : STD_LOGIC; 
  signal cpu_ctl_s5_DUMMY : STD_LOGIC; 
  signal cpu_ctl_alu_binary : STD_LOGIC; 
  signal ir_o_7_OBUF_1543 : STD_LOGIC; 
  signal ir_o_6_OBUF_1544 : STD_LOGIC; 
  signal ir_o_4_OBUF_1545 : STD_LOGIC; 
  signal ir_o_5_OBUF_1546 : STD_LOGIC; 
  signal bus1_OBUF_1548 : STD_LOGIC; 
  signal ctl_r0_w_OBUF_1549 : STD_LOGIC; 
  signal cpu_ctl_ra_0_DUMMY_0 : STD_LOGIC; 
  signal cpu_ctl_raw_int : STD_LOGIC; 
  signal ctl_r1_w_OBUF_1552 : STD_LOGIC; 
  signal cpu_ctl_ra_1_DUMMY : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o0 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o2 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o3 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o4 : STD_LOGIC; 
  signal r2_w_OBUF_1562 : STD_LOGIC; 
  signal cpu_ctl_ra_2_DUMMY_0 : STD_LOGIC; 
  signal r3_w_OBUF_1564 : STD_LOGIC; 
  signal rst : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_9_XLXN_3 : STD_LOGIC; 
  signal cpu_ctl_ls_ldst_s4 : STD_LOGIC; 
  signal cpu_ctl_s4_DUMMY : STD_LOGIC; 
  signal cpu_ctl_ls_st : STD_LOGIC; 
  signal cpu_ctl_ls_ld : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_0 : STD_LOGIC; 
  signal cpu_ctl_jmp_jmp_s5 : STD_LOGIC; 
  signal cpu_ctl_jmp_jmp : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_20 : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_18 : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_19 : STD_LOGIC; 
  signal cpu_ctl_ra_3_DUMMY : STD_LOGIC; 
  signal ir_o_3_OBUF_1581 : STD_LOGIC; 
  signal ir_o_2_OBUF_1582 : STD_LOGIC; 
  signal cpu_ctl_s2_DUMMY : STD_LOGIC; 
  signal cpu_ctl_s3_DUMMY : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_not_equals_op : STD_LOGIC; 
  signal cpu_ctl_ls_ldc_s6 : STD_LOGIC; 
  signal cpu_ctl_ls_ldc : STD_LOGIC; 
  signal cpu_ctl_s6_DUMMY : STD_LOGIC; 
  signal clkc_OBUF_1589 : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_22 : STD_LOGIC; 
  signal alu_inst_add_o_0_0 : STD_LOGIC; 
  signal alu_C_in_OBUF_1592 : STD_LOGIC; 
  signal alu_inst_add_o_1_0 : STD_LOGIC; 
  signal alu_inst_add_o_2_0 : STD_LOGIC; 
  signal alu_inst_add_o_3_0 : STD_LOGIC; 
  signal alu_inst_add_o_4_0 : STD_LOGIC; 
  signal alu_inst_add_o_5_0 : STD_LOGIC; 
  signal alu_inst_add_o_6_0 : STD_LOGIC; 
  signal alu_inst_XLXN_91_0 : STD_LOGIC; 
  signal alu_inst_add_o_7_0 : STD_LOGIC; 
  signal r2_r_OBUF_1603 : STD_LOGIC; 
  signal r3_r_OBUF_1604 : STD_LOGIC; 
  signal ram_r_OBUF_1605 : STD_LOGIC; 
  signal ram_w_OBUF_1606 : STD_LOGIC; 
  signal clk_IBUF_0 : STD_LOGIC; 
  signal acc_r_OBUF_1608 : STD_LOGIC; 
  signal monitor_0_OBUF_1609 : STD_LOGIC; 
  signal monitor_1_OBUF_1610 : STD_LOGIC; 
  signal monitor_2_OBUF_1611 : STD_LOGIC; 
  signal monitor_3_OBUF_1612 : STD_LOGIC; 
  signal monitor_4_OBUF_1613 : STD_LOGIC; 
  signal flags_o_0_OBUF_1614 : STD_LOGIC; 
  signal monitor_5_OBUF_1615 : STD_LOGIC; 
  signal monitor_6_OBUF_1616 : STD_LOGIC; 
  signal flags_o_2_OBUF_1617 : STD_LOGIC; 
  signal monitor_7_OBUF_1618 : STD_LOGIC; 
  signal flags_o_3_OBUF_1619 : STD_LOGIC; 
  signal ctl_iar_w_OBUF_1620 : STD_LOGIC; 
  signal clkr_OBUF_1621 : STD_LOGIC; 
  signal cpu_ctl_XLXN_30 : STD_LOGIC; 
  signal cpu_ctl_XLXN_31 : STD_LOGIC; 
  signal clk_IBUF_BUFG_1624 : STD_LOGIC; 
  signal cpu_ctl_XLXN_32 : STD_LOGIC; 
  signal ram_a_o_0_OBUF_1626 : STD_LOGIC; 
  signal ram_a_o_1_OBUF_1627 : STD_LOGIC; 
  signal ram_a_o_2_OBUF_1628 : STD_LOGIC; 
  signal ram_a_o_3_OBUF_1629 : STD_LOGIC; 
  signal ram_a_o_4_OBUF_1630 : STD_LOGIC; 
  signal ram_a_o_5_OBUF_1631 : STD_LOGIC; 
  signal ram_a_o_6_OBUF_1632 : STD_LOGIC; 
  signal ram_o_7_0 : STD_LOGIC; 
  signal ram_a_o_7_OBUF_1634 : STD_LOGIC; 
  signal ram_o_6_0 : STD_LOGIC; 
  signal ram_o_5_0 : STD_LOGIC; 
  signal flags_clr_OBUF_1637 : STD_LOGIC; 
  signal ram_o_4_0 : STD_LOGIC; 
  signal ram_o_3_0 : STD_LOGIC; 
  signal ir_o_0_OBUF_1640 : STD_LOGIC; 
  signal ram_o_2_0 : STD_LOGIC; 
  signal ram_o_1_0 : STD_LOGIC; 
  signal ir_o_1_OBUF_1643 : STD_LOGIC; 
  signal ram_o_0_0 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_4_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_3_XLXN_3 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_0 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_7_XLXN_3 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_2_XLXN_3 : STD_LOGIC; 
  signal alu_z_OBUF_1676 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_6_XLXN_3 : STD_LOGIC; 
  signal ram_a_w_OBUF_1684 : STD_LOGIC; 
  signal r0_r_OBUF_1685 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_0 : STD_LOGIC; 
  signal alu_C_in_enabled_OBUF_1692 : STD_LOGIC; 
  signal XLXN_216 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXI_5_XLXN_3 : STD_LOGIC; 
  signal iar_r_OBUF_1706 : STD_LOGIC; 
  signal temp_w_OBUF_1707 : STD_LOGIC; 
  signal ir_w_OBUF_1708 : STD_LOGIC; 
  signal alu_C_out_OBUF_1709 : STD_LOGIC; 
  signal r1_r_OBUF_1710 : STD_LOGIC; 
  signal alu_eq_OBUF_1711 : STD_LOGIC; 
  signal XLXI_130_XLXI_2_XLXI_4_N01 : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_equals_op_s4 : STD_LOGIC; 
  signal cpu_ctl_jmp_jmp_s4 : STD_LOGIC; 
  signal cpu_ctl_rb_int : STD_LOGIC; 
  signal cpu_ctl_ra_int : STD_LOGIC; 
  signal cpu_ctl_alu_s6 : STD_LOGIC; 
  signal cpu_ctl_jmp_jmpr_s4 : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_equals_op : STD_LOGIC; 
  signal cpu_ctl_flag_equals_op : STD_LOGIC; 
  signal cpu_ctl_XLXN_1021 : STD_LOGIC; 
  signal cpu_ctl_XLXN_1020 : STD_LOGIC; 
  signal cpu_ctl_ls_ldc_s5 : STD_LOGIC; 
  signal cpu_ctl_ls_ld_s5 : STD_LOGIC; 
  signal cpu_ctl_ls_st_s5 : STD_LOGIC; 
  signal cpu_ctl_alu_calc : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_equals_op_s5 : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_51 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_43 : STD_LOGIC; 
  signal alu_inst_XLXI_135_XLXN_44 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_1739 : STD_LOGIC; 
  signal alu_inst_XLXI_137_XLXI_1_N01 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_1741 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_1742 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_1743 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_1744 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_1745 : STD_LOGIC; 
  signal cpu_ctl_XLXN_11 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_o0_rt_19 : STD_LOGIC; 
  signal alu_inst_XLXN_91 : STD_LOGIC; 
  signal clk_IBUF_64 : STD_LOGIC; 
  signal ProtoComp28_IINV_OUT : STD_LOGIC; 
  signal rst_non_inverted : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51_212 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6_201 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_200 : STD_LOGIC; 
  signal ram_o_0_INV_XLXI_9_XLXI_1_DWE2 : STD_LOGIC; 
  signal ram_o_0_INV_XLXI_9_XLXI_1_DWE1 : STD_LOGIC; 
  signal ram_o_0_INV_XLXI_9_XLXI_1_CWE2 : STD_LOGIC; 
  signal ram_o_0_INV_XLXI_9_XLXI_1_BWE1 : STD_LOGIC; 
  signal XLXI_9_XLXI_1_C_325 : STD_LOGIC; 
  signal XLXI_9_XLXI_1_A_311 : STD_LOGIC; 
  signal XLXI_9_XLXI_1_B_303 : STD_LOGIC; 
  signal XLXI_9_XLXI_1_D_296 : STD_LOGIC; 
  signal XLXI_9_XLXI_1_F7_A_294 : STD_LOGIC; 
  signal XLXI_9_XLXI_1_F7_B_293 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51_342 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6_331 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_330 : STD_LOGIC; 
  signal ram_o_5_INV_XLXI_9_XLXI_21_DWE2 : STD_LOGIC; 
  signal ram_o_5_INV_XLXI_9_XLXI_21_DWE1 : STD_LOGIC; 
  signal ram_o_5_INV_XLXI_9_XLXI_21_CWE2 : STD_LOGIC; 
  signal ram_o_5_INV_XLXI_9_XLXI_21_BWE1 : STD_LOGIC; 
  signal XLXI_9_XLXI_21_D_376 : STD_LOGIC; 
  signal XLXI_9_XLXI_21_A_368 : STD_LOGIC; 
  signal XLXI_9_XLXI_21_B_360 : STD_LOGIC; 
  signal XLXI_9_XLXI_21_C_352 : STD_LOGIC; 
  signal XLXI_9_XLXI_21_F7_A_350 : STD_LOGIC; 
  signal XLXI_9_XLXI_21_F7_B_349 : STD_LOGIC; 
  signal ram_o_6_INV_XLXI_9_XLXI_22_DWE2 : STD_LOGIC; 
  signal ram_o_6_INV_XLXI_9_XLXI_22_DWE1 : STD_LOGIC; 
  signal ram_o_6_INV_XLXI_9_XLXI_22_CWE2 : STD_LOGIC; 
  signal ram_o_6_INV_XLXI_9_XLXI_22_BWE1 : STD_LOGIC; 
  signal XLXI_9_XLXI_22_D_414 : STD_LOGIC; 
  signal XLXI_9_XLXI_22_F7_A_412 : STD_LOGIC; 
  signal XLXI_9_XLXI_22_F7_B_411 : STD_LOGIC; 
  signal XLXI_9_XLXI_22_A_404 : STD_LOGIC; 
  signal XLXI_9_XLXI_22_B_396 : STD_LOGIC; 
  signal XLXI_9_XLXI_22_C_388 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51_435 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6_424 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_423 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51_457 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6_446 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_445 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6_539 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_538 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51_520 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51_555 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6_546 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_pack_4 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51_581 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6_570 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_569 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51_606 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6_595 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_594 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51_625 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6_614 : STD_LOGIC; 
  signal alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_613 : STD_LOGIC; 
  signal XLXN_216_INV_XLXI_102CLK : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51_704 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6_695 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_pack_4 : STD_LOGIC; 
  signal ram_o_1_INV_XLXI_9_XLXI_17_DWE2 : STD_LOGIC; 
  signal ram_o_1_INV_XLXI_9_XLXI_17_DWE1 : STD_LOGIC; 
  signal ram_o_1_INV_XLXI_9_XLXI_17_CWE2 : STD_LOGIC; 
  signal ram_o_1_INV_XLXI_9_XLXI_17_BWE1 : STD_LOGIC; 
  signal XLXI_9_XLXI_17_C_752 : STD_LOGIC; 
  signal XLXI_9_XLXI_17_A_737 : STD_LOGIC; 
  signal XLXI_9_XLXI_17_B_729 : STD_LOGIC; 
  signal XLXI_9_XLXI_17_D_721 : STD_LOGIC; 
  signal XLXI_9_XLXI_17_F7_A_719 : STD_LOGIC; 
  signal XLXI_9_XLXI_17_F7_B_718 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51_767 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6_758 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_pack_4 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51_801 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6_792 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_pack_4 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51_823 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6_815 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_814 : STD_LOGIC; 
  signal ram_o_4_INV_XLXI_9_XLXI_20_DWE2 : STD_LOGIC; 
  signal ram_o_4_INV_XLXI_9_XLXI_20_DWE1 : STD_LOGIC; 
  signal ram_o_4_INV_XLXI_9_XLXI_20_CWE2 : STD_LOGIC; 
  signal ram_o_4_INV_XLXI_9_XLXI_20_BWE1 : STD_LOGIC; 
  signal XLXI_9_XLXI_20_A_870 : STD_LOGIC; 
  signal XLXI_9_XLXI_20_B_862 : STD_LOGIC; 
  signal XLXI_9_XLXI_20_C_854 : STD_LOGIC; 
  signal XLXI_9_XLXI_20_D_844 : STD_LOGIC; 
  signal XLXI_9_XLXI_20_F7_A_842 : STD_LOGIC; 
  signal XLXI_9_XLXI_20_F7_B_841 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51_931 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6_922 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_pack_3 : STD_LOGIC; 
  signal cpu_ctl_jmp_ifjmp : STD_LOGIC; 
  signal ram_o_2_INV_XLXI_9_XLXI_18_DWE2 : STD_LOGIC; 
  signal ram_o_2_INV_XLXI_9_XLXI_18_DWE1 : STD_LOGIC; 
  signal ram_o_2_INV_XLXI_9_XLXI_18_CWE2 : STD_LOGIC; 
  signal ram_o_2_INV_XLXI_9_XLXI_18_BWE1 : STD_LOGIC; 
  signal XLXI_9_XLXI_18_A_1084 : STD_LOGIC; 
  signal XLXI_9_XLXI_18_B_1076 : STD_LOGIC; 
  signal XLXI_9_XLXI_18_C_1068 : STD_LOGIC; 
  signal XLXI_9_XLXI_18_D_1058 : STD_LOGIC; 
  signal XLXI_9_XLXI_18_F7_A_1056 : STD_LOGIC; 
  signal XLXI_9_XLXI_18_F7_B_1055 : STD_LOGIC; 
  signal ram_o_3_INV_XLXI_9_XLXI_19_DWE2 : STD_LOGIC; 
  signal ram_o_3_INV_XLXI_9_XLXI_19_DWE1 : STD_LOGIC; 
  signal ram_o_3_INV_XLXI_9_XLXI_19_CWE2 : STD_LOGIC; 
  signal ram_o_3_INV_XLXI_9_XLXI_19_BWE1 : STD_LOGIC; 
  signal XLXI_9_XLXI_19_D_1133 : STD_LOGIC; 
  signal XLXI_9_XLXI_19_A_1126 : STD_LOGIC; 
  signal XLXI_9_XLXI_19_B_1118 : STD_LOGIC; 
  signal XLXI_9_XLXI_19_C_1110 : STD_LOGIC; 
  signal XLXI_9_XLXI_19_F7_A_1108 : STD_LOGIC; 
  signal XLXI_9_XLXI_19_F7_B_1107 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6_1163 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_pack_4 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51_1145 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51_1179 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6_1171 : STD_LOGIC; 
  signal XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_1170 : STD_LOGIC; 
  signal ram_o_7_INV_XLXI_9_XLXI_23_DWE2 : STD_LOGIC; 
  signal ram_o_7_INV_XLXI_9_XLXI_23_DWE1 : STD_LOGIC; 
  signal ram_o_7_INV_XLXI_9_XLXI_23_CWE2 : STD_LOGIC; 
  signal ram_o_7_INV_XLXI_9_XLXI_23_BWE1 : STD_LOGIC; 
  signal XLXI_9_XLXI_23_D_1265 : STD_LOGIC; 
  signal XLXI_9_XLXI_23_F7_A_1263 : STD_LOGIC; 
  signal XLXI_9_XLXI_23_F7_B_1262 : STD_LOGIC; 
  signal XLXI_9_XLXI_23_A_1260 : STD_LOGIC; 
  signal XLXI_9_XLXI_23_B_1252 : STD_LOGIC; 
  signal XLXI_9_XLXI_23_C_1244 : STD_LOGIC; 
  signal cpu_ctl_ra_2_DUMMY : STD_LOGIC; 
  signal cpu_ctl_s1_DUMMY : STD_LOGIC; 
  signal cpu_ctl_s6_DUMMY_pack_2 : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_19_INV_cpu_ctl_stp_XLXI_24_COUNT_1CLK : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_19_INV_cpu_ctl_stp_XLXI_24_COUNT_2CLK : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_19_INV_cpu_ctl_stp_XLXI_24_COUNT_0CLK : STD_LOGIC; 
  signal cpu_ctl_stp_XLXN_20_pack_3 : STD_LOGIC; 
  signal cpu_ctl_s3_DUMMY_pack_2 : STD_LOGIC; 
  signal cpu_ctl_ra_0_DUMMY : STD_LOGIC; 
  signal clkc_OBUF_INV_clck_gen_XLXI_4_q_tmpCLK : STD_LOGIC; 
  signal clck_gen_XLXI_4_q_tmp_q_tmp_MUX_34_o : STD_LOGIC; 
  signal NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal pto : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal temp_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r3_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal acc_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_130_enc_o : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal r2_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r1_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r0_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal iar_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_inst_add_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ram_o : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cpu_ctl_stp_XLXI_24_Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => alu_inst_add_o(3),
      O => alu_inst_add_o_3_0
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => alu_inst_add_o(2),
      O => alu_inst_add_o_2_0
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => alu_inst_add_o(1),
      O => alu_inst_add_o_1_0
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => alu_inst_add_o(0),
      O => alu_inst_add_o_0_0
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y28",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_XLXI_1_o3,
      ADR5 => pto(3),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y28"
    )
    port map (
      CI => '0',
      CYINIT => alu_C_in_OBUF_1592,
      CO(3) => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3),
      CO(2) => NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_3_CO_0_UNCONNECTED,
      DI(3) => XLXI_130_XLXI_1_o3,
      DI(2) => XLXI_130_XLXI_1_o2,
      DI(1) => XLXI_130_XLXI_1_o1,
      DI(0) => XLXI_130_XLXI_1_o0_rt_19,
      O(3) => alu_inst_add_o(3),
      O(2) => alu_inst_add_o(2),
      O(1) => alu_inst_add_o(1),
      O(0) => alu_inst_add_o(0),
      S(3) => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(3),
      S(2) => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2),
      S(1) => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1),
      S(0) => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y28",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_XLXI_1_o2,
      ADR5 => pto(2),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(2)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y28",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_XLXI_1_o1,
      ADR5 => pto(1),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(1)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y28",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => XLXI_130_XLXI_1_o0,
      ADR4 => pto(0),
      ADR5 => '1',
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(0)
    );
  XLXI_130_XLXI_1_o0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X2Y28",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => XLXI_130_XLXI_1_o0,
      ADR4 => '1',
      O => XLXI_130_XLXI_1_o0_rt_19
    );
  alu_inst_add_o_7_alu_inst_add_o_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => alu_inst_XLXN_91,
      O => alu_inst_XLXN_91_0
    );
  alu_inst_add_o_7_alu_inst_add_o_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => alu_inst_add_o(6),
      O => alu_inst_add_o_6_0
    );
  alu_inst_add_o_7_alu_inst_add_o_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => alu_inst_add_o(5),
      O => alu_inst_add_o_5_0
    );
  alu_inst_add_o_7_alu_inst_add_o_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => alu_inst_add_o(4),
      O => alu_inst_add_o_4_0
    );
  alu_inst_add_o_7_rt : X_AND2B1L
    generic map(
      LOC => "SLICE_X2Y29"
    )
    port map (
      DI => alu_inst_add_o(7),
      O => alu_inst_add_o_7_0,
      SRI => '0'
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_XLXI_1_o7,
      ADR5 => pto(7),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y29"
    )
    port map (
      CI => alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy(3),
      CYINIT => '0',
      CO(3) => alu_inst_XLXN_91,
      CO(2) => NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_alu_inst_XLXI_2_Madd_adder_tmp_Madd_cy_7_CO_0_UNCONNECTED,
      DI(3) => XLXI_130_XLXI_1_o7,
      DI(2) => XLXI_130_XLXI_1_o6,
      DI(1) => XLXI_130_XLXI_1_o5,
      DI(0) => XLXI_130_XLXI_1_o4,
      O(3) => alu_inst_add_o(7),
      O(2) => alu_inst_add_o(6),
      O(1) => alu_inst_add_o(5),
      O(0) => alu_inst_add_o(4),
      S(3) => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(7),
      S(2) => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6),
      S(1) => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5),
      S(0) => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_XLXI_1_o6,
      ADR5 => pto(6),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(6)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_XLXI_1_o5,
      ADR5 => pto(5),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(5)
    );
  alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_XLXI_1_o4,
      ADR5 => pto(4),
      O => alu_inst_XLXI_2_Madd_adder_tmp_Madd_lut(4)
    );
  r2_r_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => r2_r_OBUF_1603,
      O => r2_r
    );
  r3_r_OBUF : X_OBUF
    generic map(
      LOC => "PAD55"
    )
    port map (
      I => r3_r_OBUF_1604,
      O => r3_r
    );
  alu_gt_OBUF : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => alu_gt_OBUF_1536,
      O => alu_gt
    );
  r2_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => r2_w_OBUF_1562,
      O => r2_w
    );
  ram_r_OBUF : X_OBUF
    generic map(
      LOC => "PAD20"
    )
    port map (
      I => ram_r_OBUF_1605,
      O => ram_r
    );
  r3_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD41"
    )
    port map (
      I => r3_w_OBUF_1564,
      O => r3_w
    );
  ram_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => ram_w_OBUF_1606,
      O => ram_w
    );
  clk_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_IBUF_64,
      I => clk
    );
  ProtoComp18_IMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_IBUF_64,
      O => clk_IBUF_0
    );
  acc_r_OBUF : X_OBUF
    generic map(
      LOC => "PAD26"
    )
    port map (
      I => acc_r_OBUF_1608,
      O => acc_r
    );
  monitor_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => monitor_0_OBUF_1609,
      O => monitor(0)
    );
  bus1_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => bus1_OBUF_1548,
      O => bus1
    );
  monitor_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => monitor_1_OBUF_1610,
      O => monitor(1)
    );
  acc_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => acc_w_OBUF_1522,
      O => acc_w
    );
  monitor_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => monitor_2_OBUF_1611,
      O => monitor(2)
    );
  monitor_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => monitor_3_OBUF_1612,
      O => monitor(3)
    );
  clkc_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => clkc_OBUF_1589,
      O => clkc
    );
  ctl_r0_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => ctl_r0_w_OBUF_1549,
      O => ctl_r0_w
    );
  monitor_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => monitor_4_OBUF_1613,
      O => monitor(4)
    );
  flags_o_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => flags_o_0_OBUF_1614,
      O => flags_o(0)
    );
  monitor_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => monitor_5_OBUF_1615,
      O => monitor(5)
    );
  flags_o_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => flags_o_1_OBUF_1539,
      O => flags_o(1)
    );
  ctl_r1_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD23"
    )
    port map (
      I => ctl_r1_w_OBUF_1552,
      O => ctl_r1_w
    );
  monitor_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD3"
    )
    port map (
      I => monitor_6_OBUF_1616,
      O => monitor(6)
    );
  flags_o_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => flags_o_2_OBUF_1617,
      O => flags_o(2)
    );
  monitor_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => monitor_7_OBUF_1618,
      O => monitor(7)
    );
  flags_o_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => flags_o_3_OBUF_1619,
      O => flags_o(3)
    );
  sysbus_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => XLXI_130_XLXI_1_o0,
      O => sysbus(0)
    );
  sysbus_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD36"
    )
    port map (
      I => XLXI_130_XLXI_1_o1,
      O => sysbus(1)
    );
  ctl_iar_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => ctl_iar_w_OBUF_1620,
      O => ctl_iar_w
    );
  clkr_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => clkr_OBUF_1621,
      O => clkr
    );
  alu_op_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => cpu_ctl_XLXN_30,
      O => alu_op(0)
    );
  sysbus_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => XLXI_130_XLXI_1_o2,
      O => sysbus(2)
    );
  alu_op_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => cpu_ctl_XLXN_31,
      O => alu_op(1)
    );
  clk_IBUF_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_IBUF_0,
      O => clk_IBUF_BUFG_1624
    );
  sysbus_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => XLXI_130_XLXI_1_o3,
      O => sysbus(3)
    );
  alu_op_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => cpu_ctl_XLXN_32,
      O => alu_op(2)
    );
  clkw_OBUF : X_OBUF
    generic map(
      LOC => "PAD58"
    )
    port map (
      I => clkw_OBUF_1523,
      O => clkw
    );
  sysbus_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => XLXI_130_XLXI_1_o4,
      O => sysbus(4)
    );
  flags_clr_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => flags_clr_OBUF_1637,
      O => flags_clr
    );
  sysbus_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => XLXI_130_XLXI_1_o5,
      O => sysbus(5)
    );
  ir_o_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD60"
    )
    port map (
      I => ir_o_0_OBUF_1640,
      O => ir_o(0)
    );
  sysbus_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => XLXI_130_XLXI_1_o6,
      O => sysbus(6)
    );
  ir_o_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => ir_o_1_OBUF_1643,
      O => ir_o(1)
    );
  rst_in_IBUF : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 115 ps
    )
    port map (
      O => rst_non_inverted,
      I => rst_in
    );
  ProtoComp28_IMUX : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 115 ps
    )
    port map (
      I => ProtoComp28_IINV_OUT,
      O => rst
    );
  ProtoComp28_IINV : X_INV
    generic map(
      LOC => "PAD183",
      PATHPULSE => 115 ps
    )
    port map (
      I => rst_non_inverted,
      O => ProtoComp28_IINV_OUT
    );
  sysbus_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => XLXI_130_XLXI_1_o7,
      O => sysbus(7)
    );
  ir_o_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => ir_o_2_OBUF_1582,
      O => ir_o(2)
    );
  ir_o_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => ir_o_3_OBUF_1581,
      O => ir_o(3)
    );
  ir_o_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD56"
    )
    port map (
      I => ir_o_4_OBUF_1545,
      O => ir_o(4)
    );
  ir_o_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => ir_o_5_OBUF_1546,
      O => ir_o(5)
    );
  ir_o_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => ir_o_6_OBUF_1544,
      O => ir_o(6)
    );
  ir_o_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD50"
    )
    port map (
      I => ir_o_7_OBUF_1543,
      O => ir_o(7)
    );
  ram_a_o_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => ram_a_o_0_OBUF_1626,
      O => ram_a_o(0)
    );
  ram_a_o_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD67"
    )
    port map (
      I => ram_a_o_1_OBUF_1627,
      O => ram_a_o(1)
    );
  alu_z_OBUF : X_OBUF
    generic map(
      LOC => "PAD13"
    )
    port map (
      I => alu_z_OBUF_1676,
      O => alu_z
    );
  ram_a_o_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => ram_a_o_2_OBUF_1628,
      O => ram_a_o(2)
    );
  ram_a_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => ram_a_w_OBUF_1684,
      O => ram_a_w
    );
  alu_C_in_enabled_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => alu_C_in_enabled_OBUF_1692,
      O => alu_C_in_enabled
    );
  ram_a_o_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD75"
    )
    port map (
      I => ram_a_o_3_OBUF_1629,
      O => ram_a_o(3)
    );
  ram_a_o_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => ram_a_o_4_OBUF_1630,
      O => ram_a_o(4)
    );
  ram_a_o_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD74"
    )
    port map (
      I => ram_a_o_5_OBUF_1631,
      O => ram_a_o(5)
    );
  alu_C_in_OBUF : X_OBUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => alu_C_in_OBUF_1592,
      O => alu_C_in
    );
  ram_a_o_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_a_o(6)
    );
  ram_a_o_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD73"
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_a_o(7)
    );
  iar_r_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => iar_r_OBUF_1706,
      O => iar_r
    );
  temp_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => temp_w_OBUF_1707,
      O => temp_w
    );
  ir_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD52"
    )
    port map (
      I => ir_w_OBUF_1708,
      O => ir_w
    );
  iar_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD46"
    )
    port map (
      I => ctl_iar_w_OBUF_1620,
      O => iar_w
    );
  r0_r_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => r0_r_OBUF_1685,
      O => r0_r
    );
  alu_C_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => alu_C_out_OBUF_1709,
      O => alu_C_out
    );
  r1_r_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => r1_r_OBUF_1710,
      O => r1_r
    );
  flags_w_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => flags_w_OBUF_1534,
      O => flags_w
    );
  alu_eq_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => alu_eq_OBUF_1711,
      O => alu_eq
    );
  XLXI_104_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ctl_r0_w_OBUF_1549,
      I => XLXI_130_XLXI_1_o3,
      O => monitor_3_OBUF_1612,
      RST => GND,
      SET => GND
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y28"
    )
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6_201,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51_212,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_200,
      SEL => cpu_ctl_XLXN_32
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y28",
      INIT => X"75FD31B964EC20A8"
    )
    port map (
      ADR0 => cpu_ctl_XLXN_31,
      ADR1 => cpu_ctl_XLXN_30,
      ADR2 => XLXI_130_XLXI_1_o3,
      ADR3 => XLXI_130_XLXI_1_o2,
      ADR4 => XLXI_130_XLXI_1_o1,
      ADR5 => alu_inst_add_o_2_0,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_6_201
    );
  XLXI_125_XLXI_5_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y28",
      INIT => '0'
    )
    port map (
      GE => acc_w_OBUF_1522,
      CLK => '1',
      I => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_200,
      O => acc_o(2),
      RST => rst,
      SET => GND
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y28",
      INIT => X"333F303C303C000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_XLXN_31,
      ADR2 => cpu_ctl_XLXN_30,
      ADR3 => alu_inst_XLXI_135_XLXI_7_XLXN_3,
      ADR4 => XLXI_130_XLXI_1_o2,
      ADR5 => pto(2),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_15_Mmux_S3_D15_Mux_0_o_51_212
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y28",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => pto(2),
      ADR5 => XLXI_130_XLXI_1_o2,
      O => alu_inst_XLXI_135_XLXI_7_XLXN_3
    );
  XLXI_104_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y38",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ctl_r0_w_OBUF_1549,
      I => XLXI_130_XLXI_1_o6,
      O => monitor_6_OBUF_1616,
      RST => GND,
      SET => GND
    );
  XLXI_104_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y39",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ctl_r0_w_OBUF_1549,
      I => XLXI_130_XLXI_1_o7,
      O => monitor_7_OBUF_1618,
      RST => GND,
      SET => GND
    );
  XLXI_104_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y38",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ctl_r0_w_OBUF_1549,
      I => XLXI_130_XLXI_1_o5,
      O => monitor_5_OBUF_1615,
      RST => GND,
      SET => GND
    );
  XLXI_104_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y39",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ctl_r0_w_OBUF_1549,
      I => XLXI_130_XLXI_1_o4,
      O => monitor_4_OBUF_1613,
      RST => GND,
      SET => GND
    );
  XLXI_104_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ctl_r0_w_OBUF_1549,
      I => XLXI_130_XLXI_1_o0,
      O => monitor_0_OBUF_1609,
      RST => GND,
      SET => GND
    );
  pass_th_XLXI_4_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y26",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => temp_o(3),
      ADR5 => bus1_OBUF_1548,
      O => pto(3)
    );
  pass_th_XLXI_1_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y27",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => temp_o(1),
      ADR5 => bus1_OBUF_1548,
      O => pto(1)
    );
  XLXI_124_XLXI_5_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      GE => temp_w_OBUF_1707,
      CLK => '1',
      I => XLXI_130_XLXI_1_o7,
      O => temp_o(7),
      RST => rst,
      SET => GND
    );
  XLXI_124_XLXI_5_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      GE => temp_w_OBUF_1707,
      CLK => '1',
      I => XLXI_130_XLXI_1_o6,
      O => temp_o(6),
      RST => rst,
      SET => GND
    );
  XLXI_124_XLXI_5_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      GE => temp_w_OBUF_1707,
      CLK => '1',
      I => XLXI_130_XLXI_1_o5,
      O => temp_o(5),
      RST => rst,
      SET => GND
    );
  pass_th_XLXI_7_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => temp_o(6),
      ADR5 => bus1_OBUF_1548,
      O => pto(6)
    );
  XLXI_124_XLXI_5_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      GE => temp_w_OBUF_1707,
      CLK => '1',
      I => XLXI_130_XLXI_1_o4,
      O => temp_o(4),
      RST => rst,
      SET => GND
    );
  pass_th_XLXI_6_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => temp_o(5),
      ADR5 => bus1_OBUF_1548,
      O => pto(5)
    );
  XLXI_124_XLXI_5_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y27",
      INIT => '0'
    )
    port map (
      GE => temp_w_OBUF_1707,
      CLK => '1',
      I => XLXI_130_XLXI_1_o3,
      O => temp_o(3),
      RST => rst,
      SET => GND
    );
  XLXI_124_XLXI_5_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y27",
      INIT => '0'
    )
    port map (
      GE => temp_w_OBUF_1707,
      CLK => '1',
      I => XLXI_130_XLXI_1_o2,
      O => temp_o(2),
      RST => rst,
      SET => GND
    );
  XLXI_124_XLXI_5_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y27",
      INIT => '0'
    )
    port map (
      GE => temp_w_OBUF_1707,
      CLK => '1',
      I => XLXI_130_XLXI_1_o1,
      O => temp_o(1),
      RST => rst,
      SET => GND
    );
  XLXI_124_XLXI_5_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y27",
      INIT => '0'
    )
    port map (
      GE => temp_w_OBUF_1707,
      CLK => '1',
      I => XLXI_130_XLXI_1_o0,
      O => temp_o(0),
      RST => rst,
      SET => GND
    );
  pass_th_XLXI_3_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y27",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => temp_o(2),
      ADR5 => bus1_OBUF_1548,
      O => pto(2)
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_3 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => X"CFCCFFFFCFCCCFCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => alu_inst_XLXI_135_XLXN_51,
      ADR2 => pto(3),
      ADR3 => XLXI_130_XLXI_1_o3,
      ADR4 => pto(4),
      ADR5 => XLXI_130_XLXI_1_o4,
      O => alu_inst_XLXI_135_XLXN_47
    );
  alu_inst_XLXI_135_XLXI_7_XLXI_3 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => X"4F44FFFF4F444F44"
    )
    port map (
      ADR0 => pto(0),
      ADR1 => XLXI_130_XLXI_1_o0,
      ADR2 => pto(1),
      ADR3 => XLXI_130_XLXI_1_o1,
      ADR4 => pto(2),
      ADR5 => XLXI_130_XLXI_1_o2,
      O => alu_inst_XLXI_135_XLXN_51
    );
  pass_th_XLXI_5_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y30",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => temp_o(4),
      ADR5 => bus1_OBUF_1548,
      O => pto(4)
    );
  XLXI_104_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ctl_r0_w_OBUF_1549,
      I => XLXI_130_XLXI_1_o2,
      O => monitor_2_OBUF_1611,
      RST => GND,
      SET => GND
    );
  INV_XLXI_9_XLXI_1_DWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_0_INV_XLXI_9_XLXI_1_DWE2
    );
  INV_XLXI_9_XLXI_1_DWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_0_INV_XLXI_9_XLXI_1_DWE1
    );
  INV_XLXI_9_XLXI_1_CWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_0_INV_XLXI_9_XLXI_1_CWE2
    );
  INV_XLXI_9_XLXI_1_BWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_0_INV_XLXI_9_XLXI_1_BWE1
    );
  ram_o_0_ram_o_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_o(0),
      O => ram_o_0_0
    );
  XLXI_9_XLXI_1_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y26"
    )
    port map (
      IA => XLXI_9_XLXI_1_F7_B_293,
      IB => XLXI_9_XLXI_1_F7_A_294,
      O => ram_o(0),
      SEL => ram_a_o_7_OBUF_1634
    );
  XLXI_9_XLXI_1_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X4Y26"
    )
    port map (
      IA => XLXI_9_XLXI_1_D_296,
      IB => XLXI_9_XLXI_1_C_325,
      O => XLXI_9_XLXI_1_F7_B_293,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_1_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X4Y26"
    )
    port map (
      IA => XLXI_9_XLXI_1_B_303,
      IB => XLXI_9_XLXI_1_A_311,
      O => XLXI_9_XLXI_1_F7_A_294,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_1_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"0000000000000072"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o0,
      O => XLXI_9_XLXI_1_D_296,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_0_INV_XLXI_9_XLXI_1_DWE1,
      WE2 => ram_o_0_INV_XLXI_9_XLXI_1_DWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_1_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o0,
      O => XLXI_9_XLXI_1_C_325,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_o_0_INV_XLXI_9_XLXI_1_CWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_1_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o0,
      O => XLXI_9_XLXI_1_B_303,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_0_INV_XLXI_9_XLXI_1_BWE1,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_1_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o0,
      O => XLXI_9_XLXI_1_A_311,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y27"
    )
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6_331,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51_342,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_330,
      SEL => cpu_ctl_XLXN_32
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => X"75FD31B964EC20A8"
    )
    port map (
      ADR0 => cpu_ctl_XLXN_31,
      ADR1 => cpu_ctl_XLXN_30,
      ADR2 => XLXI_130_XLXI_1_o4,
      ADR3 => XLXI_130_XLXI_1_o3,
      ADR4 => XLXI_130_XLXI_1_o2,
      ADR5 => alu_inst_add_o_3_0,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_6_331
    );
  XLXI_125_XLXI_5_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => '0'
    )
    port map (
      GE => acc_w_OBUF_1522,
      CLK => '1',
      I => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_330,
      O => acc_o(3),
      RST => rst,
      SET => GND
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => X"333F303C303C000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_XLXN_31,
      ADR2 => cpu_ctl_XLXN_30,
      ADR3 => alu_inst_XLXI_135_XLXI_6_XLXN_3,
      ADR4 => XLXI_130_XLXI_1_o3,
      ADR5 => pto(3),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_17_Mmux_S3_D15_Mux_0_o_51_342
    );
  INV_XLXI_9_XLXI_21_DWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_5_INV_XLXI_9_XLXI_21_DWE2
    );
  INV_XLXI_9_XLXI_21_DWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_5_INV_XLXI_9_XLXI_21_DWE1
    );
  INV_XLXI_9_XLXI_21_CWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_5_INV_XLXI_9_XLXI_21_CWE2
    );
  INV_XLXI_9_XLXI_21_BWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_5_INV_XLXI_9_XLXI_21_BWE1
    );
  ram_o_5_ram_o_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_o(5),
      O => ram_o_5_0
    );
  XLXI_9_XLXI_21_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y28"
    )
    port map (
      IA => XLXI_9_XLXI_21_F7_B_349,
      IB => XLXI_9_XLXI_21_F7_A_350,
      O => ram_o(5),
      SEL => ram_a_o_7_OBUF_1634
    );
  XLXI_9_XLXI_21_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X4Y28"
    )
    port map (
      IA => XLXI_9_XLXI_21_D_376,
      IB => XLXI_9_XLXI_21_C_352,
      O => XLXI_9_XLXI_21_F7_B_349,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_21_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X4Y28"
    )
    port map (
      IA => XLXI_9_XLXI_21_B_360,
      IB => XLXI_9_XLXI_21_A_368,
      O => XLXI_9_XLXI_21_F7_A_350,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_21_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"0000000000000205"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o5,
      O => XLXI_9_XLXI_21_D_376,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_5_INV_XLXI_9_XLXI_21_DWE1,
      WE2 => ram_o_5_INV_XLXI_9_XLXI_21_DWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_21_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o5,
      O => XLXI_9_XLXI_21_C_352,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_o_5_INV_XLXI_9_XLXI_21_CWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_21_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o5,
      O => XLXI_9_XLXI_21_B_360,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_5_INV_XLXI_9_XLXI_21_BWE1,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_21_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o5,
      O => XLXI_9_XLXI_21_A_368,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  INV_XLXI_9_XLXI_22_DWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_6_INV_XLXI_9_XLXI_22_DWE2
    );
  INV_XLXI_9_XLXI_22_DWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_6_INV_XLXI_9_XLXI_22_DWE1
    );
  INV_XLXI_9_XLXI_22_CWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_6_INV_XLXI_9_XLXI_22_CWE2
    );
  INV_XLXI_9_XLXI_22_BWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_6_INV_XLXI_9_XLXI_22_BWE1
    );
  ram_o_6_ram_o_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_o(6),
      O => ram_o_6_0
    );
  XLXI_9_XLXI_22_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y29"
    )
    port map (
      IA => XLXI_9_XLXI_22_F7_B_411,
      IB => XLXI_9_XLXI_22_F7_A_412,
      O => ram_o(6),
      SEL => ram_a_o_7_OBUF_1634
    );
  XLXI_9_XLXI_22_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X4Y29"
    )
    port map (
      IA => XLXI_9_XLXI_22_D_414,
      IB => XLXI_9_XLXI_22_C_388,
      O => XLXI_9_XLXI_22_F7_B_411,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_22_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X4Y29"
    )
    port map (
      IA => XLXI_9_XLXI_22_B_396,
      IB => XLXI_9_XLXI_22_A_404,
      O => XLXI_9_XLXI_22_F7_A_412,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_22_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"00000000000006A0"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o6,
      O => XLXI_9_XLXI_22_D_414,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_6_INV_XLXI_9_XLXI_22_DWE1,
      WE2 => ram_o_6_INV_XLXI_9_XLXI_22_DWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_22_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o6,
      O => XLXI_9_XLXI_22_C_388,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_o_6_INV_XLXI_9_XLXI_22_CWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_22_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o6,
      O => XLXI_9_XLXI_22_B_396,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_6_INV_XLXI_9_XLXI_22_BWE1,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_22_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o6,
      O => XLXI_9_XLXI_22_A_404,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y30"
    )
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6_424,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51_435,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_423,
      SEL => cpu_ctl_XLXN_32
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => X"75FD31B964EC20A8"
    )
    port map (
      ADR0 => cpu_ctl_XLXN_31,
      ADR1 => cpu_ctl_XLXN_30,
      ADR2 => XLXI_130_XLXI_1_o6,
      ADR3 => XLXI_130_XLXI_1_o5,
      ADR4 => XLXI_130_XLXI_1_o4,
      ADR5 => alu_inst_add_o_5_0,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_6_424
    );
  XLXI_125_XLXI_5_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => '0'
    )
    port map (
      GE => acc_w_OBUF_1522,
      CLK => '1',
      I => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_423,
      O => acc_o(5),
      RST => rst,
      SET => GND
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => X"333F303C303C000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_XLXN_31,
      ADR2 => cpu_ctl_XLXN_30,
      ADR3 => alu_inst_XLXI_135_XLXI_4_XLXN_3,
      ADR4 => XLXI_130_XLXI_1_o5,
      ADR5 => pto(5),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_12_Mmux_S3_D15_Mux_0_o_51_435
    );
  pass_th_XLXI_8_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => temp_o(7),
      ADR5 => bus1_OBUF_1548,
      O => pto(7)
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y31"
    )
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6_446,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51_457,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_445,
      SEL => cpu_ctl_XLXN_32
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"75FD31B964EC20A8"
    )
    port map (
      ADR0 => cpu_ctl_XLXN_31,
      ADR1 => cpu_ctl_XLXN_30,
      ADR2 => XLXI_130_XLXI_1_o7,
      ADR3 => XLXI_130_XLXI_1_o6,
      ADR4 => XLXI_130_XLXI_1_o5,
      ADR5 => alu_inst_add_o_6_0,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_6_446
    );
  XLXI_125_XLXI_5_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => '0'
    )
    port map (
      GE => acc_w_OBUF_1522,
      CLK => '1',
      I => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_445,
      O => acc_o(6),
      RST => rst,
      SET => GND
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"333F303C303C000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_XLXN_31,
      ADR2 => cpu_ctl_XLXN_30,
      ADR3 => alu_inst_XLXI_135_XLXI_3_XLXN_3,
      ADR4 => XLXI_130_XLXI_1_o6,
      ADR5 => pto(6),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_14_Mmux_S3_D15_Mux_0_o_51_457
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => pto(6),
      ADR5 => XLXI_130_XLXI_1_o6,
      O => alu_inst_XLXI_135_XLXI_3_XLXN_3
    );
  XLXI_87_Q0 : X_LATCHE
    generic map(
      LOC => "SLICE_X4Y37",
      INIT => '0'
    )
    port map (
      GE => flags_w_OBUF_1534,
      CLK => '1',
      I => alu_C_out_OBUF_1709,
      O => flags_o_0_OBUF_1614,
      RST => XLXN_217,
      SET => GND
    );
  alu_inst_XLXI_101 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y37",
      INIT => X"0332030200320002"
    )
    port map (
      ADR0 => alu_inst_XLXN_91_0,
      ADR1 => cpu_ctl_XLXN_32,
      ADR2 => cpu_ctl_XLXN_30,
      ADR3 => cpu_ctl_XLXN_31,
      ADR4 => XLXI_130_XLXI_1_o7,
      ADR5 => XLXI_130_XLXI_1_o0,
      O => alu_C_out_OBUF_1709
    );
  cpu_ctl_XLXI_557 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => X"00FF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cpu_ctl_s1_DUMMY_0,
      ADR4 => ir_o_4_OBUF_1545,
      ADR5 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_30
    );
  XLXI_9_XLXI_15_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ram_a_w_OBUF_1684,
      I => XLXI_130_XLXI_1_o3,
      O => ram_a_o_3_OBUF_1629,
      RST => GND,
      SET => GND
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_g,
      ADR5 => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_0,
      O => XLXI_130_XLXI_1_o3
    );
  alu_inst_XLXI_135_XLXI_6_XLXI_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => pto(3),
      ADR5 => XLXI_130_XLXI_1_o3,
      O => alu_inst_XLXI_135_XLXI_6_XLXN_3
    );
  XLXI_87_Q2 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      GE => flags_w_OBUF_1534,
      CLK => '1',
      I => alu_eq_OBUF_1711,
      O => flags_o_2_OBUF_1617,
      RST => XLXN_217,
      SET => GND
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_2 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"FF00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => alu_inst_XLXI_135_XLXI_2_XLXN_3,
      ADR4 => alu_inst_XLXI_135_XLXI_3_XLXN_3,
      ADR5 => alu_inst_XLXI_135_XLXN_44,
      O => alu_eq_OBUF_1711
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_2 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => alu_inst_XLXI_135_XLXI_4_XLXN_3,
      ADR1 => alu_inst_XLXI_135_XLXI_5_XLXN_3,
      ADR2 => alu_inst_XLXI_135_XLXI_6_XLXN_3,
      ADR3 => alu_inst_XLXI_135_XLXI_7_XLXN_3,
      ADR4 => alu_inst_XLXI_135_XLXI_8_XLXN_3,
      ADR5 => alu_inst_XLXI_135_XLXI_9_XLXN_3,
      O => alu_inst_XLXI_135_XLXN_44
    );
  XLXI_87_Q1 : X_LATCHE
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      GE => flags_w_OBUF_1534,
      CLK => '1',
      I => alu_gt_OBUF_1536,
      O => flags_o_1_OBUF_1539,
      RST => XLXN_217,
      SET => GND
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_3 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"FF00FFFFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => alu_inst_XLXI_135_XLXN_43,
      ADR4 => pto(7),
      ADR5 => XLXI_130_XLXI_1_o7,
      O => alu_gt_OBUF_1536
    );
  alu_inst_XLXI_135_XLXI_3_XLXI_3 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"CFCCFFFFCFCCCFCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => alu_inst_XLXI_135_XLXN_47,
      ADR2 => pto(5),
      ADR3 => XLXI_130_XLXI_1_o5,
      ADR4 => pto(6),
      ADR5 => XLXI_130_XLXI_1_o6,
      O => alu_inst_XLXI_135_XLXN_43
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y27"
    )
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6_539,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51_520,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_538,
      SEL => cpu_ctl_XLXN_32
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"75FD31B964EC20A8"
    )
    port map (
      ADR0 => cpu_ctl_XLXN_31,
      ADR1 => cpu_ctl_XLXN_30,
      ADR2 => XLXI_130_XLXI_1_o2,
      ADR3 => XLXI_130_XLXI_1_o1,
      ADR4 => XLXI_130_XLXI_1_o0,
      ADR5 => alu_inst_add_o_1_0,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_6_539
    );
  XLXI_125_XLXI_5_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => '0'
    )
    port map (
      GE => acc_w_OBUF_1522,
      CLK => '1',
      I => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_538,
      O => acc_o(1),
      RST => rst,
      SET => GND
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"333F303C303C000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_XLXN_31,
      ADR2 => cpu_ctl_XLXN_30,
      ADR3 => alu_inst_XLXI_135_XLXI_8_XLXN_3,
      ADR4 => XLXI_130_XLXI_1_o1,
      ADR5 => pto(1),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_13_Mmux_S3_D15_Mux_0_o_51_520
    );
  cpu_ctl_XLXI_17 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      ADR0 => clkw_OBUF_1523,
      ADR1 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4,
      ADR2 => cpu_ctl_ls_ldc_s4,
      ADR3 => cpu_ctl_alu_binary_s5,
      ADR4 => cpu_ctl_alu_unari_s4,
      ADR5 => cpu_ctl_s1_DUMMY_0,
      O => acc_w_OBUF_1522
    );
  cpu_ctl_XLXI_558 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"00FF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cpu_ctl_s1_DUMMY_0,
      ADR4 => ir_o_5_OBUF_1546,
      ADR5 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_31
    );
  ram_a_o_5_OBUF_ram_a_o_5_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_1739
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y28"
    )
    port map (
      IA => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6_546,
      IB => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51_555,
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      SEL => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_enc_o(1),
      ADR1 => XLXI_130_enc_o(0),
      ADR2 => ram_o_5_0,
      ADR3 => r0_o(5),
      ADR4 => acc_o(5),
      ADR5 => iar_o(5),
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_6_546
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => X"3F330F033C300C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => XLXI_130_enc_o(1),
      ADR2 => XLXI_130_enc_o(0),
      ADR3 => r3_o(5),
      ADR4 => r2_o(5),
      ADR5 => r1_o(5),
      O => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_51_555
    );
  XLXI_9_XLXI_15_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ram_a_w_OBUF_1684,
      I => XLXI_130_XLXI_1_o5,
      O => ram_a_o_5_OBUF_1631,
      RST => GND,
      SET => GND
    );
  XLXI_130_XLXI_1_XLXI_12_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_g,
      ADR5 => XLXI_130_XLXI_1_XLXI_12_Mmux_S3_D15_Mux_0_o_4_f7_1739,
      O => XLXI_130_XLXI_1_o5
    );
  alu_inst_XLXI_135_XLXI_4_XLXI_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => pto(5),
      ADR5 => XLXI_130_XLXI_1_o5,
      O => alu_inst_XLXI_135_XLXI_4_XLXN_3
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y29"
    )
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6_570,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51_581,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_569,
      SEL => cpu_ctl_XLXN_32
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"75FD31B964EC20A8"
    )
    port map (
      ADR0 => cpu_ctl_XLXN_31,
      ADR1 => cpu_ctl_XLXN_30,
      ADR2 => alu_C_in_OBUF_1592,
      ADR3 => XLXI_130_XLXI_1_o7,
      ADR4 => XLXI_130_XLXI_1_o6,
      ADR5 => alu_inst_add_o_7_0,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_6_570
    );
  XLXI_125_XLXI_5_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => '0'
    )
    port map (
      GE => acc_w_OBUF_1522,
      CLK => '1',
      I => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_569,
      O => acc_o(7),
      RST => rst,
      SET => GND
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"333F303C303C000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_XLXN_31,
      ADR2 => cpu_ctl_XLXN_30,
      ADR3 => alu_inst_XLXI_135_XLXI_2_XLXN_3,
      ADR4 => XLXI_130_XLXI_1_o7,
      ADR5 => pto(7),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_16_Mmux_S3_D15_Mux_0_o_51_581
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_g,
      ADR5 => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_0,
      O => XLXI_130_XLXI_1_o6
    );
  alu_inst_XLXI_135_XLXI_2_XLXI_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => pto(7),
      ADR5 => XLXI_130_XLXI_1_o7,
      O => alu_inst_XLXI_135_XLXI_2_XLXN_3
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y30"
    )
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6_595,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51_606,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_594,
      SEL => cpu_ctl_XLXN_32
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"75FD31B964EC20A8"
    )
    port map (
      ADR0 => cpu_ctl_XLXN_31,
      ADR1 => cpu_ctl_XLXN_30,
      ADR2 => XLXI_130_XLXI_1_o5,
      ADR3 => XLXI_130_XLXI_1_o4,
      ADR4 => XLXI_130_XLXI_1_o3,
      ADR5 => alu_inst_add_o_4_0,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_6_595
    );
  XLXI_125_XLXI_5_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      GE => acc_w_OBUF_1522,
      CLK => '1',
      I => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_594,
      O => acc_o(4),
      RST => rst,
      SET => GND
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"333F303C303C000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_XLXN_31,
      ADR2 => cpu_ctl_XLXN_30,
      ADR3 => alu_inst_XLXI_135_XLXI_5_XLXN_3,
      ADR4 => XLXI_130_XLXI_1_o4,
      ADR5 => pto(4),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_2_Mmux_S3_D15_Mux_0_o_51_606
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y31"
    )
    port map (
      IA => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6_614,
      IB => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51_625,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_613,
      SEL => cpu_ctl_XLXN_32
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"75FD31B964EC20A8"
    )
    port map (
      ADR0 => cpu_ctl_XLXN_31,
      ADR1 => cpu_ctl_XLXN_30,
      ADR2 => XLXI_130_XLXI_1_o1,
      ADR3 => XLXI_130_XLXI_1_o0,
      ADR4 => alu_C_in_OBUF_1592,
      ADR5 => alu_inst_add_o_0_0,
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_6_614
    );
  XLXI_125_XLXI_5_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => '0'
    )
    port map (
      GE => acc_w_OBUF_1522,
      CLK => '1',
      I => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_613,
      O => acc_o(0),
      RST => rst,
      SET => GND
    );
  alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"333F303C303C000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_XLXN_31,
      ADR2 => cpu_ctl_XLXN_30,
      ADR3 => alu_inst_XLXI_135_XLXI_9_XLXN_3,
      ADR4 => XLXI_130_XLXI_1_o0,
      ADR5 => pto(0),
      O => alu_inst_XLXI_138_XLXI_14_XLXI_1_Mmux_S3_D15_Mux_0_o_51_625
    );
  XLXI_89 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXN_216,
      ADR5 => alu_C_in_enabled_OBUF_1692,
      O => alu_C_in_OBUF_1592
    );
  cpu_ctl_XLXI_503 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"FF00FF00FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => clkw_OBUF_1523,
      ADR4 => cpu_ctl_alu_binary_s5,
      ADR5 => cpu_ctl_alu_unari_s4,
      O => flags_w_OBUF_1534
    );
  INV_XLXI_102CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkr_OBUF_1621,
      O => XLXN_216_INV_XLXI_102CLK
    );
  XLXI_102 : X_FF
    generic map(
      LOC => "SLICE_X6Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => XLXN_216_INV_XLXI_102CLK,
      I => flags_o_0_OBUF_1614,
      O => XLXN_216,
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_229 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y32",
      INIT => X"FF00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => clkw_OBUF_1523,
      ADR4 => cpu_ctl_s4_DUMMY,
      ADR5 => cpu_ctl_alu_binary,
      O => temp_w_OBUF_1707
    );
  cpu_ctl_XLXI_555 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_alu_binary_s5,
      ADR5 => cpu_ctl_alu_unari_s4,
      O => cpu_ctl_alu_calc
    );
  cpu_ctl_XLXI_559 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => X"00FF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cpu_ctl_s1_DUMMY_0,
      ADR4 => ir_o_6_OBUF_1544,
      ADR5 => cpu_ctl_alu_calc,
      O => cpu_ctl_XLXN_32
    );
  cpu_ctl_XLXI_3 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => X"F0F0F0F0F0F0F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => clkr_OBUF_1621,
      ADR3 => cpu_ctl_s1_DUMMY_0,
      ADR4 => cpu_ctl_ls_ldc_s4,
      ADR5 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4,
      O => bus1_OBUF_1548
    );
  pass_th_XLXI_13_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => bus1_OBUF_1548,
      ADR5 => temp_o(0),
      O => pto(0)
    );
  cpu_ctl_XLXI_105 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y30",
      INIT => X"0000C0C00000C000"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_s4_DUMMY,
      ADR2 => ir_o_7_OBUF_1543,
      ADR3 => ir_o_4_OBUF_1545,
      ADR4 => ir_o_6_OBUF_1544,
      ADR5 => ir_o_5_OBUF_1546,
      O => cpu_ctl_alu_unari_s4
    );
  cpu_ctl_XLXI_554 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => X"FF00FF00FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => clkr_OBUF_1621,
      ADR4 => cpu_ctl_alu_binary_s5,
      ADR5 => cpu_ctl_alu_unari_s4,
      O => alu_C_in_enabled_OBUF_1692
    );
  cpu_ctl_XLXI_46 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y32",
      INIT => X"0000F000F000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ir_o_7_OBUF_1543,
      ADR3 => ir_o_6_OBUF_1544,
      ADR4 => ir_o_4_OBUF_1545,
      ADR5 => ir_o_5_OBUF_1546,
      O => cpu_ctl_alu_binary
    );
  cpu_ctl_XLXI_250 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y32",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_s5_DUMMY,
      ADR5 => cpu_ctl_alu_binary,
      O => cpu_ctl_alu_binary_s5
    );
  alu_inst_XLXI_137_XLXI_1_O_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y39",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => XLXI_130_XLXI_1_o5,
      ADR4 => XLXI_130_XLXI_1_o6,
      ADR5 => XLXI_130_XLXI_1_o7,
      O => alu_inst_XLXI_137_XLXI_1_N01
    );
  XLXI_87_Q3 : X_LATCHE
    generic map(
      LOC => "SLICE_X7Y39",
      INIT => '0'
    )
    port map (
      GE => flags_w_OBUF_1534,
      CLK => '1',
      I => alu_z_OBUF_1676,
      O => flags_o_3_OBUF_1619,
      RST => XLXN_217,
      SET => GND
    );
  alu_inst_XLXI_137_XLXI_1_O : X_LUT6
    generic map(
      LOC => "SLICE_X7Y39",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => XLXI_130_XLXI_1_o0,
      ADR1 => XLXI_130_XLXI_1_o1,
      ADR2 => XLXI_130_XLXI_1_o2,
      ADR3 => XLXI_130_XLXI_1_o3,
      ADR4 => XLXI_130_XLXI_1_o4,
      ADR5 => alu_inst_XLXI_137_XLXI_1_N01,
      O => alu_z_OBUF_1676
    );
  monitor_1_OBUF_monitor_1_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_1741
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y23"
    )
    port map (
      IA => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6_695,
      IB => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51_704,
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      SEL => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_enc_o(1),
      ADR1 => XLXI_130_enc_o(0),
      ADR2 => ram_o_1_0,
      ADR3 => r0_o(1),
      ADR4 => acc_o(1),
      ADR5 => iar_o(1),
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_6_695
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"3F330F033C300C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => XLXI_130_enc_o(1),
      ADR2 => XLXI_130_enc_o(0),
      ADR3 => r3_o(1),
      ADR4 => r2_o(1),
      ADR5 => r1_o(1),
      O => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_51_704
    );
  XLXI_104_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ctl_r0_w_OBUF_1549,
      I => XLXI_130_XLXI_1_o1,
      O => monitor_1_OBUF_1610,
      RST => GND,
      SET => GND
    );
  XLXI_130_XLXI_1_XLXI_13_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_g,
      ADR5 => XLXI_130_XLXI_1_XLXI_13_Mmux_S3_D15_Mux_0_o_4_f7_1741,
      O => XLXI_130_XLXI_1_o1
    );
  alu_inst_XLXI_135_XLXI_8_XLXI_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => pto(1),
      ADR5 => XLXI_130_XLXI_1_o1,
      O => alu_inst_XLXI_135_XLXI_8_XLXN_3
    );
  INV_XLXI_9_XLXI_17_DWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_1_INV_XLXI_9_XLXI_17_DWE2
    );
  INV_XLXI_9_XLXI_17_DWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_1_INV_XLXI_9_XLXI_17_DWE1
    );
  INV_XLXI_9_XLXI_17_CWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_1_INV_XLXI_9_XLXI_17_CWE2
    );
  INV_XLXI_9_XLXI_17_BWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_1_INV_XLXI_9_XLXI_17_BWE1
    );
  ram_o_1_ram_o_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_o(1),
      O => ram_o_1_0
    );
  XLXI_9_XLXI_17_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y24"
    )
    port map (
      IA => XLXI_9_XLXI_17_F7_B_718,
      IB => XLXI_9_XLXI_17_F7_A_719,
      O => ram_o(1),
      SEL => ram_a_o_7_OBUF_1634
    );
  XLXI_9_XLXI_17_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X8Y24"
    )
    port map (
      IA => XLXI_9_XLXI_17_D_721,
      IB => XLXI_9_XLXI_17_C_752,
      O => XLXI_9_XLXI_17_F7_B_718,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_17_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X8Y24"
    )
    port map (
      IA => XLXI_9_XLXI_17_B_729,
      IB => XLXI_9_XLXI_17_A_737,
      O => XLXI_9_XLXI_17_F7_A_719,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_17_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o1,
      O => XLXI_9_XLXI_17_D_721,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_1_INV_XLXI_9_XLXI_17_DWE1,
      WE2 => ram_o_1_INV_XLXI_9_XLXI_17_DWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_17_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o1,
      O => XLXI_9_XLXI_17_C_752,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_o_1_INV_XLXI_9_XLXI_17_CWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_17_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o1,
      O => XLXI_9_XLXI_17_B_729,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_1_INV_XLXI_9_XLXI_17_BWE1,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_17_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o1,
      O => XLXI_9_XLXI_17_A_737,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_15_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ram_a_w_OBUF_1684,
      I => XLXI_130_XLXI_1_o1,
      O => ram_a_o_1_OBUF_1627,
      RST => GND,
      SET => GND
    );
  ram_a_o_0_OBUF_ram_a_o_0_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_1742
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y26"
    )
    port map (
      IA => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6_758,
      IB => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51_767,
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      SEL => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_enc_o(1),
      ADR1 => XLXI_130_enc_o(0),
      ADR2 => ram_o_0_0,
      ADR3 => r0_o(0),
      ADR4 => acc_o(0),
      ADR5 => iar_o(0),
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_6_758
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"3F330F033C300C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => XLXI_130_enc_o(1),
      ADR2 => XLXI_130_enc_o(0),
      ADR3 => r3_o(0),
      ADR4 => r2_o(0),
      ADR5 => r1_o(0),
      O => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_51_767
    );
  XLXI_9_XLXI_15_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ram_a_w_OBUF_1684,
      I => XLXI_130_XLXI_1_o0,
      O => ram_a_o_0_OBUF_1626,
      RST => GND,
      SET => GND
    );
  XLXI_130_XLXI_1_XLXI_1_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_g,
      ADR5 => XLXI_130_XLXI_1_XLXI_1_Mmux_S3_D15_Mux_0_o_4_f7_1742,
      O => XLXI_130_XLXI_1_o0
    );
  alu_inst_XLXI_135_XLXI_9_XLXI_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => pto(0),
      ADR5 => XLXI_130_XLXI_1_o0,
      O => alu_inst_XLXI_135_XLXI_9_XLXN_3
    );
  XLXI_127_XLXI_5_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => '0'
    )
    port map (
      GE => ctl_r1_w_OBUF_1552,
      CLK => '1',
      I => XLXI_130_XLXI_1_o7,
      O => r1_o(7),
      RST => rst,
      SET => GND
    );
  XLXI_127_XLXI_5_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => '0'
    )
    port map (
      GE => ctl_r1_w_OBUF_1552,
      CLK => '1',
      I => XLXI_130_XLXI_1_o6,
      O => r1_o(6),
      RST => rst,
      SET => GND
    );
  XLXI_127_XLXI_5_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => '0'
    )
    port map (
      GE => ctl_r1_w_OBUF_1552,
      CLK => '1',
      I => XLXI_130_XLXI_1_o5,
      O => r1_o(5),
      RST => rst,
      SET => GND
    );
  XLXI_127_XLXI_5_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => '0'
    )
    port map (
      GE => ctl_r1_w_OBUF_1552,
      CLK => '1',
      I => XLXI_130_XLXI_1_o4,
      O => r1_o(4),
      RST => rst,
      SET => GND
    );
  ram_a_o_4_OBUF_ram_a_o_4_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_1743
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y28"
    )
    port map (
      IA => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6_792,
      IB => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51_801,
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      SEL => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_enc_o(1),
      ADR1 => XLXI_130_enc_o(0),
      ADR2 => ram_o_4_0,
      ADR3 => r0_o(4),
      ADR4 => acc_o(4),
      ADR5 => iar_o(4),
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_6_792
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"3F330F033C300C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => XLXI_130_enc_o(1),
      ADR2 => XLXI_130_enc_o(0),
      ADR3 => r3_o(4),
      ADR4 => r2_o(4),
      ADR5 => r1_o(4),
      O => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_51_801
    );
  XLXI_9_XLXI_15_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ram_a_w_OBUF_1684,
      I => XLXI_130_XLXI_1_o4,
      O => ram_a_o_4_OBUF_1630,
      RST => GND,
      SET => GND
    );
  XLXI_130_XLXI_1_XLXI_2_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_g,
      ADR5 => XLXI_130_XLXI_1_XLXI_2_Mmux_S3_D15_Mux_0_o_4_f7_1743,
      O => XLXI_130_XLXI_1_o4
    );
  alu_inst_XLXI_135_XLXI_5_XLXI_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => pto(4),
      ADR5 => XLXI_130_XLXI_1_o4,
      O => alu_inst_XLXI_135_XLXI_5_XLXN_3
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_814,
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_0
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y29"
    )
    port map (
      IA => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6_815,
      IB => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51_823,
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_4_f7_814,
      SEL => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_enc_o(1),
      ADR1 => XLXI_130_enc_o(0),
      ADR2 => ram_o_6_0,
      ADR3 => r0_o(6),
      ADR4 => acc_o(6),
      ADR5 => iar_o(6),
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_6_815
    );
  XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"3F330F033C300C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => XLXI_130_enc_o(1),
      ADR2 => XLXI_130_enc_o(0),
      ADR3 => r3_o(6),
      ADR4 => r2_o(6),
      ADR5 => r1_o(6),
      O => XLXI_130_XLXI_1_XLXI_14_Mmux_S3_D15_Mux_0_o_51_823
    );
  XLXI_122_XLXI_5_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      GE => ctl_iar_w_OBUF_1620,
      CLK => '1',
      I => XLXI_130_XLXI_1_o7,
      O => iar_o(7),
      RST => rst,
      SET => GND
    );
  XLXI_122_XLXI_5_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      GE => ctl_iar_w_OBUF_1620,
      CLK => '1',
      I => XLXI_130_XLXI_1_o6,
      O => iar_o(6),
      RST => rst,
      SET => GND
    );
  XLXI_122_XLXI_5_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      GE => ctl_iar_w_OBUF_1620,
      CLK => '1',
      I => XLXI_130_XLXI_1_o5,
      O => iar_o(5),
      RST => rst,
      SET => GND
    );
  XLXI_122_XLXI_5_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      GE => ctl_iar_w_OBUF_1620,
      CLK => '1',
      I => XLXI_130_XLXI_1_o4,
      O => iar_o(4),
      RST => rst,
      SET => GND
    );
  INV_XLXI_9_XLXI_20_DWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_4_INV_XLXI_9_XLXI_20_DWE2
    );
  INV_XLXI_9_XLXI_20_DWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_4_INV_XLXI_9_XLXI_20_DWE1
    );
  INV_XLXI_9_XLXI_20_CWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_4_INV_XLXI_9_XLXI_20_CWE2
    );
  INV_XLXI_9_XLXI_20_BWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_4_INV_XLXI_9_XLXI_20_BWE1
    );
  ram_o_4_ram_o_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_o(4),
      O => ram_o_4_0
    );
  XLXI_9_XLXI_20_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y31"
    )
    port map (
      IA => XLXI_9_XLXI_20_F7_B_841,
      IB => XLXI_9_XLXI_20_F7_A_842,
      O => ram_o(4),
      SEL => ram_a_o_7_OBUF_1634
    );
  XLXI_9_XLXI_20_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X8Y31"
    )
    port map (
      IA => XLXI_9_XLXI_20_D_844,
      IB => XLXI_9_XLXI_20_C_854,
      O => XLXI_9_XLXI_20_F7_B_841,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_20_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X8Y31"
    )
    port map (
      IA => XLXI_9_XLXI_20_B_862,
      IB => XLXI_9_XLXI_20_A_870,
      O => XLXI_9_XLXI_20_F7_A_842,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_20_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"0000000000000020"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o4,
      O => XLXI_9_XLXI_20_D_844,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_4_INV_XLXI_9_XLXI_20_DWE1,
      WE2 => ram_o_4_INV_XLXI_9_XLXI_20_DWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_20_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o4,
      O => XLXI_9_XLXI_20_C_854,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_o_4_INV_XLXI_9_XLXI_20_CWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_20_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o4,
      O => XLXI_9_XLXI_20_B_862,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_4_INV_XLXI_9_XLXI_20_BWE1,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_20_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o4,
      O => XLXI_9_XLXI_20_A_870,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_129_XLXI_5_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y26",
      INIT => '0'
    )
    port map (
      GE => r3_w_OBUF_1564,
      CLK => '1',
      I => XLXI_130_XLXI_1_o3,
      O => r3_o(3),
      RST => rst,
      SET => GND
    );
  XLXI_129_XLXI_5_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y26",
      INIT => '0'
    )
    port map (
      GE => r3_w_OBUF_1564,
      CLK => '1',
      I => XLXI_130_XLXI_1_o2,
      O => r3_o(2),
      RST => rst,
      SET => GND
    );
  XLXI_129_XLXI_5_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y26",
      INIT => '0'
    )
    port map (
      GE => r3_w_OBUF_1564,
      CLK => '1',
      I => XLXI_130_XLXI_1_o1,
      O => r3_o(1),
      RST => rst,
      SET => GND
    );
  XLXI_129_XLXI_5_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y26",
      INIT => '0'
    )
    port map (
      GE => r3_w_OBUF_1564,
      CLK => '1',
      I => XLXI_130_XLXI_1_o0,
      O => r3_o(0),
      RST => rst,
      SET => GND
    );
  XLXI_129_XLXI_5_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => '0'
    )
    port map (
      GE => r3_w_OBUF_1564,
      CLK => '1',
      I => XLXI_130_XLXI_1_o7,
      O => r3_o(7),
      RST => rst,
      SET => GND
    );
  XLXI_129_XLXI_5_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => '0'
    )
    port map (
      GE => r3_w_OBUF_1564,
      CLK => '1',
      I => XLXI_130_XLXI_1_o6,
      O => r3_o(6),
      RST => rst,
      SET => GND
    );
  XLXI_129_XLXI_5_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => '0'
    )
    port map (
      GE => r3_w_OBUF_1564,
      CLK => '1',
      I => XLXI_130_XLXI_1_o5,
      O => r3_o(5),
      RST => rst,
      SET => GND
    );
  XLXI_129_XLXI_5_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => '0'
    )
    port map (
      GE => r3_w_OBUF_1564,
      CLK => '1',
      I => XLXI_130_XLXI_1_o4,
      O => r3_o(4),
      RST => rst,
      SET => GND
    );
  XLXI_128_XLXI_5_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      GE => r2_w_OBUF_1562,
      CLK => '1',
      I => XLXI_130_XLXI_1_o7,
      O => r2_o(7),
      RST => rst,
      SET => GND
    );
  XLXI_128_XLXI_5_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      GE => r2_w_OBUF_1562,
      CLK => '1',
      I => XLXI_130_XLXI_1_o6,
      O => r2_o(6),
      RST => rst,
      SET => GND
    );
  XLXI_128_XLXI_5_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      GE => r2_w_OBUF_1562,
      CLK => '1',
      I => XLXI_130_XLXI_1_o5,
      O => r2_o(5),
      RST => rst,
      SET => GND
    );
  XLXI_128_XLXI_5_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      GE => r2_w_OBUF_1562,
      CLK => '1',
      I => XLXI_130_XLXI_1_o4,
      O => r2_o(4),
      RST => rst,
      SET => GND
    );
  XLXI_126_XLXI_5_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => '0'
    )
    port map (
      GE => ctl_r0_w_OBUF_1549,
      CLK => '1',
      I => XLXI_130_XLXI_1_o7,
      O => r0_o(7),
      RST => rst,
      SET => GND
    );
  XLXI_126_XLXI_5_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => '0'
    )
    port map (
      GE => ctl_r0_w_OBUF_1549,
      CLK => '1',
      I => XLXI_130_XLXI_1_o6,
      O => r0_o(6),
      RST => rst,
      SET => GND
    );
  XLXI_126_XLXI_5_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => '0'
    )
    port map (
      GE => ctl_r0_w_OBUF_1549,
      CLK => '1',
      I => XLXI_130_XLXI_1_o5,
      O => r0_o(5),
      RST => rst,
      SET => GND
    );
  XLXI_126_XLXI_5_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => '0'
    )
    port map (
      GE => ctl_r0_w_OBUF_1549,
      CLK => '1',
      I => XLXI_130_XLXI_1_o4,
      O => r0_o(4),
      RST => rst,
      SET => GND
    );
  ram_a_o_7_OBUF_ram_a_o_7_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_pack_3,
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_1744
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y29"
    )
    port map (
      IA => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6_922,
      IB => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51_931,
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_pack_3,
      SEL => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_enc_o(1),
      ADR1 => XLXI_130_enc_o(0),
      ADR2 => ram_o_7_0,
      ADR3 => r0_o(7),
      ADR4 => acc_o(7),
      ADR5 => iar_o(7),
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_6_922
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => X"3F330F033C300C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => XLXI_130_enc_o(1),
      ADR2 => XLXI_130_enc_o(0),
      ADR3 => r3_o(7),
      ADR4 => r2_o(7),
      ADR5 => r1_o(7),
      O => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_51_931
    );
  XLXI_9_XLXI_15_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ram_a_w_OBUF_1684,
      I => XLXI_130_XLXI_1_o7,
      O => ram_a_o_7_OBUF_1634,
      RST => GND,
      SET => GND
    );
  XLXI_130_XLXI_1_XLXI_16_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_g,
      ADR5 => XLXI_130_XLXI_1_XLXI_16_Mmux_S3_D15_Mux_0_o_4_f7_1744,
      O => XLXI_130_XLXI_1_o7
    );
  cpu_ctl_XLXI_547 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_jmp_ifjmp_flag_equals_op,
      ADR5 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_equals_op_s4
    );
  cpu_ctl_XLXI_7 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      ADR0 => clkw_OBUF_1523,
      ADR1 => cpu_ctl_jmp_jmp_s4,
      ADR2 => cpu_ctl_jmp_ifjmp_flag_equals_op_s4,
      ADR3 => cpu_ctl_ls_ldc_s4,
      ADR4 => cpu_ctl_ls_ldst_s4,
      ADR5 => cpu_ctl_s1_DUMMY_0,
      O => ram_a_w_OBUF_1684
    );
  clck_gen_XLXI_10 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => clk_IBUF_0,
      ADR5 => clkc_OBUF_1589,
      O => clkw_OBUF_1523
    );
  XLXI_123_XLXI_5_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => '0'
    )
    port map (
      GE => ir_w_OBUF_1708,
      CLK => '1',
      I => XLXI_130_XLXI_1_o6,
      O => ir_o_6_OBUF_1544,
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_6 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_s2_DUMMY,
      ADR5 => clkw_OBUF_1523,
      O => ir_w_OBUF_1708
    );
  cpu_ctl_XLXI_534 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ir_o_2_OBUF_1582,
      ADR5 => flags_o_2_OBUF_1617,
      O => cpu_ctl_XLXN_1020
    );
  cpu_ctl_XLXI_573 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_flag_equals_op,
      ADR5 => cpu_ctl_jmp_ifjmp_0,
      O => cpu_ctl_jmp_ifjmp_flag_not_equals_op
    );
  XLXI_123_XLXI_5_Q_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => '0'
    )
    port map (
      GE => ir_w_OBUF_1708,
      CLK => '1',
      I => XLXI_130_XLXI_1_o5,
      O => ir_o_5_OBUF_1546,
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_535 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => ir_o_3_OBUF_1581,
      ADR5 => flags_o_3_OBUF_1619,
      O => cpu_ctl_XLXN_1021
    );
  XLXI_126_XLXI_5_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y25",
      INIT => '0'
    )
    port map (
      GE => ctl_r0_w_OBUF_1549,
      CLK => '1',
      I => XLXI_130_XLXI_1_o3,
      O => r0_o(3),
      RST => rst,
      SET => GND
    );
  XLXI_126_XLXI_5_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y25",
      INIT => '0'
    )
    port map (
      GE => ctl_r0_w_OBUF_1549,
      CLK => '1',
      I => XLXI_130_XLXI_1_o2,
      O => r0_o(2),
      RST => rst,
      SET => GND
    );
  XLXI_126_XLXI_5_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y25",
      INIT => '0'
    )
    port map (
      GE => ctl_r0_w_OBUF_1549,
      CLK => '1',
      I => XLXI_130_XLXI_1_o1,
      O => r0_o(1),
      RST => rst,
      SET => GND
    );
  XLXI_126_XLXI_5_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y25",
      INIT => '0'
    )
    port map (
      GE => ctl_r0_w_OBUF_1549,
      CLK => '1',
      I => XLXI_130_XLXI_1_o0,
      O => r0_o(0),
      RST => rst,
      SET => GND
    );
  XLXI_127_XLXI_5_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => '0'
    )
    port map (
      GE => ctl_r1_w_OBUF_1552,
      CLK => '1',
      I => XLXI_130_XLXI_1_o3,
      O => r1_o(3),
      RST => rst,
      SET => GND
    );
  XLXI_127_XLXI_5_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => '0'
    )
    port map (
      GE => ctl_r1_w_OBUF_1552,
      CLK => '1',
      I => XLXI_130_XLXI_1_o2,
      O => r1_o(2),
      RST => rst,
      SET => GND
    );
  XLXI_127_XLXI_5_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => '0'
    )
    port map (
      GE => ctl_r1_w_OBUF_1552,
      CLK => '1',
      I => XLXI_130_XLXI_1_o1,
      O => r1_o(1),
      RST => rst,
      SET => GND
    );
  XLXI_127_XLXI_5_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => '0'
    )
    port map (
      GE => ctl_r1_w_OBUF_1552,
      CLK => '1',
      I => XLXI_130_XLXI_1_o0,
      O => r1_o(0),
      RST => rst,
      SET => GND
    );
  cpu_ctl_ls_ld_cpu_ctl_ls_ld_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cpu_ctl_jmp_ifjmp,
      O => cpu_ctl_jmp_ifjmp_0
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => X"0000000300000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => ir_o_6_OBUF_1544,
      ADR2 => ir_o_4_OBUF_1545,
      ADR3 => ir_o_5_OBUF_1546,
      ADR4 => ir_o_7_OBUF_1543,
      ADR5 => '1',
      O => cpu_ctl_ls_ld
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp61 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => X"000000C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => ir_o_6_OBUF_1544,
      ADR2 => ir_o_4_OBUF_1545,
      ADR3 => ir_o_5_OBUF_1546,
      ADR4 => ir_o_7_OBUF_1543,
      O => cpu_ctl_jmp_ifjmp
    );
  cpu_ctl_XLXI_255 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => X"FF00FF00FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cpu_ctl_s4_DUMMY,
      ADR4 => cpu_ctl_ls_st,
      ADR5 => cpu_ctl_ls_ld,
      O => cpu_ctl_ls_ldst_s4
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp31 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"00000000000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ir_o_5_OBUF_1546,
      ADR3 => ir_o_6_OBUF_1544,
      ADR4 => ir_o_4_OBUF_1545,
      ADR5 => ir_o_7_OBUF_1543,
      O => cpu_ctl_ls_ldc
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp21 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"00000000000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ir_o_4_OBUF_1545,
      ADR3 => ir_o_6_OBUF_1544,
      ADR4 => ir_o_5_OBUF_1546,
      ADR5 => ir_o_7_OBUF_1543,
      O => cpu_ctl_ls_st
    );
  cpu_ctl_XLXI_494 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_ls_ldc,
      ADR5 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_ls_ldc_s4
    );
  XLXI_123_XLXI_5_Q_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => '0'
    )
    port map (
      GE => ir_w_OBUF_1708,
      CLK => '1',
      I => XLXI_130_XLXI_1_o7,
      O => ir_o_7_OBUF_1543,
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_530 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"FFFFFEEEFEEEFEEE"
    )
    port map (
      ADR0 => cpu_ctl_XLXN_1021,
      ADR1 => cpu_ctl_XLXN_1020,
      ADR2 => ir_o_0_OBUF_1640,
      ADR3 => flags_o_0_OBUF_1614,
      ADR4 => ir_o_1_OBUF_1643,
      ADR5 => flags_o_1_OBUF_1539,
      O => cpu_ctl_flag_equals_op
    );
  cpu_ctl_XLXI_541 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_flag_equals_op,
      ADR5 => cpu_ctl_jmp_ifjmp_0,
      O => cpu_ctl_jmp_ifjmp_flag_equals_op
    );
  XLXI_123_XLXI_5_Q_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => '0'
    )
    port map (
      GE => ir_w_OBUF_1708,
      CLK => '1',
      I => XLXI_130_XLXI_1_o4,
      O => ir_o_4_OBUF_1545,
      RST => rst,
      SET => GND
    );
  XLXI_123_XLXI_5_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => '0'
    )
    port map (
      GE => ir_w_OBUF_1708,
      CLK => '1',
      I => XLXI_130_XLXI_1_o3,
      O => ir_o_3_OBUF_1581,
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_80 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y37",
      INIT => X"FF00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => clkw_OBUF_1523,
      ADR4 => cpu_ctl_ra_0_DUMMY_0,
      ADR5 => cpu_ctl_raw_int,
      O => ctl_r0_w_OBUF_1549
    );
  cpu_ctl_XLXI_492 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_ls_st_s5,
      ADR5 => clkw_OBUF_1523,
      O => ram_w_OBUF_1606
    );
  INV_XLXI_9_XLXI_18_DWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_2_INV_XLXI_9_XLXI_18_DWE2
    );
  INV_XLXI_9_XLXI_18_DWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_2_INV_XLXI_9_XLXI_18_DWE1
    );
  INV_XLXI_9_XLXI_18_CWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_2_INV_XLXI_9_XLXI_18_CWE2
    );
  INV_XLXI_9_XLXI_18_BWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_2_INV_XLXI_9_XLXI_18_BWE1
    );
  ram_o_2_ram_o_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_o(2),
      O => ram_o_2_0
    );
  XLXI_9_XLXI_18_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => XLXI_9_XLXI_18_F7_B_1055,
      IB => XLXI_9_XLXI_18_F7_A_1056,
      O => ram_o(2),
      SEL => ram_a_o_7_OBUF_1634
    );
  XLXI_9_XLXI_18_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => XLXI_9_XLXI_18_D_1058,
      IB => XLXI_9_XLXI_18_C_1068,
      O => XLXI_9_XLXI_18_F7_B_1055,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_18_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => XLXI_9_XLXI_18_B_1076,
      IB => XLXI_9_XLXI_18_A_1084,
      O => XLXI_9_XLXI_18_F7_A_1056,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_18_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"0000000000000901"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o2,
      O => XLXI_9_XLXI_18_D_1058,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_2_INV_XLXI_9_XLXI_18_DWE1,
      WE2 => ram_o_2_INV_XLXI_9_XLXI_18_DWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_18_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o2,
      O => XLXI_9_XLXI_18_C_1068,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_o_2_INV_XLXI_9_XLXI_18_CWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_18_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o2,
      O => XLXI_9_XLXI_18_B_1076,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_2_INV_XLXI_9_XLXI_18_BWE1,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_18_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o2,
      O => XLXI_9_XLXI_18_A_1084,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_128_XLXI_5_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => '0'
    )
    port map (
      GE => r2_w_OBUF_1562,
      CLK => '1',
      I => XLXI_130_XLXI_1_o3,
      O => r2_o(3),
      RST => rst,
      SET => GND
    );
  XLXI_128_XLXI_5_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => '0'
    )
    port map (
      GE => r2_w_OBUF_1562,
      CLK => '1',
      I => XLXI_130_XLXI_1_o2,
      O => r2_o(2),
      RST => rst,
      SET => GND
    );
  XLXI_128_XLXI_5_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => '0'
    )
    port map (
      GE => r2_w_OBUF_1562,
      CLK => '1',
      I => XLXI_130_XLXI_1_o1,
      O => r2_o(1),
      RST => rst,
      SET => GND
    );
  XLXI_128_XLXI_5_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => '0'
    )
    port map (
      GE => r2_w_OBUF_1562,
      CLK => '1',
      I => XLXI_130_XLXI_1_o0,
      O => r2_o(0),
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_82 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => X"FF00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => clkw_OBUF_1523,
      ADR4 => cpu_ctl_ra_2_DUMMY_0,
      ADR5 => cpu_ctl_raw_int,
      O => r2_w_OBUF_1562
    );
  INV_XLXI_9_XLXI_19_DWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_3_INV_XLXI_9_XLXI_19_DWE2
    );
  INV_XLXI_9_XLXI_19_DWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_3_INV_XLXI_9_XLXI_19_DWE1
    );
  INV_XLXI_9_XLXI_19_CWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_3_INV_XLXI_9_XLXI_19_CWE2
    );
  INV_XLXI_9_XLXI_19_BWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_3_INV_XLXI_9_XLXI_19_BWE1
    );
  ram_o_3_ram_o_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_o(3),
      O => ram_o_3_0
    );
  XLXI_9_XLXI_19_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y24"
    )
    port map (
      IA => XLXI_9_XLXI_19_F7_B_1107,
      IB => XLXI_9_XLXI_19_F7_A_1108,
      O => ram_o(3),
      SEL => ram_a_o_7_OBUF_1634
    );
  XLXI_9_XLXI_19_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X12Y24"
    )
    port map (
      IA => XLXI_9_XLXI_19_D_1133,
      IB => XLXI_9_XLXI_19_C_1110,
      O => XLXI_9_XLXI_19_F7_B_1107,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_19_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X12Y24"
    )
    port map (
      IA => XLXI_9_XLXI_19_B_1118,
      IB => XLXI_9_XLXI_19_A_1126,
      O => XLXI_9_XLXI_19_F7_A_1108,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_19_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y24",
      INIT => X"0000000000000040"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o3,
      O => XLXI_9_XLXI_19_D_1133,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_3_INV_XLXI_9_XLXI_19_DWE1,
      WE2 => ram_o_3_INV_XLXI_9_XLXI_19_DWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_19_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y24",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o3,
      O => XLXI_9_XLXI_19_C_1110,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_o_3_INV_XLXI_9_XLXI_19_CWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_19_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y24",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o3,
      O => XLXI_9_XLXI_19_B_1118,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_3_INV_XLXI_9_XLXI_19_BWE1,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_19_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y24",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o3,
      O => XLXI_9_XLXI_19_A_1126,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  ram_a_o_2_OBUF_ram_a_o_2_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_1745
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y25"
    )
    port map (
      IA => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6_1163,
      IB => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51_1145,
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_pack_4,
      SEL => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_enc_o(1),
      ADR1 => XLXI_130_enc_o(0),
      ADR2 => ram_o_2_0,
      ADR3 => r0_o(2),
      ADR4 => acc_o(2),
      ADR5 => iar_o(2),
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_6_1163
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => X"3F330F033C300C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => XLXI_130_enc_o(1),
      ADR2 => XLXI_130_enc_o(0),
      ADR3 => r3_o(2),
      ADR4 => r2_o(2),
      ADR5 => r1_o(2),
      O => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_51_1145
    );
  XLXI_9_XLXI_15_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ram_a_w_OBUF_1684,
      I => XLXI_130_XLXI_1_o2,
      O => ram_a_o_2_OBUF_1628,
      RST => GND,
      SET => GND
    );
  XLXI_130_XLXI_1_XLXI_15_Mmux_O11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => XLXI_130_g,
      ADR5 => XLXI_130_XLXI_1_XLXI_15_Mmux_S3_D15_Mux_0_o_4_f7_1745,
      O => XLXI_130_XLXI_1_o2
    );
  XLXI_130_XLXI_2_XLXI_4_O : X_LUT6
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => X"0000000100000000"
    )
    port map (
      ADR0 => r0_r_OBUF_1685,
      ADR1 => r1_r_OBUF_1710,
      ADR2 => r2_r_OBUF_1603,
      ADR3 => r3_r_OBUF_1604,
      ADR4 => acc_r_OBUF_1608,
      ADR5 => XLXI_130_XLXI_2_XLXI_4_N01,
      O => XLXI_130_g
    );
  XLXI_130_enc_o_0_XLXI_130_enc_o_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_1170,
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_0
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y26"
    )
    port map (
      IA => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6_1171,
      IB => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51_1179,
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_4_f7_1170,
      SEL => XLXI_130_enc_o(2)
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => XLXI_130_enc_o(1),
      ADR1 => XLXI_130_enc_o(0),
      ADR2 => ram_o_3_0,
      ADR3 => r0_o(3),
      ADR4 => acc_o(3),
      ADR5 => iar_o(3),
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_6_1171
    );
  XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"3F330F033C300C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => XLXI_130_enc_o(1),
      ADR2 => XLXI_130_enc_o(0),
      ADR3 => r3_o(3),
      ADR4 => r2_o(3),
      ADR5 => r1_o(3),
      O => XLXI_130_XLXI_1_XLXI_17_Mmux_S3_D15_Mux_0_o_51_1179
    );
  XLXI_130_XLXI_2_XLXI_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => acc_r_OBUF_1608,
      ADR4 => r0_r_OBUF_1685,
      ADR5 => r2_r_OBUF_1603,
      O => XLXI_130_enc_o(0)
    );
  cpu_ctl_XLXI_140 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"AAAA008000800080"
    )
    port map (
      ADR0 => clkr_OBUF_1621,
      ADR1 => cpu_ctl_rb_int,
      ADR2 => ir_o_1_OBUF_1643,
      ADR3 => ir_o_0_OBUF_1640,
      ADR4 => cpu_ctl_ra_2_DUMMY_0,
      ADR5 => cpu_ctl_ra_int,
      O => r2_r_OBUF_1603
    );
  XLXI_122_XLXI_5_Q_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      GE => ctl_iar_w_OBUF_1620,
      CLK => '1',
      I => XLXI_130_XLXI_1_o3,
      O => iar_o(3),
      RST => rst,
      SET => GND
    );
  XLXI_130_XLXI_2_XLXI_3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => r1_r_OBUF_1710,
      ADR4 => r2_r_OBUF_1603,
      ADR5 => r3_r_OBUF_1604,
      O => XLXI_130_enc_o(2)
    );
  XLXI_122_XLXI_5_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      GE => ctl_iar_w_OBUF_1620,
      CLK => '1',
      I => XLXI_130_XLXI_1_o2,
      O => iar_o(2),
      RST => rst,
      SET => GND
    );
  XLXI_130_XLXI_2_XLXI_2 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ram_r_OBUF_1605,
      ADR4 => r0_r_OBUF_1685,
      ADR5 => r3_r_OBUF_1604,
      O => XLXI_130_enc_o(1)
    );
  XLXI_122_XLXI_5_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      GE => ctl_iar_w_OBUF_1620,
      CLK => '1',
      I => XLXI_130_XLXI_1_o1,
      O => iar_o(1),
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_399 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_ls_ldst_s4,
      ADR5 => cpu_ctl_alu_binary_s5,
      O => cpu_ctl_rb_int
    );
  XLXI_122_XLXI_5_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      GE => ctl_iar_w_OBUF_1620,
      CLK => '1',
      I => XLXI_130_XLXI_1_o0,
      O => iar_o(0),
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_141 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"AAAA800080008000"
    )
    port map (
      ADR0 => clkr_OBUF_1621,
      ADR1 => cpu_ctl_rb_int,
      ADR2 => ir_o_1_OBUF_1643,
      ADR3 => ir_o_0_OBUF_1640,
      ADR4 => cpu_ctl_ra_3_DUMMY,
      ADR5 => cpu_ctl_ra_int,
      O => r3_r_OBUF_1604
    );
  cpu_ctl_XLXI_315 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"FFFFFFF0FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => cpu_ctl_jmp_jmpr_s4,
      ADR3 => cpu_ctl_ls_st_s5,
      ADR4 => cpu_ctl_s4_DUMMY,
      ADR5 => ir_o_7_OBUF_1543,
      O => cpu_ctl_ra_int
    );
  XLXI_9_XLXI_15_Q_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => ram_a_w_OBUF_1684,
      I => XLXI_130_XLXI_1_o6,
      O => ram_a_o_6_OBUF_1632,
      RST => GND,
      SET => GND
    );
  cpu_ctl_XLXI_491 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_ls_st,
      ADR5 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_ls_st_s5
    );
  INV_XLXI_9_XLXI_23_DWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_7_INV_XLXI_9_XLXI_23_DWE2
    );
  INV_XLXI_9_XLXI_23_DWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_7_INV_XLXI_9_XLXI_23_DWE1
    );
  INV_XLXI_9_XLXI_23_CWE2 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_7_OBUF_1634,
      O => ram_o_7_INV_XLXI_9_XLXI_23_CWE2
    );
  INV_XLXI_9_XLXI_23_BWE1 : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_a_o_6_OBUF_1632,
      O => ram_o_7_INV_XLXI_9_XLXI_23_BWE1
    );
  ram_o_7_ram_o_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ram_o(7),
      O => ram_o_7_0
    );
  XLXI_9_XLXI_23_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y29"
    )
    port map (
      IA => XLXI_9_XLXI_23_F7_B_1262,
      IB => XLXI_9_XLXI_23_F7_A_1263,
      O => ram_o(7),
      SEL => ram_a_o_7_OBUF_1634
    );
  XLXI_9_XLXI_23_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X12Y29"
    )
    port map (
      IA => XLXI_9_XLXI_23_D_1265,
      IB => XLXI_9_XLXI_23_C_1244,
      O => XLXI_9_XLXI_23_F7_B_1262,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_23_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X12Y29"
    )
    port map (
      IA => XLXI_9_XLXI_23_B_1252,
      IB => XLXI_9_XLXI_23_A_1260,
      O => XLXI_9_XLXI_23_F7_A_1263,
      SEL => ram_a_o_6_OBUF_1632
    );
  XLXI_9_XLXI_23_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"0000000000000010"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o7,
      O => XLXI_9_XLXI_23_D_1265,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_7_INV_XLXI_9_XLXI_23_DWE1,
      WE2 => ram_o_7_INV_XLXI_9_XLXI_23_DWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_23_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o7,
      O => XLXI_9_XLXI_23_C_1244,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_o_7_INV_XLXI_9_XLXI_23_CWE2,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_23_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o7,
      O => XLXI_9_XLXI_23_B_1252,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_o_7_INV_XLXI_9_XLXI_23_BWE1,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  XLXI_9_XLXI_23_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => ram_a_o_0_OBUF_1626,
      RADR1 => ram_a_o_1_OBUF_1627,
      RADR2 => ram_a_o_2_OBUF_1628,
      RADR3 => ram_a_o_3_OBUF_1629,
      RADR4 => ram_a_o_4_OBUF_1630,
      RADR5 => ram_a_o_5_OBUF_1631,
      CLK => clkw_OBUF_1523,
      I => XLXI_130_XLXI_1_o7,
      O => XLXI_9_XLXI_23_A_1260,
      WADR0 => ram_a_o_0_OBUF_1626,
      WADR1 => ram_a_o_1_OBUF_1627,
      WADR2 => ram_a_o_2_OBUF_1628,
      WADR3 => ram_a_o_3_OBUF_1629,
      WADR4 => ram_a_o_4_OBUF_1630,
      WADR5 => ram_a_o_5_OBUF_1631,
      WE1 => ram_a_o_6_OBUF_1632,
      WE2 => ram_a_o_7_OBUF_1634,
      WE => ram_w_OBUF_1606
    );
  cpu_ctl_XLXI_2 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      ADR0 => clkr_OBUF_1621,
      ADR1 => cpu_ctl_s1_DUMMY_0,
      ADR2 => cpu_ctl_ls_ldc_s4,
      ADR3 => cpu_ctl_jmp_ifjmp_flag_equals_op_s4,
      ADR4 => cpu_ctl_jmp_jmp_s4,
      ADR5 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4,
      O => iar_r_OBUF_1706
    );
  XLXI_130_XLXI_2_XLXI_4_O_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => iar_r_OBUF_1706,
      ADR5 => ram_r_OBUF_1605,
      O => XLXI_130_XLXI_2_XLXI_4_N01
    );
  cpu_ctl_XLXI_548 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_jmp_ifjmp_flag_equals_op,
      ADR5 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_equals_op_s5
    );
  XLXI_123_XLXI_5_Q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => '0'
    )
    port map (
      GE => ir_w_OBUF_1708,
      CLK => '1',
      I => XLXI_130_XLXI_1_o0,
      O => ir_o_0_OBUF_1640,
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      ADR0 => clkr_OBUF_1621,
      ADR1 => cpu_ctl_s2_DUMMY,
      ADR2 => cpu_ctl_ls_ld_s5,
      ADR3 => cpu_ctl_ls_ldc_s5,
      ADR4 => cpu_ctl_jmp_jmp_s5,
      ADR5 => cpu_ctl_jmp_ifjmp_flag_equals_op_s5,
      O => ram_r_OBUF_1605
    );
  ir_o_1_OBUF_ir_o_1_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cpu_ctl_ra_2_DUMMY,
      O => cpu_ctl_ra_2_DUMMY_0
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp41 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ir_o_3_OBUF_1581,
      ADR4 => ir_o_2_OBUF_1582,
      ADR5 => '1',
      O => cpu_ctl_ra_3_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp31 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ir_o_3_OBUF_1581,
      ADR4 => ir_o_2_OBUF_1582,
      O => cpu_ctl_ra_2_DUMMY
    );
  cpu_ctl_XLXI_137 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_s6_DUMMY,
      ADR5 => ir_o_7_OBUF_1543,
      O => cpu_ctl_alu_s6
    );
  cpu_ctl_XLXI_465 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cpu_ctl_ls_ldc_s5,
      ADR4 => cpu_ctl_ls_ld_s5,
      ADR5 => cpu_ctl_alu_s6,
      O => cpu_ctl_raw_int
    );
  XLXI_123_XLXI_5_Q_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => '0'
    )
    port map (
      GE => ir_w_OBUF_1708,
      CLK => '1',
      I => XLXI_130_XLXI_1_o1,
      O => ir_o_1_OBUF_1643,
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_83 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FF00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => clkw_OBUF_1523,
      ADR4 => cpu_ctl_ra_3_DUMMY,
      ADR5 => cpu_ctl_raw_int,
      O => r3_w_OBUF_1564
    );
  cpu_ctl_ls_ldc_s5_cpu_ctl_ls_ldc_s5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cpu_ctl_s1_DUMMY,
      O => cpu_ctl_s1_DUMMY_0
    );
  cpu_ctl_XLXI_498 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y32",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_ls_ldc,
      ADR5 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_ls_ldc_s5
    );
  cpu_ctl_XLXI_487 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y32",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_ls_ld,
      ADR5 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_ls_ld_s5
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp61 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y32",
      INIT => X"0000F0000000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => cpu_ctl_stp_XLXN_20,
      ADR3 => cpu_ctl_stp_XLXN_18,
      ADR4 => cpu_ctl_stp_XLXN_19,
      ADR5 => '1',
      O => cpu_ctl_s5_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp21 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y32",
      INIT => X"00000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => cpu_ctl_stp_XLXN_20,
      ADR3 => cpu_ctl_stp_XLXN_18,
      ADR4 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s1_DUMMY
    );
  cpu_ctl_XLXI_563 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y32",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_jmp_jmp,
      ADR5 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_jmp_jmp_s5
    );
  cpu_ctl_jmp_jmp_s4_cpu_ctl_jmp_jmp_s4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cpu_ctl_s6_DUMMY_pack_2,
      O => cpu_ctl_s6_DUMMY
    );
  cpu_ctl_XLXI_501 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y33",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_jmp_jmp,
      ADR5 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_jmp_s4
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp51 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y33",
      INIT => X"000000F0000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => cpu_ctl_stp_XLXN_20,
      ADR3 => cpu_ctl_stp_XLXN_18,
      ADR4 => cpu_ctl_stp_XLXN_19,
      ADR5 => '1',
      O => cpu_ctl_s4_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp11 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y33",
      INIT => X"0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => cpu_ctl_stp_XLXN_20,
      ADR3 => cpu_ctl_stp_XLXN_18,
      ADR4 => cpu_ctl_stp_XLXN_19,
      O => cpu_ctl_s6_DUMMY_pack_2
    );
  cpu_ctl_XLXI_499 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y33",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_ls_ldc,
      ADR5 => cpu_ctl_s6_DUMMY,
      O => cpu_ctl_ls_ldc_s6
    );
  cpu_ctl_XLXI_571 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y33",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_jmp_ifjmp_flag_not_equals_op,
      ADR5 => cpu_ctl_s4_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s4
    );
  INV_cpu_ctl_stp_XLXI_24_COUNT_1CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkc_OBUF_1589,
      O => cpu_ctl_stp_XLXN_19_INV_cpu_ctl_stp_XLXI_24_COUNT_1CLK
    );
  INV_cpu_ctl_stp_XLXI_24_COUNT_2CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkc_OBUF_1589,
      O => cpu_ctl_stp_XLXN_19_INV_cpu_ctl_stp_XLXI_24_COUNT_2CLK
    );
  INV_cpu_ctl_stp_XLXI_24_COUNT_0CLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clkc_OBUF_1589,
      O => cpu_ctl_stp_XLXN_19_INV_cpu_ctl_stp_XLXI_24_COUNT_0CLK
    );
  cpu_ctl_stp_XLXN_19_cpu_ctl_stp_XLXN_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cpu_ctl_stp_XLXN_20_pack_3,
      O => cpu_ctl_stp_XLXN_20
    );
  cpu_ctl_XLXI_572 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_jmp_ifjmp_flag_not_equals_op,
      ADR5 => cpu_ctl_s5_DUMMY,
      O => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5
    );
  cpu_ctl_XLXI_16 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => X"CCCCCCCCCCCCCCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => clkr_OBUF_1621,
      ADR2 => cpu_ctl_s3_DUMMY,
      ADR3 => cpu_ctl_alu_s6,
      ADR4 => cpu_ctl_ls_ldc_s6,
      ADR5 => cpu_ctl_jmp_ifjmp_flag_not_equals_op_s5,
      O => acc_r_OBUF_1608
    );
  cpu_ctl_stp_XLXI_24_COUNT_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => cpu_ctl_stp_XLXN_19_INV_cpu_ctl_stp_XLXI_24_COUNT_1CLK,
      I => cpu_ctl_stp_XLXI_24_Result(1),
      O => cpu_ctl_stp_XLXN_19,
      RST => cpu_ctl_stp_XLXN_22,
      SET => GND
    );
  cpu_ctl_stp_XLXI_24_Mcount_COUNT_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cpu_ctl_stp_XLXN_19,
      ADR4 => cpu_ctl_stp_XLXN_18,
      ADR5 => '1',
      O => cpu_ctl_stp_XLXI_24_Result(1)
    );
  cpu_ctl_stp_XLXI_24_Result_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => X"0FF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => cpu_ctl_stp_XLXN_20,
      ADR3 => cpu_ctl_stp_XLXN_19,
      ADR4 => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_stp_XLXI_24_Result(2)
    );
  cpu_ctl_stp_XLXI_24_COUNT_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => cpu_ctl_stp_XLXN_19_INV_cpu_ctl_stp_XLXI_24_COUNT_2CLK,
      I => cpu_ctl_stp_XLXI_24_Result(2),
      O => cpu_ctl_stp_XLXN_20_pack_3,
      RST => cpu_ctl_stp_XLXN_22,
      SET => GND
    );
  cpu_ctl_stp_XLXI_24_COUNT_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => cpu_ctl_stp_XLXN_19_INV_cpu_ctl_stp_XLXI_24_COUNT_0CLK,
      I => cpu_ctl_stp_XLXI_24_Result(0),
      O => cpu_ctl_stp_XLXN_18,
      RST => cpu_ctl_stp_XLXN_22,
      SET => GND
    );
  cpu_ctl_stp_XLXI_24_Mcount_COUNT_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cpu_ctl_stp_XLXN_18,
      ADR4 => '1',
      ADR5 => '1',
      O => cpu_ctl_stp_XLXI_24_Result(0)
    );
  cpu_ctl_s2_DUMMY_cpu_ctl_s2_DUMMY_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cpu_ctl_s3_DUMMY_pack_2,
      O => cpu_ctl_s3_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp31 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y35",
      INIT => X"000000F0000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => cpu_ctl_stp_XLXN_19,
      ADR3 => cpu_ctl_stp_XLXN_20,
      ADR4 => cpu_ctl_stp_XLXN_18,
      ADR5 => '1',
      O => cpu_ctl_s2_DUMMY
    );
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp41 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y35",
      INIT => X"00F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => cpu_ctl_stp_XLXN_19,
      ADR3 => cpu_ctl_stp_XLXN_20,
      ADR4 => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_s3_DUMMY_pack_2
    );
  cpu_ctl_XLXI_5 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y35",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => cpu_ctl_XLXN_11,
      ADR5 => clkw_OBUF_1523,
      O => ctl_iar_w_OBUF_1620
    );
  cpu_ctl_XLXI_577_O1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y35",
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
  cpu_ctl_stp_XLXI_25_Mmux_d_tmp71 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"00000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => cpu_ctl_stp_XLXN_20,
      ADR4 => cpu_ctl_stp_XLXN_19,
      ADR5 => cpu_ctl_stp_XLXN_18,
      O => cpu_ctl_stp_XLXN_22
    );
  cpu_ctl_XLXI_252_Mmux_d_tmp51 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"00000000000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ir_o_6_OBUF_1544,
      ADR3 => ir_o_4_OBUF_1545,
      ADR4 => ir_o_5_OBUF_1546,
      ADR5 => ir_o_7_OBUF_1543,
      O => cpu_ctl_jmp_jmp
    );
  cpu_ctl_XLXI_500 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"000000000000C000"
    )
    port map (
      ADR0 => '1',
      ADR1 => cpu_ctl_s4_DUMMY,
      ADR2 => ir_o_5_OBUF_1546,
      ADR3 => ir_o_4_OBUF_1545,
      ADR4 => ir_o_6_OBUF_1544,
      ADR5 => ir_o_7_OBUF_1543,
      O => cpu_ctl_jmp_jmpr_s4
    );
  ir_o_2_OBUF_ir_o_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cpu_ctl_ra_0_DUMMY,
      O => cpu_ctl_ra_0_DUMMY_0
    );
  cpu_ctl_XLXI_81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"FF00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => clkw_OBUF_1523,
      ADR4 => cpu_ctl_ra_1_DUMMY,
      ADR5 => cpu_ctl_raw_int,
      O => ctl_r1_w_OBUF_1552
    );
  XLXI_123_XLXI_5_Q_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => '0'
    )
    port map (
      GE => ir_w_OBUF_1708,
      CLK => '1',
      I => XLXI_130_XLXI_1_o2,
      O => ir_o_2_OBUF_1582,
      RST => rst,
      SET => GND
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp21 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ir_o_2_OBUF_1582,
      ADR4 => ir_o_3_OBUF_1581,
      ADR5 => '1',
      O => cpu_ctl_ra_1_DUMMY
    );
  cpu_ctl_XLXI_47_Mmux_d_tmp11 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ir_o_2_OBUF_1582,
      ADR4 => ir_o_3_OBUF_1581,
      O => cpu_ctl_ra_0_DUMMY
    );
  INV_clck_gen_XLXI_4_q_tmpCLK : X_INV
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_IBUF_BUFG_1624,
      O => clkc_OBUF_INV_clck_gen_XLXI_4_q_tmpCLK
    );
  cpu_ctl_XLXI_139 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"AAAA008000800080"
    )
    port map (
      ADR0 => clkr_OBUF_1621,
      ADR1 => cpu_ctl_rb_int,
      ADR2 => ir_o_0_OBUF_1640,
      ADR3 => ir_o_1_OBUF_1643,
      ADR4 => cpu_ctl_ra_1_DUMMY,
      ADR5 => cpu_ctl_ra_int,
      O => r1_r_OBUF_1710
    );
  cpu_ctl_XLXI_138 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"AAAA000800080008"
    )
    port map (
      ADR0 => clkr_OBUF_1621,
      ADR1 => cpu_ctl_rb_int,
      ADR2 => ir_o_1_OBUF_1643,
      ADR3 => ir_o_0_OBUF_1640,
      ADR4 => cpu_ctl_ra_0_DUMMY_0,
      ADR5 => cpu_ctl_ra_int,
      O => r0_r_OBUF_1685
    );
  clck_gen_XLXI_9 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => clkc_OBUF_1589,
      ADR5 => clk_IBUF_0,
      O => clkr_OBUF_1621
    );
  clck_gen_XLXI_4_q_tmp : X_FF
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clkc_OBUF_INV_clck_gen_XLXI_4_q_tmpCLK,
      I => clck_gen_XLXI_4_q_tmp_q_tmp_MUX_34_o,
      O => clkc_OBUF_1589,
      RST => GND,
      SET => GND
    );
  clck_gen_XLXI_4_Mmux_q_tmp_q_tmp_MUX_34_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => clkc_OBUF_1589,
      ADR4 => '1',
      ADR5 => '1',
      O => clck_gen_XLXI_4_q_tmp_q_tmp_MUX_34_o
    );
  XLXI_103 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y39",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => rst,
      ADR5 => flags_clr_OBUF_1637,
      O => XLXN_217
    );
  cpu_ctl_XLXI_551 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y39",
      INIT => X"0000000000008000"
    )
    port map (
      ADR0 => clkw_OBUF_1523,
      ADR1 => cpu_ctl_s4_DUMMY,
      ADR2 => ir_o_5_OBUF_1546,
      ADR3 => ir_o_6_OBUF_1544,
      ADR4 => ir_o_4_OBUF_1545,
      ADR5 => ir_o_7_OBUF_1543,
      O => flags_clr_OBUF_1637
    );
  NlwBlock_cpu_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_cpu_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

