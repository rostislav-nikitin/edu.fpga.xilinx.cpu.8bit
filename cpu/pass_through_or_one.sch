<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_32" />
        <signal name="i(7:0)" />
        <signal name="one" />
        <signal name="o(7:0)" />
        <signal name="one_out(7:0)" />
        <port polarity="Input" name="i(7:0)" />
        <port polarity="Input" name="one" />
        <port polarity="Output" name="o(7:0)" />
        <blockdef name="buffer_8bit">
            <timestamp>2022-3-20T10:57:19</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
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
        <blockdef name="one_8bit">
            <timestamp>2022-3-20T15:48:12</timestamp>
            <rect width="256" x="0" y="-64" height="64" />
            <line x2="320" y1="-32" y2="-32" x1="256" />
            <rect width="64" x="256" y="-44" height="24" />
        </blockdef>
        <block symbolname="buffer_8bit" name="buff_origin">
            <blockpin signalname="XLXN_32" name="e" />
            <blockpin signalname="i(7:0)" name="i(7:0)" />
            <blockpin signalname="o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="inv" name="inv_one">
            <blockpin signalname="one" name="I" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="buffer_8bit" name="buff_const_one">
            <blockpin signalname="one" name="e" />
            <blockpin signalname="one_out(7:0)" name="i(7:0)" />
            <blockpin signalname="o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="one_8bit" name="const_one">
            <blockpin signalname="one_out(7:0)" name="one(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="976" y="576" name="buff_origin" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="704" y="512" name="inv_one" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="976" y1="480" y2="480" x1="928" />
        </branch>
        <branch name="i(7:0)">
            <wire x2="976" y1="544" y2="544" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="544" name="i(7:0)" orien="R180" />
        <instance x="976" y="928" name="buff_const_one" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="one">
            <wire x2="560" y1="832" y2="832" x1="320" />
            <wire x2="976" y1="832" y2="832" x1="560" />
            <wire x2="704" y1="480" y2="480" x1="560" />
            <wire x2="560" y1="480" y2="832" x1="560" />
        </branch>
        <iomarker fontsize="28" x="320" y="832" name="one" orien="R180" />
        <branch name="o(7:0)">
            <wire x2="1520" y1="480" y2="480" x1="1360" />
            <wire x2="1520" y1="480" y2="832" x1="1520" />
            <wire x2="1920" y1="832" y2="832" x1="1520" />
            <wire x2="1520" y1="832" y2="832" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1920" y="832" name="o(7:0)" orien="R0" />
        <instance x="560" y="928" name="const_one" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="one_out(7:0)">
            <wire x2="976" y1="896" y2="896" x1="880" />
        </branch>
    </sheet>
</drawing>