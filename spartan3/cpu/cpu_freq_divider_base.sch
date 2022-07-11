<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="in_clr" />
        <signal name="in_clk" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="out_clk_high(15:0)" />
        <signal name="out_clk_low(15:0)" />
        <port polarity="Input" name="in_clr" />
        <port polarity="Input" name="in_clk" />
        <port polarity="Output" name="out_clk_high(15:0)" />
        <port polarity="Output" name="out_clk_low(15:0)" />
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
        <block symbolname="cb16ce" name="XLXI_1">
            <blockpin signalname="in_clk" name="C" />
            <blockpin signalname="XLXN_4" name="CE" />
            <blockpin signalname="in_clr" name="CLR" />
            <blockpin signalname="XLXN_3" name="CEO" />
            <blockpin signalname="out_clk_low(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb16ce" name="XLXI_2">
            <blockpin signalname="in_clk" name="C" />
            <blockpin signalname="XLXN_3" name="CE" />
            <blockpin signalname="in_clr" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="out_clk_high(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="784" y="672" name="XLXI_1" orien="R0" />
        <instance x="784" y="1152" name="XLXI_2" orien="R0" />
        <branch name="in_clr">
            <wire x2="400" y1="1120" y2="1120" x1="240" />
            <wire x2="784" y1="1120" y2="1120" x1="400" />
            <wire x2="400" y1="640" y2="1120" x1="400" />
            <wire x2="784" y1="640" y2="640" x1="400" />
        </branch>
        <branch name="in_clk">
            <wire x2="640" y1="1024" y2="1024" x1="240" />
            <wire x2="784" y1="1024" y2="1024" x1="640" />
            <wire x2="784" y1="544" y2="544" x1="640" />
            <wire x2="640" y1="544" y2="1024" x1="640" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="720" y1="720" y2="960" x1="720" />
            <wire x2="784" y1="960" y2="960" x1="720" />
            <wire x2="1360" y1="720" y2="720" x1="720" />
            <wire x2="1360" y1="480" y2="480" x1="1168" />
            <wire x2="1360" y1="480" y2="720" x1="1360" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="640" y1="400" y2="480" x1="640" />
            <wire x2="704" y1="480" y2="480" x1="640" />
            <wire x2="784" y1="480" y2="480" x1="704" />
        </branch>
        <instance x="576" y="400" name="XLXI_3" orien="R0" />
        <branch name="out_clk_high(15:0)">
            <wire x2="1216" y1="896" y2="896" x1="1168" />
            <wire x2="1520" y1="896" y2="896" x1="1216" />
        </branch>
        <branch name="out_clk_low(15:0)">
            <wire x2="1520" y1="416" y2="416" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="240" y="1024" name="in_clk" orien="R180" />
        <iomarker fontsize="28" x="240" y="1120" name="in_clr" orien="R180" />
        <iomarker fontsize="28" x="1520" y="416" name="out_clk_low(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1520" y="896" name="out_clk_high(15:0)" orien="R0" />
    </sheet>
</drawing>