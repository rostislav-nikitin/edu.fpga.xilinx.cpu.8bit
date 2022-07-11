<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="in_clk" />
        <signal name="high(15:0)" />
        <signal name="XLXN_37" />
        <signal name="in_clr" />
        <signal name="half_period_tick" />
        <signal name="XLXN_38" />
        <signal name="out_clk" />
        <signal name="high(5)" />
        <signal name="high(12)" />
        <signal name="high(7)" />
        <signal name="high(6)" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <block symbolname="cpu_freq_divider_base" name="XLXI_1">
            <blockpin signalname="in_clk" name="in_clk" />
            <blockpin signalname="XLXN_37" name="in_clr" />
            <blockpin name="out_clk_high(15:0)" />
            <blockpin signalname="high(15:0)" name="out_clk_low(15:0)" />
        </block>
        <block symbolname="or2" name="XLXI_14">
            <blockpin signalname="half_period_tick" name="I0" />
            <blockpin signalname="in_clr" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_15">
            <blockpin signalname="half_period_tick" name="C" />
            <blockpin signalname="in_clr" name="CLR" />
            <blockpin signalname="XLXN_38" name="J" />
            <blockpin signalname="XLXN_38" name="K" />
            <blockpin signalname="out_clk" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_16">
            <blockpin signalname="XLXN_38" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_23">
            <blockpin signalname="high(5)" name="I" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_24">
            <blockpin signalname="high(6)" name="I" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_25">
            <blockpin signalname="high(7)" name="I" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_26">
            <blockpin signalname="high(12)" name="I" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_27">
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_46" name="I2" />
            <blockpin signalname="XLXN_47" name="I3" />
            <blockpin signalname="half_period_tick" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="592" y="864" name="XLXI_1" orien="R0">
        </instance>
        <branch name="in_clk">
            <wire x2="592" y1="768" y2="768" x1="432" />
        </branch>
        <branch name="high(15:0)">
            <wire x2="1152" y1="768" y2="768" x1="976" />
            <wire x2="1152" y1="768" y2="1376" x1="1152" />
            <wire x2="1152" y1="1376" y2="1440" x1="1152" />
            <wire x2="1152" y1="1440" y2="1504" x1="1152" />
            <wire x2="1152" y1="1504" y2="1568" x1="1152" />
        </branch>
        <instance x="256" y="928" name="XLXI_14" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="592" y1="832" y2="832" x1="512" />
        </branch>
        <branch name="in_clr">
            <wire x2="240" y1="800" y2="800" x1="208" />
            <wire x2="256" y1="800" y2="800" x1="240" />
        </branch>
        <branch name="half_period_tick">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="864" type="branch" />
            <wire x2="256" y1="864" y2="864" x1="208" />
        </branch>
        <instance x="2848" y="1776" name="XLXI_15" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="2752" y1="1392" y2="1456" x1="2752" />
            <wire x2="2752" y1="1456" y2="1520" x1="2752" />
            <wire x2="2848" y1="1520" y2="1520" x1="2752" />
            <wire x2="2848" y1="1456" y2="1456" x1="2752" />
        </branch>
        <instance x="2688" y="1392" name="XLXI_16" orien="R0" />
        <branch name="half_period_tick">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1648" type="branch" />
            <wire x2="2848" y1="1648" y2="1648" x1="2752" />
        </branch>
        <branch name="out_clk">
            <wire x2="3392" y1="1520" y2="1520" x1="3232" />
        </branch>
        <bustap x2="1248" y1="1568" y2="1568" x1="1152" />
        <branch name="high(5)">
            <wire x2="1520" y1="1568" y2="1568" x1="1248" />
        </branch>
        <instance x="1520" y="1600" name="XLXI_23" orien="R0" />
        <iomarker fontsize="28" x="432" y="768" name="in_clk" orien="R180" />
        <iomarker fontsize="28" x="208" y="800" name="in_clr" orien="R180" />
        <iomarker fontsize="28" x="3392" y="1520" name="out_clk" orien="R0" />
        <branch name="in_clr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1744" type="branch" />
            <wire x2="2848" y1="1744" y2="1744" x1="2752" />
        </branch>
        <bustap x2="1248" y1="1504" y2="1504" x1="1152" />
        <bustap x2="1248" y1="1440" y2="1440" x1="1152" />
        <bustap x2="1248" y1="1376" y2="1376" x1="1152" />
        <instance x="1520" y="1536" name="XLXI_24" orien="R0" />
        <instance x="1520" y="1472" name="XLXI_25" orien="R0" />
        <instance x="1520" y="1408" name="XLXI_26" orien="R0" />
        <branch name="high(12)">
            <wire x2="1520" y1="1376" y2="1376" x1="1248" />
        </branch>
        <branch name="high(7)">
            <wire x2="1520" y1="1440" y2="1440" x1="1248" />
        </branch>
        <branch name="high(6)">
            <wire x2="1520" y1="1504" y2="1504" x1="1248" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1776" y1="1568" y2="1568" x1="1744" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1776" y1="1504" y2="1504" x1="1744" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1776" y1="1440" y2="1440" x1="1744" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="1776" y1="1376" y2="1376" x1="1744" />
        </branch>
        <instance x="1776" y="1632" name="XLXI_27" orien="R0" />
        <branch name="half_period_tick">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1472" type="branch" />
            <wire x2="2176" y1="1472" y2="1472" x1="2032" />
        </branch>
    </sheet>
</drawing>