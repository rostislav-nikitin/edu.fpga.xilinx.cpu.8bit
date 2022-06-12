<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_14" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="clk" />
        <signal name="s5" />
        <signal name="s4" />
        <signal name="s3" />
        <signal name="s2" />
        <signal name="s1" />
        <signal name="s6" />
        <signal name="XLXN_24" />
        <signal name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="s5" />
        <port polarity="Output" name="s4" />
        <port polarity="Output" name="s3" />
        <port polarity="Output" name="s2" />
        <port polarity="Output" name="s1" />
        <port polarity="Output" name="s6" />
        <port polarity="Input" name="rst" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <blockdef name="d3_8e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <block symbolname="vcc" name="XLXI_21">
            <blockpin signalname="XLXN_14" name="P" />
        </block>
        <block symbolname="cb4ce" name="XLXI_24">
            <blockpin signalname="XLXN_23" name="C" />
            <blockpin signalname="XLXN_14" name="CE" />
            <blockpin signalname="XLXN_24" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_18" name="Q0" />
            <blockpin signalname="XLXN_19" name="Q1" />
            <blockpin signalname="XLXN_20" name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="d3_8e" name="XLXI_25">
            <blockpin signalname="XLXN_18" name="A0" />
            <blockpin signalname="XLXN_19" name="A1" />
            <blockpin signalname="XLXN_20" name="A2" />
            <blockpin signalname="XLXN_14" name="E" />
            <blockpin signalname="s6" name="D0" />
            <blockpin signalname="s1" name="D1" />
            <blockpin signalname="s2" name="D2" />
            <blockpin signalname="s3" name="D3" />
            <blockpin signalname="s4" name="D4" />
            <blockpin signalname="s5" name="D5" />
            <blockpin signalname="XLXN_22" name="D6" />
            <blockpin name="D7" />
        </block>
        <block symbolname="inv" name="XLXI_26">
            <blockpin signalname="clk" name="I" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_28">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="rst" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_14">
            <wire x2="480" y1="1120" y2="1232" x1="480" />
            <wire x2="560" y1="1232" y2="1232" x1="480" />
            <wire x2="640" y1="1232" y2="1232" x1="560" />
            <wire x2="656" y1="1232" y2="1232" x1="640" />
            <wire x2="560" y1="1232" y2="1424" x1="560" />
            <wire x2="1200" y1="1424" y2="1424" x1="560" />
        </branch>
        <instance x="416" y="1120" name="XLXI_21" orien="R0" />
        <instance x="656" y="1424" name="XLXI_24" orien="R0" />
        <instance x="1200" y="1552" name="XLXI_25" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1200" y1="976" y2="976" x1="1040" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1200" y1="1040" y2="1040" x1="1040" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1200" y1="1104" y2="1104" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1760" y="976" name="s6" orien="R0" />
        <iomarker fontsize="28" x="1760" y="1040" name="s1" orien="R0" />
        <iomarker fontsize="28" x="1760" y="1104" name="s2" orien="R0" />
        <iomarker fontsize="28" x="1760" y="1168" name="s3" orien="R0" />
        <iomarker fontsize="28" x="1760" y="1232" name="s4" orien="R0" />
        <iomarker fontsize="28" x="1760" y="1296" name="s5" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="160" y1="1552" y2="1600" x1="160" />
            <wire x2="656" y1="1600" y2="1600" x1="160" />
            <wire x2="1760" y1="1600" y2="1600" x1="656" />
            <wire x2="304" y1="1552" y2="1552" x1="160" />
            <wire x2="1760" y1="1360" y2="1360" x1="1584" />
            <wire x2="1760" y1="1360" y2="1600" x1="1760" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="656" y1="1296" y2="1296" x1="464" />
        </branch>
        <branch name="clk">
            <wire x2="240" y1="1296" y2="1296" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="1296" name="clk" orien="R180" />
        <instance x="240" y="1328" name="XLXI_26" orien="R0" />
        <branch name="s5">
            <wire x2="1760" y1="1296" y2="1296" x1="1584" />
        </branch>
        <branch name="s4">
            <wire x2="1760" y1="1232" y2="1232" x1="1584" />
        </branch>
        <branch name="s3">
            <wire x2="1760" y1="1168" y2="1168" x1="1584" />
        </branch>
        <branch name="s2">
            <wire x2="1760" y1="1104" y2="1104" x1="1584" />
        </branch>
        <branch name="s1">
            <wire x2="1760" y1="1040" y2="1040" x1="1584" />
        </branch>
        <branch name="s6">
            <wire x2="1760" y1="976" y2="976" x1="1584" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="656" y1="1520" y2="1520" x1="560" />
            <wire x2="656" y1="1392" y2="1520" x1="656" />
        </branch>
        <branch name="rst">
            <wire x2="304" y1="1488" y2="1488" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="1488" name="rst" orien="R180" />
        <instance x="304" y="1616" name="XLXI_28" orien="R0" />
    </sheet>
</drawing>