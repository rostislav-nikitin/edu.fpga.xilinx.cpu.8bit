<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_15" />
        <signal name="in1" />
        <signal name="in2" />
        <signal name="sel" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="o1" />
        <signal name="o2" />
        <port polarity="Input" name="in1" />
        <port polarity="Input" name="in2" />
        <port polarity="Input" name="sel" />
        <port polarity="Output" name="o1" />
        <port polarity="Output" name="o2" />
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="ld">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_21">
            <blockpin signalname="in1" name="D0" />
            <blockpin signalname="in2" name="D1" />
            <blockpin signalname="sel" name="S0" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="ld" name="XLXI_23">
            <blockpin signalname="XLXN_15" name="D" />
            <blockpin signalname="XLXN_26" name="G" />
            <blockpin signalname="o2" name="Q" />
        </block>
        <block symbolname="ld" name="XLXI_24">
            <blockpin signalname="XLXN_15" name="D" />
            <blockpin signalname="XLXN_26" name="G" />
            <blockpin signalname="o1" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_25">
            <blockpin signalname="XLXN_26" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="1248" name="XLXI_21" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1968" y1="1120" y2="1120" x1="1872" />
            <wire x2="1984" y1="1120" y2="1120" x1="1968" />
            <wire x2="1984" y1="1120" y2="1264" x1="1984" />
            <wire x2="2096" y1="1264" y2="1264" x1="1984" />
            <wire x2="1984" y1="848" y2="1120" x1="1984" />
            <wire x2="2096" y1="848" y2="848" x1="1984" />
        </branch>
        <branch name="in1">
            <wire x2="1552" y1="1088" y2="1088" x1="1408" />
        </branch>
        <branch name="in2">
            <wire x2="1552" y1="1152" y2="1152" x1="1408" />
        </branch>
        <branch name="sel">
            <wire x2="1552" y1="1216" y2="1216" x1="1472" />
        </branch>
        <instance x="2096" y="1104" name="XLXI_24" orien="R0" />
        <instance x="2096" y="1520" name="XLXI_23" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="1840" y1="1440" y2="1520" x1="1840" />
            <wire x2="1920" y1="1520" y2="1520" x1="1840" />
            <wire x2="2048" y1="1520" y2="1520" x1="1920" />
            <wire x2="2096" y1="976" y2="976" x1="2048" />
            <wire x2="2048" y1="976" y2="1392" x1="2048" />
            <wire x2="2048" y1="1392" y2="1520" x1="2048" />
            <wire x2="2096" y1="1392" y2="1392" x1="2048" />
        </branch>
        <instance x="1776" y="1440" name="XLXI_25" orien="R0" />
        <iomarker fontsize="28" x="1408" y="1088" name="in1" orien="R180" />
        <iomarker fontsize="28" x="1408" y="1152" name="in2" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1216" name="sel" orien="R180" />
        <branch name="o1">
            <wire x2="2640" y1="848" y2="848" x1="2480" />
        </branch>
        <branch name="o2">
            <wire x2="2640" y1="1264" y2="1264" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2640" y="848" name="o1" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1264" name="o2" orien="R0" />
    </sheet>
</drawing>