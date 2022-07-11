<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="one(7:0)" />
        <signal name="one(0)" />
        <signal name="one(1)" />
        <signal name="one(2)" />
        <signal name="one(3)" />
        <signal name="one(4)" />
        <signal name="one(6)" />
        <signal name="one(7)" />
        <signal name="one(5)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <port polarity="Output" name="one(7:0)" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="pulldown">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-160" y2="-128" x1="64" />
            <line x2="60" y1="0" y2="0" x1="68" />
            <line x2="52" y1="-16" y2="-16" x1="76" />
            <line x2="40" y1="-32" y2="-32" x1="88" />
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
        </blockdef>
        <blockdef name="pullup">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-48" x1="48" />
            <line x2="48" y1="-72" y2="-56" x1="80" />
            <line x2="80" y1="-88" y2="-72" x1="48" />
            <line x2="48" y1="-104" y2="-88" x1="80" />
            <line x2="80" y1="-108" y2="-104" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="96" />
        </blockdef>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="XLXN_10" name="I" />
            <blockpin signalname="one(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="XLXN_10" name="I" />
            <blockpin signalname="one(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="XLXN_10" name="I" />
            <blockpin signalname="one(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="XLXN_10" name="I" />
            <blockpin signalname="one(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="XLXN_10" name="I" />
            <blockpin signalname="one(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_10" name="I" />
            <blockpin signalname="one(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_10" name="I" />
            <blockpin signalname="one(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="XLXN_11" name="I" />
            <blockpin signalname="one(0)" name="O" />
        </block>
        <block symbolname="pulldown" name="XLXI_11">
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="pullup" name="XLXI_12">
            <blockpin signalname="XLXN_11" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="one(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="960" type="branch" />
            <wire x2="1120" y1="960" y2="1120" x1="1120" />
            <wire x2="1120" y1="1120" y2="1200" x1="1120" />
            <wire x2="1120" y1="1200" y2="1280" x1="1120" />
            <wire x2="1120" y1="1280" y2="1360" x1="1120" />
            <wire x2="1120" y1="1360" y2="1440" x1="1120" />
            <wire x2="1120" y1="1440" y2="1520" x1="1120" />
            <wire x2="1120" y1="1520" y2="1600" x1="1120" />
            <wire x2="1120" y1="1600" y2="1680" x1="1120" />
            <wire x2="1216" y1="960" y2="960" x1="1120" />
        </branch>
        <bustap x2="1024" y1="1680" y2="1680" x1="1120" />
        <bustap x2="1024" y1="1600" y2="1600" x1="1120" />
        <bustap x2="1024" y1="1520" y2="1520" x1="1120" />
        <bustap x2="1024" y1="1440" y2="1440" x1="1120" />
        <bustap x2="1024" y1="1360" y2="1360" x1="1120" />
        <bustap x2="1024" y1="1280" y2="1280" x1="1120" />
        <bustap x2="1024" y1="1200" y2="1200" x1="1120" />
        <bustap x2="1024" y1="1120" y2="1120" x1="1120" />
        <instance x="736" y="1712" name="XLXI_2" orien="R0" />
        <instance x="736" y="1632" name="XLXI_3" orien="R0" />
        <instance x="736" y="1552" name="XLXI_4" orien="R0" />
        <instance x="736" y="1472" name="XLXI_5" orien="R0" />
        <instance x="736" y="1392" name="XLXI_6" orien="R0" />
        <instance x="736" y="1312" name="XLXI_7" orien="R0" />
        <instance x="736" y="1232" name="XLXI_9" orien="R0" />
        <instance x="736" y="1152" name="XLXI_10" orien="R0" />
        <branch name="one(0)">
            <wire x2="1024" y1="1120" y2="1120" x1="960" />
        </branch>
        <branch name="one(1)">
            <wire x2="1024" y1="1200" y2="1200" x1="960" />
        </branch>
        <branch name="one(2)">
            <wire x2="1024" y1="1280" y2="1280" x1="960" />
        </branch>
        <branch name="one(3)">
            <wire x2="1024" y1="1360" y2="1360" x1="960" />
        </branch>
        <branch name="one(4)">
            <wire x2="1024" y1="1440" y2="1440" x1="960" />
        </branch>
        <branch name="one(6)">
            <wire x2="1024" y1="1600" y2="1600" x1="960" />
        </branch>
        <branch name="one(7)">
            <wire x2="1024" y1="1680" y2="1680" x1="960" />
        </branch>
        <branch name="one(5)">
            <wire x2="1024" y1="1520" y2="1520" x1="960" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="736" y1="1200" y2="1200" x1="640" />
            <wire x2="640" y1="1200" y2="1280" x1="640" />
            <wire x2="736" y1="1280" y2="1280" x1="640" />
            <wire x2="640" y1="1280" y2="1360" x1="640" />
            <wire x2="736" y1="1360" y2="1360" x1="640" />
            <wire x2="640" y1="1360" y2="1440" x1="640" />
            <wire x2="736" y1="1440" y2="1440" x1="640" />
            <wire x2="640" y1="1440" y2="1520" x1="640" />
            <wire x2="736" y1="1520" y2="1520" x1="640" />
            <wire x2="640" y1="1520" y2="1600" x1="640" />
            <wire x2="736" y1="1600" y2="1600" x1="640" />
            <wire x2="640" y1="1600" y2="1680" x1="640" />
            <wire x2="736" y1="1680" y2="1680" x1="640" />
            <wire x2="640" y1="1680" y2="1760" x1="640" />
        </branch>
        <instance x="576" y="1920" name="XLXI_11" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="640" y1="1040" y2="1120" x1="640" />
            <wire x2="736" y1="1120" y2="1120" x1="640" />
        </branch>
        <instance x="576" y="1040" name="XLXI_12" orien="R0" />
        <iomarker fontsize="28" x="1216" y="960" name="one(7:0)" orien="R0" />
    </sheet>
</drawing>