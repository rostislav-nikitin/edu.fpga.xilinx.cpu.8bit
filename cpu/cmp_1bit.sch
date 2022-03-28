<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a" />
        <signal name="b" />
        <signal name="XLXN_3" />
        <signal name="eq_above" />
        <signal name="eq" />
        <signal name="gt" />
        <signal name="gt_above" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="x" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="eq_above" />
        <port polarity="Output" name="eq" />
        <port polarity="Output" name="gt" />
        <port polarity="Input" name="gt_above" />
        <port polarity="Output" name="x" />
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="xnor2" name="XLXI_1">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="eq_above" name="I1" />
            <blockpin signalname="eq" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="gt_above" name="I1" />
            <blockpin signalname="gt" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="b" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="x" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="976" y="1168" name="XLXI_1" orien="R0" />
        <branch name="a">
            <wire x2="960" y1="1040" y2="1040" x1="720" />
            <wire x2="976" y1="1040" y2="1040" x1="960" />
            <wire x2="960" y1="1040" y2="1200" x1="960" />
            <wire x2="1376" y1="1200" y2="1200" x1="960" />
        </branch>
        <branch name="b">
            <wire x2="880" y1="1104" y2="1104" x1="720" />
            <wire x2="976" y1="1104" y2="1104" x1="880" />
            <wire x2="880" y1="1104" y2="1264" x1="880" />
            <wire x2="1056" y1="1264" y2="1264" x1="880" />
        </branch>
        <iomarker fontsize="28" x="720" y="1040" name="a" orien="R180" />
        <iomarker fontsize="28" x="720" y="1104" name="b" orien="R180" />
        <branch name="XLXN_3">
            <wire x2="1360" y1="1072" y2="1072" x1="1232" />
            <wire x2="1680" y1="1072" y2="1072" x1="1360" />
            <wire x2="1360" y1="880" y2="1072" x1="1360" />
            <wire x2="1696" y1="880" y2="880" x1="1360" />
        </branch>
        <instance x="1680" y="1136" name="XLXI_2" orien="R0" />
        <branch name="eq_above">
            <wire x2="1520" y1="720" y2="1008" x1="1520" />
            <wire x2="1680" y1="1008" y2="1008" x1="1520" />
        </branch>
        <branch name="eq">
            <wire x2="2096" y1="1040" y2="1040" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1040" name="eq" orien="R0" />
        <iomarker fontsize="28" x="1520" y="720" name="eq_above" orien="R270" />
        <instance x="1696" y="1296" name="XLXI_3" orien="R0" />
        <branch name="gt">
            <wire x2="2096" y1="1200" y2="1200" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1200" name="gt" orien="R0" />
        <branch name="gt_above">
            <wire x2="1440" y1="720" y2="1168" x1="1440" />
            <wire x2="1696" y1="1168" y2="1168" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1440" y="720" name="gt_above" orien="R270" />
        <instance x="1376" y="1328" name="XLXI_4" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1696" y1="1232" y2="1232" x1="1632" />
        </branch>
        <instance x="1056" y="1296" name="XLXI_5" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1376" y1="1264" y2="1264" x1="1280" />
        </branch>
        <instance x="1696" y="912" name="XLXI_6" orien="R0" />
        <branch name="x">
            <wire x2="2096" y1="880" y2="880" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2096" y="880" name="x" orien="R0" />
    </sheet>
</drawing>