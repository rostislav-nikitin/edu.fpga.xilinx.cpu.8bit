<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="in_clk" />
        <signal name="out_clk" />
        <port polarity="Input" name="in_clk" />
        <port polarity="Output" name="out_clk" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="buf" name="XLXI_1">
            <blockpin signalname="in_clk" name="I" />
            <blockpin signalname="out_clk" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="1232" name="XLXI_1" orien="R0" />
        <branch name="in_clk">
            <wire x2="656" y1="1200" y2="1200" x1="480" />
        </branch>
        <branch name="out_clk">
            <wire x2="1120" y1="1200" y2="1200" x1="880" />
        </branch>
        <iomarker fontsize="28" x="480" y="1200" name="in_clk" orien="R180" />
        <iomarker fontsize="28" x="1120" y="1200" name="out_clk" orien="R0" />
    </sheet>
</drawing>