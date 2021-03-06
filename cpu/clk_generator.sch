<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="rst" />
        <signal name="clkc_old">
        </signal>
        <signal name="clkr_old">
        </signal>
        <signal name="clkw_old">
        </signal>
        <signal name="XLXN_9" />
        <signal name="clk" />
        <signal name="XLXN_10" />
        <signal name="XLXN_13" />
        <signal name="clkc" />
        <signal name="clkr" />
        <signal name="clkw" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="clkc" />
        <port polarity="Output" name="clkr" />
        <port polarity="Output" name="clkw" />
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
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <block symbolname="fjkc" name="XLXI_4">
            <blockpin signalname="XLXN_9" name="C" />
            <blockpin signalname="rst" name="CLR" />
            <blockpin signalname="XLXN_1" name="J" />
            <blockpin signalname="XLXN_1" name="K" />
            <blockpin signalname="clkc_old" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="clkc_old" name="I0" />
            <blockpin signalname="clk" name="I1" />
            <blockpin signalname="clkr_old" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_10">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="clkc_old" name="I1" />
            <blockpin signalname="clkw_old" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="clk" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="cb2ce" name="XLXI_14">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_10" name="CE" />
            <blockpin signalname="rst" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_13" name="Q0" />
            <blockpin signalname="clkc" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="XLXN_10" name="P" />
        </block>
        <block symbolname="or2" name="XLXI_16">
            <blockpin signalname="clkc" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="clkr" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_17">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="clkc" name="I1" />
            <blockpin signalname="clkw" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1200" y="2000" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1040" y1="1600" y2="1680" x1="1040" />
            <wire x2="1120" y1="1680" y2="1680" x1="1040" />
            <wire x2="1120" y1="1680" y2="1744" x1="1120" />
            <wire x2="1200" y1="1744" y2="1744" x1="1120" />
            <wire x2="1200" y1="1680" y2="1680" x1="1120" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2080" type="branch" />
            <wire x2="1200" y1="1968" y2="1968" x1="1040" />
            <wire x2="1040" y1="1968" y2="2080" x1="1040" />
            <wire x2="1040" y1="2080" y2="2160" x1="1040" />
        </branch>
        <branch name="clkc_old">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1744" type="branch" />
            <wire x2="1600" y1="1744" y2="1744" x1="1584" />
            <wire x2="1600" y1="1744" y2="1856" x1="1600" />
            <wire x2="1696" y1="1856" y2="1856" x1="1600" />
            <wire x2="2080" y1="1744" y2="1744" x1="1600" />
            <wire x2="1712" y1="1664" y2="1664" x1="1600" />
            <wire x2="1600" y1="1664" y2="1744" x1="1600" />
        </branch>
        <instance x="1712" y="1728" name="XLXI_9" orien="R0" />
        <branch name="clkr_old">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1632" type="branch" />
            <wire x2="2080" y1="1632" y2="1632" x1="1968" />
        </branch>
        <instance x="1696" y="1984" name="XLXI_10" orien="R0" />
        <branch name="clkw_old">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1888" type="branch" />
            <wire x2="2080" y1="1888" y2="1888" x1="1952" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1200" y1="1872" y2="1872" x1="1008" />
        </branch>
        <instance x="784" y="1904" name="XLXI_12" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1872" type="branch" />
            <wire x2="688" y1="1872" y2="1872" x1="544" />
            <wire x2="784" y1="1872" y2="1872" x1="688" />
            <wire x2="688" y1="1872" y2="2064" x1="688" />
            <wire x2="688" y1="2064" y2="2080" x1="688" />
            <wire x2="688" y1="2080" y2="2096" x1="688" />
            <wire x2="1600" y1="2096" y2="2096" x1="688" />
            <wire x2="688" y1="1360" y2="1872" x1="688" />
            <wire x2="1600" y1="1360" y2="1360" x1="688" />
            <wire x2="1600" y1="1360" y2="1600" x1="1600" />
            <wire x2="1712" y1="1600" y2="1600" x1="1600" />
            <wire x2="1600" y1="1920" y2="2080" x1="1600" />
            <wire x2="1600" y1="2080" y2="2096" x1="1600" />
            <wire x2="1696" y1="1920" y2="1920" x1="1600" />
        </branch>
        <instance x="976" y="1600" name="XLXI_13" orien="R0" />
        <instance x="1120" y="880" name="XLXI_14" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1120" y1="688" y2="688" x1="880" />
        </branch>
        <branch name="clk">
            <wire x2="1120" y1="752" y2="752" x1="720" />
        </branch>
        <branch name="rst">
            <wire x2="1120" y1="848" y2="848" x1="720" />
        </branch>
        <instance x="880" y="752" name="XLXI_15" orien="R270" />
        <instance x="1840" y="688" name="XLXI_16" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1680" y1="560" y2="560" x1="1504" />
            <wire x2="1840" y1="560" y2="560" x1="1680" />
            <wire x2="1680" y1="560" y2="784" x1="1680" />
            <wire x2="1840" y1="784" y2="784" x1="1680" />
        </branch>
        <branch name="clkc">
            <wire x2="1600" y1="624" y2="624" x1="1504" />
            <wire x2="1760" y1="624" y2="624" x1="1600" />
            <wire x2="1840" y1="624" y2="624" x1="1760" />
            <wire x2="1760" y1="624" y2="720" x1="1760" />
            <wire x2="1840" y1="720" y2="720" x1="1760" />
            <wire x2="1600" y1="624" y2="912" x1="1600" />
            <wire x2="2240" y1="912" y2="912" x1="1600" />
        </branch>
        <branch name="clkr">
            <wire x2="2240" y1="592" y2="592" x1="2096" />
        </branch>
        <instance x="1840" y="848" name="XLXI_17" orien="R0" />
        <branch name="clkw">
            <wire x2="2240" y1="752" y2="752" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="720" y="752" name="clk" orien="R180" />
        <iomarker fontsize="28" x="720" y="848" name="rst" orien="R180" />
        <iomarker fontsize="28" x="2240" y="592" name="clkr" orien="R0" />
        <iomarker fontsize="28" x="2240" y="752" name="clkw" orien="R0" />
        <iomarker fontsize="28" x="2240" y="912" name="clkc" orien="R0" />
    </sheet>
</drawing>