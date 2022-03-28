<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="r" />
        <signal name="d(7:0)" />
        <signal name="w" />
        <signal name="o(7:0)" />
        <port polarity="Input" name="r" />
        <port polarity="Input" name="d(7:0)" />
        <port polarity="Input" name="w" />
        <port polarity="Output" name="o(7:0)" />
        <blockdef name="ld8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="buffer_8bit">
            <timestamp>2022-3-20T10:57:19</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <block symbolname="ld8" name="XLXI_2">
            <attr value="00" name="INIT">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
                <trait valuetype="BitVector 2 Hexadecimal" />
            </attr>
            <blockpin signalname="d(7:0)" name="D(7:0)" />
            <blockpin signalname="w" name="G" />
            <blockpin signalname="XLXN_1(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="buffer_8bit" name="XLXI_4">
            <blockpin signalname="r" name="e" />
            <blockpin signalname="XLXN_1(7:0)" name="i(7:0)" />
            <blockpin signalname="o(7:0)" name="o(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="1392" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1(7:0)">
            <wire x2="1040" y1="1136" y2="1136" x1="992" />
        </branch>
        <branch name="r">
            <wire x2="1040" y1="960" y2="960" x1="480" />
            <wire x2="1040" y1="960" y2="1072" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="480" y="960" name="r" orien="R180" />
        <branch name="d(7:0)">
            <wire x2="608" y1="1136" y2="1136" x1="480" />
        </branch>
        <branch name="w">
            <wire x2="608" y1="1264" y2="1264" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="1136" name="d(7:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="1264" name="w" orien="R180" />
        <instance x="1040" y="1168" name="XLXI_4" orien="R0">
        </instance>
        <branch name="o(7:0)">
            <wire x2="1520" y1="1072" y2="1072" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1072" name="o(7:0)" orien="R0" />
    </sheet>
</drawing>