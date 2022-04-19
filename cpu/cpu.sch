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
        <signal name="iar_w" />
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
        <signal name="cc_alu_op(0)" />
        <signal name="cc_alu_op(1)" />
        <signal name="cc_alu_op(2)" />
        <signal name="cc_flags_clr" />
        <signal name="flags_o(3)" />
        <signal name="flags_o(2)" />
        <signal name="flags_o(1)" />
        <signal name="flags_o(3:0)" />
        <signal name="XLXN_194" />
        <signal name="alu_C_in_enabled" />
        <signal name="XLXN_216" />
        <signal name="flags_o(0)" />
        <signal name="rst" />
        <signal name="XLXN_217" />
        <signal name="monitor(7:0)" />
        <signal name="rst_in" />
        <signal name="XLXN_233" />
        <signal name="r1_o(7:0)" />
        <signal name="iar_o(7:0)" />
        <signal name="r2_o(7:0)" />
        <signal name="acc_o(7:0)" />
        <signal name="r3_o(7:0)" />
        <signal name="ram_o(7:0)" />
        <signal name="r0_o(7:0)" />
        <signal name="clk_int" />
        <signal name="clk" />
        <signal name="is_clk_high" />
        <signal name="is_clk_low" />
        <signal name="is_clk_manual" />
        <signal name="is_clk_external" />
        <signal name="cc_alu_op(2:0)" />
        <signal name="cc_s1" />
        <signal name="cc_s3" />
        <signal name="cc_s5" />
        <signal name="cc_s6" />
        <signal name="cc_s2" />
        <signal name="cc_s4" />
        <signal name="r0_r" />
        <signal name="in_r0_r" />
        <signal name="in_read_reg_en" />
        <signal name="can_read" />
        <signal name="cpu_clk" />
        <signal name="cpu_clk_int" />
        <signal name="cpu_clkc" />
        <signal name="cpu_clkr" />
        <signal name="cpu_clkw" />
        <signal name="cpu_s1" />
        <signal name="cpu_s2" />
        <signal name="cpu_s4" />
        <signal name="cpu_s6" />
        <signal name="cpu_s3" />
        <signal name="cpu_s5" />
        <signal name="XLXN_262" />
        <signal name="XLXN_263" />
        <signal name="XLXN_264" />
        <signal name="XLXN_265" />
        <signal name="XLXN_266" />
        <signal name="XLXN_267" />
        <signal name="XLXN_268" />
        <signal name="XLXN_269" />
        <signal name="XLXN_270" />
        <signal name="cpu_r0_r" />
        <signal name="XLXN_272" />
        <signal name="XLXN_273" />
        <signal name="XLXN_274" />
        <signal name="XLXN_275" />
        <signal name="XLXN_276" />
        <signal name="XLXN_277" />
        <signal name="XLXN_278" />
        <signal name="XLXN_279" />
        <signal name="XLXN_280" />
        <signal name="XLXN_281" />
        <signal name="XLXN_282" />
        <signal name="can_write" />
        <signal name="sysbus(7:0)" />
        <signal name="not_reading" />
        <signal name="sysbus_released" />
        <signal name="XLXN_237" />
        <signal name="in_write_reg_en" />
        <signal name="in_manr_r" />
        <signal name="manual_r0_r" />
        <signal name="manual_r0_w" />
        <signal name="r0_w" />
        <signal name="in_r0_w" />
        <signal name="manr_o(7:0)" />
        <signal name="manr_w" />
        <signal name="in_manr_w" />
        <signal name="manr_r" />
        <signal name="manual_clk_in" />
        <port polarity="Output" name="iar_w" />
        <port polarity="Input" name="in_manr_d(7:0)" />
        <port polarity="Output" name="monitor(7:0)" />
        <port polarity="Input" name="rst_in" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="in_r0_r" />
        <port polarity="Input" name="in_read_reg_en" />
        <port polarity="Output" name="can_read" />
        <port polarity="Output" name="cpu_clk" />
        <port polarity="Output" name="cpu_clk_int" />
        <port polarity="Output" name="cpu_clkc" />
        <port polarity="Output" name="cpu_clkr" />
        <port polarity="Output" name="cpu_clkw" />
        <port polarity="Output" name="cpu_s1" />
        <port polarity="Output" name="cpu_s2" />
        <port polarity="Output" name="cpu_s4" />
        <port polarity="Output" name="cpu_s6" />
        <port polarity="Output" name="cpu_s3" />
        <port polarity="Output" name="cpu_s5" />
        <port polarity="Output" name="cpu_r0_r" />
        <port polarity="Output" name="XLXN_272" />
        <port polarity="Output" name="XLXN_273" />
        <port polarity="Output" name="XLXN_274" />
        <port polarity="Output" name="XLXN_275" />
        <port polarity="Output" name="XLXN_276" />
        <port polarity="Output" name="XLXN_277" />
        <port polarity="Output" name="XLXN_278" />
        <port polarity="Output" name="XLXN_280" />
        <port polarity="Output" name="XLXN_281" />
        <port polarity="Output" name="XLXN_282" />
        <port polarity="Output" name="can_write" />
        <port polarity="Output" name="sysbus(7:0)" />
        <port polarity="Output" name="sysbus_released" />
        <port polarity="Input" name="in_write_reg_en" />
        <port polarity="Input" name="in_manr_r" />
        <port polarity="Output" name="manr_o(7:0)" />
        <port polarity="Output" name="manr_w" />
        <port polarity="Input" name="in_manr_w" />
        <port polarity="Output" name="manr_r" />
        <port polarity="Input" name="manual_clk_in" />
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
            <timestamp>2022-4-19T22:31:16</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="cpu_control">
            <timestamp>2022-4-4T20:47:6</timestamp>
            <rect width="1472" x="64" y="-1536" height="1472" />
            <line x2="928" y1="-1536" y2="-1600" x1="928" />
            <line x2="992" y1="-1536" y2="-1600" x1="992" />
            <line x2="1600" y1="-288" y2="-288" x1="1536" />
            <line x2="1600" y1="-864" y2="-864" x1="1536" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <line x2="1600" y1="-1056" y2="-1056" x1="1536" />
            <line x2="1600" y1="-928" y2="-928" x1="1536" />
            <line x2="1120" y1="-1536" y2="-1600" x1="1120" />
            <line x2="1184" y1="-1536" y2="-1600" x1="1184" />
            <line x2="1312" y1="-1536" y2="-1600" x1="1312" />
            <line x2="1600" y1="-736" y2="-736" x1="1536" />
            <line x2="1600" y1="-992" y2="-992" x1="1536" />
            <line x2="1600" y1="-1120" y2="-1120" x1="1536" />
            <line x2="1600" y1="-672" y2="-672" x1="1536" />
            <line x2="672" y1="-1536" y2="-1600" x1="672" />
            <line x2="0" y1="-1504" y2="-1504" x1="64" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="0" y1="-1440" y2="-1440" x1="64" />
            <line x2="96" y1="-64" y2="0" x1="96" />
            <rect width="24" x="84" y="-64" height="64" />
            <line x2="480" y1="-1536" y2="-1600" x1="480" />
            <line x2="1600" y1="-1184" y2="-1184" x1="1536" />
            <line x2="1600" y1="-800" y2="-800" x1="1536" />
            <line x2="544" y1="-1536" y2="-1600" x1="544" />
            <line x2="608" y1="-1536" y2="-1600" x1="608" />
            <line x2="160" y1="-64" y2="0" x1="160" />
            <rect width="24" x="148" y="-64" height="64" />
            <line x2="736" y1="-1536" y2="-1600" x1="736" />
            <line x2="1440" y1="-1536" y2="-1600" x1="1440" />
            <line x2="1376" y1="-1536" y2="-1600" x1="1376" />
            <line x2="1600" y1="-1504" y2="-1504" x1="1536" />
            <line x2="1504" y1="-1536" y2="-1600" x1="1504" />
            <line x2="1600" y1="-1376" y2="-1376" x1="1536" />
            <line x2="1600" y1="-1440" y2="-1440" x1="1536" />
            <line x2="1600" y1="-1248" y2="-1248" x1="1536" />
            <line x2="1600" y1="-1312" y2="-1312" x1="1536" />
            <line x2="864" y1="-1536" y2="-1600" x1="864" />
            <line x2="800" y1="-1536" y2="-1600" x1="800" />
            <line x2="1248" y1="-1536" y2="-1600" x1="1248" />
            <line x2="1600" y1="-608" y2="-608" x1="1536" />
            <line x2="1600" y1="-544" y2="-544" x1="1536" />
            <line x2="1600" y1="-480" y2="-480" x1="1536" />
            <line x2="1600" y1="-416" y2="-416" x1="1536" />
            <line x2="1600" y1="-352" y2="-352" x1="1536" />
            <line x2="1600" y1="-224" y2="-224" x1="1536" />
            <line x2="1600" y1="-160" y2="-160" x1="1536" />
            <line x2="1600" y1="-96" y2="-96" x1="1536" />
            <line x2="96" y1="-1536" y2="-1600" x1="96" />
            <line x2="160" y1="-1536" y2="-1600" x1="160" />
            <line x2="224" y1="-1536" y2="-1600" x1="224" />
            <line x2="288" y1="-1536" y2="-1600" x1="288" />
            <line x2="352" y1="-1536" y2="-1600" x1="352" />
            <line x2="416" y1="-1536" y2="-1600" x1="416" />
            <line x2="1056" y1="-1536" y2="-1600" x1="1056" />
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
        <blockdef name="cpu_freq_divider">
            <timestamp>2022-4-15T23:37:23</timestamp>
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
            <blockpin name="alu" />
            <blockpin name="alu_and" />
            <blockpin signalname="alu_C_in_enabled" name="alu_C_in_enabled" />
            <blockpin name="alu_lshift" />
            <blockpin name="alu_not" />
            <blockpin signalname="cc_alu_op(0)" name="alu_op0" />
            <blockpin signalname="cc_alu_op(1)" name="alu_op1" />
            <blockpin signalname="cc_alu_op(2)" name="alu_op2" />
            <blockpin name="alu_or" />
            <blockpin name="alu_rshift" />
            <blockpin name="alu_sum" />
            <blockpin name="alu_xor" />
            <blockpin signalname="cc_bus1" name="bus1" />
            <blockpin signalname="clkc" name="clk" />
            <blockpin signalname="clkr" name="clkr" />
            <blockpin signalname="clkw" name="clkw" />
            <blockpin signalname="flags_o(3:0)" name="flags(3:0)" />
            <blockpin signalname="cc_flags_clr" name="flags_clr" />
            <blockpin signalname="cc_flags_w" name="flags_w" />
            <blockpin name="ground" />
            <blockpin signalname="cc_iar_r" name="iar_r" />
            <blockpin signalname="cc_iar_w" name="iar_w" />
            <blockpin signalname="ir_o(7:0)" name="ir(7:0)" />
            <blockpin signalname="cc_ir_w" name="ir_w" />
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
            <blockpin name="ra_0" />
            <blockpin name="ra_1" />
            <blockpin name="ra_2" />
            <blockpin name="ra_3" />
            <blockpin name="rb_0" />
            <blockpin name="rb_1" />
            <blockpin name="rb_2" />
            <blockpin name="rb_3" />
            <blockpin signalname="cc_s1" name="s1" />
            <blockpin signalname="cc_s2" name="s2" />
            <blockpin signalname="cc_s3" name="s3" />
            <blockpin signalname="cc_s4" name="s4" />
            <blockpin signalname="cc_s5" name="s5" />
            <blockpin signalname="cc_s6" name="s6" />
            <blockpin signalname="cc_temp_w" name="temp_w" />
        </block>
        <block symbolname="ram_256bytes" name="XLXI_9">
            <blockpin signalname="sysbus(7:0)" name="a(7:0)" />
            <blockpin signalname="ram_a_o(7:0)" name="a_o(7:0)" />
            <blockpin signalname="cc_ram_a_w" name="a_w" />
            <blockpin signalname="sysbus(7:0)" name="i(7:0)" />
            <blockpin signalname="cc_ram_r" name="i_r" />
            <blockpin signalname="cc_ram_w" name="i_w" />
            <blockpin signalname="clkw" name="i_wclk" />
            <blockpin signalname="ram_o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="pullup" name="XLXI_7">
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_10">
            <blockpin signalname="manual_iar_w" name="I0" />
            <blockpin signalname="cc_iar_w" name="I1" />
            <blockpin signalname="iar_w" name="O" />
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
            <blockpin signalname="XLXN_216" name="I0" />
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
            <blockpin signalname="cc_bus1" name="one" />
        </block>
        <block symbolname="buf" name="XLXI_116">
            <blockpin signalname="rst_in" name="I" />
            <blockpin signalname="XLXN_233" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_117">
            <blockpin signalname="XLXN_233" name="I" />
            <blockpin signalname="rst" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_120">
            <blockpin signalname="manual_iar_w" name="G" />
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
            <blockpin signalname="cc_iar_r" name="r" />
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
            <blockpin signalname="cc_temp_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_125">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="alu_x(7:0)" name="d(7:0)" />
            <blockpin signalname="acc_o(7:0)" name="o(7:0)" />
            <blockpin signalname="cc_acc_r" name="r" />
            <blockpin signalname="cc_acc_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_126">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="r0_o(7:0)" name="o(7:0)" />
            <blockpin signalname="cc_r0_r" name="r" />
            <blockpin signalname="cc_r0_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_127">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="r1_o(7:0)" name="o(7:0)" />
            <blockpin signalname="cc_r1_r" name="r" />
            <blockpin signalname="cc_r1_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_128">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="r2_o(7:0)" name="o(7:0)" />
            <blockpin signalname="cc_r2_r" name="r" />
            <blockpin signalname="cc_r2_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="XLXI_129">
            <blockpin signalname="rst" name="clr" />
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="r3_o(7:0)" name="o(7:0)" />
            <blockpin signalname="cc_r3_r" name="r" />
            <blockpin signalname="cc_r3_w" name="w" />
        </block>
        <block symbolname="cpu_output_muxer" name="XLXI_130">
            <blockpin signalname="acc_o(7:0)" name="acc_o(7:0)" />
            <blockpin signalname="cc_acc_r" name="acc_r" />
            <blockpin signalname="not_reading" name="g" />
            <blockpin signalname="iar_o(7:0)" name="iar_o(7:0)" />
            <blockpin signalname="cc_iar_r" name="iar_r" />
            <blockpin signalname="manr_o(7:0)" name="manr_o(7:0)" />
            <blockpin signalname="manr_r" name="manr_r" />
            <blockpin signalname="ram_o(7:0)" name="mem_o(7:0)" />
            <blockpin signalname="cc_ram_r" name="mem_r" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
            <blockpin signalname="r0_o(7:0)" name="r0_o(7:0)" />
            <blockpin signalname="cc_r0_r" name="r0_r" />
            <blockpin signalname="r1_o(7:0)" name="r1_o(7:0)" />
            <blockpin signalname="cc_r1_r" name="r1_r" />
            <blockpin signalname="r2_o(7:0)" name="r2_o(7:0)" />
            <blockpin signalname="cc_r2_r" name="r2_r" />
            <blockpin signalname="r3_o(7:0)" name="r3_o(7:0)" />
            <blockpin signalname="cc_r3_r" name="r3_r" />
        </block>
        <block symbolname="gnd" name="XLXI_136">
            <blockpin name="G" />
        </block>
        <block symbolname="fdc_1" name="XLXI_102">
            <blockpin signalname="clkr" name="C" />
            <blockpin signalname="rst" name="CLR" />
            <blockpin signalname="flags_o(0)" name="D" />
            <blockpin signalname="XLXN_216" name="Q" />
        </block>
        <block symbolname="clk_generator" name="clck_gen">
            <blockpin signalname="clk_int" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clkr" name="clkr" />
            <blockpin signalname="clkc" name="clkc" />
            <blockpin signalname="clkw" name="clkw" />
        </block>
        <block symbolname="cpu_freq_divider" name="XLXI_173">
            <blockpin signalname="clk" name="clk_in" />
            <blockpin signalname="clk_int" name="clk_out" />
            <blockpin signalname="is_clk_external" name="external" />
            <blockpin name="external_clk_in" />
            <blockpin signalname="is_clk_high" name="high" />
            <blockpin signalname="is_clk_low" name="low" />
            <blockpin signalname="is_clk_manual" name="manual" />
            <blockpin signalname="manual_clk_in" name="manual_clk_in" />
            <blockpin signalname="rst" name="rst" />
        </block>
        <block symbolname="gnd" name="XLXI_183">
            <blockpin signalname="is_clk_high" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_184">
            <blockpin signalname="is_clk_external" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_185">
            <blockpin signalname="is_clk_low" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_186">
            <blockpin signalname="is_clk_manual" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_187">
            <blockpin signalname="clk" name="I" />
            <blockpin signalname="cpu_clk" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_188">
            <blockpin signalname="clk_int" name="I" />
            <blockpin signalname="cpu_clk_int" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_189">
            <blockpin signalname="clkc" name="I" />
            <blockpin signalname="cpu_clkc" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_190">
            <blockpin signalname="clkr" name="I" />
            <blockpin signalname="cpu_clkr" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_191">
            <blockpin signalname="clkw" name="I" />
            <blockpin signalname="cpu_clkw" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_192">
            <blockpin signalname="cc_s1" name="I" />
            <blockpin signalname="cpu_s1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_193">
            <blockpin signalname="cc_s2" name="I" />
            <blockpin signalname="cpu_s2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_194">
            <blockpin signalname="cc_s3" name="I" />
            <blockpin signalname="cpu_s3" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_195">
            <blockpin signalname="cc_s4" name="I" />
            <blockpin signalname="cpu_s4" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_196">
            <blockpin signalname="cc_s5" name="I" />
            <blockpin signalname="cpu_s5" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_207">
            <blockpin signalname="cc_s6" name="I" />
            <blockpin signalname="cpu_s6" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_219">
            <blockpin signalname="r0_r" name="I" />
            <blockpin signalname="cpu_r0_r" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_220">
            <blockpin signalname="XLXN_262" name="I" />
            <blockpin signalname="XLXN_272" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_221">
            <blockpin signalname="XLXN_263" name="I" />
            <blockpin signalname="XLXN_273" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_222">
            <blockpin signalname="XLXN_264" name="I" />
            <blockpin signalname="XLXN_274" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_223">
            <blockpin signalname="XLXN_265" name="I" />
            <blockpin signalname="XLXN_275" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_224">
            <blockpin signalname="XLXN_266" name="I" />
            <blockpin signalname="XLXN_276" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_225">
            <blockpin signalname="XLXN_267" name="I" />
            <blockpin signalname="XLXN_277" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_226">
            <blockpin signalname="XLXN_268" name="I" />
            <blockpin signalname="XLXN_281" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_227">
            <blockpin signalname="XLXN_269" name="I" />
            <blockpin signalname="XLXN_278" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_228">
            <blockpin signalname="XLXN_270" name="I" />
            <blockpin signalname="XLXN_282" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_229">
            <blockpin signalname="XLXN_279" name="I" />
            <blockpin signalname="XLXN_280" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_212">
            <blockpin signalname="clkr" name="I" />
            <blockpin signalname="XLXN_237" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_210">
            <blockpin signalname="cc_s1" name="I0" />
            <blockpin signalname="XLXN_237" name="I1" />
            <blockpin signalname="sysbus_released" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_326">
            <blockpin signalname="sysbus_released" name="I0" />
            <blockpin signalname="is_clk_manual" name="I1" />
            <blockpin signalname="in_read_reg_en" name="I2" />
            <blockpin signalname="can_read" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_380">
            <blockpin signalname="is_clk_manual" name="I0" />
            <blockpin signalname="in_write_reg_en" name="I1" />
            <blockpin signalname="can_write" name="O" />
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
        <branch name="cc_acc_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1072" type="branch" />
            <wire x2="784" y1="1072" y2="1072" x1="208" />
            <wire x2="208" y1="1072" y2="1152" x1="208" />
        </branch>
        <branch name="cc_acc_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1392" type="branch" />
            <wire x2="208" y1="1280" y2="1280" x1="160" />
            <wire x2="160" y1="1280" y2="1392" x1="160" />
            <wire x2="784" y1="1392" y2="1392" x1="160" />
        </branch>
        <branch name="cc_iar_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="3232" type="branch" />
            <wire x2="1520" y1="3232" y2="3232" x1="1360" />
        </branch>
        <branch name="iar_w">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="3360" type="branch" />
            <wire x2="1376" y1="3360" y2="3360" x1="1280" />
            <wire x2="1520" y1="3360" y2="3360" x1="1376" />
        </branch>
        <branch name="cc_r1_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="480" type="branch" />
            <wire x2="1968" y1="192" y2="480" x1="1968" />
            <wire x2="2016" y1="192" y2="192" x1="1968" />
        </branch>
        <branch name="cc_r2_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="432" type="branch" />
            <wire x2="2496" y1="320" y2="320" x1="2464" />
            <wire x2="2464" y1="320" y2="432" x1="2464" />
            <wire x2="2560" y1="432" y2="432" x1="2464" />
        </branch>
        <branch name="cc_r2_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="480" type="branch" />
            <wire x2="2496" y1="192" y2="192" x1="2448" />
            <wire x2="2448" y1="192" y2="480" x1="2448" />
            <wire x2="2560" y1="480" y2="480" x1="2448" />
        </branch>
        <branch name="cc_r0_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="480" type="branch" />
            <wire x2="1472" y1="192" y2="480" x1="1472" />
            <wire x2="1536" y1="192" y2="192" x1="1472" />
        </branch>
        <branch name="cc_r3_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="432" type="branch" />
            <wire x2="2944" y1="320" y2="432" x1="2944" />
            <wire x2="3040" y1="432" y2="432" x1="2944" />
            <wire x2="2976" y1="320" y2="320" x1="2944" />
        </branch>
        <branch name="cc_r3_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="480" type="branch" />
            <wire x2="2976" y1="192" y2="192" x1="2928" />
            <wire x2="2928" y1="192" y2="480" x1="2928" />
            <wire x2="3040" y1="480" y2="480" x1="2928" />
        </branch>
        <branch name="pto(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="512" type="branch" />
            <wire x2="160" y1="640" y2="832" x1="160" />
            <wire x2="224" y1="832" y2="832" x1="160" />
            <wire x2="720" y1="640" y2="640" x1="160" />
            <wire x2="720" y1="512" y2="512" x1="608" />
            <wire x2="720" y1="512" y2="640" x1="720" />
        </branch>
        <iomarker fontsize="28" x="80" y="80" name="sysbus(7:0)" orien="R180" />
        <branch name="in_manr_d(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="3296" type="branch" />
            <wire x2="416" y1="3296" y2="3296" x1="288" />
        </branch>
        <branch name="manr_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="3360" type="branch" />
            <wire x2="416" y1="3360" y2="3360" x1="288" />
        </branch>
        <instance x="704" y="288" name="XLXI_8" orien="R0" />
        <branch name="cc_ram_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="800" type="branch" />
            <wire x2="5280" y1="800" y2="800" x1="4720" />
        </branch>
        <branch name="cc_ram_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="928" type="branch" />
            <wire x2="5280" y1="928" y2="928" x1="4720" />
        </branch>
        <branch name="clkw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4720" y="992" type="branch" />
            <wire x2="5280" y1="992" y2="992" x1="4720" />
        </branch>
        <branch name="cc_ram_a_w">
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
        <instance x="1024" y="3456" name="XLXI_10" orien="R0" />
        <branch name="manual_iar_w">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="944" y="3120" type="branch" />
            <wire x2="864" y1="3024" y2="3040" x1="864" />
            <wire x2="944" y1="3024" y2="3024" x1="864" />
            <wire x2="944" y1="3024" y2="3120" x1="944" />
            <wire x2="944" y1="3120" y2="3392" x1="944" />
            <wire x2="1024" y1="3392" y2="3392" x1="944" />
        </branch>
        <branch name="cc_iar_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="3120" type="branch" />
            <wire x2="1008" y1="3120" y2="3328" x1="1008" />
            <wire x2="1024" y1="3328" y2="3328" x1="1008" />
        </branch>
        <branch name="cc_alu_op(2:0)">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="624" type="branch" />
            <wire x2="3440" y1="464" y2="528" x1="3440" />
            <wire x2="3440" y1="528" y2="592" x1="3440" />
            <wire x2="3440" y1="592" y2="624" x1="3440" />
            <wire x2="3552" y1="624" y2="624" x1="3440" />
        </branch>
        <bustap x2="3344" y1="592" y2="592" x1="3440" />
        <bustap x2="3344" y1="528" y2="528" x1="3440" />
        <bustap x2="3344" y1="464" y2="464" x1="3440" />
        <branch name="alu_gt">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="768" type="branch" />
            <wire x2="784" y1="768" y2="768" x1="608" />
        </branch>
        <branch name="cc_alu_op(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="464" type="branch" />
            <wire x2="3344" y1="464" y2="464" x1="3104" />
            <wire x2="3104" y1="464" y2="912" x1="3104" />
        </branch>
        <branch name="cc_alu_op(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="528" type="branch" />
            <wire x2="3344" y1="528" y2="528" x1="3168" />
            <wire x2="3168" y1="528" y2="912" x1="3168" />
        </branch>
        <branch name="cc_alu_op(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3296" y="592" type="branch" />
            <wire x2="3344" y1="592" y2="592" x1="3296" />
            <wire x2="3296" y1="592" y2="912" x1="3296" />
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
            <wire x2="1040" y1="2352" y2="2400" x1="1040" />
            <wire x2="1120" y1="2400" y2="2400" x1="1040" />
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
        <branch name="clkw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1072" type="branch" />
            <wire x2="1984" y1="1072" y2="1072" x1="1856" />
        </branch>
        <branch name="clkr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1136" type="branch" />
            <wire x2="1984" y1="1136" y2="1136" x1="1856" />
        </branch>
        <branch name="cc_r2_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1072" type="branch" />
            <wire x2="3696" y1="1072" y2="1072" x1="3584" />
        </branch>
        <branch name="cc_r2_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1136" type="branch" />
            <wire x2="3696" y1="1136" y2="1136" x1="3584" />
        </branch>
        <branch name="cc_r3_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1200" type="branch" />
            <wire x2="3696" y1="1200" y2="1200" x1="3584" />
        </branch>
        <branch name="cc_flags_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1328" type="branch" />
            <wire x2="3696" y1="1328" y2="1328" x1="3584" />
        </branch>
        <branch name="cc_r1_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="800" type="branch" />
            <wire x2="3488" y1="800" y2="912" x1="3488" />
        </branch>
        <branch name="cc_r0_r">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3424" y="800" type="branch" />
            <wire x2="3424" y1="800" y2="912" x1="3424" />
        </branch>
        <branch name="cc_r0_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="800" type="branch" />
            <wire x2="3360" y1="800" y2="912" x1="3360" />
        </branch>
        <branch name="cc_ram_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="800" type="branch" />
            <wire x2="3232" y1="800" y2="912" x1="3232" />
        </branch>
        <branch name="cc_temp_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="800" type="branch" />
            <wire x2="3040" y1="800" y2="912" x1="3040" />
        </branch>
        <branch name="cc_acc_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="800" type="branch" />
            <wire x2="2976" y1="800" y2="912" x1="2976" />
        </branch>
        <branch name="cc_acc_r">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="800" type="branch" />
            <wire x2="2912" y1="800" y2="912" x1="2912" />
        </branch>
        <branch name="cc_ram_a_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="800" type="branch" />
            <wire x2="2848" y1="800" y2="912" x1="2848" />
        </branch>
        <branch name="cc_ram_r">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="800" type="branch" />
            <wire x2="2784" y1="800" y2="912" x1="2784" />
        </branch>
        <branch name="cc_ir_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="800" type="branch" />
            <wire x2="2720" y1="800" y2="912" x1="2720" />
        </branch>
        <branch name="cc_bus1">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="800" type="branch" />
            <wire x2="2656" y1="800" y2="912" x1="2656" />
        </branch>
        <branch name="cc_iar_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="800" type="branch" />
            <wire x2="2592" y1="800" y2="912" x1="2592" />
        </branch>
        <branch name="cc_flags_clr">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="800" type="branch" />
            <wire x2="2464" y1="800" y2="912" x1="2464" />
        </branch>
        <branch name="ir_o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="3232" type="branch" />
            <wire x2="2144" y1="2512" y2="2864" x1="2144" />
            <wire x2="2720" y1="2864" y2="2864" x1="2144" />
            <wire x2="2720" y1="2864" y2="3232" x1="2720" />
            <wire x2="2784" y1="3232" y2="3232" x1="2720" />
            <wire x2="2720" y1="3232" y2="3232" x1="2608" />
        </branch>
        <branch name="flags_o(3:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="2720" type="branch" />
            <wire x2="2080" y1="2512" y2="2720" x1="2080" />
        </branch>
        <branch name="clkc">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1008" type="branch" />
            <wire x2="1984" y1="1008" y2="1008" x1="1856" />
        </branch>
        <instance x="1984" y="2512" name="cpu_ctl" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="416" y="2608" name="XLXI_87" orien="R0" />
        <branch name="XLXN_194">
            <wire x2="416" y1="2416" y2="2416" x1="320" />
        </branch>
        <instance x="320" y="2480" name="XLXI_88" orien="R270" />
        <branch name="alu_C_in_enabled">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1200" type="branch" />
            <wire x2="1984" y1="1200" y2="1200" x1="1840" />
        </branch>
        <branch name="alu_C_in">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1600" type="branch" />
            <wire x2="1856" y1="1600" y2="1600" x1="1696" />
        </branch>
        <branch name="alu_C_in_enabled">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1568" type="branch" />
            <wire x2="1440" y1="1568" y2="1568" x1="1232" />
        </branch>
        <instance x="1440" y="1696" name="XLXI_89" orien="R0" />
        <branch name="XLXN_216">
            <wire x2="1392" y1="1680" y2="1680" x1="1360" />
            <wire x2="1392" y1="1632" y2="1680" x1="1392" />
            <wire x2="1440" y1="1632" y2="1632" x1="1392" />
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
        <branch name="cc_bus1">
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
        <branch name="cc_temp_w">
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
        <instance x="320" y="2832" name="XLXI_116" orien="R0" />
        <instance x="640" y="2832" name="XLXI_117" orien="R0" />
        <branch name="rst_in">
            <wire x2="320" y1="2800" y2="2800" x1="240" />
        </branch>
        <branch name="XLXN_233">
            <wire x2="640" y1="2800" y2="2800" x1="544" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2800" type="branch" />
            <wire x2="960" y1="2800" y2="2800" x1="864" />
        </branch>
        <iomarker fontsize="28" x="240" y="2800" name="rst_in" orien="R180" />
        <instance x="800" y="3168" name="XLXI_120" orien="R0" />
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
        <branch name="cc_r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="320" type="branch" />
            <wire x2="1536" y1="320" y2="320" x1="1280" />
        </branch>
        <branch name="cc_r1_w">
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
        <branch name="clk_int">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1360" type="branch" />
            <wire x2="1360" y1="1360" y2="1360" x1="1280" />
        </branch>
        <instance x="1360" y="1520" name="clck_gen" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk">
            <wire x2="320" y1="1488" y2="1488" x1="256" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1616" type="branch" />
            <wire x2="320" y1="1616" y2="1616" x1="272" />
        </branch>
        <branch name="is_clk_high">
            <wire x2="320" y1="1744" y2="1744" x1="256" />
        </branch>
        <branch name="is_clk_low">
            <wire x2="320" y1="1808" y2="1808" x1="256" />
        </branch>
        <branch name="is_clk_manual">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1872" type="branch" />
            <wire x2="272" y1="1872" y2="1872" x1="256" />
            <wire x2="320" y1="1872" y2="1872" x1="272" />
        </branch>
        <branch name="is_clk_external">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1936" type="branch" />
            <wire x2="272" y1="1936" y2="1936" x1="256" />
            <wire x2="320" y1="1936" y2="1936" x1="272" />
        </branch>
        <branch name="clk_int">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1488" type="branch" />
            <wire x2="832" y1="1488" y2="1488" x1="704" />
        </branch>
        <instance x="320" y="1968" name="XLXI_173" orien="R0">
        </instance>
        <iomarker fontsize="28" x="256" y="1488" name="clk" orien="R180" />
        <instance x="128" y="1872" name="XLXI_184" orien="R90" />
        <instance x="128" y="1744" name="XLXI_185" orien="R90" />
        <branch name="cc_r1_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1008" type="branch" />
            <wire x2="3696" y1="1008" y2="1008" x1="3584" />
        </branch>
        <branch name="cc_r3_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3696" y="1264" type="branch" />
            <wire x2="3696" y1="1264" y2="1264" x1="3584" />
        </branch>
        <branch name="cc_iar_r">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="800" type="branch" />
            <wire x2="2528" y1="800" y2="912" x1="2528" />
        </branch>
        <branch name="cc_s1">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="800" type="branch" />
            <wire x2="2080" y1="800" y2="912" x1="2080" />
        </branch>
        <branch name="cc_s3">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="800" type="branch" />
            <wire x2="2208" y1="800" y2="912" x1="2208" />
        </branch>
        <branch name="cc_s5">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="800" type="branch" />
            <wire x2="2336" y1="800" y2="912" x1="2336" />
        </branch>
        <branch name="cc_s6">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="800" type="branch" />
            <wire x2="2400" y1="800" y2="912" x1="2400" />
        </branch>
        <branch name="cc_s2">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="800" type="branch" />
            <wire x2="2144" y1="800" y2="912" x1="2144" />
        </branch>
        <branch name="cc_s4">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="800" type="branch" />
            <wire x2="2272" y1="800" y2="912" x1="2272" />
        </branch>
        <instance x="336" y="4672" name="XLXI_187" orien="R0" />
        <instance x="336" y="4736" name="XLXI_188" orien="R0" />
        <instance x="336" y="4800" name="XLXI_189" orien="R0" />
        <instance x="336" y="4864" name="XLXI_190" orien="R0" />
        <instance x="336" y="4928" name="XLXI_191" orien="R0" />
        <instance x="336" y="4992" name="XLXI_192" orien="R0" />
        <instance x="336" y="5056" name="XLXI_193" orien="R0" />
        <instance x="336" y="5120" name="XLXI_194" orien="R0" />
        <instance x="336" y="5184" name="XLXI_195" orien="R0" />
        <instance x="336" y="5248" name="XLXI_196" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="4640" type="branch" />
            <wire x2="336" y1="4640" y2="4640" x1="240" />
        </branch>
        <branch name="clk_int">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="4704" type="branch" />
            <wire x2="336" y1="4704" y2="4704" x1="240" />
        </branch>
        <branch name="clkc">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="4768" type="branch" />
            <wire x2="336" y1="4768" y2="4768" x1="240" />
        </branch>
        <branch name="clkr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="4832" type="branch" />
            <wire x2="336" y1="4832" y2="4832" x1="240" />
        </branch>
        <branch name="clkw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="4896" type="branch" />
            <wire x2="336" y1="4896" y2="4896" x1="240" />
        </branch>
        <branch name="cc_s1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="4960" type="branch" />
            <wire x2="336" y1="4960" y2="4960" x1="240" />
        </branch>
        <branch name="cc_s2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="5024" type="branch" />
            <wire x2="336" y1="5024" y2="5024" x1="240" />
        </branch>
        <branch name="cc_s3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="5088" type="branch" />
            <wire x2="336" y1="5088" y2="5088" x1="240" />
        </branch>
        <branch name="cc_s4">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="5152" type="branch" />
            <wire x2="336" y1="5152" y2="5152" x1="240" />
        </branch>
        <branch name="cc_s5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="5216" type="branch" />
            <wire x2="336" y1="5216" y2="5216" x1="240" />
        </branch>
        <branch name="cpu_clk">
            <wire x2="720" y1="4640" y2="4640" x1="560" />
        </branch>
        <branch name="cpu_clk_int">
            <wire x2="720" y1="4704" y2="4704" x1="560" />
        </branch>
        <branch name="cpu_clkc">
            <wire x2="720" y1="4768" y2="4768" x1="560" />
        </branch>
        <branch name="cpu_clkr">
            <wire x2="720" y1="4832" y2="4832" x1="560" />
        </branch>
        <branch name="cpu_clkw">
            <wire x2="720" y1="4896" y2="4896" x1="560" />
        </branch>
        <branch name="cpu_s1">
            <wire x2="720" y1="4960" y2="4960" x1="560" />
        </branch>
        <branch name="cpu_s2">
            <wire x2="720" y1="5024" y2="5024" x1="560" />
        </branch>
        <branch name="cpu_s4">
            <wire x2="720" y1="5152" y2="5152" x1="560" />
        </branch>
        <instance x="336" y="5312" name="XLXI_207" orien="R0" />
        <branch name="cc_s6">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="5280" type="branch" />
            <wire x2="336" y1="5280" y2="5280" x1="240" />
        </branch>
        <branch name="cpu_s6">
            <wire x2="720" y1="5280" y2="5280" x1="560" />
        </branch>
        <branch name="cpu_s3">
            <wire x2="720" y1="5088" y2="5088" x1="560" />
        </branch>
        <branch name="cpu_s5">
            <wire x2="720" y1="5216" y2="5216" x1="560" />
        </branch>
        <instance x="1136" y="4672" name="XLXI_219" orien="R0" />
        <instance x="1136" y="4736" name="XLXI_220" orien="R0" />
        <instance x="1136" y="4800" name="XLXI_221" orien="R0" />
        <instance x="1136" y="4864" name="XLXI_222" orien="R0" />
        <instance x="1136" y="4928" name="XLXI_223" orien="R0" />
        <instance x="1136" y="4992" name="XLXI_224" orien="R0" />
        <instance x="1136" y="5056" name="XLXI_225" orien="R0" />
        <instance x="1136" y="5120" name="XLXI_226" orien="R0" />
        <instance x="1136" y="5184" name="XLXI_227" orien="R0" />
        <instance x="1136" y="5248" name="XLXI_228" orien="R0" />
        <branch name="r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="4640" type="branch" />
            <wire x2="1136" y1="4640" y2="4640" x1="1040" />
        </branch>
        <branch name="XLXN_262">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="4704" type="branch" />
            <wire x2="1136" y1="4704" y2="4704" x1="1040" />
        </branch>
        <branch name="XLXN_263">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="4768" type="branch" />
            <wire x2="1136" y1="4768" y2="4768" x1="1040" />
        </branch>
        <branch name="XLXN_264">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="4832" type="branch" />
            <wire x2="1136" y1="4832" y2="4832" x1="1040" />
        </branch>
        <branch name="XLXN_265">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="4896" type="branch" />
            <wire x2="1136" y1="4896" y2="4896" x1="1040" />
        </branch>
        <branch name="XLXN_266">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="4960" type="branch" />
            <wire x2="1136" y1="4960" y2="4960" x1="1040" />
        </branch>
        <branch name="XLXN_267">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="5024" type="branch" />
            <wire x2="1136" y1="5024" y2="5024" x1="1040" />
        </branch>
        <branch name="XLXN_268">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="5088" type="branch" />
            <wire x2="1136" y1="5088" y2="5088" x1="1040" />
        </branch>
        <branch name="XLXN_269">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="5152" type="branch" />
            <wire x2="1136" y1="5152" y2="5152" x1="1040" />
        </branch>
        <branch name="XLXN_270">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="5216" type="branch" />
            <wire x2="1136" y1="5216" y2="5216" x1="1040" />
        </branch>
        <branch name="cpu_r0_r">
            <wire x2="1520" y1="4640" y2="4640" x1="1360" />
        </branch>
        <branch name="XLXN_272">
            <wire x2="1520" y1="4704" y2="4704" x1="1360" />
        </branch>
        <branch name="XLXN_273">
            <wire x2="1520" y1="4768" y2="4768" x1="1360" />
        </branch>
        <branch name="XLXN_274">
            <wire x2="1520" y1="4832" y2="4832" x1="1360" />
        </branch>
        <branch name="XLXN_275">
            <wire x2="1520" y1="4896" y2="4896" x1="1360" />
        </branch>
        <branch name="XLXN_276">
            <wire x2="1520" y1="4960" y2="4960" x1="1360" />
        </branch>
        <branch name="XLXN_277">
            <wire x2="1520" y1="5024" y2="5024" x1="1360" />
        </branch>
        <branch name="XLXN_278">
            <wire x2="1520" y1="5152" y2="5152" x1="1360" />
        </branch>
        <instance x="1136" y="5312" name="XLXI_229" orien="R0" />
        <branch name="XLXN_279">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="5280" type="branch" />
            <wire x2="1136" y1="5280" y2="5280" x1="1040" />
        </branch>
        <branch name="XLXN_280">
            <wire x2="1520" y1="5280" y2="5280" x1="1360" />
        </branch>
        <branch name="XLXN_281">
            <wire x2="1520" y1="5088" y2="5088" x1="1360" />
        </branch>
        <branch name="XLXN_282">
            <wire x2="1520" y1="5216" y2="5216" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="720" y="4640" name="cpu_clk" orien="R0" />
        <iomarker fontsize="28" x="720" y="4704" name="cpu_clk_int" orien="R0" />
        <iomarker fontsize="28" x="720" y="4768" name="cpu_clkc" orien="R0" />
        <iomarker fontsize="28" x="720" y="4832" name="cpu_clkr" orien="R0" />
        <iomarker fontsize="28" x="720" y="4896" name="cpu_clkw" orien="R0" />
        <iomarker fontsize="28" x="720" y="4960" name="cpu_s1" orien="R0" />
        <iomarker fontsize="28" x="720" y="5024" name="cpu_s2" orien="R0" />
        <iomarker fontsize="28" x="720" y="5088" name="cpu_s3" orien="R0" />
        <iomarker fontsize="28" x="720" y="5152" name="cpu_s4" orien="R0" />
        <iomarker fontsize="28" x="720" y="5216" name="cpu_s5" orien="R0" />
        <iomarker fontsize="28" x="720" y="5280" name="cpu_s6" orien="R0" />
        <iomarker fontsize="28" x="1520" y="4640" name="cpu_r0_r" orien="R0" />
        <iomarker fontsize="28" x="1520" y="4768" name="XLXN_273" orien="R0" />
        <iomarker fontsize="28" x="1520" y="4832" name="XLXN_274" orien="R0" />
        <iomarker fontsize="28" x="1520" y="4896" name="XLXN_275" orien="R0" />
        <iomarker fontsize="28" x="1520" y="4960" name="XLXN_276" orien="R0" />
        <iomarker fontsize="28" x="1520" y="5024" name="XLXN_277" orien="R0" />
        <iomarker fontsize="28" x="1520" y="5088" name="XLXN_281" orien="R0" />
        <iomarker fontsize="28" x="1520" y="5152" name="XLXN_278" orien="R0" />
        <iomarker fontsize="28" x="1520" y="5216" name="XLXN_282" orien="R0" />
        <iomarker fontsize="28" x="1520" y="5280" name="XLXN_280" orien="R0" />
        <iomarker fontsize="28" x="1520" y="4704" name="XLXN_272" orien="R0" />
        <branch name="cc_iar_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4320" y="1808" type="branch" />
            <wire x2="4416" y1="1808" y2="1808" x1="4320" />
        </branch>
        <branch name="cc_acc_r">
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
        <branch name="cc_ram_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4352" y="1936" type="branch" />
            <wire x2="4416" y1="1936" y2="1936" x1="4352" />
        </branch>
        <branch name="iar_o(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4352" y="2128" type="branch" />
            <wire x2="4416" y1="2128" y2="2128" x1="4352" />
        </branch>
        <branch name="cc_r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4320" y="2064" type="branch" />
            <wire x2="4416" y1="2064" y2="2064" x1="4320" />
        </branch>
        <branch name="cc_r1_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4320" y="2256" type="branch" />
            <wire x2="4416" y1="2256" y2="2256" x1="4320" />
        </branch>
        <branch name="cc_r2_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4512" y="2464" type="branch" />
            <wire x2="4512" y1="2352" y2="2464" x1="4512" />
        </branch>
        <branch name="cc_r3_r">
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
        <instance x="320" y="3968" name="XLXI_212" orien="R0" />
        <instance x="640" y="4064" name="XLXI_210" orien="R0" />
        <branch name="sysbus_released">
            <wire x2="944" y1="3968" y2="3968" x1="896" />
        </branch>
        <branch name="clkr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="3936" type="branch" />
            <wire x2="320" y1="3936" y2="3936" x1="224" />
        </branch>
        <branch name="XLXN_237">
            <wire x2="640" y1="3936" y2="3936" x1="544" />
        </branch>
        <instance x="640" y="4320" name="XLXI_326" orien="R0" />
        <branch name="in_read_reg_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="4128" type="branch" />
            <wire x2="640" y1="4128" y2="4128" x1="544" />
        </branch>
        <branch name="is_clk_manual">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="4192" type="branch" />
            <wire x2="640" y1="4192" y2="4192" x1="544" />
        </branch>
        <branch name="sysbus_released">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="4256" type="branch" />
            <wire x2="640" y1="4256" y2="4256" x1="544" />
        </branch>
        <branch name="can_read">
            <wire x2="944" y1="4192" y2="4192" x1="896" />
        </branch>
        <branch name="in_write_reg_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="4400" type="branch" />
            <wire x2="640" y1="4400" y2="4400" x1="544" />
        </branch>
        <branch name="is_clk_manual">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="4464" type="branch" />
            <wire x2="640" y1="4464" y2="4464" x1="544" />
        </branch>
        <instance x="640" y="4528" name="XLXI_380" orien="R0" />
        <branch name="can_write">
            <wire x2="944" y1="4432" y2="4432" x1="896" />
        </branch>
        <branch name="in_manr_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3760" type="branch" />
            <wire x2="592" y1="3760" y2="3760" x1="448" />
            <wire x2="608" y1="3760" y2="3760" x1="592" />
        </branch>
        <iomarker fontsize="28" x="448" y="3760" name="in_manr_r" orien="R180" />
        <branch name="in_r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="4016" type="branch" />
            <wire x2="1840" y1="4016" y2="4016" x1="1760" />
        </branch>
        <branch name="manual_r0_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="4048" type="branch" />
            <wire x2="2160" y1="4048" y2="4048" x1="2096" />
        </branch>
        <instance x="1840" y="4144" name="XLXI_371" orien="R0" />
        <branch name="can_read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="4080" type="branch" />
            <wire x2="1840" y1="4080" y2="4080" x1="1760" />
        </branch>
        <branch name="cc_r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="4176" type="branch" />
            <wire x2="1840" y1="4176" y2="4176" x1="1744" />
        </branch>
        <branch name="manual_r0_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="4240" type="branch" />
            <wire x2="1840" y1="4240" y2="4240" x1="1744" />
        </branch>
        <branch name="r0_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="4208" type="branch" />
            <wire x2="2176" y1="4208" y2="4208" x1="2096" />
        </branch>
        <instance x="1840" y="4304" name="XLXI_218" orien="R0" />
        <instance x="1840" y="4464" name="XLXI_381" orien="R0" />
        <instance x="1840" y="4608" name="XLXI_375" orien="R0" />
        <branch name="cc_r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="4480" type="branch" />
            <wire x2="1840" y1="4480" y2="4480" x1="1776" />
        </branch>
        <branch name="manual_r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="4544" type="branch" />
            <wire x2="1840" y1="4544" y2="4544" x1="1776" />
        </branch>
        <branch name="r0_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="4512" type="branch" />
            <wire x2="2128" y1="4512" y2="4512" x1="2096" />
            <wire x2="2160" y1="4512" y2="4512" x1="2128" />
        </branch>
        <branch name="in_r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="4336" type="branch" />
            <wire x2="1840" y1="4336" y2="4336" x1="1760" />
        </branch>
        <branch name="can_write">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="4400" type="branch" />
            <wire x2="1840" y1="4400" y2="4400" x1="1760" />
        </branch>
        <branch name="manual_r0_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="4368" type="branch" />
            <wire x2="2160" y1="4368" y2="4368" x1="2096" />
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
        <branch name="in_manr_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3808" type="branch" />
            <wire x2="592" y1="3808" y2="3808" x1="448" />
            <wire x2="608" y1="3808" y2="3808" x1="592" />
        </branch>
        <iomarker fontsize="28" x="448" y="3808" name="in_manr_w" orien="R180" />
        <branch name="in_manr_d(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3856" type="branch" />
            <wire x2="608" y1="3856" y2="3856" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="3856" name="in_manr_d(7:0)" orien="R180" />
        <branch name="in_r0_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3680" type="branch" />
            <wire x2="608" y1="3680" y2="3680" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="3680" name="in_r0_r" orien="R180" />
        <iomarker fontsize="28" x="2176" y="3728" name="manr_r" orien="R0" />
        <branch name="in_write_reg_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3632" type="branch" />
            <wire x2="608" y1="3632" y2="3632" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="3632" name="in_write_reg_en" orien="R180" />
        <branch name="in_read_reg_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="3584" type="branch" />
            <wire x2="608" y1="3584" y2="3584" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="3584" name="in_read_reg_en" orien="R180" />
        <branch name="manual_clk_in">
            <wire x2="320" y1="1552" y2="1552" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="1552" name="manual_clk_in" orien="R180" />
        <instance x="256" y="1936" name="XLXI_186" orien="R270" />
        <instance x="128" y="1680" name="XLXI_183" orien="R90" />
        <iomarker fontsize="28" x="2176" y="3888" name="manr_w" orien="R0" />
        <iomarker fontsize="28" x="944" y="4192" name="can_read" orien="R0" />
        <iomarker fontsize="28" x="944" y="4432" name="can_write" orien="R0" />
        <iomarker fontsize="28" x="944" y="3968" name="sysbus_released" orien="R0" />
        <branch name="cc_s1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="4000" type="branch" />
            <wire x2="608" y1="4000" y2="4000" x1="224" />
            <wire x2="640" y1="4000" y2="4000" x1="608" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1424" type="branch" />
            <wire x2="1360" y1="1424" y2="1424" x1="1280" />
        </branch>
    </sheet>
</drawing>