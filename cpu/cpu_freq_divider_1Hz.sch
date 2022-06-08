<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="in_clk" />
        <signal name="low(15:0)" />
        <signal name="low(13)" />
        <signal name="low(10)" />
        <signal name="low(5)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="low(12)" />
        <signal name="low(11)" />
        <signal name="high(15:0)" />
        <signal name="high(1)" />
        <signal name="high(3)" />
        <signal name="high(4)" />
        <signal name="high(5)" />
        <signal name="high(6)" />
        <signal name="high(7)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="half_period_tick" />
        <signal name="high(9)" />
        <signal name="XLXN_37" />
        <signal name="in_clr" />
        <signal name="XLXN_38" />
        <signal name="out_clk" />
        <port polarity="Input" name="in_clk" />
        <port polarity="Input" name="in_clr" />
        <port polarity="Output" name="out_clk" />
        <blockdef name="cpu_freq_divider_base">
            <timestamp>2022-6-8T19:56:8</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="and5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="and7">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-448" y2="-64" x1="64" />
            <arc ex="144" ey="-304" sx="144" sy="-208" r="48" cx="144" cy="-256" />
            <line x2="144" y1="-304" y2="-304" x1="64" />
            <line x2="64" y1="-208" y2="-208" x1="144" />
            <line x2="192" y1="-256" y2="-256" x1="256" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
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
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="cpu_freq_divider_base" name="XLXI_1">
            <blockpin signalname="in_clk" name="in_clk" />
            <blockpin signalname="XLXN_37" name="in_clr" />
            <blockpin signalname="high(15:0)" name="out_clk_high(15:0)" />
            <blockpin signalname="low(15:0)" name="out_clk_low(15:0)" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="low(13)" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="low(12)" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="low(11)" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="low(10)" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="low(5)" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="high(1)" name="I" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="high(3)" name="I" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="high(4)" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="high(5)" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="high(6)" name="I" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="high(7)" name="I" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="high(9)" name="I" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_14">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_10" name="I3" />
            <blockpin signalname="XLXN_9" name="I4" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and7" name="XLXI_15">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="XLXN_29" name="I2" />
            <blockpin signalname="XLXN_27" name="I3" />
            <blockpin signalname="XLXN_26" name="I4" />
            <blockpin signalname="XLXN_25" name="I5" />
            <blockpin signalname="XLXN_24" name="I6" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="XLXN_35" name="I0" />
            <blockpin signalname="XLXN_34" name="I1" />
            <blockpin signalname="half_period_tick" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_17">
            <blockpin signalname="half_period_tick" name="I0" />
            <blockpin signalname="in_clr" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_18">
            <blockpin signalname="half_period_tick" name="C" />
            <blockpin signalname="in_clr" name="CLR" />
            <blockpin signalname="XLXN_38" name="J" />
            <blockpin signalname="XLXN_38" name="K" />
            <blockpin signalname="out_clk" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_19">
            <blockpin signalname="XLXN_38" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="480" y="592" name="XLXI_1" orien="R0">
        </instance>
        <branch name="in_clk">
            <wire x2="480" y1="496" y2="496" x1="320" />
        </branch>
        <branch name="low(15:0)">
            <wire x2="1232" y1="496" y2="496" x1="864" />
            <wire x2="1232" y1="496" y2="560" x1="1232" />
            <wire x2="1232" y1="560" y2="624" x1="1232" />
            <wire x2="1232" y1="624" y2="688" x1="1232" />
            <wire x2="1232" y1="688" y2="752" x1="1232" />
            <wire x2="1232" y1="752" y2="816" x1="1232" />
        </branch>
        <bustap x2="1328" y1="560" y2="560" x1="1232" />
        <bustap x2="1328" y1="624" y2="624" x1="1232" />
        <bustap x2="1328" y1="688" y2="688" x1="1232" />
        <bustap x2="1328" y1="752" y2="752" x1="1232" />
        <bustap x2="1328" y1="816" y2="816" x1="1232" />
        <branch name="low(13)">
            <wire x2="1440" y1="560" y2="560" x1="1328" />
        </branch>
        <branch name="low(10)">
            <wire x2="1440" y1="752" y2="752" x1="1328" />
        </branch>
        <branch name="low(5)">
            <wire x2="1440" y1="816" y2="816" x1="1328" />
        </branch>
        <instance x="1440" y="592" name="XLXI_2" orien="R0" />
        <instance x="1440" y="656" name="XLXI_3" orien="R0" />
        <instance x="1440" y="720" name="XLXI_4" orien="R0" />
        <instance x="1440" y="784" name="XLXI_5" orien="R0" />
        <instance x="1440" y="848" name="XLXI_6" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1760" y1="560" y2="560" x1="1664" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1760" y1="624" y2="624" x1="1664" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1760" y1="688" y2="688" x1="1664" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1760" y1="752" y2="752" x1="1664" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1760" y1="816" y2="816" x1="1664" />
        </branch>
        <branch name="low(12)">
            <wire x2="1440" y1="624" y2="624" x1="1328" />
        </branch>
        <branch name="low(11)">
            <wire x2="1440" y1="688" y2="688" x1="1328" />
        </branch>
        <branch name="high(15:0)">
            <wire x2="1040" y1="560" y2="560" x1="864" />
            <wire x2="1040" y1="560" y2="880" x1="1040" />
            <wire x2="1040" y1="880" y2="944" x1="1040" />
            <wire x2="1040" y1="944" y2="960" x1="1040" />
            <wire x2="1040" y1="960" y2="1008" x1="1040" />
            <wire x2="1040" y1="1008" y2="1024" x1="1040" />
            <wire x2="1040" y1="1024" y2="1072" x1="1040" />
            <wire x2="1040" y1="1072" y2="1088" x1="1040" />
            <wire x2="1040" y1="1088" y2="1136" x1="1040" />
            <wire x2="1040" y1="1136" y2="1152" x1="1040" />
            <wire x2="1040" y1="1152" y2="1216" x1="1040" />
            <wire x2="1040" y1="1216" y2="1264" x1="1040" />
            <wire x2="1040" y1="1264" y2="1280" x1="1040" />
            <wire x2="1040" y1="1280" y2="1344" x1="1040" />
        </branch>
        <bustap x2="1136" y1="960" y2="960" x1="1040" />
        <bustap x2="1136" y1="1024" y2="1024" x1="1040" />
        <bustap x2="1136" y1="1088" y2="1088" x1="1040" />
        <bustap x2="1136" y1="1152" y2="1152" x1="1040" />
        <bustap x2="1136" y1="1216" y2="1216" x1="1040" />
        <bustap x2="1136" y1="1280" y2="1280" x1="1040" />
        <bustap x2="1136" y1="1344" y2="1344" x1="1040" />
        <branch name="high(1)">
            <wire x2="1440" y1="960" y2="960" x1="1136" />
        </branch>
        <branch name="high(3)">
            <wire x2="1440" y1="1024" y2="1024" x1="1136" />
        </branch>
        <branch name="high(4)">
            <wire x2="1440" y1="1088" y2="1088" x1="1136" />
        </branch>
        <branch name="high(5)">
            <wire x2="1440" y1="1152" y2="1152" x1="1136" />
        </branch>
        <branch name="high(6)">
            <wire x2="1440" y1="1216" y2="1216" x1="1136" />
        </branch>
        <branch name="high(7)">
            <wire x2="1440" y1="1280" y2="1280" x1="1136" />
        </branch>
        <instance x="1440" y="992" name="XLXI_7" orien="R0" />
        <instance x="1440" y="1056" name="XLXI_8" orien="R0" />
        <instance x="1440" y="1120" name="XLXI_9" orien="R0" />
        <instance x="1440" y="1184" name="XLXI_10" orien="R0" />
        <instance x="1440" y="1248" name="XLXI_11" orien="R0" />
        <instance x="1440" y="1312" name="XLXI_12" orien="R0" />
        <instance x="1440" y="1376" name="XLXI_13" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="1760" y1="960" y2="960" x1="1664" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1760" y1="1024" y2="1024" x1="1664" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1760" y1="1088" y2="1088" x1="1664" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1760" y1="1152" y2="1152" x1="1664" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1760" y1="1216" y2="1216" x1="1664" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1760" y1="1280" y2="1280" x1="1664" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1760" y1="1344" y2="1344" x1="1664" />
        </branch>
        <instance x="1760" y="880" name="XLXI_14" orien="R0" />
        <instance x="1760" y="1408" name="XLXI_15" orien="R0" />
        <instance x="2080" y="1024" name="XLXI_16" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="2080" y1="688" y2="688" x1="2016" />
            <wire x2="2080" y1="688" y2="896" x1="2080" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2080" y1="1152" y2="1152" x1="2016" />
            <wire x2="2080" y1="960" y2="1152" x1="2080" />
        </branch>
        <branch name="half_period_tick">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="928" type="branch" />
            <wire x2="2480" y1="928" y2="928" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="320" y="496" name="in_clk" orien="R180" />
        <branch name="high(9)">
            <wire x2="1440" y1="1344" y2="1344" x1="1136" />
        </branch>
        <instance x="144" y="656" name="XLXI_17" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="480" y1="560" y2="560" x1="400" />
        </branch>
        <branch name="in_clr">
            <wire x2="128" y1="528" y2="528" x1="96" />
            <wire x2="144" y1="528" y2="528" x1="128" />
        </branch>
        <iomarker fontsize="28" x="96" y="528" name="in_clr" orien="R180" />
        <branch name="half_period_tick">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="96" y="592" type="branch" />
            <wire x2="144" y1="592" y2="592" x1="96" />
        </branch>
        <instance x="2736" y="1504" name="XLXI_18" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="2640" y1="1120" y2="1184" x1="2640" />
            <wire x2="2640" y1="1184" y2="1248" x1="2640" />
            <wire x2="2736" y1="1248" y2="1248" x1="2640" />
            <wire x2="2736" y1="1184" y2="1184" x1="2640" />
        </branch>
        <instance x="2576" y="1120" name="XLXI_19" orien="R0" />
        <branch name="half_period_tick">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1376" type="branch" />
            <wire x2="2736" y1="1376" y2="1376" x1="2640" />
        </branch>
        <branch name="out_clk">
            <wire x2="3280" y1="1248" y2="1248" x1="3120" />
        </branch>
        <branch name="in_clr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1472" type="branch" />
            <wire x2="2736" y1="1472" y2="1472" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="3280" y="1248" name="out_clk" orien="R0" />
    </sheet>
</drawing>