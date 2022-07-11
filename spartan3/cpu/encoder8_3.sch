<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="i(7:0)" />
        <signal name="i(7)" />
        <signal name="i(6)" />
        <signal name="i(5)" />
        <signal name="i(4)" />
        <signal name="i(3)" />
        <signal name="i(2)" />
        <signal name="i(1)" />
        <signal name="i(0)" />
        <signal name="o(0)" />
        <signal name="o(1)" />
        <signal name="o(2)" />
        <signal name="o(2:0)" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="g" />
        <port polarity="Input" name="i(7:0)" />
        <port polarity="Output" name="o(2:0)" />
        <port polarity="Output" name="g" />
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="and8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-512" x1="64" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="144" y1="-336" y2="-336" x1="64" />
            <line x2="64" y1="-240" y2="-240" x1="144" />
            <arc ex="144" ey="-336" sx="144" sy="-240" r="48" cx="144" cy="-288" />
            <line x2="192" y1="-288" y2="-288" x1="256" />
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
        <block symbolname="or4" name="XLXI_1">
            <blockpin signalname="i(1)" name="I0" />
            <blockpin signalname="i(3)" name="I1" />
            <blockpin signalname="i(5)" name="I2" />
            <blockpin signalname="i(7)" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_2">
            <blockpin signalname="i(2)" name="I0" />
            <blockpin signalname="i(3)" name="I1" />
            <blockpin signalname="i(6)" name="I2" />
            <blockpin signalname="i(7)" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_3">
            <blockpin signalname="i(4)" name="I0" />
            <blockpin signalname="i(5)" name="I1" />
            <blockpin signalname="i(6)" name="I2" />
            <blockpin signalname="i(7)" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="and8" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_4" name="I4" />
            <blockpin signalname="XLXN_3" name="I5" />
            <blockpin signalname="XLXN_2" name="I6" />
            <blockpin signalname="XLXN_1" name="I7" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="i(0)" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="i(1)" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="i(2)" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="i(3)" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="i(4)" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="i(5)" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="i(6)" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="i(7)" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="i(7:0)">
            <wire x2="320" y1="80" y2="80" x1="240" />
            <wire x2="320" y1="80" y2="160" x1="320" />
            <wire x2="320" y1="160" y2="240" x1="320" />
            <wire x2="320" y1="240" y2="320" x1="320" />
            <wire x2="320" y1="320" y2="400" x1="320" />
            <wire x2="320" y1="400" y2="480" x1="320" />
            <wire x2="320" y1="480" y2="560" x1="320" />
            <wire x2="320" y1="560" y2="640" x1="320" />
            <wire x2="320" y1="640" y2="720" x1="320" />
        </branch>
        <bustap x2="416" y1="720" y2="720" x1="320" />
        <bustap x2="416" y1="640" y2="640" x1="320" />
        <bustap x2="416" y1="560" y2="560" x1="320" />
        <bustap x2="416" y1="480" y2="480" x1="320" />
        <bustap x2="416" y1="400" y2="400" x1="320" />
        <bustap x2="416" y1="320" y2="320" x1="320" />
        <bustap x2="416" y1="240" y2="240" x1="320" />
        <bustap x2="416" y1="160" y2="160" x1="320" />
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="720" type="branch" />
            <wire x2="560" y1="720" y2="720" x1="416" />
        </branch>
        <branch name="i(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="640" type="branch" />
            <wire x2="560" y1="640" y2="640" x1="416" />
        </branch>
        <branch name="i(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="560" type="branch" />
            <wire x2="560" y1="560" y2="560" x1="416" />
        </branch>
        <branch name="i(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="480" type="branch" />
            <wire x2="560" y1="480" y2="480" x1="416" />
        </branch>
        <branch name="i(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="400" type="branch" />
            <wire x2="560" y1="400" y2="400" x1="416" />
        </branch>
        <branch name="i(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="320" type="branch" />
            <wire x2="560" y1="320" y2="320" x1="416" />
        </branch>
        <branch name="i(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="240" type="branch" />
            <wire x2="560" y1="240" y2="240" x1="416" />
        </branch>
        <branch name="i(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="160" type="branch" />
            <wire x2="560" y1="160" y2="160" x1="416" />
        </branch>
        <instance x="1168" y="320" name="XLXI_1" orien="R0" />
        <branch name="i(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="256" type="branch" />
            <wire x2="1168" y1="256" y2="256" x1="1008" />
        </branch>
        <branch name="i(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="192" type="branch" />
            <wire x2="1168" y1="192" y2="192" x1="1008" />
        </branch>
        <branch name="i(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="128" type="branch" />
            <wire x2="1168" y1="128" y2="128" x1="1008" />
        </branch>
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="64" type="branch" />
            <wire x2="1168" y1="64" y2="64" x1="1008" />
        </branch>
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="160" type="branch" />
            <wire x2="1568" y1="160" y2="160" x1="1424" />
        </branch>
        <instance x="1168" y="624" name="XLXI_2" orien="R0" />
        <branch name="i(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="560" type="branch" />
            <wire x2="1168" y1="560" y2="560" x1="1008" />
        </branch>
        <branch name="i(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="496" type="branch" />
            <wire x2="1168" y1="496" y2="496" x1="1008" />
        </branch>
        <branch name="i(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="432" type="branch" />
            <wire x2="1168" y1="432" y2="432" x1="1008" />
        </branch>
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="368" type="branch" />
            <wire x2="1168" y1="368" y2="368" x1="1008" />
        </branch>
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="464" type="branch" />
            <wire x2="1568" y1="464" y2="464" x1="1424" />
        </branch>
        <instance x="1168" y="928" name="XLXI_3" orien="R0" />
        <branch name="i(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="864" type="branch" />
            <wire x2="1168" y1="864" y2="864" x1="1024" />
        </branch>
        <branch name="i(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="800" type="branch" />
            <wire x2="1168" y1="800" y2="800" x1="1024" />
        </branch>
        <branch name="i(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="736" type="branch" />
            <wire x2="1168" y1="736" y2="736" x1="1024" />
        </branch>
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="672" type="branch" />
            <wire x2="1168" y1="672" y2="672" x1="1024" />
        </branch>
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="768" type="branch" />
            <wire x2="1584" y1="768" y2="768" x1="1424" />
        </branch>
        <branch name="o(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="160" type="branch" />
            <wire x2="2240" y1="160" y2="160" x1="2160" />
            <wire x2="2160" y1="160" y2="320" x1="2160" />
            <wire x2="2160" y1="320" y2="400" x1="2160" />
            <wire x2="2160" y1="400" y2="480" x1="2160" />
        </branch>
        <bustap x2="2064" y1="480" y2="480" x1="2160" />
        <bustap x2="2064" y1="400" y2="400" x1="2160" />
        <bustap x2="2064" y1="320" y2="320" x1="2160" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="320" type="branch" />
            <wire x2="2064" y1="320" y2="320" x1="1920" />
        </branch>
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="400" type="branch" />
            <wire x2="2064" y1="400" y2="400" x1="1920" />
        </branch>
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="480" type="branch" />
            <wire x2="2064" y1="480" y2="480" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2240" y="160" name="o(2:0)" orien="R0" />
        <iomarker fontsize="28" x="240" y="80" name="i(7:0)" orien="R180" />
        <instance x="1056" y="1472" name="XLXI_4" orien="R0" />
        <instance x="656" y="992" name="XLXI_5" orien="R0" />
        <instance x="656" y="1056" name="XLXI_6" orien="R0" />
        <instance x="656" y="1120" name="XLXI_7" orien="R0" />
        <instance x="656" y="1184" name="XLXI_8" orien="R0" />
        <instance x="656" y="1248" name="XLXI_9" orien="R0" />
        <instance x="656" y="1312" name="XLXI_10" orien="R0" />
        <instance x="656" y="1376" name="XLXI_11" orien="R0" />
        <instance x="656" y="1440" name="XLXI_12" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1056" y1="960" y2="960" x1="880" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1056" y1="1024" y2="1024" x1="880" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1056" y1="1088" y2="1088" x1="880" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1056" y1="1152" y2="1152" x1="880" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1056" y1="1216" y2="1216" x1="880" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1056" y1="1280" y2="1280" x1="880" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1056" y1="1344" y2="1344" x1="880" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1056" y1="1408" y2="1408" x1="880" />
        </branch>
        <branch name="g">
            <wire x2="1440" y1="1184" y2="1184" x1="1312" />
            <wire x2="1600" y1="1184" y2="1184" x1="1440" />
        </branch>
        <branch name="i(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="960" type="branch" />
            <wire x2="656" y1="960" y2="960" x1="560" />
        </branch>
        <branch name="i(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1024" type="branch" />
            <wire x2="656" y1="1024" y2="1024" x1="560" />
        </branch>
        <branch name="i(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1088" type="branch" />
            <wire x2="656" y1="1088" y2="1088" x1="560" />
        </branch>
        <branch name="i(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1152" type="branch" />
            <wire x2="656" y1="1152" y2="1152" x1="560" />
        </branch>
        <branch name="i(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1216" type="branch" />
            <wire x2="656" y1="1216" y2="1216" x1="560" />
        </branch>
        <branch name="i(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1280" type="branch" />
            <wire x2="656" y1="1280" y2="1280" x1="560" />
        </branch>
        <branch name="i(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1344" type="branch" />
            <wire x2="656" y1="1344" y2="1344" x1="560" />
        </branch>
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1408" type="branch" />
            <wire x2="656" y1="1408" y2="1408" x1="560" />
        </branch>
        <iomarker fontsize="28" x="1600" y="1184" name="g" orien="R0" />
    </sheet>
</drawing>