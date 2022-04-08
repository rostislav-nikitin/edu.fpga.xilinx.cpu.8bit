<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="r" />
        <signal name="d(7:0)" />
        <signal name="w" />
        <signal name="XLXN_2" />
        <signal name="o(7:0)" />
        <signal name="clr" />
        <port polarity="Input" name="r" />
        <port polarity="Input" name="d(7:0)" />
        <port polarity="Input" name="w" />
        <port polarity="Output" name="o(7:0)" />
        <port polarity="Input" name="clr" />
        <blockdef name="ld8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="ld8ce" name="XLXI_5">
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="d(7:0)" name="D(7:0)" />
            <blockpin signalname="w" name="G" />
            <blockpin signalname="XLXN_2" name="GE" />
            <blockpin signalname="o(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_2" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
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
        <instance x="608" y="1392" name="XLXI_5" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="240" y1="1120" y2="1200" x1="240" />
            <wire x2="608" y1="1200" y2="1200" x1="240" />
        </branch>
        <instance x="176" y="1120" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="240" y="1360" name="clr" orien="R180" />
        <branch name="o(7:0)">
            <wire x2="1280" y1="1136" y2="1136" x1="992" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1136" name="o(7:0)" orien="R0" />
        <branch name="clr">
            <wire x2="400" y1="1360" y2="1360" x1="240" />
            <wire x2="608" y1="1360" y2="1360" x1="400" />
        </branch>
    </sheet>
</drawing>