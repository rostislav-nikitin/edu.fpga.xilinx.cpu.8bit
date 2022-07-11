<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(7:0)" />
        <signal name="a(7)" />
        <signal name="a(6)" />
        <signal name="a(5)" />
        <signal name="a(4)" />
        <signal name="a(2)" />
        <signal name="a(1)" />
        <signal name="a(0)" />
        <signal name="x" />
        <signal name="a(3)" />
        <port polarity="Input" name="a(7:0)" />
        <port polarity="Output" name="x" />
        <blockdef name="nor8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="48" ey="-336" sx="48" sy="-240" r="56" cx="16" cy="-288" />
            <line x2="64" y1="-336" y2="-336" x1="128" />
            <line x2="64" y1="-240" y2="-240" x1="128" />
            <arc ex="208" ey="-288" sx="128" sy="-240" r="88" cx="132" cy="-328" />
            <arc ex="128" ey="-336" sx="208" sy="-288" r="88" cx="132" cy="-248" />
            <line x2="228" y1="-288" y2="-288" x1="256" />
            <circle r="10" cx="218" cy="-286" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-336" y2="-512" x1="48" />
            <line x2="48" y1="-64" y2="-240" x1="48" />
            <line x2="48" y1="-336" y2="-336" x1="72" />
            <line x2="52" y1="-240" y2="-240" x1="72" />
        </blockdef>
        <block symbolname="nor8" name="XLXI_1">
            <blockpin signalname="a(7)" name="I0" />
            <blockpin signalname="a(6)" name="I1" />
            <blockpin signalname="a(5)" name="I2" />
            <blockpin signalname="a(4)" name="I3" />
            <blockpin signalname="a(3)" name="I4" />
            <blockpin signalname="a(2)" name="I5" />
            <blockpin signalname="a(1)" name="I6" />
            <blockpin signalname="a(0)" name="I7" />
            <blockpin signalname="x" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="1344" name="XLXI_1" orien="R0" />
        <branch name="a(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="400" y="704" type="branch" />
            <wire x2="400" y1="704" y2="704" x1="336" />
            <wire x2="400" y1="704" y2="832" x1="400" />
            <wire x2="400" y1="832" y2="896" x1="400" />
            <wire x2="400" y1="896" y2="960" x1="400" />
            <wire x2="400" y1="960" y2="1024" x1="400" />
            <wire x2="400" y1="1024" y2="1088" x1="400" />
            <wire x2="400" y1="1088" y2="1152" x1="400" />
            <wire x2="400" y1="1152" y2="1216" x1="400" />
            <wire x2="400" y1="1216" y2="1280" x1="400" />
        </branch>
        <bustap x2="496" y1="1280" y2="1280" x1="400" />
        <bustap x2="496" y1="1216" y2="1216" x1="400" />
        <bustap x2="496" y1="1152" y2="1152" x1="400" />
        <bustap x2="496" y1="1088" y2="1088" x1="400" />
        <bustap x2="496" y1="1024" y2="1024" x1="400" />
        <bustap x2="496" y1="960" y2="960" x1="400" />
        <bustap x2="496" y1="896" y2="896" x1="400" />
        <bustap x2="496" y1="832" y2="832" x1="400" />
        <branch name="a(7)">
            <wire x2="928" y1="1280" y2="1280" x1="496" />
        </branch>
        <branch name="a(6)">
            <wire x2="928" y1="1216" y2="1216" x1="496" />
        </branch>
        <branch name="a(5)">
            <wire x2="928" y1="1152" y2="1152" x1="496" />
        </branch>
        <branch name="a(4)">
            <wire x2="928" y1="1088" y2="1088" x1="496" />
        </branch>
        <branch name="a(2)">
            <wire x2="928" y1="960" y2="960" x1="496" />
        </branch>
        <branch name="a(1)">
            <wire x2="928" y1="896" y2="896" x1="496" />
        </branch>
        <branch name="a(0)">
            <wire x2="928" y1="832" y2="832" x1="496" />
        </branch>
        <iomarker fontsize="28" x="336" y="704" name="a(7:0)" orien="R180" />
        <branch name="x">
            <wire x2="1344" y1="1056" y2="1056" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1344" y="1056" name="x" orien="R0" />
        <branch name="a(3)">
            <wire x2="928" y1="1024" y2="1024" x1="496" />
        </branch>
    </sheet>
</drawing>