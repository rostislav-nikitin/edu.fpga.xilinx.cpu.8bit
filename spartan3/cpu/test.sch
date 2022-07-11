<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="o(15:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="o(15:0)" />
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
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin signalname="rst" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="o(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="592" y="768" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="592" y1="576" y2="576" x1="400" />
        </branch>
        <branch name="clk">
            <wire x2="592" y1="640" y2="640" x1="400" />
        </branch>
        <branch name="rst">
            <wire x2="592" y1="736" y2="736" x1="400" />
        </branch>
        <branch name="o(15:0)">
            <wire x2="1120" y1="512" y2="512" x1="976" />
        </branch>
        <instance x="400" y="640" name="XLXI_2" orien="R270" />
        <iomarker fontsize="28" x="400" y="640" name="clk" orien="R180" />
        <iomarker fontsize="28" x="400" y="736" name="rst" orien="R180" />
        <iomarker fontsize="28" x="1120" y="512" name="o(15:0)" orien="R0" />
    </sheet>
</drawing>