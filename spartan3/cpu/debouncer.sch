<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="in_signal" />
        <signal name="in_clk" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="db2(15:0)" />
        <signal name="db2(7)" />
        <signal name="out_signal" />
        <port polarity="Input" name="in_signal" />
        <port polarity="Input" name="in_clk" />
        <port polarity="Output" name="out_signal" />
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
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
        <block symbolname="cb16ce" name="XLXI_1">
            <blockpin signalname="in_clk" name="C" />
            <blockpin signalname="XLXN_4" name="CE" />
            <blockpin signalname="in_signal" name="CLR" />
            <blockpin signalname="XLXN_3" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb16ce" name="XLXI_2">
            <blockpin signalname="in_clk" name="C" />
            <blockpin signalname="XLXN_3" name="CE" />
            <blockpin signalname="in_signal" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="db2(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="db2(7)" name="I" />
            <blockpin signalname="out_signal" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="496" y="928" name="XLXI_1" orien="R0" />
        <instance x="480" y="1376" name="XLXI_2" orien="R0" />
        <branch name="in_signal">
            <wire x2="304" y1="896" y2="896" x1="128" />
            <wire x2="304" y1="896" y2="1344" x1="304" />
            <wire x2="480" y1="1344" y2="1344" x1="304" />
            <wire x2="496" y1="896" y2="896" x1="304" />
        </branch>
        <branch name="in_clk">
            <wire x2="384" y1="800" y2="800" x1="128" />
            <wire x2="496" y1="800" y2="800" x1="384" />
            <wire x2="384" y1="800" y2="1248" x1="384" />
            <wire x2="480" y1="1248" y2="1248" x1="384" />
        </branch>
        <iomarker fontsize="28" x="128" y="800" name="in_clk" orien="R180" />
        <iomarker fontsize="28" x="128" y="896" name="in_signal" orien="R180" />
        <branch name="XLXN_3">
            <wire x2="416" y1="960" y2="1184" x1="416" />
            <wire x2="480" y1="1184" y2="1184" x1="416" />
            <wire x2="960" y1="960" y2="960" x1="416" />
            <wire x2="960" y1="736" y2="736" x1="880" />
            <wire x2="960" y1="736" y2="960" x1="960" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="384" y1="640" y2="736" x1="384" />
            <wire x2="496" y1="736" y2="736" x1="384" />
        </branch>
        <instance x="320" y="640" name="XLXI_4" orien="R0" />
        <branch name="db2(15:0)">
            <wire x2="1120" y1="1120" y2="1120" x1="864" />
            <wire x2="1120" y1="1120" y2="1280" x1="1120" />
        </branch>
        <bustap x2="1216" y1="1280" y2="1280" x1="1120" />
        <instance x="1280" y="1312" name="XLXI_5" orien="R0" />
        <branch name="db2(7)">
            <wire x2="1280" y1="1280" y2="1280" x1="1216" />
        </branch>
        <branch name="out_signal">
            <wire x2="1600" y1="1280" y2="1280" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1600" y="1280" name="out_signal" orien="R0" />
    </sheet>
</drawing>