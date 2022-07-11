<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="t">
        </signal>
        <signal name="i(7:0)" />
        <signal name="o(7:0)" />
        <signal name="i(0)" />
        <signal name="i(1)" />
        <signal name="i(2)" />
        <signal name="i(3)" />
        <signal name="i(4)" />
        <signal name="i(5)" />
        <signal name="i(6)" />
        <signal name="i(7)" />
        <signal name="o(0)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <signal name="o(4)" />
        <signal name="o(5)" />
        <signal name="o(6)" />
        <signal name="o(7)" />
        <signal name="o(1)" />
        <signal name="e" />
        <port polarity="Input" name="i(7:0)" />
        <port polarity="Output" name="o(7:0)" />
        <port polarity="Input" name="e" />
        <blockdef name="obuft">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
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
        <block symbolname="obuft" name="XLXI_67">
            <blockpin signalname="i(0)" name="I" />
            <blockpin signalname="t" name="T" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_68">
            <blockpin signalname="i(1)" name="I" />
            <blockpin signalname="t" name="T" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_69">
            <blockpin signalname="i(2)" name="I" />
            <blockpin signalname="t" name="T" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_70">
            <blockpin signalname="i(3)" name="I" />
            <blockpin signalname="t" name="T" />
            <blockpin signalname="o(3)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_71">
            <blockpin signalname="i(4)" name="I" />
            <blockpin signalname="t" name="T" />
            <blockpin signalname="o(4)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_72">
            <blockpin signalname="i(5)" name="I" />
            <blockpin signalname="t" name="T" />
            <blockpin signalname="o(5)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_73">
            <blockpin signalname="i(6)" name="I" />
            <blockpin signalname="t" name="T" />
            <blockpin signalname="o(6)" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_74">
            <blockpin signalname="i(7)" name="I" />
            <blockpin signalname="t" name="T" />
            <blockpin signalname="o(7)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_75">
            <blockpin signalname="e" name="I" />
            <blockpin signalname="t" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="t">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="816" type="branch" />
            <wire x2="1088" y1="816" y2="816" x1="800" />
            <wire x2="1088" y1="816" y2="976" x1="1088" />
            <wire x2="1120" y1="976" y2="976" x1="1088" />
            <wire x2="1088" y1="976" y2="1136" x1="1088" />
            <wire x2="1120" y1="1136" y2="1136" x1="1088" />
            <wire x2="1088" y1="1136" y2="1296" x1="1088" />
            <wire x2="1120" y1="1296" y2="1296" x1="1088" />
            <wire x2="1088" y1="1296" y2="1456" x1="1088" />
            <wire x2="1120" y1="1456" y2="1456" x1="1088" />
            <wire x2="1088" y1="1456" y2="1616" x1="1088" />
            <wire x2="1120" y1="1616" y2="1616" x1="1088" />
            <wire x2="1088" y1="1616" y2="1776" x1="1088" />
            <wire x2="1120" y1="1776" y2="1776" x1="1088" />
            <wire x2="1088" y1="1776" y2="1936" x1="1088" />
            <wire x2="1088" y1="1936" y2="2096" x1="1088" />
            <wire x2="1120" y1="2096" y2="2096" x1="1088" />
            <wire x2="1120" y1="1936" y2="1936" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="528" y="880" name="i(7:0)" orien="R180" />
        <branch name="i(7:0)">
            <wire x2="960" y1="880" y2="880" x1="528" />
            <wire x2="960" y1="880" y2="1040" x1="960" />
            <wire x2="960" y1="1040" y2="1200" x1="960" />
            <wire x2="960" y1="1200" y2="1360" x1="960" />
            <wire x2="960" y1="1360" y2="1520" x1="960" />
            <wire x2="960" y1="1520" y2="1680" x1="960" />
            <wire x2="960" y1="1680" y2="1840" x1="960" />
            <wire x2="960" y1="1840" y2="2000" x1="960" />
            <wire x2="960" y1="2000" y2="2160" x1="960" />
        </branch>
        <branch name="o(7:0)">
            <wire x2="2096" y1="880" y2="880" x1="1520" />
            <wire x2="1520" y1="880" y2="1040" x1="1520" />
            <wire x2="1520" y1="1040" y2="1200" x1="1520" />
            <wire x2="1520" y1="1200" y2="1360" x1="1520" />
            <wire x2="1520" y1="1360" y2="1520" x1="1520" />
            <wire x2="1520" y1="1520" y2="1680" x1="1520" />
            <wire x2="1520" y1="1680" y2="1840" x1="1520" />
            <wire x2="1520" y1="1840" y2="2000" x1="1520" />
            <wire x2="1520" y1="2000" y2="2160" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="2096" y="880" name="o(7:0)" orien="R0" />
        <bustap x2="1056" y1="2160" y2="2160" x1="960" />
        <bustap x2="1056" y1="2000" y2="2000" x1="960" />
        <bustap x2="1056" y1="1840" y2="1840" x1="960" />
        <bustap x2="1056" y1="1680" y2="1680" x1="960" />
        <bustap x2="1056" y1="1520" y2="1520" x1="960" />
        <bustap x2="1056" y1="1360" y2="1360" x1="960" />
        <bustap x2="1056" y1="1200" y2="1200" x1="960" />
        <bustap x2="1056" y1="1040" y2="1040" x1="960" />
        <branch name="i(0)">
            <wire x2="1120" y1="1040" y2="1040" x1="1056" />
        </branch>
        <branch name="i(1)">
            <wire x2="1120" y1="1200" y2="1200" x1="1056" />
        </branch>
        <branch name="i(2)">
            <wire x2="1120" y1="1360" y2="1360" x1="1056" />
        </branch>
        <branch name="i(3)">
            <wire x2="1120" y1="1520" y2="1520" x1="1056" />
        </branch>
        <branch name="i(4)">
            <wire x2="1120" y1="1680" y2="1680" x1="1056" />
        </branch>
        <branch name="i(5)">
            <wire x2="1120" y1="1840" y2="1840" x1="1056" />
        </branch>
        <branch name="i(6)">
            <wire x2="1120" y1="2000" y2="2000" x1="1056" />
        </branch>
        <branch name="i(7)">
            <wire x2="1120" y1="2160" y2="2160" x1="1056" />
        </branch>
        <bustap x2="1424" y1="2160" y2="2160" x1="1520" />
        <bustap x2="1424" y1="2000" y2="2000" x1="1520" />
        <bustap x2="1424" y1="1840" y2="1840" x1="1520" />
        <bustap x2="1424" y1="1680" y2="1680" x1="1520" />
        <bustap x2="1424" y1="1520" y2="1520" x1="1520" />
        <bustap x2="1424" y1="1360" y2="1360" x1="1520" />
        <bustap x2="1424" y1="1200" y2="1200" x1="1520" />
        <bustap x2="1424" y1="1040" y2="1040" x1="1520" />
        <branch name="o(0)">
            <wire x2="1424" y1="1040" y2="1040" x1="1344" />
        </branch>
        <branch name="o(2)">
            <wire x2="1424" y1="1360" y2="1360" x1="1344" />
        </branch>
        <branch name="o(3)">
            <wire x2="1424" y1="1520" y2="1520" x1="1344" />
        </branch>
        <branch name="o(4)">
            <wire x2="1424" y1="1680" y2="1680" x1="1344" />
        </branch>
        <branch name="o(5)">
            <wire x2="1424" y1="1840" y2="1840" x1="1344" />
        </branch>
        <branch name="o(6)">
            <wire x2="1424" y1="2000" y2="2000" x1="1344" />
        </branch>
        <branch name="o(7)">
            <wire x2="1424" y1="2160" y2="2160" x1="1344" />
        </branch>
        <branch name="o(1)">
            <wire x2="1424" y1="1200" y2="1200" x1="1344" />
        </branch>
        <instance x="1120" y="1072" name="XLXI_67" orien="R0" />
        <instance x="1120" y="1232" name="XLXI_68" orien="R0" />
        <instance x="1120" y="1392" name="XLXI_69" orien="R0" />
        <instance x="1120" y="1552" name="XLXI_70" orien="R0" />
        <instance x="1120" y="1712" name="XLXI_71" orien="R0" />
        <instance x="1120" y="1872" name="XLXI_72" orien="R0" />
        <instance x="1120" y="2032" name="XLXI_73" orien="R0" />
        <instance x="1120" y="2192" name="XLXI_74" orien="R0" />
        <instance x="576" y="848" name="XLXI_75" orien="R0" />
        <branch name="e">
            <wire x2="576" y1="816" y2="816" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="816" name="e" orien="R180" />
    </sheet>
</drawing>