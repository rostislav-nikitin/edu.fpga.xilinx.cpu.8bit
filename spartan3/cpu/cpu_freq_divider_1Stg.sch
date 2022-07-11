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
        <signal name="low(10)" />
        <signal name="low(7)" />
        <signal name="low(2)" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="low(9)" />
        <signal name="low(8)" />
        <signal name="high(15:0)" />
        <signal name="high(0)" />
        <signal name="high(1)" />
        <signal name="high(3)" />
        <signal name="high(4)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="half_period_tick" />
        <signal name="high(6)" />
        <signal name="XLXN_37" />
        <signal name="in_clr" />
        <signal name="XLXN_38" />
        <signal name="out_clk" />
        <signal name="low(14)" />
        <signal name="XLXN_43" />
        <signal name="high(2)" />
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
        <blockdef name="and6">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-224" y2="-224" x1="256" />
            <line x2="144" y1="-272" y2="-272" x1="64" />
            <line x2="64" y1="-176" y2="-176" x1="144" />
            <arc ex="144" ey="-272" sx="144" sy="-176" r="48" cx="144" cy="-224" />
            <line x2="64" y1="-64" y2="-384" x1="64" />
        </blockdef>
        <block symbolname="cpu_freq_divider_base" name="XLXI_1">
            <blockpin signalname="in_clk" name="in_clk" />
            <blockpin signalname="XLXN_37" name="in_clr" />
            <blockpin signalname="high(15:0)" name="out_clk_high(15:0)" />
            <blockpin signalname="low(15:0)" name="out_clk_low(15:0)" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="low(10)" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="low(9)" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="low(8)" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="low(7)" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="low(2)" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="high(0)" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="high(1)" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="high(2)" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="high(3)" name="I" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="high(4)" name="I" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="high(6)" name="I" />
            <blockpin signalname="XLXN_31" name="O" />
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
        <block symbolname="buf" name="XLXI_20">
            <blockpin signalname="low(14)" name="I" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and6" name="XLXI_21">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_4" name="I3" />
            <blockpin signalname="XLXN_3" name="I4" />
            <blockpin signalname="XLXN_43" name="I5" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and6" name="XLXI_22">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="XLXN_29" name="I2" />
            <blockpin signalname="XLXN_27" name="I3" />
            <blockpin signalname="XLXN_26" name="I4" />
            <blockpin signalname="XLXN_10" name="I5" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="464" name="XLXI_1" orien="R0">
        </instance>
        <branch name="in_clk">
            <wire x2="608" y1="368" y2="368" x1="448" />
        </branch>
        <branch name="low(15:0)">
            <wire x2="1360" y1="368" y2="368" x1="992" />
            <wire x2="1360" y1="368" y2="432" x1="1360" />
            <wire x2="1360" y1="432" y2="496" x1="1360" />
            <wire x2="1360" y1="496" y2="560" x1="1360" />
            <wire x2="1360" y1="560" y2="624" x1="1360" />
            <wire x2="1360" y1="624" y2="688" x1="1360" />
        </branch>
        <bustap x2="1456" y1="432" y2="432" x1="1360" />
        <bustap x2="1456" y1="496" y2="496" x1="1360" />
        <bustap x2="1456" y1="560" y2="560" x1="1360" />
        <bustap x2="1456" y1="624" y2="624" x1="1360" />
        <bustap x2="1456" y1="688" y2="688" x1="1360" />
        <branch name="low(10)">
            <wire x2="1568" y1="432" y2="432" x1="1456" />
        </branch>
        <branch name="low(7)">
            <wire x2="1568" y1="624" y2="624" x1="1456" />
        </branch>
        <branch name="low(2)">
            <wire x2="1568" y1="688" y2="688" x1="1456" />
        </branch>
        <instance x="1568" y="464" name="XLXI_2" orien="R0" />
        <instance x="1568" y="528" name="XLXI_3" orien="R0" />
        <instance x="1568" y="592" name="XLXI_4" orien="R0" />
        <instance x="1568" y="656" name="XLXI_5" orien="R0" />
        <instance x="1568" y="720" name="XLXI_6" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1888" y1="432" y2="432" x1="1792" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1888" y1="496" y2="496" x1="1792" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1888" y1="560" y2="560" x1="1792" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1888" y1="624" y2="624" x1="1792" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1888" y1="688" y2="688" x1="1792" />
        </branch>
        <branch name="low(9)">
            <wire x2="1568" y1="496" y2="496" x1="1456" />
        </branch>
        <branch name="low(8)">
            <wire x2="1568" y1="560" y2="560" x1="1456" />
        </branch>
        <branch name="high(15:0)">
            <wire x2="1168" y1="432" y2="432" x1="992" />
            <wire x2="1168" y1="432" y2="752" x1="1168" />
            <wire x2="1168" y1="752" y2="816" x1="1168" />
            <wire x2="1168" y1="816" y2="832" x1="1168" />
            <wire x2="1168" y1="832" y2="880" x1="1168" />
            <wire x2="1168" y1="880" y2="896" x1="1168" />
            <wire x2="1168" y1="896" y2="944" x1="1168" />
            <wire x2="1168" y1="944" y2="960" x1="1168" />
            <wire x2="1168" y1="960" y2="1008" x1="1168" />
            <wire x2="1168" y1="1008" y2="1024" x1="1168" />
            <wire x2="1168" y1="1024" y2="1088" x1="1168" />
            <wire x2="1168" y1="1088" y2="1136" x1="1168" />
            <wire x2="1168" y1="1136" y2="1152" x1="1168" />
            <wire x2="1168" y1="1152" y2="1216" x1="1168" />
        </branch>
        <bustap x2="1264" y1="896" y2="896" x1="1168" />
        <bustap x2="1264" y1="960" y2="960" x1="1168" />
        <bustap x2="1264" y1="1024" y2="1024" x1="1168" />
        <bustap x2="1264" y1="1088" y2="1088" x1="1168" />
        <bustap x2="1264" y1="1152" y2="1152" x1="1168" />
        <bustap x2="1264" y1="1216" y2="1216" x1="1168" />
        <branch name="high(0)">
            <wire x2="1568" y1="896" y2="896" x1="1264" />
        </branch>
        <branch name="high(1)">
            <wire x2="1568" y1="960" y2="960" x1="1264" />
        </branch>
        <branch name="high(3)">
            <wire x2="1568" y1="1088" y2="1088" x1="1264" />
        </branch>
        <branch name="high(4)">
            <wire x2="1568" y1="1152" y2="1152" x1="1264" />
        </branch>
        <instance x="1568" y="928" name="XLXI_8" orien="R0" />
        <instance x="1568" y="992" name="XLXI_9" orien="R0" />
        <instance x="1568" y="1056" name="XLXI_10" orien="R0" />
        <instance x="1568" y="1120" name="XLXI_11" orien="R0" />
        <instance x="1568" y="1184" name="XLXI_12" orien="R0" />
        <instance x="1568" y="1248" name="XLXI_13" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1808" y1="896" y2="896" x1="1792" />
            <wire x2="1888" y1="896" y2="896" x1="1808" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1808" y1="960" y2="960" x1="1792" />
            <wire x2="1888" y1="960" y2="960" x1="1808" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1808" y1="1024" y2="1024" x1="1792" />
            <wire x2="1888" y1="1024" y2="1024" x1="1808" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1808" y1="1088" y2="1088" x1="1792" />
            <wire x2="1888" y1="1088" y2="1088" x1="1808" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1808" y1="1152" y2="1152" x1="1792" />
            <wire x2="1888" y1="1152" y2="1152" x1="1808" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1808" y1="1216" y2="1216" x1="1792" />
            <wire x2="1888" y1="1216" y2="1216" x1="1808" />
        </branch>
        <instance x="2208" y="896" name="XLXI_16" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="2208" y1="528" y2="528" x1="2144" />
            <wire x2="2208" y1="528" y2="560" x1="2208" />
            <wire x2="2208" y1="560" y2="768" x1="2208" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2208" y1="1056" y2="1056" x1="2144" />
            <wire x2="2208" y1="832" y2="848" x1="2208" />
            <wire x2="2208" y1="848" y2="1024" x1="2208" />
            <wire x2="2208" y1="1024" y2="1056" x1="2208" />
        </branch>
        <branch name="half_period_tick">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="800" type="branch" />
            <wire x2="2608" y1="800" y2="800" x1="2464" />
        </branch>
        <branch name="high(6)">
            <wire x2="1568" y1="1216" y2="1216" x1="1264" />
        </branch>
        <instance x="272" y="528" name="XLXI_17" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="608" y1="432" y2="432" x1="528" />
        </branch>
        <branch name="in_clr">
            <wire x2="256" y1="400" y2="400" x1="224" />
            <wire x2="272" y1="400" y2="400" x1="256" />
        </branch>
        <branch name="half_period_tick">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="464" type="branch" />
            <wire x2="272" y1="464" y2="464" x1="224" />
        </branch>
        <instance x="2864" y="1376" name="XLXI_18" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="2768" y1="992" y2="1056" x1="2768" />
            <wire x2="2768" y1="1056" y2="1120" x1="2768" />
            <wire x2="2864" y1="1120" y2="1120" x1="2768" />
            <wire x2="2864" y1="1056" y2="1056" x1="2768" />
        </branch>
        <instance x="2704" y="992" name="XLXI_19" orien="R0" />
        <branch name="half_period_tick">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1248" type="branch" />
            <wire x2="2864" y1="1248" y2="1248" x1="2768" />
        </branch>
        <branch name="out_clk">
            <wire x2="3408" y1="1120" y2="1120" x1="3248" />
        </branch>
        <iomarker fontsize="28" x="448" y="368" name="in_clk" orien="R180" />
        <iomarker fontsize="28" x="224" y="400" name="in_clr" orien="R180" />
        <iomarker fontsize="28" x="3408" y="1120" name="out_clk" orien="R0" />
        <branch name="in_clr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1344" type="branch" />
            <wire x2="2864" y1="1344" y2="1344" x1="2768" />
        </branch>
        <bustap x2="1456" y1="368" y2="368" x1="1360" />
        <branch name="low(14)">
            <wire x2="1488" y1="368" y2="368" x1="1456" />
            <wire x2="1568" y1="368" y2="368" x1="1488" />
        </branch>
        <instance x="1568" y="400" name="XLXI_20" orien="R0" />
        <instance x="1888" y="752" name="XLXI_21" orien="R0" />
        <branch name="XLXN_43">
            <wire x2="1888" y1="368" y2="368" x1="1792" />
        </branch>
        <instance x="1888" y="1280" name="XLXI_22" orien="R0" />
        <branch name="high(2)">
            <wire x2="1568" y1="1024" y2="1024" x1="1264" />
        </branch>
    </sheet>
</drawing>