<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="data(7:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="tx" />
        <port polarity="Input" name="data(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="tx" />
        <blockdef name="usart_tramnsmitter">
            <timestamp>2022-6-20T23:7:11</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="320" />
        </blockdef>
        <block symbolname="usart_tramnsmitter" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="data(7:0)" name="data(7:0)" />
            <blockpin signalname="tx" name="tx" />
            <blockpin name="done" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="816" name="XLXI_2" orien="R0">
        </instance>
        <branch name="data(7:0)">
            <wire x2="848" y1="848" y2="848" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="848" name="data(7:0)" orien="R180" />
        <branch name="clk">
            <wire x2="848" y1="784" y2="784" x1="656" />
        </branch>
        <branch name="rst">
            <wire x2="848" y1="976" y2="976" x1="480" />
        </branch>
        <branch name="tx">
            <wire x2="1360" y1="784" y2="784" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1360" y="784" name="tx" orien="R0" />
        <iomarker fontsize="28" x="480" y="976" name="rst" orien="R180" />
        <iomarker fontsize="28" x="656" y="784" name="clk" orien="R180" />
    </sheet>
</drawing>