<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="e" />
        <signal name="i(7:0)" />
        <signal name="o(7:0)" />
        <port polarity="Input" name="e" />
        <port polarity="Input" name="i(7:0)" />
        <port polarity="Output" name="o(7:0)" />
        <blockdef name="obuft8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="96" x="128" y="-44" height="24" />
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
        <block symbolname="obuft8" name="XLXI_54">
            <blockpin signalname="i(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_2" name="T" />
            <blockpin signalname="o(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_55">
            <blockpin signalname="e" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="1760" y="880" name="o(7:0)" orien="R0" />
        <instance x="960" y="912" name="XLXI_54" orien="R0" />
        <iomarker fontsize="28" x="480" y="816" name="e" orien="R180" />
        <instance x="656" y="848" name="XLXI_55" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="960" y1="816" y2="816" x1="880" />
        </branch>
        <branch name="e">
            <wire x2="656" y1="816" y2="816" x1="480" />
        </branch>
        <iomarker fontsize="28" x="528" y="880" name="i(7:0)" orien="R180" />
        <branch name="i(7:0)">
            <wire x2="960" y1="880" y2="880" x1="528" />
        </branch>
        <branch name="o(7:0)">
            <wire x2="1760" y1="880" y2="880" x1="1184" />
        </branch>
    </sheet>
</drawing>