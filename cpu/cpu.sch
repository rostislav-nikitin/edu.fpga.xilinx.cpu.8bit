<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="temp_o(7:0)" />
        <signal name="alu_x(7:0)" />
        <signal name="temp_r" />
        <signal name="cc_temp_w" />
        <signal name="cc_bus1" />
        <signal name="alu_C_in" />
        <signal name="alu_eq" />
        <signal name="alu_gt" />
        <signal name="alu_z" />
        <signal name="alu_C_out" />
        <signal name="cc_acc_r" />
        <signal name="cc_acc_w" />
        <signal name="cc_iar_r" />
        <signal name="cc_ir_w" />
        <signal name="cc_r1_r" />
        <signal name="cc_r2_w" />
        <signal name="cc_r2_r" />
        <signal name="cc_r0_r" />
        <signal name="cc_r3_w" />
        <signal name="cc_r3_r" />
        <signal name="pto(7:0)" />
        <signal name="in_manr_d(7:0)" />
        <signal name="clkr" />
        <signal name="clkw" />
        <signal name="cc_ram_r" />
        <signal name="cc_ram_w" />
        <signal name="cc_ram_a_w" />
        <signal name="ir_o(7:0)" />
        <signal name="ram_a_o(7:0)" />
        <signal name="XLXN_23" />
        <signal name="clkc" />
        <signal name="manual_iar_w" />
        <signal name="cc_iar_w" />
        <signal name="cc_r0_w" />
        <signal name="cc_r1_w" />
        <signal name="cc_flags_w" />
        <signal name="cc_flags_clr" />
        <signal name="flags_o(3)" />
        <signal name="flags_o(2)" />
        <signal name="flags_o(1)" />
        <signal name="flags_o(3:0)" />
        <signal name="XLXN_194" />
        <signal name="alu_C_in_enabled" />
        <signal name="alu_C_out_flipflop_o" />
        <signal name="flags_o(0)" />
        <signal name="rst" />
        <signal name="XLXN_217" />
        <signal name="monitor(7:0)" />
        <signal name="r1_o(7:0)" />
        <signal name="iar_o(7:0)" />
        <signal name="r2_o(7:0)" />
        <signal name="acc_o(7:0)" />
        <signal name="r3_o(7:0)" />
        <signal name="ram_o(7:0)" />
        <signal name="r0_o(7:0)" />
        <signal name="in_is_clk_high" />
        <signal name="in_is_clk_low" />
        <signal name="in_is_clk_external" />
        <signal name="cc_alu_op(2:0)" />
        <signal name="cc_dbg_s1" />
        <signal name="cc_dbg_s3" />
        <signal name="cc_dbg_s5" />
        <signal name="cc_dbg_s6" />
        <signal name="cc_dbg_s2" />
        <signal name="cc_dbg_s4" />
        <signal name="r0_r" />
        <signal name="in_r0_r" />
        <signal name="in_read_reg_en" />
        <signal name="can_read" />
        <signal name="can_write" />
        <signal name="sysbus(7:0)" />
        <signal name="not_reading" />
        <signal name="in_write_reg_en" />
        <signal name="in_manr_r" />
        <signal name="r0_w" />
        <signal name="in_r0_w" />
        <signal name="manr_o(7:0)" />
        <signal name="manr_w" />
        <signal name="in_manr_w" />
        <signal name="manr_r" />
        <signal name="manual_r0_r" />
        <signal name="manual_r0_w" />
        <signal name="in_r1_r" />
        <signal name="manual_r1_r" />
        <signal name="r1_r" />
        <signal name="r1_w" />
        <signal name="in_r1_w" />
        <signal name="manual_r1_w" />
        <signal name="sysbus_released" />
        <signal name="in_r2_r" />
        <signal name="in_r2_w" />
        <signal name="in_r3_r" />
        <signal name="in_r3_w" />
        <signal name="manual_r2_r" />
        <signal name="r2_r" />
        <signal name="manual_r2_w" />
        <signal name="manual_r3_r" />
        <signal name="r3_r" />
        <signal name="r3_w" />
        <signal name="manual_r3_w" />
        <signal name="r2_w" />
        <signal name="manual_iar_r" />
        <signal name="iar_r" />
        <signal name="iar_w" />
        <signal name="manual_temp_w" />
        <signal name="temp_w" />
        <signal name="in_iar_r" />
        <signal name="in_iar_w" />
        <signal name="in_temp_w" />
        <signal name="in_acc_r" />
        <signal name="in_acc_w" />
        <signal name="in_ram_r" />
        <signal name="in_ram_w" />
        <signal name="manual_acc_r" />
        <signal name="acc_r" />
        <signal name="acc_w" />
        <signal name="manual_acc_w" />
        <signal name="manual_ram_r" />
        <signal name="ram_r" />
        <signal name="ram_w" />
        <signal name="manual_ram_w" />
        <signal name="in_ir_w" />
        <signal name="in_ram_a_w" />
        <signal name="in_bus1" />
        <signal name="manual_ir_w" />
        <signal name="ir_w" />
        <signal name="manual_ram_a_w" />
        <signal name="ram_a_w" />
        <signal name="bus1" />
        <signal name="in_is_bus1_w" />
        <signal name="ground" />
        <signal name="cc_alu_op(0)" />
        <signal name="cc_alu_op(1)" />
        <signal name="cc_alu_op(2)" />
        <signal name="cc_dbg_ls_ld" />
        <signal name="cc_dbg_ls_st" />
        <signal name="cc_dbg_ls_ldc" />
        <signal name="cc_dbg_jmp_jmpr" />
        <signal name="cc_dbg_jmp_jmp" />
        <signal name="cc_dbg_jmp_ifjmp" />
        <signal name="cc_dbg_flg_clf" />
        <signal name="cc_dbg_alt_nop" />
        <signal name="cc_dbg_alu_sum" />
        <signal name="cc_dbg_alu_rshift" />
        <signal name="cc_dbg_alu_not" />
        <signal name="cc_dbg_alu_and" />
        <signal name="cc_dbg_alu_or" />
        <signal name="cc_dbg_alu_xor" />
        <signal name="cc_dbg_alu_nop" />
        <signal name="cc_dbg_alu" />
        <signal name="cc_dbg_alu_lshift" />
        <signal name="out_op_alu_add" />
        <signal name="out_op_alu" />
        <signal name="out_op_alu_lshift" />
        <signal name="out_op_alu_rshift" />
        <signal name="out_op_alu_and" />
        <signal name="out_op_alu_xor" />
        <signal name="out_op_alu_not" />
        <signal name="out_op_alu_or" />
        <signal name="out_op_alu_nop" />
        <signal name="out_op_ls_st" />
        <signal name="out_op_ls_ld" />
        <signal name="out_op_ls_ldc" />
        <signal name="out_op_jmp_jmpr" />
        <signal name="out_op_jmp_ifjmp" />
        <signal name="out_op_jmp_jmp" />
        <signal name="out_op_flg_clf" />
        <signal name="out_op_alt_nop" />
        <signal name="out_alu_gt" />
        <signal name="out_alu_C_in" />
        <signal name="out_alu_z" />
        <signal name="out_alu_C_out" />
        <signal name="out_alu_x(7:0)" />
        <signal name="out_alu_eq" />
        <signal name="out_flags_C_out" />
        <signal name="out_flags_gt" />
        <signal name="out_flags_eq" />
        <signal name="out_flags_z" />
        <signal name="out_C_in_enabled" />
        <signal name="out_C_out_flipflop_o" />
        <signal name="out_iar_o(7:0)" />
        <signal name="out_temp_o(7:0)" />
        <signal name="out_ir_o(7:0)" />
        <signal name="out_sysbus(7:0)" />
        <signal name="out_ram_a_o(7:0)" />
        <signal name="out_clkc" />
        <signal name="out_clkr" />
        <signal name="out_clkw" />
        <signal name="out_iar_w" />
        <signal name="out_iar_r" />
        <signal name="out_flags_w" />
        <signal name="out_flags_clr" />
        <signal name="out_s1" />
        <signal name="out_s2" />
        <signal name="out_s4" />
        <signal name="out_s6" />
        <signal name="out_s3" />
        <signal name="out_s5" />
        <signal name="out_sysbus_released" />
        <signal name="out_r0_r" />
        <signal name="out_r0_w" />
        <signal name="out_r1_r" />
        <signal name="out_r1_w" />
        <signal name="out_r2_r" />
        <signal name="out_r2_w" />
        <signal name="out_r3_r" />
        <signal name="out_r3_w" />
        <signal name="out_ir_w" />
        <signal name="out_is_bus1_w" />
        <signal name="out_bus1" />
        <signal name="out_acc_w" />
        <signal name="out_acc_r" />
        <signal name="out_temp_w" />
        <signal name="out_ram_w" />
        <signal name="out_ram_r" />
        <signal name="out_ram_a_w" />
        <signal name="out_can_read" />
        <signal name="out_can_write" />
        <signal name="in_clk" />
        <signal name="in_clk_manual" />
        <signal name="in_clk_external" />
        <signal name="in_rst" />
        <signal name="XLXN_233" />
        <signal name="in_is_clk_manual" />
        <signal name="clk_internal" />
        <signal name="out_clk_internal" />
        <signal name="XLXN_234" />
        <signal name="XLXN_235" />
        <signal name="XLXN_239" />
        <signal name="freq_div_1(3)" />
        <signal name="freq_div_1(15:0)" />
        <signal name="XLXN_247" />
        <signal name="XLXN_252" />
        <signal name="clk_low" />
        <port polarity="Input" name="in_manr_d(7:0)" />
        <port polarity="Output" name="monitor(7:0)" />
        <port polarity="Input" name="in_is_clk_high" />
        <port polarity="Input" name="in_is_clk_low" />
        <port polarity="Input" name="in_is_clk_external" />
        <port polarity="Input" name="in_r0_r" />
        <port polarity="Input" name="in_read_reg_en" />
        <port polarity="Input" name="in_write_reg_en" />
        <port polarity="Input" name="in_manr_r" />
        <port polarity="Input" name="in_r0_w" />
        <port polarity="Output" name="manr_o(7:0)" />
        <port polarity="Output" name="manr_w" />
        <port polarity="Input" name="in_manr_w" />
        <port polarity="Output" name="manr_r" />
        <port polarity="Input" name="in_r1_r" />
        <port polarity="Input" name="in_r1_w" />
        <port polarity="Input" name="in_r2_r" />
        <port polarity="Input" name="in_r2_w" />
        <port polarity="Input" name="in_r3_r" />
        <port polarity="Input" name="in_r3_w" />
        <port polarity="Input" name="in_iar_r" />
        <port polarity="Input" name="in_iar_w" />
        <port polarity="Input" name="in_temp_w" />
        <port polarity="Input" name="in_acc_r" />
        <port polarity="Input" name="in_acc_w" />
        <port polarity="Input" name="in_ram_r" />
        <port polarity="Input" name="in_ram_w" />
        <port polarity="Input" name="in_ir_w" />
        <port polarity="Input" name="in_ram_a_w" />
        <port polarity="Input" name="in_bus1" />
        <port polarity="Input" name="in_is_bus1_w" />
        <port polarity="Output" name="out_op_alu_add" />
        <port polarity="Output" name="out_op_alu" />
        <port polarity="Output" name="out_op_alu_lshift" />
        <port polarity="Output" name="out_op_alu_rshift" />
        <port polarity="Output" name="out_op_alu_and" />
        <port polarity="Output" name="out_op_alu_xor" />
        <port polarity="Output" name="out_op_alu_not" />
        <port polarity="Output" name="out_op_alu_or" />
        <port polarity="Output" name="out_op_alu_nop" />
        <port polarity="Output" name="out_op_ls_st" />
        <port polarity="Output" name="out_op_ls_ld" />
        <port polarity="Output" name="out_op_ls_ldc" />
        <port polarity="Output" name="out_op_jmp_jmpr" />
        <port polarity="Output" name="out_op_jmp_ifjmp" />
        <port polarity="Output" name="out_op_jmp_jmp" />
        <port polarity="Output" name="out_op_flg_clf" />
        <port polarity="Output" name="out_op_alt_nop" />
        <port polarity="Output" name="out_alu_gt" />
        <port polarity="Output" name="out_alu_C_in" />
        <port polarity="Output" name="out_alu_z" />
        <port polarity="Output" name="out_alu_C_out" />
        <port polarity="Output" name="out_alu_x(7:0)" />
        <port polarity="Output" name="out_alu_eq" />
        <port polarity="Output" name="out_flags_C_out" />
        <port polarity="Output" name="out_flags_gt" />
        <port polarity="Output" name="out_flags_eq" />
        <port polarity="Output" name="out_flags_z" />
        <port polarity="Output" name="out_C_in_enabled" />
        <port polarity="Output" name="out_C_out_flipflop_o" />
        <port polarity="Output" name="out_iar_o(7:0)" />
        <port polarity="Output" name="out_temp_o(7:0)" />
        <port polarity="Output" name="out_ir_o(7:0)" />
        <port polarity="Output" name="out_sysbus(7:0)" />
        <port polarity="Output" name="out_ram_a_o(7:0)" />
        <port polarity="Output" name="out_clkc" />
        <port polarity="Output" name="out_clkr" />
        <port polarity="Output" name="out_clkw" />
        <port polarity="Output" name="out_iar_w" />
        <port polarity="Output" name="out_iar_r" />
        <port polarity="Output" name="out_flags_w" />
        <port polarity="Output" name="out_flags_clr" />
        <port polarity="Output" name="out_s1" />
        <port polarity="Output" name="out_s2" />
        <port polarity="Output" name="out_s4" />
        <port polarity="Output" name="out_s6" />
        <port polarity="Output" name="out_s3" />
        <port polarity="Output" name="out_s5" />
        <port polarity="Output" name="out_sysbus_released" />
        <port polarity="Output" name="out_r0_r" />
        <port polarity="Output" name="out_r0_w" />
        <port polarity="Output" name="out_r1_r" />
        <port polarity="Output" name="out_r1_w" />
        <port polarity="Output" name="out_r2_r" />
        <port polarity="Output" name="out_r2_w" />
        <port polarity="Output" name="out_r3_r" />
        <port polarity="Output" name="out_r3_w" />
        <port polarity="Output" name="out_ir_w" />
        <port polarity="Output" name="out_is_bus1_w" />
        <port polarity="Output" name="out_bus1" />
        <port polarity="Output" name="out_acc_w" />
        <port polarity="Output" name="out_acc_r" />
        <port polarity="Output" name="out_temp_w" />
        <port polarity="Output" name="out_ram_w" />
        <port polarity="Output" name="out_ram_r" />
        <port polarity="Output" name="out_ram_a_w" />
        <port polarity="Output" name="out_can_read" />
        <port polarity="Output" name="out_can_write" />
        <port polarity="Input" name="in_clk" />
        <port polarity="Input" name="in_clk_manual" />
        <port polarity="Input" name="in_clk_external" />
        <port polarity="Input" name="in_rst" />
        <port polarity="Input" name="in_is_clk_manual" />
        <port polarity="Output" name="out_clk_internal" />
        <blockdef name="alu">
            <timestamp>2022-4-8T18:49:12</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="reg_8bit">
            <timestamp>2022-4-8T22:59:38</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="pass_through_or_one">
            <timestamp>2022-4-8T19:3:32</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="pullup">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-48" x1="48" />
            <line x2="48" y1="-72" y2="-56" x1="80" />
            <line x2="80" y1="-88" y2="-72" x1="48" />
            <line x2="48" y1="-104" y2="-88" x1="80" />
            <line x2="80" y1="-108" y2="-104" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="96" />
        </blockdef>
        <blockdef name="clk_generator">
            <timestamp>2022-4-27T22:28:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="cpu_control">
            <timestamp>2022-4-22T21:9:36</timestamp>
            <rect width="1536" x="64" y="-1600" height="1536" />
            <line x2="1504" y1="-1600" y2="-1664" x1="1504" />
            <line x2="1568" y1="-1600" y2="-1664" x1="1568" />
            <line x2="1056" y1="-1600" y2="-1664" x1="1056" />
            <line x2="1664" y1="-96" y2="-96" x1="1600" />
            <line x2="1664" y1="-416" y2="-416" x1="1600" />
            <line x2="800" y1="-1600" y2="-1664" x1="800" />
            <line x2="1664" y1="-608" y2="-608" x1="1600" />
            <line x2="1664" y1="-160" y2="-160" x1="1600" />
            <line x2="1664" y1="-480" y2="-480" x1="1600" />
            <line x2="1664" y1="-1504" y2="-1504" x1="1600" />
            <line x2="1664" y1="-1440" y2="-1440" x1="1600" />
            <line x2="1664" y1="-1312" y2="-1312" x1="1600" />
            <line x2="1664" y1="-288" y2="-288" x1="1600" />
            <line x2="1664" y1="-544" y2="-544" x1="1600" />
            <line x2="1664" y1="-672" y2="-672" x1="1600" />
            <line x2="1664" y1="-224" y2="-224" x1="1600" />
            <line x2="1248" y1="-1600" y2="-1664" x1="1248" />
            <line x2="0" y1="-1568" y2="-1568" x1="64" />
            <line x2="0" y1="-1440" y2="-1440" x1="64" />
            <line x2="0" y1="-1504" y2="-1504" x1="64" />
            <line x2="160" y1="-64" y2="0" x1="160" />
            <rect width="24" x="148" y="-64" height="64" />
            <line x2="736" y1="-1600" y2="-1664" x1="736" />
            <line x2="1664" y1="-736" y2="-736" x1="1600" />
            <line x2="992" y1="-1600" y2="-1664" x1="992" />
            <line x2="1664" y1="-352" y2="-352" x1="1600" />
            <line x2="1120" y1="-1600" y2="-1664" x1="1120" />
            <line x2="1184" y1="-1600" y2="-1664" x1="1184" />
            <line x2="96" y1="-64" y2="0" x1="96" />
            <rect width="24" x="84" y="-64" height="64" />
            <line x2="1312" y1="-1600" y2="-1664" x1="1312" />
            <line x2="928" y1="-1600" y2="-1664" x1="928" />
            <line x2="864" y1="-1600" y2="-1664" x1="864" />
            <line x2="672" y1="-1600" y2="-1664" x1="672" />
            <line x2="480" y1="-1600" y2="-1664" x1="480" />
            <line x2="608" y1="-1600" y2="-1664" x1="608" />
            <line x2="544" y1="-1600" y2="-1664" x1="544" />
            <line x2="1664" y1="-1184" y2="-1184" x1="1600" />
            <line x2="1664" y1="-1248" y2="-1248" x1="1600" />
            <line x2="1664" y1="-1056" y2="-1056" x1="1600" />
            <line x2="1664" y1="-1120" y2="-1120" x1="1600" />
            <line x2="1664" y1="-928" y2="-928" x1="1600" />
            <line x2="1664" y1="-992" y2="-992" x1="1600" />
            <line x2="1664" y1="-800" y2="-800" x1="1600" />
            <line x2="1664" y1="-864" y2="-864" x1="1600" />
            <line x2="1440" y1="-1600" y2="-1664" x1="1440" />
            <line x2="1376" y1="-1600" y2="-1664" x1="1376" />
            <line x2="1664" y1="-1376" y2="-1376" x1="1600" />
            <line x2="96" y1="-1600" y2="-1664" x1="96" />
            <line x2="160" y1="-1600" y2="-1664" x1="160" />
            <line x2="224" y1="-1600" y2="-1664" x1="224" />
            <line x2="288" y1="-1600" y2="-1664" x1="288" />
            <line x2="352" y1="-1600" y2="-1664" x1="352" />
            <line x2="416" y1="-1600" y2="-1664" x1="416" />
            <line x2="1664" y1="-1568" y2="-1568" x1="1600" />
        </blockdef>
        <blockdef name="ram_256bytes">
            <timestamp>2022-4-8T20:32:44</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="ld4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-512" height="448" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="fdc_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="ld8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="cpu_output_muxer">
            <timestamp>2022-4-19T20:42:31</timestamp>
            <rect width="512" x="64" y="-576" height="512" />
            <line x2="224" y1="-64" y2="0" x1="224" />
            <rect width="24" x="212" y="-64" height="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="640" y1="-480" y2="-480" x1="576" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="480" y1="-64" y2="0" x1="480" />
            <rect width="24" x="468" y="-64" height="64" />
            <line x2="352" y1="-64" y2="0" x1="352" />
            <line x2="416" y1="-64" y2="0" x1="416" />
            <rect width="24" x="404" y="-64" height="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="640" y1="-544" y2="-544" x1="576" />
            <rect width="64" x="576" y="-556" height="24" />
            <line x2="544" y1="-64" y2="0" x1="544" />
            <rect width="24" x="532" y="-64" height="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="96" y1="-64" y2="0" x1="96" />
            <line x2="288" y1="-64" y2="0" x1="288" />
            <rect width="24" x="276" y="-64" height="64" />
            <line x2="160" y1="-64" y2="0" x1="160" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="buf_8bit">
            <timestamp>2022-4-21T22:57:52</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="cpu_freq_divider">
            <timestamp>2022-4-27T3:56:15</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
        </blockdef>
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="alu" name="alu_inst">
            <blockpin signalname="sysbus(7:0)" name="a(7:0)" />
            <blockpin signalname="pto(7:0)" name="b(7:0)" />
            <blockpin signalname="alu_C_in" name="C_in" />
            <blockpin signalname="alu_C_out" name="C_out" />
            <blockpin signalname="alu_eq" name="eq" />
            <blockpin signalname="alu_gt" name="gt" />
            <blockpin signalname="cc_alu_op(2:0)" name="op(2:0)" />
            <blockpin signalname="alu_x(7:0)" name="x(7:0)" />
            <blockpin signalname="alu_z" name="z" />
        </block>
        <block symbolname="pullup" name="XLXI_8">
            <blockpin signalname="temp_r" name="O" />
        </block>
        <block symbolname="cpu_control" name="cpu_ctl">
            <blockpin signalname="cc_acc_r" name="acc_r" />
            <blockpin signalname="cc_acc_w" name="acc_w" />
            <blockpin signalname="cc_dbg_alt_nop" name="alt_nop" />
            <blockpin signalname="cc_dbg_alu" name="alu" />
            <blockpin signalname="cc_dbg_alu_and" name="alu_and" />
            <blockpin signalname="alu_C_in_enabled" name="alu_C_in_enabled" />
            <blockpin signalname="cc_dbg_alu_lshift" name="alu_lshift" />
            <blockpin signalname="cc_dbg_alu_nop" name="alu_nop" />
            <blockpin signalname="cc_dbg_alu_not" name="alu_not" />
            <blockpin signalname="cc_alu_op(0)" name="alu_op0" />
            <blockpin signalname="cc_alu_op(1)" name="alu_op1" />
            <blockpin signalname="cc_alu_op(2)" name="alu_op2" />
            <blockpin signalname="cc_dbg_alu_or" name="alu_or" />
            <blockpin signalname="cc_dbg_alu_rshift" name="alu_rshift" />
            <blockpin signalname="cc_dbg_alu_sum" name="alu_sum" />
            <blockpin signalname="cc_dbg_alu_xor" name="alu_xor" />
            <blockpin signalname="cc_bus1" name="bus1" />
            <blockpin signalname="clkc" name="clk" />
            <blockpin signalname="clkr" name="clkr" />
            <blockpin signalname="clkw" name="clkw" />
            <blockpin signalname="flags_o(3:0)" name="flags(3:0)" />
            <blockpin signalname="cc_flags_clr" name="flags_clr" />
            <blockpin signalname="cc_flags_w" name="flags_w" />
            <blockpin signalname="cc_dbg_flg_clf" name="flg_clf" />
            <blockpin signalname="ground" name="ground" />
            <blockpin signalname="cc_iar_r" name="iar_r" />
            <blockpin signalname="cc_iar_w" name="iar_w" />
            <blockpin signalname="ir_o(7:0)" name="ir(7:0)" />
            <blockpin signalname="cc_ir_w" name="ir_w" />
            <blockpin signalname="cc_dbg_jmp_ifjmp" name="jmp_ifjmp" />
            <blockpin signalname="cc_dbg_jmp_jmp" name="jmp_jmp" />
            <blockpin signalname="cc_dbg_jmp_jmpr" name="jmp_jmpr" />
            <blockpin signalname="cc_dbg_ls_ld" name="ls_ld" />
            <blockpin signalname="cc_dbg_ls_ldc" name="ls_ldc" />
            <blockpin signalname="cc_dbg_ls_st" name="ls_st" />
            <blockpin signalname="cc_r0_r" name="r0_r" />
            <blockpin signalname="cc_r0_w" name="r0_w" />
            <blockpin signalname="cc_r1_r" name="r1_r" />
            <blockpin signalname="cc_r1_w" name="r1_w" />
            <blockpin signalname="cc_r2_r" name="r2_r" />
            <blockpin signalname="cc_r2_w" name="r2_w" />
            <blockpin signalname="cc_r3_r" name="r3_r" />
            <blockpin signalname="cc_r3_w" name="r3_w" />
            <blockpin signalname="cc_ram_a_w" name="ram_a_w" />
            <blockpin signalname="cc_ram_r" name="ram_r" />
            <blockpin signalname="cc_ram_w" name="ram_w" />
            <blockpin signalname="cc_dbg_s1" name="s1" />
            <blockpin signalname="cc_dbg_s2" name="s2" />
            <blockpin signalname="cc_dbg_s3" name="s3" />
            <blockpin signalname="cc_dbg_s4" name="s4" />
            <blockpin signalname="cc_dbg_s5" name="s5" />
            <blockpin signalname="cc_dbg_s6" name="s6" />
            <blockpin signalname="cc_temp_w" name="temp_w" />
        </block>
        <block symbolname="ram_256bytes" name="XLXI_9">
            <blockpin signalname="sysbus(7:0)" name="a(7:0)" />
            <blockpin signalname="ram_a_o(7:0)" name="a_o(7:0)" />
            <blockpin signalname="ram_a_w" name="a_w" />
            <blockpin signalname="sysbus(7:0)" name="i(7:0)" />
            <blockpin signalname="ram_r" name="i_r" />
            <blockpin signalname="ram_w" name="i_w" />
            <blockpin signalname="clkw" name="i_wclk" />
            <blockpin signalname="ram_o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="pullup" name="XLXI_7">
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="ld4ce" name="XLXI_87">
            <blockpin signalname="XLXN_217" name="CLR" />
            <blockpin signalname="alu_C_out" name="D0" />
            <blockpin signalname="alu_gt" name="D1" />
            <blockpin signalname="alu_eq" name="D2" />
            <blockpin signalname="alu_z" name="D3" />
            <blockpin signalname="cc_flags_w" name="G" />
            <blockpin signalname="XLXN_194" name="GE" />
            <blockpin signalname="flags_o(0)" name="Q0" />
            <blockpin signalname="flags_o(1)" name="Q1" />
            <blockpin signalname="flags_o(2)" name="Q2" />
            <blockpin signalname="flags_o(3)" name="Q3" />
        </block>
        <block symbolname="vcc" name="XLXI_88">
            <blockpin signalname="XLXN_194" name="P" />
        </block>
        <block symbolname="and2" name="XLXI_89">
            <blockpin signalname="alu_C_out_flipflop_o" name="I0" />
            <blockpin signalname="alu_C_in_enabled" name="I1" />
            <blockpin signalname="alu_C_in" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_103">
            <blockpin signalname="rst" name="I0" />
            <blockpin signalname="cc_flags_clr" name="I1" />
            <blockpin signalname="XLXN_217" name="O" />
        </block>
        <block symbolname="ld8" name="XLXI_104">
            <blockpin signalname="sysbus(7:0)" name="D(7:0)" />
            <blockpin signalname="cc_r0_w" name="G" />
            <blockpin signalname="monitor(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="pass_through_or_one" name="pass_th">
            <blockpin signalname="temp_o(7:0)" name="i(7:0)" />
            <blockpin signalname="pto(7:0)" name="o(7:0)" />
            <blockpin signalname="bus1" name="one" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_121">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="in_manr_d(7:0)" name="d(7:0)" />
            <blockpin signalname="manr_o(7:0)" name="o(7:0)" />
            <blockpin signalname="manr_r" name="r" />
            <blockpin signalname="manr_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_122">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="iar_o(7:0)" name="o(7:0)" />
            <blockpin signalname="iar_r" name="r" />
            <blockpin signalname="iar_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_123">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="ir_o(7:0)" name="o(7:0)" />
            <blockpin signalname="XLXN_23" name="r" />
            <blockpin signalname="cc_ir_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_124">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="temp_o(7:0)" name="o(7:0)" />
            <blockpin signalname="temp_r" name="r" />
            <blockpin signalname="temp_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_125">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="alu_x(7:0)" name="d(7:0)" />
            <blockpin signalname="acc_o(7:0)" name="o(7:0)" />
            <blockpin signalname="acc_r" name="r" />
            <blockpin signalname="acc_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_126">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="r0_o(7:0)" name="o(7:0)" />
            <blockpin signalname="r0_r" name="r" />
            <blockpin signalname="r0_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_127">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="r1_o(7:0)" name="o(7:0)" />
            <blockpin signalname="r1_r" name="r" />
            <blockpin signalname="r1_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_128">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="r2_o(7:0)" name="o(7:0)" />
            <blockpin signalname="r2_r" name="r" />
            <blockpin signalname="r2_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_129">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="r3_o(7:0)" name="o(7:0)" />
            <blockpin signalname="r3_r" name="r" />
            <blockpin signalname="r3_w" name="w" />
        </block>
        <block symbolname="cpu_output_muxer" name="XLXI_130">
            <blockpin signalname="acc_o(7:0)" name="acc_o(7:0)" />
            <blockpin signalname="acc_r" name="acc_r" />
            <blockpin signalname="not_reading" name="g" />
            <blockpin signalname="iar_o(7:0)" name="iar_o(7:0)" />
            <blockpin signalname="iar_r" name="iar_r" />
            <blockpin signalname="manr_o(7:0)" name="manr_o(7:0)" />
            <blockpin signalname="manr_r" name="manr_r" />
            <blockpin signalname="ram_o(7:0)" name="mem_o(7:0)" />
            <blockpin signalname="ram_r" name="mem_r" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
            <blockpin signalname="r0_o(7:0)" name="r0_o(7:0)" />
            <blockpin signalname="r0_r" name="r0_r" />
            <blockpin signalname="r1_o(7:0)" name="r1_o(7:0)" />
            <blockpin signalname="r1_r" name="r1_r" />
            <blockpin signalname="r2_o(7:0)" name="r2_o(7:0)" />
            <blockpin signalname="r2_r" name="r2_r" />
            <blockpin signalname="r3_o(7:0)" name="r3_o(7:0)" />
            <blockpin signalname="r3_r" name="r3_r" />
        </block>
        <block symbolname="gnd" name="XLXI_136">
            <blockpin name="G" />
        </block>
        <block symbolname="fdc_1" name="XLXI_102">
            <blockpin signalname="clkr" name="C" />
            <blockpin signalname="rst" name="CLR" />
            <blockpin signalname="flags_o(0)" name="D" />
            <blockpin signalname="alu_C_out_flipflop_o" name="Q" />
        </block>
        <block symbolname="clk_generator" name="clck_gen">
            <blockpin signalname="clk_internal" name="clk" />
            <blockpin signalname="clkc" name="clkc" />
            <blockpin signalname="clkr" name="clkr" />
            <blockpin signalname="clkw" name="clkw" />
            <blockpin signalname="rst" name="rst" />
        </block>
        <block symbolname="and2" name="XLXI_390">
            <blockpin signalname="can_read" name="I0" />
            <blockpin signalname="in_manr_r" name="I1" />
            <blockpin signalname="manr_r" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_394">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_manr_w" name="I1" />
            <blockpin signalname="manr_w" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_371">
            <blockpin signalname="can_read" name="I0" />
            <blockpin signalname="in_r0_r" name="I1" />
            <blockpin signalname="manual_r0_r" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_218">
            <blockpin signalname="manual_r0_r" name="I0" />
            <blockpin signalname="cc_r0_r" name="I1" />
            <blockpin signalname="r0_r" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_381">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_r0_w" name="I1" />
            <blockpin signalname="manual_r0_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_375">
            <blockpin signalname="manual_r0_w" name="I0" />
            <blockpin signalname="cc_r0_w" name="I1" />
            <blockpin signalname="r0_w" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_465">
            <blockpin signalname="can_read" name="I0" />
            <blockpin signalname="in_r1_r" name="I1" />
            <blockpin signalname="manual_r1_r" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_466">
            <blockpin signalname="manual_r1_r" name="I0" />
            <blockpin signalname="cc_r1_r" name="I1" />
            <blockpin signalname="r1_r" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_467">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_r1_w" name="I1" />
            <blockpin signalname="manual_r1_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_468">
            <blockpin signalname="manual_r1_w" name="I0" />
            <blockpin signalname="cc_r1_w" name="I1" />
            <blockpin signalname="r1_w" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_380">
            <blockpin signalname="in_is_clk_manual" name="I0" />
            <blockpin signalname="in_write_reg_en" name="I1" />
            <blockpin signalname="can_write" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_525">
            <blockpin signalname="can_read" name="I0" />
            <blockpin signalname="in_r2_r" name="I1" />
            <blockpin signalname="manual_r2_r" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_526">
            <blockpin signalname="manual_r2_r" name="I0" />
            <blockpin signalname="cc_r2_r" name="I1" />
            <blockpin signalname="r2_r" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_527">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_r2_w" name="I1" />
            <blockpin signalname="manual_r2_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_528">
            <blockpin signalname="manual_r2_w" name="I0" />
            <blockpin signalname="cc_r2_w" name="I1" />
            <blockpin signalname="r2_w" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_529">
            <blockpin signalname="can_read" name="I0" />
            <blockpin signalname="in_r3_r" name="I1" />
            <blockpin signalname="manual_r3_r" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_530">
            <blockpin signalname="manual_r3_r" name="I0" />
            <blockpin signalname="cc_r3_r" name="I1" />
            <blockpin signalname="r3_r" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_531">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_r3_w" name="I1" />
            <blockpin signalname="manual_r3_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_532">
            <blockpin signalname="manual_r3_w" name="I0" />
            <blockpin signalname="cc_r3_w" name="I1" />
            <blockpin signalname="r3_w" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_533">
            <blockpin signalname="can_read" name="I0" />
            <blockpin signalname="in_iar_r" name="I1" />
            <blockpin signalname="manual_iar_r" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_534">
            <blockpin signalname="manual_iar_r" name="I0" />
            <blockpin signalname="cc_iar_r" name="I1" />
            <blockpin signalname="iar_r" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_535">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_iar_w" name="I1" />
            <blockpin signalname="manual_iar_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_536">
            <blockpin signalname="manual_iar_w" name="I0" />
            <blockpin signalname="cc_iar_w" name="I1" />
            <blockpin signalname="iar_w" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_537">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_temp_w" name="I1" />
            <blockpin signalname="manual_temp_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_538">
            <blockpin signalname="manual_temp_w" name="I0" />
            <blockpin signalname="cc_temp_w" name="I1" />
            <blockpin signalname="temp_w" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_326">
            <blockpin signalname="sysbus_released" name="I0" />
            <blockpin signalname="in_is_clk_manual" name="I1" />
            <blockpin signalname="in_read_reg_en" name="I2" />
            <blockpin signalname="can_read" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_212">
            <blockpin signalname="clkr" name="I" />
            <blockpin signalname="sysbus_released" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_545">
            <blockpin signalname="can_read" name="I0" />
            <blockpin signalname="in_acc_r" name="I1" />
            <blockpin signalname="manual_acc_r" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_546">
            <blockpin signalname="manual_acc_r" name="I0" />
            <blockpin signalname="cc_acc_r" name="I1" />
            <blockpin signalname="acc_r" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_547">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_acc_w" name="I1" />
            <blockpin signalname="manual_acc_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_548">
            <blockpin signalname="manual_acc_w" name="I0" />
            <blockpin signalname="cc_acc_w" name="I1" />
            <blockpin signalname="acc_w" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_549">
            <blockpin signalname="can_read" name="I0" />
            <blockpin signalname="in_ram_r" name="I1" />
            <blockpin signalname="manual_ram_r" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_550">
            <blockpin signalname="manual_ram_r" name="I0" />
            <blockpin signalname="cc_ram_r" name="I1" />
            <blockpin signalname="ram_r" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_551">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_ram_w" name="I1" />
            <blockpin signalname="manual_ram_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_552">
            <blockpin signalname="manual_ram_w" name="I0" />
            <blockpin signalname="cc_ram_w" name="I1" />
            <blockpin signalname="ram_w" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_565">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_ir_w" name="I1" />
            <blockpin signalname="manual_ir_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_566">
            <blockpin signalname="manual_ir_w" name="I0" />
            <blockpin signalname="cc_ir_w" name="I1" />
            <blockpin signalname="ir_w" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_567">
            <blockpin signalname="can_write" name="I0" />
            <blockpin signalname="in_ram_a_w" name="I1" />
            <blockpin signalname="manual_ram_a_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_568">
            <blockpin signalname="manual_ram_a_w" name="I0" />
            <blockpin signalname="cc_ram_a_w" name="I1" />
            <blockpin signalname="ram_a_w" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_571">
            <blockpin signalname="cc_bus1" name="D0" />
            <blockpin signalname="in_bus1" name="D1" />
            <blockpin signalname="in_is_bus1_w" name="S0" />
            <blockpin signalname="bus1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_563">
            <blockpin signalname="cc_dbg_alu" name="I" />
            <blockpin signalname="out_op_alu" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_564">
            <blockpin signalname="cc_dbg_alu_sum" name="I" />
            <blockpin signalname="out_op_alu_add" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_648">
            <blockpin signalname="cc_dbg_alu_lshift" name="I" />
            <blockpin signalname="out_op_alu_lshift" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_649">
            <blockpin signalname="cc_dbg_alu_rshift" name="I" />
            <blockpin signalname="out_op_alu_rshift" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_650">
            <blockpin signalname="cc_dbg_alu_not" name="I" />
            <blockpin signalname="out_op_alu_not" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_651">
            <blockpin signalname="cc_dbg_alu_and" name="I" />
            <blockpin signalname="out_op_alu_and" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_652">
            <blockpin signalname="cc_dbg_alu_or" name="I" />
            <blockpin signalname="out_op_alu_or" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_653">
            <blockpin signalname="cc_dbg_alu_xor" name="I" />
            <blockpin signalname="out_op_alu_xor" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_654">
            <blockpin signalname="cc_dbg_alu_nop" name="I" />
            <blockpin signalname="out_op_alu_nop" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_655">
            <blockpin signalname="cc_dbg_ls_ld" name="I" />
            <blockpin signalname="out_op_ls_ld" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_656">
            <blockpin signalname="cc_dbg_ls_st" name="I" />
            <blockpin signalname="out_op_ls_st" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_657">
            <blockpin signalname="cc_dbg_ls_ldc" name="I" />
            <blockpin signalname="out_op_ls_ldc" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_658">
            <blockpin signalname="cc_dbg_jmp_jmpr" name="I" />
            <blockpin signalname="out_op_jmp_jmpr" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_659">
            <blockpin signalname="cc_dbg_jmp_jmp" name="I" />
            <blockpin signalname="out_op_jmp_jmp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_660">
            <blockpin signalname="cc_dbg_jmp_ifjmp" name="I" />
            <blockpin signalname="out_op_jmp_ifjmp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_661">
            <blockpin signalname="cc_dbg_flg_clf" name="I" />
            <blockpin signalname="out_op_flg_clf" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_662">
            <blockpin signalname="cc_dbg_alt_nop" name="I" />
            <blockpin signalname="out_op_alt_nop" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_664">
            <blockpin signalname="alu_C_in" name="I" />
            <blockpin signalname="out_alu_C_in" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_665">
            <blockpin signalname="alu_gt" name="I" />
            <blockpin signalname="out_alu_gt" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_666">
            <blockpin signalname="alu_eq" name="I" />
            <blockpin signalname="out_alu_eq" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_667">
            <blockpin signalname="alu_z" name="I" />
            <blockpin signalname="out_alu_z" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_668">
            <blockpin signalname="alu_C_out" name="I" />
            <blockpin signalname="out_alu_C_out" name="O" />
        </block>
        <block symbolname="buf_8bit" name="XLXI_675">
            <blockpin signalname="alu_x(7:0)" name="i(7:0)" />
            <blockpin signalname="out_alu_x(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_669">
            <blockpin signalname="flags_o(0)" name="I" />
            <blockpin signalname="out_flags_C_out" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_670">
            <blockpin signalname="flags_o(1)" name="I" />
            <blockpin signalname="out_flags_gt" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_671">
            <blockpin signalname="flags_o(2)" name="I" />
            <blockpin signalname="out_flags_eq" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_679">
            <blockpin signalname="flags_o(3)" name="I" />
            <blockpin signalname="out_flags_z" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_680">
            <blockpin signalname="alu_C_in_enabled" name="I" />
            <blockpin signalname="out_C_in_enabled" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_681">
            <blockpin signalname="alu_C_out_flipflop_o" name="I" />
            <blockpin signalname="out_C_out_flipflop_o" name="O" />
        </block>
        <block symbolname="buf_8bit" name="XLXI_576">
            <blockpin signalname="temp_o(7:0)" name="i(7:0)" />
            <blockpin signalname="out_temp_o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="buf_8bit" name="XLXI_575">
            <blockpin signalname="ir_o(7:0)" name="i(7:0)" />
            <blockpin signalname="out_ir_o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="buf_8bit" name="XLXI_574">
            <blockpin signalname="iar_o(7:0)" name="i(7:0)" />
            <blockpin signalname="out_iar_o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="buf_8bit" name="XLXI_799">
            <blockpin signalname="ram_a_o(7:0)" name="i(7:0)" />
            <blockpin signalname="out_ram_a_o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_189">
            <blockpin signalname="clkc" name="I" />
            <blockpin signalname="out_clkc" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_190">
            <blockpin signalname="clkr" name="I" />
            <blockpin signalname="out_clkr" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_191">
            <blockpin signalname="clkw" name="I" />
            <blockpin signalname="out_clkw" name="O" />
        </block>
        <block symbolname="buf_8bit" name="XLXI_860">
            <blockpin signalname="sysbus(7:0)" name="i(7:0)" />
            <blockpin signalname="out_sysbus(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_227">
            <blockpin signalname="iar_r" name="I" />
            <blockpin signalname="out_iar_r" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_228">
            <blockpin signalname="iar_w" name="I" />
            <blockpin signalname="out_iar_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_561">
            <blockpin signalname="cc_flags_w" name="I" />
            <blockpin signalname="out_flags_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_562">
            <blockpin signalname="cc_flags_clr" name="I" />
            <blockpin signalname="out_flags_clr" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_192">
            <blockpin signalname="cc_dbg_s1" name="I" />
            <blockpin signalname="out_s1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_193">
            <blockpin signalname="cc_dbg_s2" name="I" />
            <blockpin signalname="out_s2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_194">
            <blockpin signalname="cc_dbg_s3" name="I" />
            <blockpin signalname="out_s3" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_195">
            <blockpin signalname="cc_dbg_s4" name="I" />
            <blockpin signalname="out_s4" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_196">
            <blockpin signalname="cc_dbg_s5" name="I" />
            <blockpin signalname="out_s5" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_207">
            <blockpin signalname="cc_dbg_s6" name="I" />
            <blockpin signalname="out_s6" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_844">
            <blockpin signalname="sysbus_released" name="I" />
            <blockpin signalname="out_sysbus_released" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_219">
            <blockpin signalname="r0_r" name="I" />
            <blockpin signalname="out_r0_r" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_220">
            <blockpin signalname="r0_w" name="I" />
            <blockpin signalname="out_r0_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_221">
            <blockpin signalname="r1_r" name="I" />
            <blockpin signalname="out_r1_r" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_222">
            <blockpin signalname="r1_w" name="I" />
            <blockpin signalname="out_r1_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_223">
            <blockpin signalname="r2_r" name="I" />
            <blockpin signalname="out_r2_r" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_224">
            <blockpin signalname="r2_w" name="I" />
            <blockpin signalname="out_r2_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_225">
            <blockpin signalname="r3_r" name="I" />
            <blockpin signalname="out_r3_r" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_226">
            <blockpin signalname="r3_w" name="I" />
            <blockpin signalname="out_r3_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_557">
            <blockpin signalname="ir_w" name="I" />
            <blockpin signalname="out_ir_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_560">
            <blockpin signalname="in_is_bus1_w" name="I" />
            <blockpin signalname="out_is_bus1_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_559">
            <blockpin signalname="bus1" name="I" />
            <blockpin signalname="out_bus1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_554">
            <blockpin signalname="acc_w" name="I" />
            <blockpin signalname="out_acc_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_553">
            <blockpin signalname="acc_r" name="I" />
            <blockpin signalname="out_acc_r" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_229">
            <blockpin signalname="temp_w" name="I" />
            <blockpin signalname="out_temp_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_555">
            <blockpin signalname="ram_r" name="I" />
            <blockpin signalname="out_ram_r" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_556">
            <blockpin signalname="ram_w" name="I" />
            <blockpin signalname="out_ram_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_558">
            <blockpin signalname="ram_a_w" name="I" />
            <blockpin signalname="out_ram_a_w" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_901">
            <blockpin signalname="can_read" name="I" />
            <blockpin signalname="out_can_read" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_903">
            <blockpin signalname="can_write" name="I" />
            <blockpin signalname="out_can_write" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_116">
            <blockpin signalname="in_rst" name="I" />
            <blockpin signalname="XLXN_233" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_117">
            <blockpin signalname="XLXN_233" name="I" />
            <blockpin signalname="rst" name="O" />
        </block>
        <block symbolname="cpu_freq_divider" name="XLXI_912">
            <blockpin signalname="in_clk" name="clk_in" />
            <blockpin name="clk_out" />
            <blockpin signalname="in_is_clk_external" name="external" />
            <blockpin signalname="in_clk_external" name="external_clk_in" />
            <blockpin signalname="in_is_clk_high" name="high" />
            <blockpin signalname="in_is_clk_low" name="low" />
            <blockpin signalname="in_is_clk_manual" name="manual" />
            <blockpin signalname="in_clk_manual" name="manual_clk_in" />
            <blockpin signalname="rst" name="rst" />
        </block>
        <block symbolname="buf" name="XLXI_913">
            <blockpin signalname="clk_internal" name="I" />
            <blockpin signalname="out_clk_internal" name="O" />
        </block>
        <block symbolname="cb16ce" name="XLXI_914">
            <blockpin signalname="in_clk" name="C" />
            <blockpin signalname="XLXN_234" name="CE" />
            <blockpin signalname="rst" name="CLR" />
            <blockpin signalname="XLXN_235" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_915">
            <blockpin signalname="XLXN_234" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_916">
            <blockpin signalname="freq_div_1(3)" name="I" />
            <blockpin signalname="clk_low" name="O" />
        </block>
        <block symbolname="cb16ce" name="XLXI_917">
            <blockpin signalname="in_clk" name="C" />
            <blockpin signalname="XLXN_235" name="CE" />
            <blockpin signalname="XLXN_239" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="freq_div_1(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and2" name="XLXI_918">
            <blockpin signalname="in_clk_manual" name="I0" />
            <blockpin signalname="in_is_clk_manual" name="I1" />
            <blockpin signalname="XLXN_247" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_919">
            <blockpin signalname="clk_low" name="I0" />
            <blockpin signalname="in_is_clk_low" name="I1" />
            <blockpin signalname="XLXN_252" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_924">
            <blockpin signalname="XLXN_252" name="I0" />
            <blockpin signalname="XLXN_247" name="I1" />
            <blockpin signalname="clk_internal" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="224" y="992" name="alu_inst" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="alu_x(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="160" y="1040" type="branch" />
            <wire x2="720" y1="1040" y2="1040" x1="160" />
            <wire x2="160" y1="1040" y2="1216" x1="160" />
            <wire x2="208" y1="1216" y2="1216" x1="160" />
            <wire x2="720" y1="832" y2="832" x1="608" />
            <wire x2="720" y1="832" y2="1040" x1="720" />
        </branch>
        <branch name="temp_r">
            <wire x2="672" y1="112" y2="112" x1="176" />
            <wire x2="672" y1="112" y2="304" x1="672" />
            <wire x2="768" y1="304" y2="304" x1="672" />
            <wire x2="176" y1="112" y2="192" x1="176" />
            <wire x2="768" y1="288" y2="304" x1="768" />
        </branch>
        <branch name="alu_C_in">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="656" type="branch" />
            <wire x2="224" y1="656" y2="704" x1="224" />
            <wire x2="784" y1="656" y2="656" x1="224" />
        </branch>
        <branch name="alu_eq">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="704" type="branch" />
            <wire x2="784" y1="704" y2="704" x1="608" />
        </branch>
        <branch name="alu_C_out">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="960" type="branch" />
            <wire x2="784" y1="960" y2="960" x1="608" />
        </branch>
        <branch name="acc_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1072" type="branch" />
            <wire x2="784" y1="1072" y2="1072" x1="208" />
            <wire x2="208" y1="1072" y2="1152" x1="208" />
        </branch>
        <branch name="acc_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1392" type="branch" />
            <wire x2="208" y1="1280" y2="1280" x1="160" />
            <wire x2="160" y1="1280" y2="1392" x1="160" />
            <wire x2="784" y1="1392" y2="1392" x1="160" />
        </branch>
        <branch name="iar_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="3232" type="branch" />
            <wire x2="1520" y1="3232" y2="3232" x1="1360" />
        </branch>
        <branch name="iar_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="3360" type="branch" />
            <wire x2="1520" y1="3360" y2="3360" x1="1280" />
        </branch>
        <branch name="r1_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="480" type="branch" />
            <wire x2="1968" y1="192" y2="480" x1="1968" />
            <wire x2="2016" y1="192" y2="192" x1="1968" />
        </branch>
        <branch name="r2_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="528" type="branch" />
            <wire x2="2496" y1="320" y2="320" x1="2464" />
            <wire x2="2464" y1="320" y2="528" x1="2464" />
            <wire x2="2560" y1="528" y2="528" x1="2464" />
        </branch>
        <branch name="r2_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="576" type="branch" />
            <wire x2="2496" y1="192" y2="192" x1="2448" />
            <wire x2="2448" y1="192" y2="576" x1="2448" />
            <wire x2="2560" y1="576" y2="576" x1="2448" />
        </branch>
        <branch name="r0_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="480" type="branch" />
            <wire x2="1472" y1="192" y2="480" x1="1472" />
            <wire x2="1536" y1="192" y2="192" x1="1472" />
        </branch>
        <branch name="r3_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="528" type="branch" />
            <wire x2="2976" y1="320" y2="320" x1="2944" />
            <wire x2="2944" y1="320" y2="528" x1="2944" />
            <wire x2="3040" y1="528" y2="528" x1="2944" />
        </branch>
        <branch name="pto(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="512" type="branch" />
            <wire x2="160" y1="640" y2="832" x1="160" />
            <wire x2="224" y1="832" y2="832" x1="160" />
            <wire x2="720" y1="640" y2="640" x1="160" />
            <wire x2="720" y1="512" y2="512" x1="608" />
            <wire x2="720" y1="512" y2="640" x1="720" />
        </branch>
        <branch name="in_manr_d(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="3296" type="branch" />
            <wire x2="416" y1="3296" y2="3296" x1="288" />
        </branch>
        <branch name="manr_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="3360" type="branch" />
            <wire x2="416" y1="3360" y2="3360" x1="288" />
        </branch>
        <instance x="704" y="288" name="XLXI_8" orien="R0" />
        <branch name="ram_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="800" type="branch" />
            <wire x2="5280" y1="800" y2="800" x1="4720" />
        </branch>
        <branch name="ram_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="928" type="branch" />
            <wire x2="5280" y1="928" y2="928" x1="4720" />
        </branch>
        <branch name="clkw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="992" type="branch" />
            <wire x2="5280" y1="992" y2="992" x1="4720" />
        </branch>
        <branch name="ram_a_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="1120" type="branch" />
            <wire x2="5280" y1="1120" y2="1120" x1="4720" />
        </branch>
        <branch name="cc_alu_op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="160" y="896" type="branch" />
            <wire x2="224" y1="896" y2="896" x1="160" />
        </branch>
        <branch name="ram_a_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4864" y="864" type="branch" />
            <wire x2="4864" y1="864" y2="864" x1="4816" />
            <wire x2="4816" y1="864" y2="1232" x1="4816" />
            <wire x2="5680" y1="1232" y2="1232" x1="4816" />
            <wire x2="5680" y1="864" y2="864" x1="5664" />
            <wire x2="5680" y1="864" y2="1232" x1="5680" />
        </branch>
        <instance x="5280" y="1152" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_23">
            <wire x2="2144" y1="3216" y2="3232" x1="2144" />
            <wire x2="2224" y1="3232" y2="3232" x1="2144" />
        </branch>
        <instance x="2080" y="3216" name="XLXI_7" orien="R0" />
        <branch name="cc_ir_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="3360" type="branch" />
            <wire x2="2224" y1="3360" y2="3360" x1="2112" />
        </branch>
        <branch name="alu_gt">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="768" type="branch" />
            <wire x2="784" y1="768" y2="768" x1="608" />
        </branch>
        <branch name="cc_flags_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="2480" type="branch" />
            <wire x2="416" y1="2480" y2="2480" x1="256" />
        </branch>
        <branch name="alu_C_out">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2160" type="branch" />
            <wire x2="416" y1="2160" y2="2160" x1="320" />
        </branch>
        <branch name="alu_gt">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2224" type="branch" />
            <wire x2="416" y1="2224" y2="2224" x1="320" />
        </branch>
        <branch name="alu_eq">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2288" type="branch" />
            <wire x2="416" y1="2288" y2="2288" x1="320" />
        </branch>
        <branch name="alu_z">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2352" type="branch" />
            <wire x2="416" y1="2352" y2="2352" x1="320" />
        </branch>
        <branch name="flags_o(3:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2096" type="branch" />
            <wire x2="1040" y1="2096" y2="2160" x1="1040" />
            <wire x2="1040" y1="2160" y2="2224" x1="1040" />
            <wire x2="1040" y1="2224" y2="2288" x1="1040" />
            <wire x2="1040" y1="2288" y2="2352" x1="1040" />
        </branch>
        <bustap x2="944" y1="2352" y2="2352" x1="1040" />
        <bustap x2="944" y1="2288" y2="2288" x1="1040" />
        <bustap x2="944" y1="2224" y2="2224" x1="1040" />
        <bustap x2="944" y1="2160" y2="2160" x1="1040" />
        <branch name="flags_o(3)">
            <wire x2="944" y1="2352" y2="2352" x1="800" />
        </branch>
        <branch name="flags_o(2)">
            <wire x2="944" y1="2288" y2="2288" x1="800" />
        </branch>
        <branch name="flags_o(1)">
            <wire x2="944" y1="2224" y2="2224" x1="800" />
        </branch>
        <branch name="ir_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="3232" type="branch" />
            <wire x2="2688" y1="3232" y2="3232" x1="2608" />
        </branch>
        <instance x="1984" y="2512" name="cpu_ctl" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="416" y="2608" name="XLXI_87" orien="R0" />
        <branch name="XLXN_194">
            <wire x2="416" y1="2416" y2="2416" x1="320" />
        </branch>
        <instance x="320" y="2480" name="XLXI_88" orien="R270" />
        <branch name="alu_C_in">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1600" type="branch" />
            <wire x2="1856" y1="1600" y2="1600" x1="1696" />
        </branch>
        <branch name="alu_C_in_enabled">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1568" type="branch" />
            <wire x2="1440" y1="1568" y2="1568" x1="1232" />
        </branch>
        <instance x="1440" y="1696" name="XLXI_89" orien="R0" />
        <branch name="alu_C_out_flipflop_o">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1632" type="branch" />
            <wire x2="1392" y1="1680" y2="1680" x1="1360" />
            <wire x2="1424" y1="1632" y2="1632" x1="1392" />
            <wire x2="1440" y1="1632" y2="1632" x1="1424" />
            <wire x2="1392" y1="1632" y2="1680" x1="1392" />
        </branch>
        <branch name="flags_o(0)">
            <wire x2="832" y1="2160" y2="2160" x1="800" />
            <wire x2="944" y1="2160" y2="2160" x1="832" />
            <wire x2="832" y1="1680" y2="2160" x1="832" />
            <wire x2="976" y1="1680" y2="1680" x1="832" />
        </branch>
        <branch name="clkr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1808" type="branch" />
            <wire x2="976" y1="1808" y2="1808" x1="720" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1904" type="branch" />
            <wire x2="976" y1="1904" y2="1904" x1="928" />
        </branch>
        <branch name="XLXN_217">
            <wire x2="416" y1="2576" y2="2576" x1="384" />
        </branch>
        <instance x="128" y="2672" name="XLXI_103" orien="R0" />
        <branch name="cc_flags_clr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="96" y="2544" type="branch" />
            <wire x2="128" y1="2544" y2="2544" x1="96" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="96" y="2608" type="branch" />
            <wire x2="128" y1="2608" y2="2608" x1="96" />
        </branch>
        <instance x="3840" y="496" name="XLXI_104" orien="R0" />
        <branch name="cc_r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3760" y="368" type="branch" />
            <wire x2="3840" y1="368" y2="368" x1="3760" />
        </branch>
        <branch name="monitor(7:0)">
            <wire x2="4400" y1="240" y2="240" x1="4224" />
        </branch>
        <iomarker fontsize="28" x="4400" y="240" name="monitor(7:0)" orien="R0" />
        <branch name="manr_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="3232" type="branch" />
            <wire x2="416" y1="3232" y2="3232" x1="288" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="128" y="1344" type="branch" />
            <wire x2="208" y1="1344" y2="1344" x1="128" />
        </branch>
        <branch name="bus1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="624" type="branch" />
            <wire x2="224" y1="576" y2="624" x1="224" />
            <wire x2="784" y1="624" y2="624" x1="224" />
        </branch>
        <branch name="temp_o(7:0)">
            <wire x2="576" y1="416" y2="416" x1="144" />
            <wire x2="144" y1="416" y2="512" x1="144" />
            <wire x2="224" y1="512" y2="512" x1="144" />
            <wire x2="576" y1="192" y2="192" x1="560" />
            <wire x2="576" y1="192" y2="416" x1="576" />
        </branch>
        <instance x="224" y="608" name="pass_th" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="-45" y="0" type="instance" />
        </instance>
        <branch name="temp_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="384" type="branch" />
            <wire x2="112" y1="320" y2="400" x1="112" />
            <wire x2="864" y1="400" y2="400" x1="112" />
            <wire x2="176" y1="320" y2="320" x1="112" />
            <wire x2="864" y1="384" y2="400" x1="864" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="3424" type="branch" />
            <wire x2="416" y1="3424" y2="3424" x1="288" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="3424" type="branch" />
            <wire x2="1520" y1="3424" y2="3424" x1="1360" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="3424" type="branch" />
            <wire x2="2224" y1="3424" y2="3424" x1="2112" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="384" type="branch" />
            <wire x2="1536" y1="384" y2="384" x1="1440" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="384" type="branch" />
            <wire x2="2016" y1="384" y2="384" x1="1936" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="384" type="branch" />
            <wire x2="2496" y1="384" y2="384" x1="2416" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="384" type="branch" />
            <wire x2="2976" y1="384" y2="384" x1="2896" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="128" y="384" type="branch" />
            <wire x2="176" y1="384" y2="384" x1="128" />
        </branch>
        <instance x="416" y="3456" name="XLXI_121" orien="R0">
        </instance>
        <instance x="1520" y="3456" name="XLXI_122" orien="R0">
        </instance>
        <instance x="2224" y="3456" name="XLXI_123" orien="R0">
        </instance>
        <instance x="176" y="416" name="XLXI_124" orien="R0">
        </instance>
        <instance x="208" y="1376" name="XLXI_125" orien="R0">
        </instance>
        <instance x="2016" y="416" name="XLXI_127" orien="R0">
        </instance>
        <instance x="2496" y="416" name="XLXI_128" orien="R0">
        </instance>
        <instance x="2976" y="416" name="XLXI_129" orien="R0">
        </instance>
        <branch name="ram_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5760" y="800" type="branch" />
            <wire x2="5760" y1="800" y2="800" x1="5664" />
        </branch>
        <branch name="r0_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="192" type="branch" />
            <wire x2="1952" y1="192" y2="192" x1="1920" />
        </branch>
        <branch name="r1_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="192" type="branch" />
            <wire x2="2416" y1="192" y2="192" x1="2400" />
        </branch>
        <branch name="r2_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="192" type="branch" />
            <wire x2="2912" y1="192" y2="192" x1="2880" />
        </branch>
        <branch name="r3_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="192" type="branch" />
            <wire x2="3392" y1="192" y2="192" x1="3360" />
        </branch>
        <branch name="acc_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1152" type="branch" />
            <wire x2="640" y1="1152" y2="1152" x1="592" />
        </branch>
        <branch name="iar_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="3232" type="branch" />
            <wire x2="1952" y1="3232" y2="3232" x1="1904" />
        </branch>
        <instance x="4416" y="2352" name="XLXI_130" orien="R0">
        </instance>
        <branch name="alu_z">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="896" type="branch" />
            <wire x2="768" y1="896" y2="896" x1="608" />
        </branch>
        <branch name="r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="320" type="branch" />
            <wire x2="1536" y1="320" y2="320" x1="1280" />
        </branch>
        <branch name="r1_w">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="624" type="branch" />
            <wire x2="2016" y1="320" y2="320" x1="1984" />
            <wire x2="1984" y1="320" y2="624" x1="1984" />
        </branch>
        <instance x="1536" y="416" name="XLXI_126" orien="R0">
        </instance>
        <instance x="-16" y="528" name="XLXI_136" orien="R0" />
        <instance x="976" y="1936" name="XLXI_102" orien="R0" />
        <branch name="clkr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1360" type="branch" />
            <wire x2="1840" y1="1360" y2="1360" x1="1744" />
        </branch>
        <branch name="clkw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1488" type="branch" />
            <wire x2="1840" y1="1488" y2="1488" x1="1744" />
        </branch>
        <branch name="clkc">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1424" type="branch" />
            <wire x2="1840" y1="1424" y2="1424" x1="1744" />
        </branch>
        <instance x="1360" y="1520" name="clck_gen" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="cc_dbg_s3">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="800" type="branch" />
            <wire x2="2208" y1="800" y2="848" x1="2208" />
        </branch>
        <branch name="cc_dbg_s5">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="800" type="branch" />
            <wire x2="2336" y1="800" y2="848" x1="2336" />
        </branch>
        <branch name="cc_dbg_s6">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="800" type="branch" />
            <wire x2="2400" y1="800" y2="848" x1="2400" />
        </branch>
        <branch name="cc_dbg_s2">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="800" type="branch" />
            <wire x2="2144" y1="800" y2="848" x1="2144" />
        </branch>
        <branch name="cc_dbg_s4">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="800" type="branch" />
            <wire x2="2272" y1="800" y2="848" x1="2272" />
        </branch>
        <branch name="iar_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4320" y="1808" type="branch" />
            <wire x2="4416" y1="1808" y2="1808" x1="4320" />
        </branch>
        <branch name="acc_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4320" y="1872" type="branch" />
            <wire x2="4416" y1="1872" y2="1872" x1="4320" />
        </branch>
        <branch name="r2_o(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4320" y="2192" type="branch" />
            <wire x2="4416" y1="2192" y2="2192" x1="4320" />
        </branch>
        <branch name="r1_o(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4352" y="2000" type="branch" />
            <wire x2="4416" y1="2000" y2="2000" x1="4352" />
        </branch>
        <branch name="ram_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4352" y="1936" type="branch" />
            <wire x2="4416" y1="1936" y2="1936" x1="4352" />
        </branch>
        <branch name="iar_o(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4352" y="2128" type="branch" />
            <wire x2="4416" y1="2128" y2="2128" x1="4352" />
        </branch>
        <branch name="r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4320" y="2064" type="branch" />
            <wire x2="4416" y1="2064" y2="2064" x1="4320" />
        </branch>
        <branch name="r1_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4320" y="2256" type="branch" />
            <wire x2="4416" y1="2256" y2="2256" x1="4320" />
        </branch>
        <branch name="r2_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4512" y="2464" type="branch" />
            <wire x2="4512" y1="2352" y2="2464" x1="4512" />
        </branch>
        <branch name="r3_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4576" y="2464" type="branch" />
            <wire x2="4576" y1="2352" y2="2464" x1="4576" />
        </branch>
        <branch name="acc_o(7:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4640" y="2464" type="branch" />
            <wire x2="4640" y1="2352" y2="2464" x1="4640" />
        </branch>
        <branch name="r3_o(7:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4704" y="2512" type="branch" />
            <wire x2="4704" y1="2352" y2="2512" x1="4704" />
        </branch>
        <branch name="sysbus(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="80" y="80" type="branch" />
            <wire x2="144" y1="80" y2="80" x1="80" />
            <wire x2="1488" y1="80" y2="80" x1="144" />
            <wire x2="1488" y1="80" y2="256" x1="1488" />
            <wire x2="1536" y1="256" y2="256" x1="1488" />
            <wire x2="1984" y1="80" y2="80" x1="1488" />
            <wire x2="1984" y1="80" y2="256" x1="1984" />
            <wire x2="2016" y1="256" y2="256" x1="1984" />
            <wire x2="2464" y1="80" y2="80" x1="1984" />
            <wire x2="2464" y1="80" y2="256" x1="2464" />
            <wire x2="2496" y1="256" y2="256" x1="2464" />
            <wire x2="2944" y1="80" y2="80" x1="2464" />
            <wire x2="2944" y1="80" y2="256" x1="2944" />
            <wire x2="2976" y1="256" y2="256" x1="2944" />
            <wire x2="3760" y1="80" y2="80" x1="2944" />
            <wire x2="6000" y1="80" y2="80" x1="3760" />
            <wire x2="6000" y1="80" y2="1200" x1="6000" />
            <wire x2="6000" y1="1200" y2="1280" x1="6000" />
            <wire x2="6000" y1="1280" y2="1808" x1="6000" />
            <wire x2="6000" y1="1808" y2="3536" x1="6000" />
            <wire x2="3760" y1="80" y2="240" x1="3760" />
            <wire x2="3840" y1="240" y2="240" x1="3760" />
            <wire x2="144" y1="80" y2="256" x1="144" />
            <wire x2="176" y1="256" y2="256" x1="144" />
            <wire x2="80" y1="160" y2="768" x1="80" />
            <wire x2="224" y1="768" y2="768" x1="80" />
            <wire x2="80" y1="768" y2="3536" x1="80" />
            <wire x2="1440" y1="3536" y2="3536" x1="80" />
            <wire x2="2160" y1="3536" y2="3536" x1="1440" />
            <wire x2="6000" y1="3536" y2="3536" x1="2160" />
            <wire x2="1520" y1="3296" y2="3296" x1="1440" />
            <wire x2="1440" y1="3296" y2="3536" x1="1440" />
            <wire x2="2224" y1="3296" y2="3296" x1="2160" />
            <wire x2="2160" y1="3296" y2="3536" x1="2160" />
            <wire x2="6000" y1="1808" y2="1808" x1="5056" />
            <wire x2="5280" y1="864" y2="864" x1="5200" />
            <wire x2="5200" y1="864" y2="1200" x1="5200" />
            <wire x2="6000" y1="1200" y2="1200" x1="5200" />
            <wire x2="5280" y1="1056" y2="1056" x1="5216" />
            <wire x2="5216" y1="1056" y2="1280" x1="5216" />
            <wire x2="6000" y1="1280" y2="1280" x1="5216" />
        </branch>
        <branch name="not_reading">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5152" y="1872" type="branch" />
            <wire x2="5152" y1="1872" y2="1872" x1="5056" />
        </branch>
        <branch name="manr_o(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="3232" type="branch" />
            <wire x2="864" y1="3232" y2="3232" x1="800" />
            <wire x2="864" y1="3232" y2="3296" x1="864" />
        </branch>
        <branch name="manr_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4768" y="2512" type="branch" />
            <wire x2="4768" y1="2352" y2="2512" x1="4768" />
        </branch>
        <branch name="ram_o(7:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4832" y="2512" type="branch" />
            <wire x2="4832" y1="2352" y2="2512" x1="4832" />
        </branch>
        <branch name="manr_o(7:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4896" y="2512" type="branch" />
            <wire x2="4896" y1="2352" y2="2512" x1="4896" />
        </branch>
        <branch name="r0_o(7:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4960" y="2512" type="branch" />
            <wire x2="4960" y1="2352" y2="2512" x1="4960" />
        </branch>
        <iomarker fontsize="28" x="864" y="3296" name="manr_o(7:0)" orien="R90" />
        <branch name="in_manr_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="3696" type="branch" />
            <wire x2="1856" y1="3696" y2="3696" x1="1776" />
        </branch>
        <branch name="manr_r">
            <wire x2="2176" y1="3728" y2="3728" x1="2112" />
        </branch>
        <instance x="1856" y="3824" name="XLXI_390" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="3760" type="branch" />
            <wire x2="1856" y1="3760" y2="3760" x1="1776" />
        </branch>
        <branch name="in_manr_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="3856" type="branch" />
            <wire x2="1856" y1="3856" y2="3856" x1="1776" />
        </branch>
        <branch name="manr_w">
            <wire x2="2176" y1="3888" y2="3888" x1="2112" />
        </branch>
        <instance x="1856" y="3984" name="XLXI_394" orien="R0" />
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="3920" type="branch" />
            <wire x2="1856" y1="3920" y2="3920" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="2176" y="3728" name="manr_r" orien="R0" />
        <iomarker fontsize="28" x="2176" y="3888" name="manr_w" orien="R0" />
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1424" type="branch" />
            <wire x2="1360" y1="1424" y2="1424" x1="1280" />
        </branch>
        <branch name="in_r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="3696" type="branch" />
            <wire x2="2656" y1="3696" y2="3696" x1="2576" />
        </branch>
        <branch name="manual_r0_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="3728" type="branch" />
            <wire x2="2976" y1="3728" y2="3728" x1="2912" />
        </branch>
        <instance x="2656" y="3824" name="XLXI_371" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="3760" type="branch" />
            <wire x2="2656" y1="3760" y2="3760" x1="2576" />
        </branch>
        <branch name="cc_r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="3856" type="branch" />
            <wire x2="2656" y1="3856" y2="3856" x1="2560" />
        </branch>
        <branch name="manual_r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="3920" type="branch" />
            <wire x2="2656" y1="3920" y2="3920" x1="2560" />
        </branch>
        <branch name="r0_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="3888" type="branch" />
            <wire x2="2992" y1="3888" y2="3888" x1="2912" />
        </branch>
        <instance x="2656" y="3984" name="XLXI_218" orien="R0" />
        <instance x="2656" y="4144" name="XLXI_381" orien="R0" />
        <instance x="2656" y="4288" name="XLXI_375" orien="R0" />
        <branch name="cc_r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="4160" type="branch" />
            <wire x2="2656" y1="4160" y2="4160" x1="2592" />
        </branch>
        <branch name="manual_r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="4224" type="branch" />
            <wire x2="2656" y1="4224" y2="4224" x1="2592" />
        </branch>
        <branch name="r0_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="4192" type="branch" />
            <wire x2="2976" y1="4192" y2="4192" x1="2912" />
        </branch>
        <branch name="in_r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="4016" type="branch" />
            <wire x2="2656" y1="4016" y2="4016" x1="2576" />
        </branch>
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="4080" type="branch" />
            <wire x2="2656" y1="4080" y2="4080" x1="2576" />
        </branch>
        <branch name="manual_r0_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="4048" type="branch" />
            <wire x2="2976" y1="4048" y2="4048" x1="2912" />
        </branch>
        <branch name="in_r1_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="4416" type="branch" />
            <wire x2="2656" y1="4416" y2="4416" x1="2576" />
        </branch>
        <branch name="manual_r1_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="4448" type="branch" />
            <wire x2="2976" y1="4448" y2="4448" x1="2912" />
        </branch>
        <instance x="2656" y="4544" name="XLXI_465" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="4480" type="branch" />
            <wire x2="2656" y1="4480" y2="4480" x1="2576" />
        </branch>
        <branch name="cc_r1_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="4576" type="branch" />
            <wire x2="2656" y1="4576" y2="4576" x1="2560" />
        </branch>
        <branch name="manual_r1_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="4640" type="branch" />
            <wire x2="2656" y1="4640" y2="4640" x1="2560" />
        </branch>
        <branch name="r1_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="4608" type="branch" />
            <wire x2="2992" y1="4608" y2="4608" x1="2912" />
        </branch>
        <instance x="2656" y="4704" name="XLXI_466" orien="R0" />
        <instance x="2656" y="4864" name="XLXI_467" orien="R0" />
        <instance x="2656" y="5008" name="XLXI_468" orien="R0" />
        <branch name="cc_r1_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="4880" type="branch" />
            <wire x2="2656" y1="4880" y2="4880" x1="2592" />
        </branch>
        <branch name="manual_r1_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="4944" type="branch" />
            <wire x2="2656" y1="4944" y2="4944" x1="2592" />
        </branch>
        <branch name="r1_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="4912" type="branch" />
            <wire x2="2976" y1="4912" y2="4912" x1="2912" />
        </branch>
        <branch name="in_r1_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="4736" type="branch" />
            <wire x2="2656" y1="4736" y2="4736" x1="2576" />
        </branch>
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="4800" type="branch" />
            <wire x2="2656" y1="4800" y2="4800" x1="2576" />
        </branch>
        <branch name="manual_r1_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="4768" type="branch" />
            <wire x2="2976" y1="4768" y2="4768" x1="2912" />
        </branch>
        <branch name="in_write_reg_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="5216" type="branch" />
            <wire x2="656" y1="5216" y2="5216" x1="560" />
        </branch>
        <branch name="in_is_clk_manual">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="5280" type="branch" />
            <wire x2="656" y1="5280" y2="5280" x1="560" />
        </branch>
        <instance x="656" y="5344" name="XLXI_380" orien="R0" />
        <branch name="can_write">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="5248" type="branch" />
            <wire x2="960" y1="5248" y2="5248" x1="912" />
        </branch>
        <branch name="in_r2_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="3696" type="branch" />
            <wire x2="3456" y1="3696" y2="3696" x1="3376" />
        </branch>
        <branch name="manual_r2_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="3728" type="branch" />
            <wire x2="3776" y1="3728" y2="3728" x1="3712" />
        </branch>
        <instance x="3456" y="3824" name="XLXI_525" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="3760" type="branch" />
            <wire x2="3456" y1="3760" y2="3760" x1="3376" />
        </branch>
        <branch name="cc_r2_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="3856" type="branch" />
            <wire x2="3456" y1="3856" y2="3856" x1="3360" />
        </branch>
        <branch name="manual_r2_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="3920" type="branch" />
            <wire x2="3456" y1="3920" y2="3920" x1="3360" />
        </branch>
        <branch name="r2_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="3888" type="branch" />
            <wire x2="3792" y1="3888" y2="3888" x1="3712" />
        </branch>
        <instance x="3456" y="3984" name="XLXI_526" orien="R0" />
        <instance x="3456" y="4144" name="XLXI_527" orien="R0" />
        <instance x="3456" y="4288" name="XLXI_528" orien="R0" />
        <branch name="cc_r2_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="4160" type="branch" />
            <wire x2="3456" y1="4160" y2="4160" x1="3392" />
        </branch>
        <branch name="r2_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="4192" type="branch" />
            <wire x2="3776" y1="4192" y2="4192" x1="3712" />
        </branch>
        <branch name="in_r2_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="4016" type="branch" />
            <wire x2="3456" y1="4016" y2="4016" x1="3376" />
        </branch>
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="4080" type="branch" />
            <wire x2="3456" y1="4080" y2="4080" x1="3376" />
        </branch>
        <branch name="manual_r2_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="4048" type="branch" />
            <wire x2="3776" y1="4048" y2="4048" x1="3712" />
        </branch>
        <branch name="in_r3_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="4416" type="branch" />
            <wire x2="3456" y1="4416" y2="4416" x1="3376" />
        </branch>
        <branch name="manual_r3_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="4448" type="branch" />
            <wire x2="3776" y1="4448" y2="4448" x1="3712" />
        </branch>
        <instance x="3456" y="4544" name="XLXI_529" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="4480" type="branch" />
            <wire x2="3456" y1="4480" y2="4480" x1="3376" />
        </branch>
        <branch name="cc_r3_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="4576" type="branch" />
            <wire x2="3456" y1="4576" y2="4576" x1="3360" />
        </branch>
        <branch name="manual_r3_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="4640" type="branch" />
            <wire x2="3456" y1="4640" y2="4640" x1="3360" />
        </branch>
        <branch name="r3_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="4608" type="branch" />
            <wire x2="3792" y1="4608" y2="4608" x1="3712" />
        </branch>
        <instance x="3456" y="4704" name="XLXI_530" orien="R0" />
        <instance x="3456" y="4864" name="XLXI_531" orien="R0" />
        <instance x="3456" y="5008" name="XLXI_532" orien="R0" />
        <branch name="cc_r3_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="4880" type="branch" />
            <wire x2="3456" y1="4880" y2="4880" x1="3392" />
        </branch>
        <branch name="manual_r3_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="4944" type="branch" />
            <wire x2="3456" y1="4944" y2="4944" x1="3392" />
        </branch>
        <branch name="r3_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="4912" type="branch" />
            <wire x2="3776" y1="4912" y2="4912" x1="3712" />
        </branch>
        <branch name="in_r3_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="4736" type="branch" />
            <wire x2="3456" y1="4736" y2="4736" x1="3376" />
        </branch>
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="4800" type="branch" />
            <wire x2="3456" y1="4800" y2="4800" x1="3376" />
        </branch>
        <branch name="manual_r3_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="4768" type="branch" />
            <wire x2="3776" y1="4768" y2="4768" x1="3712" />
        </branch>
        <branch name="manual_r2_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="4224" type="branch" />
            <wire x2="3456" y1="4224" y2="4224" x1="3392" />
        </branch>
        <branch name="in_iar_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="3696" type="branch" />
            <wire x2="4320" y1="3696" y2="3696" x1="4240" />
        </branch>
        <branch name="manual_iar_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4640" y="3728" type="branch" />
            <wire x2="4640" y1="3728" y2="3728" x1="4576" />
        </branch>
        <instance x="4320" y="3824" name="XLXI_533" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="3760" type="branch" />
            <wire x2="4320" y1="3760" y2="3760" x1="4240" />
        </branch>
        <branch name="cc_iar_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4224" y="3856" type="branch" />
            <wire x2="4320" y1="3856" y2="3856" x1="4224" />
        </branch>
        <branch name="manual_iar_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4224" y="3920" type="branch" />
            <wire x2="4320" y1="3920" y2="3920" x1="4224" />
        </branch>
        <branch name="iar_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4656" y="3888" type="branch" />
            <wire x2="4656" y1="3888" y2="3888" x1="4576" />
        </branch>
        <instance x="4320" y="3984" name="XLXI_534" orien="R0" />
        <instance x="4320" y="4144" name="XLXI_535" orien="R0" />
        <instance x="4320" y="4288" name="XLXI_536" orien="R0" />
        <branch name="cc_iar_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4256" y="4160" type="branch" />
            <wire x2="4320" y1="4160" y2="4160" x1="4256" />
        </branch>
        <branch name="iar_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4640" y="4192" type="branch" />
            <wire x2="4640" y1="4192" y2="4192" x1="4576" />
        </branch>
        <branch name="in_iar_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="4016" type="branch" />
            <wire x2="4320" y1="4016" y2="4016" x1="4240" />
        </branch>
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="4080" type="branch" />
            <wire x2="4320" y1="4080" y2="4080" x1="4240" />
        </branch>
        <branch name="manual_iar_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4640" y="4048" type="branch" />
            <wire x2="4640" y1="4048" y2="4048" x1="4576" />
        </branch>
        <branch name="in_temp_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="4416" type="branch" />
            <wire x2="4320" y1="4416" y2="4416" x1="4240" />
        </branch>
        <branch name="manual_temp_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4640" y="4448" type="branch" />
            <wire x2="4640" y1="4448" y2="4448" x1="4576" />
        </branch>
        <instance x="4320" y="4544" name="XLXI_537" orien="R0" />
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="4480" type="branch" />
            <wire x2="4320" y1="4480" y2="4480" x1="4240" />
        </branch>
        <branch name="cc_temp_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4224" y="4576" type="branch" />
            <wire x2="4320" y1="4576" y2="4576" x1="4224" />
        </branch>
        <branch name="manual_temp_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4224" y="4640" type="branch" />
            <wire x2="4320" y1="4640" y2="4640" x1="4224" />
        </branch>
        <branch name="temp_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4656" y="4608" type="branch" />
            <wire x2="4656" y1="4608" y2="4608" x1="4576" />
        </branch>
        <instance x="4320" y="4704" name="XLXI_538" orien="R0" />
        <branch name="manual_iar_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4256" y="4224" type="branch" />
            <wire x2="4320" y1="4224" y2="4224" x1="4256" />
        </branch>
        <instance x="656" y="5200" name="XLXI_326" orien="R0" />
        <branch name="in_read_reg_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="5008" type="branch" />
            <wire x2="656" y1="5008" y2="5008" x1="560" />
        </branch>
        <branch name="in_is_clk_manual">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="5072" type="branch" />
            <wire x2="656" y1="5072" y2="5072" x1="560" />
        </branch>
        <branch name="sysbus_released">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="5136" type="branch" />
            <wire x2="656" y1="5136" y2="5136" x1="560" />
        </branch>
        <branch name="can_read">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="5072" type="branch" />
            <wire x2="960" y1="5072" y2="5072" x1="912" />
        </branch>
        <instance x="336" y="4912" name="XLXI_212" orien="R0" />
        <branch name="clkr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="4880" type="branch" />
            <wire x2="336" y1="4880" y2="4880" x1="240" />
        </branch>
        <branch name="sysbus_released">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="4880" type="branch" />
            <wire x2="704" y1="4880" y2="4880" x1="560" />
        </branch>
        <branch name="in_acc_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5040" y="3696" type="branch" />
            <wire x2="5120" y1="3696" y2="3696" x1="5040" />
        </branch>
        <branch name="manual_acc_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5440" y="3728" type="branch" />
            <wire x2="5440" y1="3728" y2="3728" x1="5376" />
        </branch>
        <instance x="5120" y="3824" name="XLXI_545" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5040" y="3760" type="branch" />
            <wire x2="5120" y1="3760" y2="3760" x1="5040" />
        </branch>
        <branch name="cc_acc_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5024" y="3856" type="branch" />
            <wire x2="5120" y1="3856" y2="3856" x1="5024" />
        </branch>
        <branch name="manual_acc_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5024" y="3920" type="branch" />
            <wire x2="5120" y1="3920" y2="3920" x1="5024" />
        </branch>
        <branch name="acc_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5456" y="3888" type="branch" />
            <wire x2="5456" y1="3888" y2="3888" x1="5376" />
        </branch>
        <instance x="5120" y="3984" name="XLXI_546" orien="R0" />
        <instance x="5120" y="4144" name="XLXI_547" orien="R0" />
        <instance x="5120" y="4288" name="XLXI_548" orien="R0" />
        <branch name="cc_acc_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5056" y="4160" type="branch" />
            <wire x2="5120" y1="4160" y2="4160" x1="5056" />
        </branch>
        <branch name="acc_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5440" y="4192" type="branch" />
            <wire x2="5440" y1="4192" y2="4192" x1="5376" />
        </branch>
        <branch name="in_acc_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5040" y="4016" type="branch" />
            <wire x2="5120" y1="4016" y2="4016" x1="5040" />
        </branch>
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5040" y="4080" type="branch" />
            <wire x2="5120" y1="4080" y2="4080" x1="5040" />
        </branch>
        <branch name="manual_acc_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5440" y="4048" type="branch" />
            <wire x2="5440" y1="4048" y2="4048" x1="5376" />
        </branch>
        <branch name="in_ram_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5040" y="4416" type="branch" />
            <wire x2="5120" y1="4416" y2="4416" x1="5040" />
        </branch>
        <branch name="manual_ram_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5440" y="4448" type="branch" />
            <wire x2="5440" y1="4448" y2="4448" x1="5376" />
        </branch>
        <instance x="5120" y="4544" name="XLXI_549" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5040" y="4480" type="branch" />
            <wire x2="5120" y1="4480" y2="4480" x1="5040" />
        </branch>
        <branch name="cc_ram_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5024" y="4576" type="branch" />
            <wire x2="5120" y1="4576" y2="4576" x1="5024" />
        </branch>
        <branch name="manual_ram_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5024" y="4640" type="branch" />
            <wire x2="5120" y1="4640" y2="4640" x1="5024" />
        </branch>
        <branch name="ram_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5456" y="4608" type="branch" />
            <wire x2="5456" y1="4608" y2="4608" x1="5376" />
        </branch>
        <instance x="5120" y="4704" name="XLXI_550" orien="R0" />
        <instance x="5120" y="4864" name="XLXI_551" orien="R0" />
        <instance x="5120" y="5008" name="XLXI_552" orien="R0" />
        <branch name="cc_ram_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5056" y="4880" type="branch" />
            <wire x2="5120" y1="4880" y2="4880" x1="5056" />
        </branch>
        <branch name="manual_ram_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5056" y="4944" type="branch" />
            <wire x2="5120" y1="4944" y2="4944" x1="5056" />
        </branch>
        <branch name="ram_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5440" y="4912" type="branch" />
            <wire x2="5440" y1="4912" y2="4912" x1="5376" />
        </branch>
        <branch name="in_ram_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5040" y="4736" type="branch" />
            <wire x2="5120" y1="4736" y2="4736" x1="5040" />
        </branch>
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5040" y="4800" type="branch" />
            <wire x2="5120" y1="4800" y2="4800" x1="5040" />
        </branch>
        <branch name="manual_ram_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5440" y="4768" type="branch" />
            <wire x2="5440" y1="4768" y2="4768" x1="5376" />
        </branch>
        <branch name="manual_acc_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5056" y="4224" type="branch" />
            <wire x2="5120" y1="4224" y2="4224" x1="5056" />
        </branch>
        <branch name="in_ir_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="3920" type="branch" />
            <wire x2="1184" y1="3920" y2="3920" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="3920" name="in_ir_w" orien="R180" />
        <branch name="in_ram_a_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="3968" type="branch" />
            <wire x2="1184" y1="3968" y2="3968" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="3968" name="in_ram_a_w" orien="R180" />
        <branch name="in_temp_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="3872" type="branch" />
            <wire x2="1184" y1="3872" y2="3872" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="3872" name="in_temp_w" orien="R180" />
        <branch name="in_bus1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="4016" type="branch" />
            <wire x2="1184" y1="4016" y2="4016" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="4016" name="in_bus1" orien="R180" />
        <branch name="in_ir_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="4736" type="branch" />
            <wire x2="4320" y1="4736" y2="4736" x1="4240" />
        </branch>
        <branch name="manual_ir_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4640" y="4768" type="branch" />
            <wire x2="4640" y1="4768" y2="4768" x1="4576" />
        </branch>
        <instance x="4320" y="4864" name="XLXI_565" orien="R0" />
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="4800" type="branch" />
            <wire x2="4320" y1="4800" y2="4800" x1="4240" />
        </branch>
        <branch name="cc_ir_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4224" y="4896" type="branch" />
            <wire x2="4320" y1="4896" y2="4896" x1="4224" />
        </branch>
        <branch name="manual_ir_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4224" y="4960" type="branch" />
            <wire x2="4320" y1="4960" y2="4960" x1="4224" />
        </branch>
        <branch name="ir_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4656" y="4928" type="branch" />
            <wire x2="4656" y1="4928" y2="4928" x1="4576" />
        </branch>
        <instance x="4320" y="5024" name="XLXI_566" orien="R0" />
        <branch name="manual_ram_a_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4656" y="5088" type="branch" />
            <wire x2="4656" y1="5088" y2="5088" x1="4592" />
        </branch>
        <instance x="4336" y="5184" name="XLXI_567" orien="R0" />
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4256" y="5120" type="branch" />
            <wire x2="4336" y1="5120" y2="5120" x1="4256" />
        </branch>
        <branch name="cc_ram_a_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="5216" type="branch" />
            <wire x2="4336" y1="5216" y2="5216" x1="4240" />
        </branch>
        <branch name="manual_ram_a_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="5280" type="branch" />
            <wire x2="4336" y1="5280" y2="5280" x1="4240" />
        </branch>
        <branch name="ram_a_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4672" y="5248" type="branch" />
            <wire x2="4672" y1="5248" y2="5248" x1="4592" />
        </branch>
        <instance x="4336" y="5344" name="XLXI_568" orien="R0" />
        <branch name="in_ram_a_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4256" y="5056" type="branch" />
            <wire x2="4336" y1="5056" y2="5056" x1="4256" />
        </branch>
        <branch name="in_is_bus1_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="4064" type="branch" />
            <wire x2="1184" y1="4064" y2="4064" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="4064" name="in_is_bus1_w" orien="R180" />
        <branch name="bus1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="5136" type="branch" />
            <wire x2="3792" y1="5136" y2="5136" x1="3712" />
        </branch>
        <branch name="in_is_bus1_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3280" y="5232" type="branch" />
            <wire x2="3392" y1="5232" y2="5232" x1="3280" />
        </branch>
        <branch name="in_bus1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3280" y="5168" type="branch" />
            <wire x2="3392" y1="5168" y2="5168" x1="3280" />
        </branch>
        <branch name="cc_bus1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3280" y="5104" type="branch" />
            <wire x2="3392" y1="5104" y2="5104" x1="3280" />
        </branch>
        <instance x="3392" y="5264" name="XLXI_571" orien="R0" />
        <branch name="cc_r1_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1456" type="branch" />
            <wire x2="3696" y1="1456" y2="1456" x1="3648" />
        </branch>
        <branch name="cc_dbg_s1">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="800" type="branch" />
            <wire x2="2080" y1="800" y2="848" x1="2080" />
        </branch>
        <branch name="clkc">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="944" type="branch" />
            <wire x2="1984" y1="944" y2="944" x1="1856" />
        </branch>
        <branch name="clkw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1008" type="branch" />
            <wire x2="1984" y1="1008" y2="1008" x1="1856" />
        </branch>
        <branch name="clkr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1072" type="branch" />
            <wire x2="1984" y1="1072" y2="1072" x1="1856" />
        </branch>
        <branch name="cc_flags_clr">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="800" type="branch" />
            <wire x2="2720" y1="800" y2="848" x1="2720" />
        </branch>
        <branch name="alu_C_in_enabled">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="800" type="branch" />
            <wire x2="2784" y1="800" y2="848" x1="2784" />
        </branch>
        <branch name="cc_iar_r">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="800" type="branch" />
            <wire x2="3104" y1="800" y2="848" x1="3104" />
        </branch>
        <branch name="cc_iar_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="800" type="branch" />
            <wire x2="3168" y1="800" y2="848" x1="3168" />
        </branch>
        <branch name="cc_bus1">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="800" type="branch" />
            <wire x2="3232" y1="800" y2="848" x1="3232" />
        </branch>
        <branch name="cc_ir_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3296" y="800" type="branch" />
            <wire x2="3296" y1="800" y2="848" x1="3296" />
        </branch>
        <branch name="cc_ram_r">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="800" type="branch" />
            <wire x2="3360" y1="800" y2="848" x1="3360" />
        </branch>
        <branch name="cc_ram_a_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3424" y="800" type="branch" />
            <wire x2="3424" y1="800" y2="848" x1="3424" />
        </branch>
        <branch name="cc_acc_r">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="800" type="branch" />
            <wire x2="3488" y1="800" y2="848" x1="3488" />
        </branch>
        <branch name="cc_acc_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3552" y="800" type="branch" />
            <wire x2="3552" y1="800" y2="848" x1="3552" />
        </branch>
        <branch name="cc_temp_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="944" type="branch" />
            <wire x2="3696" y1="944" y2="944" x1="3648" />
        </branch>
        <branch name="cc_flags_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1776" type="branch" />
            <wire x2="3696" y1="1776" y2="1776" x1="3648" />
        </branch>
        <branch name="cc_r0_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1328" type="branch" />
            <wire x2="3696" y1="1328" y2="1328" x1="3648" />
        </branch>
        <branch name="cc_r1_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1392" type="branch" />
            <wire x2="3696" y1="1392" y2="1392" x1="3648" />
        </branch>
        <branch name="cc_r2_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1520" type="branch" />
            <wire x2="3696" y1="1520" y2="1520" x1="3648" />
        </branch>
        <branch name="cc_r2_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1584" type="branch" />
            <wire x2="3696" y1="1584" y2="1584" x1="3648" />
        </branch>
        <branch name="cc_r3_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1648" type="branch" />
            <wire x2="3696" y1="1648" y2="1648" x1="3648" />
        </branch>
        <branch name="cc_r3_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1712" type="branch" />
            <wire x2="3696" y1="1712" y2="1712" x1="3648" />
        </branch>
        <branch name="cc_r0_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1264" type="branch" />
            <wire x2="3696" y1="1264" y2="1264" x1="3648" />
        </branch>
        <branch name="ground">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3712" y="2160" type="branch" />
            <wire x2="3712" y1="2160" y2="2160" x1="3648" />
        </branch>
        <branch name="cc_ram_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1136" type="branch" />
            <wire x2="3696" y1="1136" y2="1136" x1="3648" />
        </branch>
        <branch name="cc_alu_op(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3920" y="1008" type="branch" />
            <wire x2="3920" y1="1008" y2="1008" x1="3648" />
            <wire x2="4160" y1="1008" y2="1008" x1="3920" />
        </branch>
        <branch name="cc_alu_op(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3984" y="1072" type="branch" />
            <wire x2="3984" y1="1072" y2="1072" x1="3648" />
            <wire x2="4160" y1="1072" y2="1072" x1="3984" />
        </branch>
        <branch name="cc_alu_op(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="1136" type="branch" />
            <wire x2="4112" y1="1200" y2="1200" x1="3648" />
            <wire x2="4112" y1="1136" y2="1200" x1="4112" />
            <wire x2="4160" y1="1136" y2="1136" x1="4112" />
        </branch>
        <branch name="cc_alu_op(2:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4256" y="1264" type="branch" />
            <wire x2="4256" y1="1008" y2="1072" x1="4256" />
            <wire x2="4256" y1="1072" y2="1136" x1="4256" />
            <wire x2="4256" y1="1136" y2="1264" x1="4256" />
        </branch>
        <bustap x2="4160" y1="1072" y2="1072" x1="4256" />
        <bustap x2="4160" y1="1008" y2="1008" x1="4256" />
        <branch name="flags_o(3:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="2560" type="branch" />
            <wire x2="2144" y1="2512" y2="2560" x1="2144" />
        </branch>
        <branch name="ir_o(7:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="2560" type="branch" />
            <wire x2="2080" y1="2512" y2="2560" x1="2080" />
        </branch>
        <branch name="cc_dbg_ls_ld">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="800" type="branch" />
            <wire x2="2464" y1="800" y2="848" x1="2464" />
        </branch>
        <branch name="cc_dbg_ls_st">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="800" type="branch" />
            <wire x2="2528" y1="800" y2="848" x1="2528" />
        </branch>
        <branch name="cc_dbg_ls_ldc">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="800" type="branch" />
            <wire x2="2592" y1="800" y2="848" x1="2592" />
        </branch>
        <branch name="cc_dbg_jmp_jmpr">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="800" type="branch" />
            <wire x2="2656" y1="800" y2="848" x1="2656" />
        </branch>
        <branch name="cc_dbg_jmp_jmp">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="800" type="branch" />
            <wire x2="2848" y1="800" y2="848" x1="2848" />
        </branch>
        <branch name="cc_dbg_jmp_ifjmp">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="800" type="branch" />
            <wire x2="2912" y1="800" y2="848" x1="2912" />
        </branch>
        <branch name="cc_dbg_flg_clf">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="800" type="branch" />
            <wire x2="2976" y1="800" y2="848" x1="2976" />
        </branch>
        <branch name="cc_dbg_alt_nop">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="800" type="branch" />
            <wire x2="3040" y1="800" y2="848" x1="3040" />
        </branch>
        <branch name="cc_dbg_alu_sum">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1840" type="branch" />
            <wire x2="3696" y1="1840" y2="1840" x1="3648" />
        </branch>
        <branch name="cc_dbg_alu_rshift">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1968" type="branch" />
            <wire x2="3696" y1="1968" y2="1968" x1="3648" />
        </branch>
        <branch name="cc_dbg_alu_not">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="2032" type="branch" />
            <wire x2="3696" y1="2032" y2="2032" x1="3648" />
        </branch>
        <branch name="cc_dbg_alu_and">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="2096" type="branch" />
            <wire x2="3696" y1="2096" y2="2096" x1="3648" />
        </branch>
        <branch name="cc_dbg_alu_or">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="2224" type="branch" />
            <wire x2="3696" y1="2224" y2="2224" x1="3648" />
        </branch>
        <branch name="cc_dbg_alu_xor">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="2288" type="branch" />
            <wire x2="3696" y1="2288" y2="2288" x1="3648" />
        </branch>
        <branch name="cc_dbg_alu_nop">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="2352" type="branch" />
            <wire x2="3696" y1="2352" y2="2352" x1="3648" />
        </branch>
        <branch name="cc_dbg_alu">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="2416" type="branch" />
            <wire x2="3696" y1="2416" y2="2416" x1="3648" />
        </branch>
        <branch name="cc_dbg_alu_lshift">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1904" type="branch" />
            <wire x2="3696" y1="1904" y2="1904" x1="3648" />
        </branch>
        <instance x="6336" y="3264" name="XLXI_563" orien="R0" />
        <branch name="cc_dbg_alu">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3232" type="branch" />
            <wire x2="6336" y1="3232" y2="3232" x1="6240" />
        </branch>
        <instance x="6336" y="3328" name="XLXI_564" orien="R0" />
        <branch name="cc_dbg_alu_sum">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3296" type="branch" />
            <wire x2="6336" y1="3296" y2="3296" x1="6240" />
        </branch>
        <branch name="out_op_alu_add">
            <wire x2="6720" y1="3296" y2="3296" x1="6560" />
        </branch>
        <branch name="out_op_alu">
            <wire x2="6720" y1="3232" y2="3232" x1="6560" />
        </branch>
        <instance x="6336" y="3392" name="XLXI_648" orien="R0" />
        <instance x="6336" y="3456" name="XLXI_649" orien="R0" />
        <instance x="6336" y="3520" name="XLXI_650" orien="R0" />
        <instance x="6336" y="3584" name="XLXI_651" orien="R0" />
        <instance x="6336" y="3648" name="XLXI_652" orien="R0" />
        <branch name="cc_dbg_alu_lshift">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3360" type="branch" />
            <wire x2="6336" y1="3360" y2="3360" x1="6240" />
        </branch>
        <branch name="cc_dbg_alu_rshift">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3424" type="branch" />
            <wire x2="6336" y1="3424" y2="3424" x1="6240" />
        </branch>
        <branch name="cc_dbg_alu_not">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3488" type="branch" />
            <wire x2="6336" y1="3488" y2="3488" x1="6240" />
        </branch>
        <branch name="cc_dbg_alu_and">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3552" type="branch" />
            <wire x2="6336" y1="3552" y2="3552" x1="6240" />
        </branch>
        <branch name="cc_dbg_alu_or">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3616" type="branch" />
            <wire x2="6336" y1="3616" y2="3616" x1="6240" />
        </branch>
        <branch name="out_op_alu_lshift">
            <wire x2="6720" y1="3360" y2="3360" x1="6560" />
        </branch>
        <branch name="out_op_alu_rshift">
            <wire x2="6720" y1="3424" y2="3424" x1="6560" />
        </branch>
        <branch name="out_op_alu_and">
            <wire x2="6720" y1="3552" y2="3552" x1="6560" />
        </branch>
        <instance x="6336" y="3712" name="XLXI_653" orien="R0" />
        <branch name="cc_dbg_alu_xor">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3680" type="branch" />
            <wire x2="6336" y1="3680" y2="3680" x1="6240" />
        </branch>
        <branch name="out_op_alu_xor">
            <wire x2="6720" y1="3680" y2="3680" x1="6560" />
        </branch>
        <branch name="out_op_alu_not">
            <wire x2="6720" y1="3488" y2="3488" x1="6560" />
        </branch>
        <branch name="out_op_alu_or">
            <wire x2="6720" y1="3616" y2="3616" x1="6560" />
        </branch>
        <instance x="6336" y="3776" name="XLXI_654" orien="R0" />
        <branch name="cc_dbg_alu_nop">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3744" type="branch" />
            <wire x2="6336" y1="3744" y2="3744" x1="6240" />
        </branch>
        <branch name="out_op_alu_nop">
            <wire x2="6720" y1="3744" y2="3744" x1="6560" />
        </branch>
        <instance x="6336" y="3904" name="XLXI_655" orien="R0" />
        <branch name="cc_dbg_ls_ld">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3872" type="branch" />
            <wire x2="6336" y1="3872" y2="3872" x1="6240" />
        </branch>
        <instance x="6336" y="3968" name="XLXI_656" orien="R0" />
        <branch name="cc_dbg_ls_st">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3936" type="branch" />
            <wire x2="6336" y1="3936" y2="3936" x1="6240" />
        </branch>
        <branch name="out_op_ls_st">
            <wire x2="6720" y1="3936" y2="3936" x1="6560" />
        </branch>
        <branch name="out_op_ls_ld">
            <wire x2="6720" y1="3872" y2="3872" x1="6560" />
        </branch>
        <instance x="6336" y="4032" name="XLXI_657" orien="R0" />
        <instance x="6336" y="4096" name="XLXI_658" orien="R0" />
        <instance x="6336" y="4160" name="XLXI_659" orien="R0" />
        <instance x="6336" y="4224" name="XLXI_660" orien="R0" />
        <instance x="6336" y="4288" name="XLXI_661" orien="R0" />
        <branch name="cc_dbg_jmp_jmpr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4064" type="branch" />
            <wire x2="6336" y1="4064" y2="4064" x1="6240" />
        </branch>
        <branch name="cc_dbg_jmp_jmp">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4128" type="branch" />
            <wire x2="6336" y1="4128" y2="4128" x1="6240" />
        </branch>
        <branch name="cc_dbg_jmp_ifjmp">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4192" type="branch" />
            <wire x2="6336" y1="4192" y2="4192" x1="6240" />
        </branch>
        <branch name="cc_dbg_flg_clf">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4256" type="branch" />
            <wire x2="6336" y1="4256" y2="4256" x1="6240" />
        </branch>
        <branch name="out_op_ls_ldc">
            <wire x2="6720" y1="4000" y2="4000" x1="6560" />
        </branch>
        <branch name="out_op_jmp_jmpr">
            <wire x2="6720" y1="4064" y2="4064" x1="6560" />
        </branch>
        <branch name="out_op_jmp_ifjmp">
            <wire x2="6720" y1="4192" y2="4192" x1="6560" />
        </branch>
        <instance x="6336" y="4352" name="XLXI_662" orien="R0" />
        <branch name="cc_dbg_alt_nop">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4320" type="branch" />
            <wire x2="6336" y1="4320" y2="4320" x1="6240" />
        </branch>
        <branch name="out_op_jmp_jmp">
            <wire x2="6720" y1="4128" y2="4128" x1="6560" />
        </branch>
        <branch name="cc_dbg_ls_ldc">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4000" type="branch" />
            <wire x2="6336" y1="4000" y2="4000" x1="6240" />
        </branch>
        <branch name="out_op_flg_clf">
            <wire x2="6720" y1="4256" y2="4256" x1="6560" />
        </branch>
        <branch name="out_op_alt_nop">
            <wire x2="6720" y1="4320" y2="4320" x1="6560" />
        </branch>
        <instance x="6336" y="4592" name="XLXI_664" orien="R0" />
        <branch name="alu_C_in">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4560" type="branch" />
            <wire x2="6336" y1="4560" y2="4560" x1="6240" />
        </branch>
        <instance x="6336" y="4656" name="XLXI_665" orien="R0" />
        <branch name="alu_gt">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4624" type="branch" />
            <wire x2="6336" y1="4624" y2="4624" x1="6240" />
        </branch>
        <branch name="out_alu_gt">
            <wire x2="6720" y1="4624" y2="4624" x1="6560" />
        </branch>
        <branch name="out_alu_C_in">
            <wire x2="6720" y1="4560" y2="4560" x1="6560" />
        </branch>
        <instance x="6336" y="4720" name="XLXI_666" orien="R0" />
        <instance x="6336" y="4784" name="XLXI_667" orien="R0" />
        <instance x="6336" y="4848" name="XLXI_668" orien="R0" />
        <branch name="alu_C_out">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4816" type="branch" />
            <wire x2="6336" y1="4816" y2="4816" x1="6240" />
        </branch>
        <branch name="out_alu_z">
            <wire x2="6720" y1="4752" y2="4752" x1="6560" />
        </branch>
        <branch name="out_alu_C_out">
            <wire x2="6720" y1="4816" y2="4816" x1="6560" />
        </branch>
        <branch name="alu_eq">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4688" type="branch" />
            <wire x2="6336" y1="4688" y2="4688" x1="6240" />
        </branch>
        <branch name="alu_z">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4752" type="branch" />
            <wire x2="6336" y1="4752" y2="4752" x1="6240" />
        </branch>
        <branch name="alu_x(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4960" type="branch" />
            <wire x2="6336" y1="4960" y2="4960" x1="6240" />
        </branch>
        <branch name="out_alu_x(7:0)">
            <wire x2="6800" y1="4960" y2="4960" x1="6720" />
        </branch>
        <instance x="6336" y="4992" name="XLXI_675" orien="R0">
        </instance>
        <branch name="out_alu_eq">
            <wire x2="6720" y1="4688" y2="4688" x1="6560" />
        </branch>
        <instance x="6336" y="5136" name="XLXI_669" orien="R0" />
        <instance x="6336" y="5200" name="XLXI_670" orien="R0" />
        <branch name="flags_o(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="5104" type="branch" />
            <wire x2="6240" y1="5104" y2="5104" x1="5984" />
            <wire x2="6336" y1="5104" y2="5104" x1="6240" />
        </branch>
        <branch name="flags_o(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="5168" type="branch" />
            <wire x2="6240" y1="5168" y2="5168" x1="5984" />
            <wire x2="6336" y1="5168" y2="5168" x1="6240" />
        </branch>
        <branch name="out_flags_C_out">
            <wire x2="6720" y1="5104" y2="5104" x1="6560" />
        </branch>
        <instance x="6336" y="5264" name="XLXI_671" orien="R0" />
        <branch name="flags_o(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="5232" type="branch" />
            <wire x2="6240" y1="5232" y2="5232" x1="5984" />
            <wire x2="6336" y1="5232" y2="5232" x1="6240" />
        </branch>
        <branch name="out_flags_gt">
            <wire x2="6720" y1="5168" y2="5168" x1="6560" />
        </branch>
        <branch name="out_flags_eq">
            <wire x2="6720" y1="5232" y2="5232" x1="6560" />
        </branch>
        <instance x="6336" y="5328" name="XLXI_679" orien="R0" />
        <branch name="flags_o(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="5296" type="branch" />
            <wire x2="6240" y1="5296" y2="5296" x1="5984" />
            <wire x2="6336" y1="5296" y2="5296" x1="6240" />
        </branch>
        <branch name="out_flags_z">
            <wire x2="6720" y1="5296" y2="5296" x1="6560" />
        </branch>
        <branch name="flags_o(3:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="5888" y="5056" type="branch" />
            <wire x2="5888" y1="5056" y2="5104" x1="5888" />
            <wire x2="5888" y1="5104" y2="5168" x1="5888" />
            <wire x2="5888" y1="5168" y2="5232" x1="5888" />
            <wire x2="5888" y1="5232" y2="5296" x1="5888" />
        </branch>
        <bustap x2="5984" y1="5296" y2="5296" x1="5888" />
        <bustap x2="5984" y1="5232" y2="5232" x1="5888" />
        <bustap x2="5984" y1="5168" y2="5168" x1="5888" />
        <bustap x2="5984" y1="5104" y2="5104" x1="5888" />
        <instance x="6336" y="4528" name="XLXI_680" orien="R0" />
        <branch name="alu_C_in_enabled">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4496" type="branch" />
            <wire x2="6336" y1="4496" y2="4496" x1="6240" />
        </branch>
        <branch name="out_C_in_enabled">
            <wire x2="6720" y1="4496" y2="4496" x1="6560" />
        </branch>
        <branch name="alu_C_out_flipflop_o">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="4432" type="branch" />
            <wire x2="6336" y1="4432" y2="4432" x1="6240" />
        </branch>
        <branch name="out_C_out_flipflop_o">
            <wire x2="6720" y1="4432" y2="4432" x1="6560" />
        </branch>
        <instance x="6336" y="4464" name="XLXI_681" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3232" name="out_op_alu" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3296" name="out_op_alu_add" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3360" name="out_op_alu_lshift" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3424" name="out_op_alu_rshift" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3488" name="out_op_alu_not" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3552" name="out_op_alu_and" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3616" name="out_op_alu_or" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3680" name="out_op_alu_xor" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3744" name="out_op_alu_nop" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3872" name="out_op_ls_ld" orien="R0" />
        <iomarker fontsize="28" x="6720" y="3936" name="out_op_ls_st" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4000" name="out_op_ls_ldc" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4064" name="out_op_jmp_jmpr" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4128" name="out_op_jmp_jmp" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4192" name="out_op_jmp_ifjmp" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4256" name="out_op_flg_clf" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4320" name="out_op_alt_nop" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4560" name="out_alu_C_in" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4624" name="out_alu_gt" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4688" name="out_alu_eq" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4752" name="out_alu_z" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4816" name="out_alu_C_out" orien="R0" />
        <iomarker fontsize="28" x="6800" y="4960" name="out_alu_x(7:0)" orien="R0" />
        <iomarker fontsize="28" x="6720" y="5104" name="out_flags_C_out" orien="R0" />
        <iomarker fontsize="28" x="6720" y="5168" name="out_flags_gt" orien="R0" />
        <iomarker fontsize="28" x="6720" y="5232" name="out_flags_eq" orien="R0" />
        <iomarker fontsize="28" x="6720" y="5296" name="out_flags_z" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4496" name="out_C_in_enabled" orien="R0" />
        <iomarker fontsize="28" x="6720" y="4432" name="out_C_out_flipflop_o" orien="R0" />
        <instance x="6336" y="2976" name="XLXI_576" orien="R0">
        </instance>
        <instance x="6336" y="2816" name="XLXI_575" orien="R0">
        </instance>
        <branch name="iar_o(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2624" type="branch" />
            <wire x2="6336" y1="2624" y2="2624" x1="6240" />
        </branch>
        <branch name="out_iar_o(7:0)">
            <wire x2="6800" y1="2624" y2="2624" x1="6720" />
        </branch>
        <branch name="ir_o(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2784" type="branch" />
            <wire x2="6336" y1="2784" y2="2784" x1="6240" />
        </branch>
        <branch name="temp_o(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2944" type="branch" />
            <wire x2="6336" y1="2944" y2="2944" x1="6240" />
        </branch>
        <branch name="out_temp_o(7:0)">
            <wire x2="6800" y1="2944" y2="2944" x1="6720" />
        </branch>
        <branch name="out_ir_o(7:0)">
            <wire x2="6800" y1="2784" y2="2784" x1="6720" />
        </branch>
        <instance x="6336" y="2656" name="XLXI_574" orien="R0">
        </instance>
        <branch name="ram_a_o(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="3104" type="branch" />
            <wire x2="6336" y1="3104" y2="3104" x1="6240" />
        </branch>
        <branch name="out_ram_a_o(7:0)">
            <wire x2="6800" y1="3104" y2="3104" x1="6720" />
        </branch>
        <instance x="6336" y="3136" name="XLXI_799" orien="R0">
        </instance>
        <iomarker fontsize="28" x="6800" y="2624" name="out_iar_o(7:0)" orien="R0" />
        <iomarker fontsize="28" x="6800" y="2784" name="out_ir_o(7:0)" orien="R0" />
        <iomarker fontsize="28" x="6800" y="2944" name="out_temp_o(7:0)" orien="R0" />
        <iomarker fontsize="28" x="6800" y="3104" name="out_ram_a_o(7:0)" orien="R0" />
        <instance x="6336" y="320" name="XLXI_189" orien="R0" />
        <instance x="6336" y="384" name="XLXI_190" orien="R0" />
        <instance x="6336" y="448" name="XLXI_191" orien="R0" />
        <branch name="clkc">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="288" type="branch" />
            <wire x2="6336" y1="288" y2="288" x1="6240" />
        </branch>
        <branch name="clkr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="352" type="branch" />
            <wire x2="6336" y1="352" y2="352" x1="6240" />
        </branch>
        <branch name="clkw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="416" type="branch" />
            <wire x2="6336" y1="416" y2="416" x1="6240" />
        </branch>
        <branch name="out_clkc">
            <wire x2="6720" y1="288" y2="288" x1="6560" />
        </branch>
        <branch name="out_clkr">
            <wire x2="6720" y1="352" y2="352" x1="6560" />
        </branch>
        <branch name="out_clkw">
            <wire x2="6720" y1="416" y2="416" x1="6560" />
        </branch>
        <branch name="out_sysbus(7:0)">
            <wire x2="6800" y1="80" y2="80" x1="6720" />
        </branch>
        <branch name="sysbus(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="80" type="branch" />
            <wire x2="6336" y1="80" y2="80" x1="6240" />
        </branch>
        <instance x="6336" y="112" name="XLXI_860" orien="R0">
        </instance>
        <iomarker fontsize="28" x="6720" y="288" name="out_clkc" orien="R0" />
        <iomarker fontsize="28" x="6720" y="352" name="out_clkr" orien="R0" />
        <iomarker fontsize="28" x="6720" y="416" name="out_clkw" orien="R0" />
        <instance x="6336" y="1696" name="XLXI_227" orien="R0" />
        <instance x="6336" y="1760" name="XLXI_228" orien="R0" />
        <branch name="iar_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1664" type="branch" />
            <wire x2="6336" y1="1664" y2="1664" x1="6240" />
        </branch>
        <branch name="iar_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1728" type="branch" />
            <wire x2="6336" y1="1728" y2="1728" x1="6240" />
        </branch>
        <branch name="out_iar_w">
            <wire x2="6720" y1="1728" y2="1728" x1="6560" />
        </branch>
        <branch name="out_iar_r">
            <wire x2="6720" y1="1664" y2="1664" x1="6560" />
        </branch>
        <instance x="6336" y="2400" name="XLXI_561" orien="R0" />
        <branch name="cc_flags_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2368" type="branch" />
            <wire x2="6336" y1="2368" y2="2368" x1="6240" />
        </branch>
        <branch name="cc_flags_clr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2432" type="branch" />
            <wire x2="6336" y1="2432" y2="2432" x1="6240" />
        </branch>
        <branch name="out_flags_w">
            <wire x2="6720" y1="2368" y2="2368" x1="6560" />
        </branch>
        <branch name="out_flags_clr">
            <wire x2="6720" y1="2432" y2="2432" x1="6560" />
        </branch>
        <instance x="6336" y="2464" name="XLXI_562" orien="R0" />
        <instance x="6336" y="768" name="XLXI_192" orien="R0" />
        <instance x="6336" y="832" name="XLXI_193" orien="R0" />
        <instance x="6336" y="896" name="XLXI_194" orien="R0" />
        <instance x="6336" y="960" name="XLXI_195" orien="R0" />
        <instance x="6336" y="1024" name="XLXI_196" orien="R0" />
        <branch name="cc_dbg_s1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="736" type="branch" />
            <wire x2="6336" y1="736" y2="736" x1="6240" />
        </branch>
        <branch name="cc_dbg_s2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="800" type="branch" />
            <wire x2="6336" y1="800" y2="800" x1="6240" />
        </branch>
        <branch name="cc_dbg_s3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="864" type="branch" />
            <wire x2="6336" y1="864" y2="864" x1="6240" />
        </branch>
        <branch name="cc_dbg_s4">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="928" type="branch" />
            <wire x2="6336" y1="928" y2="928" x1="6240" />
        </branch>
        <branch name="cc_dbg_s5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="992" type="branch" />
            <wire x2="6336" y1="992" y2="992" x1="6240" />
        </branch>
        <branch name="out_s1">
            <wire x2="6720" y1="736" y2="736" x1="6560" />
        </branch>
        <branch name="out_s2">
            <wire x2="6720" y1="800" y2="800" x1="6560" />
        </branch>
        <branch name="out_s4">
            <wire x2="6720" y1="928" y2="928" x1="6560" />
        </branch>
        <instance x="6336" y="1088" name="XLXI_207" orien="R0" />
        <branch name="cc_dbg_s6">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1056" type="branch" />
            <wire x2="6336" y1="1056" y2="1056" x1="6240" />
        </branch>
        <branch name="out_s6">
            <wire x2="6720" y1="1056" y2="1056" x1="6560" />
        </branch>
        <branch name="out_s3">
            <wire x2="6720" y1="864" y2="864" x1="6560" />
        </branch>
        <branch name="out_s5">
            <wire x2="6720" y1="992" y2="992" x1="6560" />
        </branch>
        <branch name="sysbus_released">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="672" type="branch" />
            <wire x2="6336" y1="672" y2="672" x1="6240" />
        </branch>
        <branch name="out_sysbus_released">
            <wire x2="6720" y1="672" y2="672" x1="6560" />
        </branch>
        <instance x="6336" y="704" name="XLXI_844" orien="R0" />
        <instance x="6336" y="1168" name="XLXI_219" orien="R0" />
        <instance x="6336" y="1232" name="XLXI_220" orien="R0" />
        <instance x="6336" y="1296" name="XLXI_221" orien="R0" />
        <instance x="6336" y="1360" name="XLXI_222" orien="R0" />
        <instance x="6336" y="1424" name="XLXI_223" orien="R0" />
        <instance x="6336" y="1488" name="XLXI_224" orien="R0" />
        <instance x="6336" y="1552" name="XLXI_225" orien="R0" />
        <branch name="r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1136" type="branch" />
            <wire x2="6336" y1="1136" y2="1136" x1="6240" />
        </branch>
        <branch name="r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1200" type="branch" />
            <wire x2="6336" y1="1200" y2="1200" x1="6240" />
        </branch>
        <branch name="r1_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1264" type="branch" />
            <wire x2="6336" y1="1264" y2="1264" x1="6240" />
        </branch>
        <branch name="r1_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1328" type="branch" />
            <wire x2="6336" y1="1328" y2="1328" x1="6240" />
        </branch>
        <branch name="r2_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1392" type="branch" />
            <wire x2="6336" y1="1392" y2="1392" x1="6240" />
        </branch>
        <branch name="r2_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1456" type="branch" />
            <wire x2="6336" y1="1456" y2="1456" x1="6240" />
        </branch>
        <branch name="r3_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1520" type="branch" />
            <wire x2="6336" y1="1520" y2="1520" x1="6240" />
        </branch>
        <branch name="r3_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1584" type="branch" />
            <wire x2="6336" y1="1584" y2="1584" x1="6240" />
        </branch>
        <branch name="out_r0_r">
            <wire x2="6720" y1="1136" y2="1136" x1="6560" />
        </branch>
        <branch name="out_r0_w">
            <wire x2="6720" y1="1200" y2="1200" x1="6560" />
        </branch>
        <branch name="out_r1_r">
            <wire x2="6720" y1="1264" y2="1264" x1="6560" />
        </branch>
        <branch name="out_r1_w">
            <wire x2="6720" y1="1328" y2="1328" x1="6560" />
        </branch>
        <branch name="out_r2_r">
            <wire x2="6720" y1="1392" y2="1392" x1="6560" />
        </branch>
        <branch name="out_r2_w">
            <wire x2="6720" y1="1456" y2="1456" x1="6560" />
        </branch>
        <branch name="out_r3_r">
            <wire x2="6720" y1="1520" y2="1520" x1="6560" />
        </branch>
        <branch name="out_r3_w">
            <wire x2="6720" y1="1584" y2="1584" x1="6560" />
        </branch>
        <instance x="6336" y="1616" name="XLXI_226" orien="R0" />
        <instance x="6336" y="1824" name="XLXI_557" orien="R0" />
        <branch name="ir_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1792" type="branch" />
            <wire x2="6336" y1="1792" y2="1792" x1="6240" />
        </branch>
        <branch name="out_ir_w">
            <wire x2="6720" y1="1792" y2="1792" x1="6560" />
        </branch>
        <instance x="6336" y="1888" name="XLXI_560" orien="R0" />
        <branch name="in_is_bus1_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1856" type="branch" />
            <wire x2="6336" y1="1856" y2="1856" x1="6240" />
        </branch>
        <branch name="out_is_bus1_w">
            <wire x2="6720" y1="1856" y2="1856" x1="6560" />
        </branch>
        <instance x="6336" y="1952" name="XLXI_559" orien="R0" />
        <branch name="bus1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1920" type="branch" />
            <wire x2="6336" y1="1920" y2="1920" x1="6240" />
        </branch>
        <branch name="out_bus1">
            <wire x2="6720" y1="1920" y2="1920" x1="6560" />
        </branch>
        <instance x="6336" y="2144" name="XLXI_554" orien="R0" />
        <branch name="acc_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2112" type="branch" />
            <wire x2="6336" y1="2112" y2="2112" x1="6240" />
        </branch>
        <branch name="out_acc_w">
            <wire x2="6720" y1="2112" y2="2112" x1="6560" />
        </branch>
        <branch name="out_acc_r">
            <wire x2="6720" y1="2048" y2="2048" x1="6560" />
        </branch>
        <instance x="6336" y="2080" name="XLXI_553" orien="R0" />
        <branch name="acc_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2048" type="branch" />
            <wire x2="6336" y1="2048" y2="2048" x1="6240" />
        </branch>
        <branch name="out_temp_w">
            <wire x2="6720" y1="1984" y2="1984" x1="6560" />
        </branch>
        <instance x="6336" y="2016" name="XLXI_229" orien="R0" />
        <branch name="temp_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1984" type="branch" />
            <wire x2="6336" y1="1984" y2="1984" x1="6240" />
        </branch>
        <instance x="6336" y="2272" name="XLXI_555" orien="R0" />
        <branch name="ram_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2240" type="branch" />
            <wire x2="6336" y1="2240" y2="2240" x1="6240" />
        </branch>
        <instance x="6336" y="2336" name="XLXI_556" orien="R0" />
        <branch name="ram_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2304" type="branch" />
            <wire x2="6336" y1="2304" y2="2304" x1="6240" />
        </branch>
        <branch name="out_ram_w">
            <wire x2="6720" y1="2304" y2="2304" x1="6560" />
        </branch>
        <branch name="out_ram_r">
            <wire x2="6720" y1="2240" y2="2240" x1="6560" />
        </branch>
        <instance x="6336" y="2208" name="XLXI_558" orien="R0" />
        <branch name="ram_a_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="2176" type="branch" />
            <wire x2="6336" y1="2176" y2="2176" x1="6240" />
        </branch>
        <branch name="out_ram_a_w">
            <wire x2="6720" y1="2176" y2="2176" x1="6560" />
        </branch>
        <iomarker fontsize="28" x="6720" y="1664" name="out_iar_r" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1728" name="out_iar_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="2368" name="out_flags_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="2432" name="out_flags_clr" orien="R0" />
        <iomarker fontsize="28" x="6720" y="736" name="out_s1" orien="R0" />
        <iomarker fontsize="28" x="6720" y="800" name="out_s2" orien="R0" />
        <iomarker fontsize="28" x="6720" y="864" name="out_s3" orien="R0" />
        <iomarker fontsize="28" x="6720" y="928" name="out_s4" orien="R0" />
        <iomarker fontsize="28" x="6720" y="992" name="out_s5" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1056" name="out_s6" orien="R0" />
        <iomarker fontsize="28" x="6720" y="672" name="out_sysbus_released" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1136" name="out_r0_r" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1264" name="out_r1_r" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1328" name="out_r1_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1392" name="out_r2_r" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1456" name="out_r2_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1520" name="out_r3_r" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1584" name="out_r3_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1200" name="out_r0_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1792" name="out_ir_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1856" name="out_is_bus1_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1920" name="out_bus1" orien="R0" />
        <iomarker fontsize="28" x="6720" y="2112" name="out_acc_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="2048" name="out_acc_r" orien="R0" />
        <iomarker fontsize="28" x="6720" y="1984" name="out_temp_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="2240" name="out_ram_r" orien="R0" />
        <iomarker fontsize="28" x="6720" y="2304" name="out_ram_w" orien="R0" />
        <iomarker fontsize="28" x="6720" y="2176" name="out_ram_a_w" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="512" type="branch" />
            <wire x2="6336" y1="512" y2="512" x1="6240" />
        </branch>
        <branch name="out_can_read">
            <wire x2="6592" y1="512" y2="512" x1="6560" />
        </branch>
        <instance x="6336" y="544" name="XLXI_901" orien="R0" />
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="576" type="branch" />
            <wire x2="6336" y1="576" y2="576" x1="6240" />
        </branch>
        <branch name="out_can_write">
            <wire x2="6592" y1="576" y2="576" x1="6560" />
        </branch>
        <instance x="6336" y="608" name="XLXI_903" orien="R0" />
        <iomarker fontsize="28" x="6592" y="512" name="out_can_read" orien="R0" />
        <iomarker fontsize="28" x="6592" y="576" name="out_can_write" orien="R0" />
        <iomarker fontsize="28" x="6800" y="80" name="out_sysbus(7:0)" orien="R0" />
        <branch name="in_manr_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3856" type="branch" />
            <wire x2="608" y1="3856" y2="3856" x1="448" />
        </branch>
        <branch name="in_manr_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3904" type="branch" />
            <wire x2="608" y1="3904" y2="3904" x1="448" />
        </branch>
        <branch name="in_manr_d(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3952" type="branch" />
            <wire x2="608" y1="3952" y2="3952" x1="448" />
        </branch>
        <branch name="in_r0_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4048" type="branch" />
            <wire x2="576" y1="4048" y2="4048" x1="416" />
        </branch>
        <branch name="in_r0_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4096" type="branch" />
            <wire x2="576" y1="4096" y2="4096" x1="416" />
        </branch>
        <branch name="in_r1_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4160" type="branch" />
            <wire x2="576" y1="4160" y2="4160" x1="416" />
        </branch>
        <branch name="in_r1_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4208" type="branch" />
            <wire x2="576" y1="4208" y2="4208" x1="416" />
        </branch>
        <branch name="in_r2_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4272" type="branch" />
            <wire x2="576" y1="4272" y2="4272" x1="416" />
        </branch>
        <branch name="in_r2_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4320" type="branch" />
            <wire x2="576" y1="4320" y2="4320" x1="416" />
        </branch>
        <branch name="in_r3_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4384" type="branch" />
            <wire x2="576" y1="4384" y2="4384" x1="416" />
        </branch>
        <branch name="in_r3_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4432" type="branch" />
            <wire x2="576" y1="4432" y2="4432" x1="416" />
        </branch>
        <branch name="in_iar_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4496" type="branch" />
            <wire x2="576" y1="4496" y2="4496" x1="416" />
        </branch>
        <branch name="in_iar_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4544" type="branch" />
            <wire x2="576" y1="4544" y2="4544" x1="416" />
        </branch>
        <branch name="in_acc_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4608" type="branch" />
            <wire x2="576" y1="4608" y2="4608" x1="416" />
        </branch>
        <branch name="in_acc_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4656" type="branch" />
            <wire x2="576" y1="4656" y2="4656" x1="416" />
        </branch>
        <branch name="in_ram_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4720" type="branch" />
            <wire x2="576" y1="4720" y2="4720" x1="416" />
        </branch>
        <branch name="in_ram_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="4768" type="branch" />
            <wire x2="576" y1="4768" y2="4768" x1="416" />
        </branch>
        <iomarker fontsize="28" x="448" y="3856" name="in_manr_r" orien="R180" />
        <iomarker fontsize="28" x="448" y="3904" name="in_manr_w" orien="R180" />
        <iomarker fontsize="28" x="448" y="3952" name="in_manr_d(7:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="4048" name="in_r0_r" orien="R180" />
        <iomarker fontsize="28" x="416" y="4096" name="in_r0_w" orien="R180" />
        <iomarker fontsize="28" x="416" y="4160" name="in_r1_r" orien="R180" />
        <iomarker fontsize="28" x="416" y="4208" name="in_r1_w" orien="R180" />
        <iomarker fontsize="28" x="416" y="4272" name="in_r2_r" orien="R180" />
        <iomarker fontsize="28" x="416" y="4320" name="in_r2_w" orien="R180" />
        <iomarker fontsize="28" x="416" y="4384" name="in_r3_r" orien="R180" />
        <iomarker fontsize="28" x="416" y="4432" name="in_r3_w" orien="R180" />
        <iomarker fontsize="28" x="416" y="4496" name="in_iar_r" orien="R180" />
        <iomarker fontsize="28" x="416" y="4544" name="in_iar_w" orien="R180" />
        <iomarker fontsize="28" x="416" y="4608" name="in_acc_r" orien="R180" />
        <iomarker fontsize="28" x="416" y="4656" name="in_acc_w" orien="R180" />
        <iomarker fontsize="28" x="416" y="4720" name="in_ram_r" orien="R180" />
        <iomarker fontsize="28" x="416" y="4768" name="in_ram_w" orien="R180" />
        <branch name="in_write_reg_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3776" type="branch" />
            <wire x2="608" y1="3776" y2="3776" x1="448" />
        </branch>
        <branch name="in_read_reg_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3728" type="branch" />
            <wire x2="608" y1="3728" y2="3728" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="3776" name="in_write_reg_en" orien="R180" />
        <iomarker fontsize="28" x="448" y="3728" name="in_read_reg_en" orien="R180" />
        <branch name="in_clk_external">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3664" type="branch" />
            <wire x2="608" y1="3664" y2="3664" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="3664" name="in_clk_external" orien="R180" />
        <instance x="1008" y="4224" name="XLXI_116" orien="R0" />
        <instance x="1328" y="4224" name="XLXI_117" orien="R0" />
        <branch name="in_rst">
            <wire x2="1008" y1="4192" y2="4192" x1="928" />
        </branch>
        <branch name="XLXN_233">
            <wire x2="1328" y1="4192" y2="4192" x1="1232" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="4192" type="branch" />
            <wire x2="1648" y1="4192" y2="4192" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="928" y="4192" name="in_rst" orien="R180" />
        <bustap x2="4160" y1="1136" y2="1136" x1="4256" />
        <branch name="in_is_clk_manual">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="3600" type="branch" />
            <wire x2="1200" y1="3600" y2="3600" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="3600" name="in_is_clk_manual" orien="R180" />
        <branch name="in_is_clk_low">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="3648" type="branch" />
            <wire x2="1200" y1="3648" y2="3648" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="3648" name="in_is_clk_low" orien="R180" />
        <branch name="in_is_clk_high">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="3696" type="branch" />
            <wire x2="1200" y1="3696" y2="3696" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="3696" name="in_is_clk_high" orien="R180" />
        <branch name="in_is_clk_external">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="3744" type="branch" />
            <wire x2="1200" y1="3744" y2="3744" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="3744" name="in_is_clk_external" orien="R180" />
        <branch name="r3_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="576" type="branch" />
            <wire x2="2976" y1="192" y2="192" x1="2928" />
            <wire x2="2928" y1="192" y2="576" x1="2928" />
            <wire x2="3040" y1="576" y2="576" x1="2928" />
        </branch>
        <instance x="960" y="3120" name="XLXI_912" orien="R0">
        </instance>
        <branch name="in_clk_manual">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2704" type="branch" />
            <wire x2="960" y1="2704" y2="2704" x1="880" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2768" type="branch" />
            <wire x2="960" y1="2768" y2="2768" x1="880" />
        </branch>
        <branch name="in_is_clk_high">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2896" type="branch" />
            <wire x2="960" y1="2896" y2="2896" x1="880" />
        </branch>
        <branch name="in_is_clk_low">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2960" type="branch" />
            <wire x2="960" y1="2960" y2="2960" x1="880" />
        </branch>
        <branch name="in_is_clk_manual">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="3024" type="branch" />
            <wire x2="960" y1="3024" y2="3024" x1="880" />
        </branch>
        <branch name="in_is_clk_external">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="3088" type="branch" />
            <wire x2="960" y1="3088" y2="3088" x1="880" />
        </branch>
        <branch name="in_clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2640" type="branch" />
            <wire x2="960" y1="2640" y2="2640" x1="880" />
        </branch>
        <branch name="in_clk_external">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2832" type="branch" />
            <wire x2="960" y1="2832" y2="2832" x1="880" />
        </branch>
        <instance x="6336" y="256" name="XLXI_913" orien="R0" />
        <branch name="clk_internal">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6224" y="224" type="branch" />
            <wire x2="6336" y1="224" y2="224" x1="6224" />
        </branch>
        <branch name="out_clk_internal">
            <wire x2="6720" y1="224" y2="224" x1="6560" />
        </branch>
        <iomarker fontsize="28" x="6720" y="224" name="out_clk_internal" orien="R0" />
        <branch name="in_clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3568" type="branch" />
            <wire x2="608" y1="3568" y2="3568" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="3568" name="in_clk" orien="R180" />
        <branch name="in_clk_manual">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3616" type="branch" />
            <wire x2="608" y1="3616" y2="3616" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="3616" name="in_clk_manual" orien="R180" />
        <branch name="clk_internal">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1360" type="branch" />
            <wire x2="1360" y1="1360" y2="1360" x1="1280" />
        </branch>
        <instance x="2720" y="2992" name="XLXI_914" orien="R0" />
        <branch name="XLXN_234">
            <wire x2="2720" y1="2800" y2="2800" x1="2480" />
        </branch>
        <branch name="in_clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="2864" type="branch" />
            <wire x2="2560" y1="2864" y2="2864" x1="2480" />
            <wire x2="2720" y1="2864" y2="2864" x1="2560" />
            <wire x2="2560" y1="2864" y2="3040" x1="2560" />
            <wire x2="2880" y1="3040" y2="3040" x1="2560" />
            <wire x2="2880" y1="3040" y2="3280" x1="2880" />
            <wire x2="3040" y1="3280" y2="3280" x1="2880" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="2960" type="branch" />
            <wire x2="2720" y1="2960" y2="2960" x1="2480" />
        </branch>
        <instance x="2480" y="2864" name="XLXI_915" orien="R270" />
        <branch name="XLXN_235">
            <wire x2="3360" y1="3008" y2="3008" x1="2992" />
            <wire x2="2992" y1="3008" y2="3216" x1="2992" />
            <wire x2="3040" y1="3216" y2="3216" x1="2992" />
            <wire x2="3360" y1="2800" y2="2800" x1="3104" />
            <wire x2="3360" y1="2800" y2="3008" x1="3360" />
        </branch>
        <instance x="3040" y="3408" name="XLXI_917" orien="R0" />
        <branch name="XLXN_239">
            <wire x2="2832" y1="2960" y2="3376" x1="2832" />
            <wire x2="3040" y1="3376" y2="3376" x1="2832" />
        </branch>
        <bustap x2="3744" y1="3152" y2="3152" x1="3648" />
        <branch name="freq_div_1(3)">
            <wire x2="3936" y1="3152" y2="3152" x1="3744" />
        </branch>
        <branch name="freq_div_1(15:0)">
            <wire x2="3648" y1="3152" y2="3152" x1="3424" />
        </branch>
        <instance x="3936" y="3184" name="XLXI_916" orien="R0" />
        <instance x="4480" y="3088" name="XLXI_918" orien="R0" />
        <instance x="4480" y="3216" name="XLXI_919" orien="R0" />
        <instance x="4880" y="3152" name="XLXI_924" orien="R0" />
        <branch name="XLXN_247">
            <wire x2="4816" y1="2992" y2="2992" x1="4736" />
            <wire x2="4816" y1="2992" y2="3024" x1="4816" />
            <wire x2="4880" y1="3024" y2="3024" x1="4816" />
        </branch>
        <branch name="XLXN_252">
            <wire x2="4816" y1="3120" y2="3120" x1="4736" />
            <wire x2="4816" y1="3088" y2="3120" x1="4816" />
            <wire x2="4880" y1="3088" y2="3088" x1="4816" />
        </branch>
        <branch name="in_is_clk_manual">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4400" y="2960" type="branch" />
            <wire x2="4480" y1="2960" y2="2960" x1="4400" />
        </branch>
        <branch name="in_is_clk_low">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4400" y="3088" type="branch" />
            <wire x2="4480" y1="3088" y2="3088" x1="4400" />
        </branch>
        <branch name="clk_low">
            <wire x2="4480" y1="3152" y2="3152" x1="4160" />
        </branch>
        <branch name="in_clk_manual">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4400" y="3024" type="branch" />
            <wire x2="4480" y1="3024" y2="3024" x1="4400" />
        </branch>
        <branch name="clk_internal">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5280" y="3056" type="branch" />
            <wire x2="5280" y1="3056" y2="3056" x1="5136" />
        </branch>
    </sheet>
</drawing>