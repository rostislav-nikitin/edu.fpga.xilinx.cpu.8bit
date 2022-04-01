<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sysbus(7:0)" />
        <signal name="temp_o(7:0)" />
        <signal name="alu_x(7:0)" />
        <signal name="temp_r" />
        <signal name="temp_w" />
        <signal name="bus1" />
        <signal name="alu_C_in" />
        <signal name="alu_eq" />
        <signal name="alu_gt" />
        <signal name="alu_z" />
        <signal name="alu_C_out" />
        <signal name="acc_r" />
        <signal name="acc_w" />
        <signal name="iar_r" />
        <signal name="iar_w" />
        <signal name="ir_w" />
        <signal name="r1_w" />
        <signal name="r1_r" />
        <signal name="r2_w" />
        <signal name="r2_r" />
        <signal name="r0_w" />
        <signal name="r0_r" />
        <signal name="r3_w" />
        <signal name="r3_r" />
        <signal name="pto(7:0)" />
        <signal name="rind(7:0)" />
        <signal name="rinr" />
        <signal name="rinw" />
        <signal name="clkr" />
        <signal name="clkw" />
        <signal name="clk" />
        <signal name="ram_r" />
        <signal name="ram_w" />
        <signal name="ram_a_w" />
        <signal name="alu_op(2:0)" />
        <signal name="ir_o(7:0)" />
        <signal name="ram_a_o(7:0)" />
        <signal name="XLXN_23" />
        <signal name="clkc" />
        <signal name="manual_iar_w" />
        <signal name="ctl_iar_w" />
        <signal name="ctl_r0_w" />
        <signal name="manual_r0_w" />
        <signal name="ctl_r1_w" />
        <signal name="manual_r1_w" />
        <signal name="alu_op(2)" />
        <signal name="alu_op(1)" />
        <signal name="alu_op(0)" />
        <port polarity="Output" name="sysbus(7:0)" />
        <port polarity="Output" name="temp_w" />
        <port polarity="Output" name="bus1" />
        <port polarity="Input" name="alu_C_in" />
        <port polarity="Output" name="alu_eq" />
        <port polarity="Output" name="alu_gt" />
        <port polarity="Output" name="alu_z" />
        <port polarity="Output" name="alu_C_out" />
        <port polarity="Output" name="acc_r" />
        <port polarity="Output" name="acc_w" />
        <port polarity="Output" name="iar_r" />
        <port polarity="Output" name="iar_w" />
        <port polarity="Output" name="ir_w" />
        <port polarity="Output" name="r1_w" />
        <port polarity="Output" name="r1_r" />
        <port polarity="Output" name="r2_w" />
        <port polarity="Output" name="r2_r" />
        <port polarity="Output" name="r0_w" />
        <port polarity="Output" name="r0_r" />
        <port polarity="Output" name="r3_w" />
        <port polarity="Output" name="r3_r" />
        <port polarity="Input" name="rind(7:0)" />
        <port polarity="Input" name="rinr" />
        <port polarity="Input" name="rinw" />
        <port polarity="Output" name="clkr" />
        <port polarity="Output" name="clkw" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="ram_r" />
        <port polarity="Output" name="ram_w" />
        <port polarity="Output" name="ram_a_w" />
        <port polarity="Output" name="alu_op(2:0)" />
        <port polarity="Output" name="ir_o(7:0)" />
        <port polarity="Output" name="ram_a_o(7:0)" />
        <port polarity="Output" name="clkc" />
        <port polarity="Input" name="manual_iar_w" />
        <port polarity="Output" name="ctl_iar_w" />
        <port polarity="Output" name="ctl_r0_w" />
        <port polarity="Input" name="manual_r0_w" />
        <port polarity="Output" name="ctl_r1_w" />
        <port polarity="Input" name="manual_r1_w" />
        <blockdef name="alu">
            <timestamp>2022-3-27T19:29:50</timestamp>
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
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="reg_8bit">
            <timestamp>2022-3-27T19:45:4</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="pass_through_or_one">
            <timestamp>2022-3-20T15:50:6</timestamp>
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
            <timestamp>2022-3-23T4:2:25</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="cpu_control">
            <timestamp>2022-4-1T19:1:8</timestamp>
            <rect width="1408" x="64" y="-1472" height="1408" />
            <line x2="864" y1="-1472" y2="-1536" x1="864" />
            <line x2="928" y1="-1472" y2="-1536" x1="928" />
            <line x2="1536" y1="-288" y2="-288" x1="1472" />
            <line x2="1536" y1="-800" y2="-800" x1="1472" />
            <line x2="1536" y1="-992" y2="-992" x1="1472" />
            <line x2="1536" y1="-864" y2="-864" x1="1472" />
            <line x2="1056" y1="-1472" y2="-1536" x1="1056" />
            <line x2="1120" y1="-1472" y2="-1536" x1="1120" />
            <line x2="1248" y1="-1472" y2="-1536" x1="1248" />
            <line x2="1536" y1="-736" y2="-736" x1="1472" />
            <line x2="1536" y1="-928" y2="-928" x1="1472" />
            <line x2="1536" y1="-1056" y2="-1056" x1="1472" />
            <line x2="1536" y1="-672" y2="-672" x1="1472" />
            <line x2="608" y1="-1472" y2="-1536" x1="608" />
            <line x2="0" y1="-1440" y2="-1440" x1="64" />
            <line x2="96" y1="-64" y2="0" x1="96" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="1536" y1="-1120" y2="-1120" x1="1472" />
            <line x2="480" y1="-1472" y2="-1536" x1="480" />
            <line x2="544" y1="-1472" y2="-1536" x1="544" />
            <line x2="160" y1="-64" y2="0" x1="160" />
            <rect width="24" x="148" y="-64" height="64" />
            <line x2="672" y1="-1472" y2="-1536" x1="672" />
            <line x2="1376" y1="-1472" y2="-1536" x1="1376" />
            <line x2="1312" y1="-1472" y2="-1536" x1="1312" />
            <line x2="1536" y1="-1440" y2="-1440" x1="1472" />
            <line x2="1440" y1="-1472" y2="-1536" x1="1440" />
            <line x2="1536" y1="-1312" y2="-1312" x1="1472" />
            <line x2="1536" y1="-1376" y2="-1376" x1="1472" />
            <line x2="1536" y1="-1184" y2="-1184" x1="1472" />
            <line x2="1536" y1="-1248" y2="-1248" x1="1472" />
            <line x2="800" y1="-1472" y2="-1536" x1="800" />
            <line x2="736" y1="-1472" y2="-1536" x1="736" />
            <line x2="1184" y1="-1472" y2="-1536" x1="1184" />
            <line x2="1536" y1="-608" y2="-608" x1="1472" />
            <line x2="1536" y1="-544" y2="-544" x1="1472" />
            <line x2="1536" y1="-480" y2="-480" x1="1472" />
            <line x2="1536" y1="-416" y2="-416" x1="1472" />
            <line x2="1536" y1="-352" y2="-352" x1="1472" />
            <line x2="1536" y1="-224" y2="-224" x1="1472" />
            <line x2="1536" y1="-160" y2="-160" x1="1472" />
            <line x2="1536" y1="-96" y2="-96" x1="1472" />
            <line x2="96" y1="-1472" y2="-1536" x1="96" />
            <line x2="160" y1="-1472" y2="-1536" x1="160" />
            <line x2="224" y1="-1472" y2="-1536" x1="224" />
            <line x2="288" y1="-1472" y2="-1536" x1="288" />
            <line x2="352" y1="-1472" y2="-1536" x1="352" />
            <line x2="416" y1="-1472" y2="-1536" x1="416" />
            <line x2="992" y1="-1472" y2="-1536" x1="992" />
        </blockdef>
        <blockdef name="ram_256bytes">
            <timestamp>2022-3-31T20:24:2</timestamp>
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
        <block symbolname="alu" name="alu_inst">
            <blockpin signalname="sysbus(7:0)" name="a(7:0)" />
            <blockpin signalname="pto(7:0)" name="b(7:0)" />
            <blockpin signalname="alu_C_in" name="C_in" />
            <blockpin signalname="alu_C_out" name="C_out" />
            <blockpin signalname="alu_eq" name="eq" />
            <blockpin signalname="alu_gt" name="gt" />
            <blockpin signalname="alu_op(2:0)" name="op(2:0)" />
            <blockpin signalname="alu_x(7:0)" name="x(7:0)" />
            <blockpin signalname="alu_z" name="z" />
        </block>
        <block symbolname="reg_8bit" name="r0">
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
            <blockpin signalname="r0_r" name="r" />
            <blockpin signalname="r0_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="r1">
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
            <blockpin signalname="r1_r" name="r" />
            <blockpin signalname="r1_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="r2">
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
            <blockpin signalname="r2_r" name="r" />
            <blockpin signalname="r2_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="r3">
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
            <blockpin signalname="r3_r" name="r" />
            <blockpin signalname="r3_w" name="w" />
        </block>
        <block symbolname="pass_through_or_one" name="pass_th">
            <blockpin signalname="temp_o(7:0)" name="i(7:0)" />
            <blockpin signalname="pto(7:0)" name="o(7:0)" />
            <blockpin signalname="bus1" name="one" />
        </block>
        <block symbolname="reg_8bit" name="temp">
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="temp_o(7:0)" name="o(7:0)" />
            <blockpin signalname="temp_r" name="r" />
            <blockpin signalname="temp_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="acc">
            <blockpin signalname="alu_x(7:0)" name="d(7:0)" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
            <blockpin signalname="acc_r" name="r" />
            <blockpin signalname="acc_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="iar">
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
            <blockpin signalname="iar_r" name="r" />
            <blockpin signalname="iar_w" name="w" />
        </block>
        <block symbolname="reg_8bit" name="rin">
            <blockpin signalname="rind(7:0)" name="d(7:0)" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
            <blockpin signalname="rinr" name="r" />
            <blockpin signalname="rinw" name="w" />
        </block>
        <block symbolname="pullup" name="XLXI_8">
            <blockpin signalname="temp_r" name="O" />
        </block>
        <block symbolname="clk_generator" name="clck_gen">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="clkc" name="clkc" />
            <blockpin signalname="clkr" name="clkr" />
            <blockpin signalname="clkw" name="clkw" />
        </block>
        <block symbolname="cpu_control" name="cpu_ctl">
            <blockpin signalname="acc_r" name="acc_r" />
            <blockpin signalname="acc_w" name="acc_w" />
            <blockpin name="alu" />
            <blockpin name="alu_and" />
            <blockpin name="alu_lshift" />
            <blockpin name="alu_not" />
            <blockpin signalname="alu_op(0)" name="alu_op0" />
            <blockpin signalname="alu_op(1)" name="alu_op1" />
            <blockpin signalname="alu_op(2)" name="alu_op2" />
            <blockpin name="alu_or" />
            <blockpin name="alu_rshift" />
            <blockpin name="alu_sum" />
            <blockpin name="alu_xor" />
            <blockpin signalname="bus1" name="bus1" />
            <blockpin signalname="clkc" name="clk" />
            <blockpin signalname="clkr" name="clkr" />
            <blockpin signalname="clkw" name="clkw" />
            <blockpin name="ground" />
            <blockpin signalname="iar_r" name="iar_r" />
            <blockpin signalname="ctl_iar_w" name="iar_w" />
            <blockpin signalname="ir_o(7:0)" name="ir(7:0)" />
            <blockpin signalname="ir_w" name="ir_w" />
            <blockpin signalname="r0_r" name="r0_r" />
            <blockpin signalname="ctl_r0_w" name="r0_w" />
            <blockpin signalname="r1_r" name="r1_r" />
            <blockpin signalname="ctl_r1_w" name="r1_w" />
            <blockpin signalname="r2_r" name="r2_r" />
            <blockpin signalname="r2_w" name="r2_w" />
            <blockpin signalname="r3_r" name="r3_r" />
            <blockpin signalname="r3_w" name="r3_w" />
            <blockpin signalname="ram_a_w" name="ram_a_w" />
            <blockpin signalname="ram_r" name="ram_r" />
            <blockpin signalname="ram_w" name="ram_w" />
            <blockpin name="ra_0" />
            <blockpin name="ra_1" />
            <blockpin name="ra_2" />
            <blockpin name="ra_3" />
            <blockpin name="rb_0" />
            <blockpin name="rb_1" />
            <blockpin name="rb_2" />
            <blockpin name="rb_3" />
            <blockpin name="s1" />
            <blockpin name="s2" />
            <blockpin name="s3" />
            <blockpin name="s4" />
            <blockpin name="s5" />
            <blockpin name="s6" />
            <blockpin signalname="temp_w" name="temp_w" />
        </block>
        <block symbolname="ram_256bytes" name="XLXI_9">
            <blockpin signalname="sysbus(7:0)" name="a(7:0)" />
            <blockpin signalname="ram_a_o(7:0)" name="a_o(7:0)" />
            <blockpin signalname="ram_a_w" name="a_w" />
            <blockpin signalname="sysbus(7:0)" name="i(7:0)" />
            <blockpin signalname="ram_r" name="i_r" />
            <blockpin signalname="ram_w" name="i_w" />
            <blockpin signalname="clkw" name="i_wclk" />
            <blockpin signalname="sysbus(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="reg_8bit" name="ir">
            <blockpin signalname="sysbus(7:0)" name="d(7:0)" />
            <blockpin signalname="ir_o(7:0)" name="o(7:0)" />
            <blockpin signalname="XLXN_23" name="r" />
            <blockpin signalname="ir_w" name="w" />
        </block>
        <block symbolname="pullup" name="XLXI_7">
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_10">
            <blockpin signalname="manual_iar_w" name="I0" />
            <blockpin signalname="ctl_iar_w" name="I1" />
            <blockpin signalname="iar_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_11">
            <blockpin signalname="manual_r0_w" name="I0" />
            <blockpin signalname="ctl_r0_w" name="I1" />
            <blockpin signalname="r0_w" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="manual_r1_w" name="I0" />
            <blockpin signalname="ctl_r1_w" name="I1" />
            <blockpin signalname="r1_w" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1536" y="352" name="r0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2016" y="352" name="r1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2496" y="352" name="r2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2976" y="352" name="r3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="temp_o(7:0)">
            <wire x2="576" y1="416" y2="416" x1="144" />
            <wire x2="144" y1="416" y2="512" x1="144" />
            <wire x2="224" y1="512" y2="512" x1="144" />
            <wire x2="576" y1="192" y2="192" x1="560" />
            <wire x2="576" y1="192" y2="416" x1="576" />
        </branch>
        <instance x="224" y="992" name="alu_inst" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="alu_x(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="160" y="1040" type="branch" />
            <wire x2="720" y1="1040" y2="1040" x1="160" />
            <wire x2="160" y1="1040" y2="1216" x1="160" />
            <wire x2="208" y1="1216" y2="1216" x1="160" />
            <wire x2="720" y1="896" y2="896" x1="608" />
            <wire x2="720" y1="896" y2="1040" x1="720" />
        </branch>
        <instance x="208" y="1312" name="acc" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="176" y="352" name="temp" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="temp_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="384" type="branch" />
            <wire x2="176" y1="320" y2="384" x1="176" />
            <wire x2="864" y1="384" y2="384" x1="176" />
        </branch>
        <branch name="temp_r">
            <wire x2="672" y1="112" y2="112" x1="176" />
            <wire x2="672" y1="112" y2="304" x1="672" />
            <wire x2="768" y1="304" y2="304" x1="672" />
            <wire x2="176" y1="112" y2="192" x1="176" />
            <wire x2="768" y1="288" y2="304" x1="768" />
        </branch>
        <branch name="alu_C_in">
            <wire x2="224" y1="656" y2="704" x1="224" />
            <wire x2="784" y1="656" y2="656" x1="224" />
        </branch>
        <iomarker fontsize="28" x="784" y="656" name="alu_C_in" orien="R0" />
        <branch name="alu_eq">
            <wire x2="784" y1="704" y2="704" x1="608" />
        </branch>
        <branch name="alu_gt">
            <wire x2="784" y1="768" y2="768" x1="608" />
        </branch>
        <branch name="alu_z">
            <wire x2="784" y1="832" y2="832" x1="608" />
        </branch>
        <branch name="alu_C_out">
            <wire x2="784" y1="960" y2="960" x1="608" />
        </branch>
        <iomarker fontsize="28" x="784" y="704" name="alu_eq" orien="R0" />
        <iomarker fontsize="28" x="784" y="768" name="alu_gt" orien="R0" />
        <iomarker fontsize="28" x="784" y="832" name="alu_z" orien="R0" />
        <iomarker fontsize="28" x="784" y="960" name="alu_C_out" orien="R0" />
        <branch name="acc_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1072" type="branch" />
            <wire x2="208" y1="1072" y2="1152" x1="208" />
            <wire x2="784" y1="1072" y2="1072" x1="208" />
        </branch>
        <branch name="acc_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1344" type="branch" />
            <wire x2="208" y1="1280" y2="1344" x1="208" />
            <wire x2="784" y1="1344" y2="1344" x1="208" />
        </branch>
        <branch name="iar_r">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="3232" type="branch" />
            <wire x2="1520" y1="3232" y2="3232" x1="1360" />
        </branch>
        <branch name="iar_w">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="3360" type="branch" />
            <wire x2="1376" y1="3360" y2="3360" x1="1280" />
            <wire x2="1520" y1="3360" y2="3360" x1="1376" />
        </branch>
        <branch name="r1_w">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="560" type="branch" />
            <wire x2="2016" y1="560" y2="560" x1="1968" />
            <wire x2="2016" y1="320" y2="560" x1="2016" />
        </branch>
        <branch name="r1_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="480" type="branch" />
            <wire x2="1968" y1="192" y2="480" x1="1968" />
            <wire x2="2016" y1="192" y2="192" x1="1968" />
        </branch>
        <branch name="r2_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="400" type="branch" />
            <wire x2="2496" y1="320" y2="400" x1="2496" />
            <wire x2="2560" y1="400" y2="400" x1="2496" />
        </branch>
        <branch name="r2_r">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="480" type="branch" />
            <wire x2="2496" y1="192" y2="192" x1="2448" />
            <wire x2="2448" y1="192" y2="480" x1="2448" />
            <wire x2="2560" y1="480" y2="480" x1="2448" />
        </branch>
        <branch name="r0_w">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="560" type="branch" />
            <wire x2="1536" y1="560" y2="560" x1="1360" />
            <wire x2="1536" y1="320" y2="560" x1="1536" />
        </branch>
        <branch name="r0_r">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="480" type="branch" />
            <wire x2="1472" y1="192" y2="480" x1="1472" />
            <wire x2="1536" y1="192" y2="192" x1="1472" />
        </branch>
        <branch name="r3_w">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="400" type="branch" />
            <wire x2="2976" y1="320" y2="400" x1="2976" />
            <wire x2="3040" y1="400" y2="400" x1="2976" />
        </branch>
        <branch name="r3_r">
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
        <branch name="bus1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="624" type="branch" />
            <wire x2="224" y1="576" y2="624" x1="224" />
            <wire x2="784" y1="624" y2="624" x1="224" />
        </branch>
        <instance x="224" y="608" name="pass_th" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="-45" y="0" type="instance" />
        </instance>
        <iomarker fontsize="28" x="80" y="80" name="sysbus(7:0)" orien="R180" />
        <branch name="rind(7:0)">
            <wire x2="416" y1="3296" y2="3296" x1="288" />
        </branch>
        <branch name="rinr">
            <wire x2="416" y1="3232" y2="3232" x1="288" />
        </branch>
        <branch name="rinw">
            <wire x2="416" y1="3360" y2="3360" x1="288" />
        </branch>
        <instance x="704" y="288" name="XLXI_8" orien="R0" />
        <instance x="400" y="2000" name="clck_gen" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk">
            <wire x2="400" y1="1840" y2="1840" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1840" name="clk" orien="R180" />
        <iomarker fontsize="28" x="880" y="1840" name="clkr" orien="R0" />
        <iomarker fontsize="28" x="880" y="1904" name="clkc" orien="R0" />
        <iomarker fontsize="28" x="880" y="1968" name="clkw" orien="R0" />
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
        <branch name="alu_op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="160" y="896" type="branch" />
            <wire x2="224" y1="896" y2="896" x1="160" />
        </branch>
        <branch name="ram_a_o(7:0)">
            <wire x2="4864" y1="864" y2="864" x1="4816" />
            <wire x2="4816" y1="864" y2="1232" x1="4816" />
            <wire x2="5680" y1="1232" y2="1232" x1="4816" />
            <wire x2="5680" y1="864" y2="864" x1="5664" />
            <wire x2="5680" y1="864" y2="1232" x1="5680" />
        </branch>
        <branch name="sysbus(7:0)">
            <wire x2="144" y1="80" y2="80" x1="80" />
            <wire x2="1488" y1="80" y2="80" x1="144" />
            <wire x2="1488" y1="80" y2="256" x1="1488" />
            <wire x2="1536" y1="256" y2="256" x1="1488" />
            <wire x2="1952" y1="80" y2="80" x1="1488" />
            <wire x2="1952" y1="80" y2="192" x1="1952" />
            <wire x2="1984" y1="80" y2="80" x1="1952" />
            <wire x2="1984" y1="80" y2="256" x1="1984" />
            <wire x2="2016" y1="256" y2="256" x1="1984" />
            <wire x2="2432" y1="80" y2="80" x1="1984" />
            <wire x2="2432" y1="80" y2="192" x1="2432" />
            <wire x2="2464" y1="80" y2="80" x1="2432" />
            <wire x2="2464" y1="80" y2="256" x1="2464" />
            <wire x2="2496" y1="256" y2="256" x1="2464" />
            <wire x2="2912" y1="80" y2="80" x1="2464" />
            <wire x2="2912" y1="80" y2="192" x1="2912" />
            <wire x2="2944" y1="80" y2="80" x1="2912" />
            <wire x2="2944" y1="80" y2="256" x1="2944" />
            <wire x2="2976" y1="256" y2="256" x1="2944" />
            <wire x2="3392" y1="80" y2="80" x1="2944" />
            <wire x2="3392" y1="80" y2="192" x1="3392" />
            <wire x2="6000" y1="80" y2="80" x1="3392" />
            <wire x2="6000" y1="80" y2="800" x1="6000" />
            <wire x2="6000" y1="800" y2="1200" x1="6000" />
            <wire x2="6000" y1="1200" y2="1280" x1="6000" />
            <wire x2="6000" y1="1280" y2="3456" x1="6000" />
            <wire x2="144" y1="80" y2="256" x1="144" />
            <wire x2="176" y1="256" y2="256" x1="144" />
            <wire x2="80" y1="160" y2="768" x1="80" />
            <wire x2="224" y1="768" y2="768" x1="80" />
            <wire x2="80" y1="768" y2="1360" x1="80" />
            <wire x2="640" y1="1360" y2="1360" x1="80" />
            <wire x2="80" y1="1360" y2="3456" x1="80" />
            <wire x2="800" y1="3456" y2="3456" x1="80" />
            <wire x2="1440" y1="3456" y2="3456" x1="800" />
            <wire x2="2000" y1="3456" y2="3456" x1="1440" />
            <wire x2="2240" y1="3456" y2="3456" x1="2000" />
            <wire x2="6000" y1="3456" y2="3456" x1="2240" />
            <wire x2="640" y1="1152" y2="1152" x1="592" />
            <wire x2="640" y1="1152" y2="1360" x1="640" />
            <wire x2="864" y1="3232" y2="3232" x1="800" />
            <wire x2="864" y1="3232" y2="3440" x1="864" />
            <wire x2="864" y1="3440" y2="3440" x1="800" />
            <wire x2="800" y1="3440" y2="3456" x1="800" />
            <wire x2="1520" y1="3296" y2="3296" x1="1440" />
            <wire x2="1440" y1="3296" y2="3456" x1="1440" />
            <wire x2="2000" y1="3232" y2="3232" x1="1904" />
            <wire x2="2000" y1="3232" y2="3456" x1="2000" />
            <wire x2="1952" y1="192" y2="192" x1="1920" />
            <wire x2="2224" y1="3296" y2="3296" x1="2160" />
            <wire x2="2160" y1="3296" y2="3440" x1="2160" />
            <wire x2="2240" y1="3440" y2="3440" x1="2160" />
            <wire x2="2240" y1="3440" y2="3456" x1="2240" />
            <wire x2="2432" y1="192" y2="192" x1="2400" />
            <wire x2="2912" y1="192" y2="192" x1="2880" />
            <wire x2="3392" y1="192" y2="192" x1="3360" />
            <wire x2="5280" y1="864" y2="864" x1="5200" />
            <wire x2="5200" y1="864" y2="1200" x1="5200" />
            <wire x2="6000" y1="1200" y2="1200" x1="5200" />
            <wire x2="5280" y1="1056" y2="1056" x1="5216" />
            <wire x2="5216" y1="1056" y2="1280" x1="5216" />
            <wire x2="6000" y1="1280" y2="1280" x1="5216" />
            <wire x2="6000" y1="800" y2="800" x1="5664" />
        </branch>
        <instance x="5280" y="1152" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="4864" y="864" name="ram_a_o(7:0)" orien="R0" />
        <instance x="416" y="3392" name="rin" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <iomarker fontsize="28" x="288" y="3360" name="rinw" orien="R180" />
        <iomarker fontsize="28" x="288" y="3296" name="rind(7:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="3232" name="rinr" orien="R180" />
        <instance x="1520" y="3392" name="iar" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2224" y="3392" name="ir" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="XLXN_23">
            <wire x2="2144" y1="3216" y2="3232" x1="2144" />
            <wire x2="2224" y1="3232" y2="3232" x1="2144" />
        </branch>
        <instance x="2080" y="3216" name="XLXI_7" orien="R0" />
        <branch name="ir_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="3360" type="branch" />
            <wire x2="2224" y1="3360" y2="3360" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2784" y="3232" name="ir_o(7:0)" orien="R0" />
        <branch name="clkr">
            <wire x2="880" y1="1840" y2="1840" x1="784" />
        </branch>
        <branch name="clkc">
            <wire x2="880" y1="1904" y2="1904" x1="784" />
        </branch>
        <branch name="clkw">
            <wire x2="880" y1="1968" y2="1968" x1="784" />
        </branch>
        <branch name="clkw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1072" type="branch" />
            <wire x2="1936" y1="1072" y2="1072" x1="1920" />
            <wire x2="2048" y1="1072" y2="1072" x1="1936" />
        </branch>
        <branch name="clkc">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1008" type="branch" />
            <wire x2="1936" y1="1008" y2="1008" x1="1920" />
            <wire x2="2048" y1="1008" y2="1008" x1="1936" />
        </branch>
        <instance x="1024" y="3456" name="XLXI_10" orien="R0" />
        <branch name="manual_iar_w">
            <wire x2="944" y1="3120" y2="3392" x1="944" />
            <wire x2="1024" y1="3392" y2="3392" x1="944" />
        </branch>
        <branch name="ctl_iar_w">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="3120" type="branch" />
            <wire x2="1008" y1="3120" y2="3328" x1="1008" />
            <wire x2="1024" y1="3328" y2="3328" x1="1008" />
        </branch>
        <instance x="1104" y="656" name="XLXI_11" orien="R0" />
        <branch name="ctl_r0_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="528" type="branch" />
            <wire x2="1104" y1="528" y2="528" x1="1040" />
        </branch>
        <branch name="manual_r0_w">
            <wire x2="1104" y1="592" y2="592" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="592" name="manual_r0_w" orien="R180" />
        <iomarker fontsize="28" x="944" y="3120" name="manual_iar_w" orien="R270" />
        <branch name="ir_o(7:0)">
            <wire x2="2208" y1="2448" y2="2832" x1="2208" />
            <wire x2="2720" y1="2832" y2="2832" x1="2208" />
            <wire x2="2720" y1="2832" y2="3232" x1="2720" />
            <wire x2="2784" y1="3232" y2="3232" x1="2720" />
            <wire x2="2720" y1="3232" y2="3232" x1="2608" />
        </branch>
        <instance x="2048" y="2448" name="cpu_ctl" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clkr">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="2560" type="branch" />
            <wire x2="2144" y1="2448" y2="2544" x1="2144" />
            <wire x2="2144" y1="2544" y2="2560" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2528" y="800" name="iar_r" orien="R270" />
        <branch name="iar_r">
            <wire x2="2528" y1="800" y2="816" x1="2528" />
            <wire x2="2528" y1="816" y2="912" x1="2528" />
        </branch>
        <branch name="acc_w">
            <wire x2="2976" y1="800" y2="816" x1="2976" />
            <wire x2="2976" y1="816" y2="912" x1="2976" />
        </branch>
        <branch name="acc_r">
            <wire x2="2912" y1="800" y2="816" x1="2912" />
            <wire x2="2912" y1="816" y2="912" x1="2912" />
        </branch>
        <branch name="ram_a_w">
            <wire x2="2848" y1="800" y2="816" x1="2848" />
            <wire x2="2848" y1="816" y2="912" x1="2848" />
        </branch>
        <branch name="ram_r">
            <wire x2="2784" y1="800" y2="816" x1="2784" />
            <wire x2="2784" y1="816" y2="912" x1="2784" />
        </branch>
        <branch name="ir_w">
            <wire x2="2720" y1="800" y2="816" x1="2720" />
            <wire x2="2720" y1="816" y2="912" x1="2720" />
        </branch>
        <branch name="bus1">
            <wire x2="2656" y1="800" y2="816" x1="2656" />
            <wire x2="2656" y1="816" y2="912" x1="2656" />
        </branch>
        <branch name="ctl_iar_w">
            <wire x2="2592" y1="800" y2="816" x1="2592" />
            <wire x2="2592" y1="816" y2="912" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2592" y="800" name="ctl_iar_w" orien="R270" />
        <iomarker fontsize="28" x="2656" y="800" name="bus1" orien="R270" />
        <iomarker fontsize="28" x="2720" y="800" name="ir_w" orien="R270" />
        <iomarker fontsize="28" x="2784" y="800" name="ram_r" orien="R270" />
        <iomarker fontsize="28" x="2848" y="800" name="ram_a_w" orien="R270" />
        <iomarker fontsize="28" x="2912" y="800" name="acc_r" orien="R270" />
        <iomarker fontsize="28" x="2976" y="800" name="acc_w" orien="R270" />
        <branch name="temp_w">
            <wire x2="3040" y1="800" y2="816" x1="3040" />
            <wire x2="3040" y1="816" y2="912" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3040" y="800" name="temp_w" orien="R270" />
        <iomarker fontsize="28" x="3360" y="800" name="ctl_r0_w" orien="R270" />
        <branch name="r0_r">
            <wire x2="3424" y1="800" y2="816" x1="3424" />
            <wire x2="3424" y1="816" y2="912" x1="3424" />
        </branch>
        <iomarker fontsize="28" x="3424" y="800" name="r0_r" orien="R270" />
        <branch name="ctl_r1_w">
            <wire x2="3488" y1="800" y2="816" x1="3488" />
            <wire x2="3488" y1="816" y2="912" x1="3488" />
        </branch>
        <iomarker fontsize="28" x="3488" y="800" name="ctl_r1_w" orien="R270" />
        <branch name="r1_r">
            <wire x2="3696" y1="1008" y2="1008" x1="3584" />
            <wire x2="3712" y1="1008" y2="1008" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3712" y="1008" name="r1_r" orien="R0" />
        <branch name="r2_w">
            <wire x2="3696" y1="1072" y2="1072" x1="3584" />
            <wire x2="3712" y1="1072" y2="1072" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3712" y="1072" name="r2_w" orien="R0" />
        <branch name="r2_r">
            <wire x2="3696" y1="1136" y2="1136" x1="3584" />
            <wire x2="3712" y1="1136" y2="1136" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3712" y="1136" name="r2_r" orien="R0" />
        <branch name="r3_w">
            <wire x2="3696" y1="1200" y2="1200" x1="3584" />
            <wire x2="3712" y1="1200" y2="1200" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3712" y="1200" name="r3_w" orien="R0" />
        <instance x="1712" y="656" name="XLXI_12" orien="R0" />
        <branch name="ctl_r1_w">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="528" type="branch" />
            <wire x2="1712" y1="528" y2="528" x1="1680" />
        </branch>
        <branch name="manual_r1_w">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="592" type="branch" />
            <wire x2="1664" y1="688" y2="688" x1="1584" />
            <wire x2="1712" y1="592" y2="592" x1="1664" />
            <wire x2="1664" y1="592" y2="688" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1584" y="688" name="manual_r1_w" orien="R180" />
        <branch name="r3_r">
            <wire x2="3696" y1="1264" y2="1264" x1="3584" />
            <wire x2="3712" y1="1264" y2="1264" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3712" y="1264" name="r3_r" orien="R0" />
        <branch name="ctl_r0_w">
            <wire x2="3360" y1="800" y2="816" x1="3360" />
            <wire x2="3360" y1="816" y2="912" x1="3360" />
        </branch>
        <branch name="alu_op(2:0)">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="624" type="branch" />
            <wire x2="3440" y1="464" y2="496" x1="3440" />
            <wire x2="3440" y1="496" y2="512" x1="3440" />
            <wire x2="3440" y1="512" y2="528" x1="3440" />
            <wire x2="3440" y1="528" y2="592" x1="3440" />
            <wire x2="3440" y1="592" y2="624" x1="3440" />
            <wire x2="3552" y1="624" y2="624" x1="3440" />
        </branch>
        <bustap x2="3344" y1="592" y2="592" x1="3440" />
        <bustap x2="3344" y1="528" y2="528" x1="3440" />
        <bustap x2="3344" y1="464" y2="464" x1="3440" />
        <iomarker fontsize="28" x="3552" y="624" name="alu_op(2:0)" orien="R0" />
        <branch name="alu_op(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3296" y="592" type="branch" />
            <wire x2="3296" y1="592" y2="912" x1="3296" />
            <wire x2="3344" y1="592" y2="592" x1="3296" />
        </branch>
        <branch name="ram_w">
            <wire x2="3232" y1="800" y2="912" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3232" y="800" name="ram_w" orien="R270" />
        <branch name="alu_op(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="528" type="branch" />
            <wire x2="3344" y1="528" y2="528" x1="3168" />
            <wire x2="3168" y1="528" y2="912" x1="3168" />
        </branch>
        <branch name="alu_op(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="464" type="branch" />
            <wire x2="3344" y1="464" y2="464" x1="3104" />
            <wire x2="3104" y1="464" y2="912" x1="3104" />
        </branch>
    </sheet>
</drawing>