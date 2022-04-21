<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="i(7:0)" />
        <signal name="o(7:0)" />
        <signal name="i(0)" />
        <signal name="i(1)" />
        <signal name="i(2)" />
        <signal name="i(3)" />
        <signal name="i(4)" />
        <signal name="i(5)" />
        <signal name="i(6)" />
        <signal name="i(7)" />
        <signal name="o(0)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <signal name="o(4)" />
        <signal name="o(5)" />
        <signal name="o(6)" />
        <signal name="o(7)" />
        <signal name="o(1)" />
        <port polarity="Input" name="i(7:0)" />
        <port polarity="Output" name="o(7:0)" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="buf" name="XLXI_76">
            <blockpin signalname="i(0)" name="I" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_77">
            <blockpin signalname="i(1)" name="I" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_78">
            <blockpin signalname="i(2)" name="I" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_79">
            <blockpin signalname="i(3)" name="I" />
            <blockpin signalname="o(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_80">
            <blockpin signalname="i(4)" name="I" />
            <blockpin signalname="o(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_81">
            <blockpin signalname="i(5)" name="I" />
            <blockpin signalname="o(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_82">
            <blockpin signalname="i(6)" name="I" />
            <blockpin signalname="o(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_83">
            <blockpin signalname="i(7)" name="I" />
            <blockpin signalname="o(7)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="i(7:0)">
            <wire x2="832" y1="480" y2="480" x1="400" />
            <wire x2="832" y1="480" y2="640" x1="832" />
            <wire x2="832" y1="640" y2="800" x1="832" />
            <wire x2="832" y1="800" y2="960" x1="832" />
            <wire x2="832" y1="960" y2="1120" x1="832" />
            <wire x2="832" y1="1120" y2="1280" x1="832" />
            <wire x2="832" y1="1280" y2="1440" x1="832" />
            <wire x2="832" y1="1440" y2="1600" x1="832" />
            <wire x2="832" y1="1600" y2="1760" x1="832" />
        </branch>
        <branch name="o(7:0)">
            <wire x2="1968" y1="480" y2="480" x1="1392" />
            <wire x2="1392" y1="480" y2="640" x1="1392" />
            <wire x2="1392" y1="640" y2="800" x1="1392" />
            <wire x2="1392" y1="800" y2="960" x1="1392" />
            <wire x2="1392" y1="960" y2="1120" x1="1392" />
            <wire x2="1392" y1="1120" y2="1280" x1="1392" />
            <wire x2="1392" y1="1280" y2="1440" x1="1392" />
            <wire x2="1392" y1="1440" y2="1600" x1="1392" />
            <wire x2="1392" y1="1600" y2="1760" x1="1392" />
        </branch>
        <bustap x2="928" y1="1760" y2="1760" x1="832" />
        <bustap x2="928" y1="1600" y2="1600" x1="832" />
        <bustap x2="928" y1="1440" y2="1440" x1="832" />
        <bustap x2="928" y1="1280" y2="1280" x1="832" />
        <bustap x2="928" y1="1120" y2="1120" x1="832" />
        <bustap x2="928" y1="960" y2="960" x1="832" />
        <bustap x2="928" y1="800" y2="800" x1="832" />
        <bustap x2="928" y1="640" y2="640" x1="832" />
        <branch name="i(0)">
            <wire x2="992" y1="640" y2="640" x1="928" />
        </branch>
        <branch name="i(1)">
            <wire x2="992" y1="800" y2="800" x1="928" />
        </branch>
        <branch name="i(2)">
            <wire x2="992" y1="960" y2="960" x1="928" />
        </branch>
        <branch name="i(3)">
            <wire x2="992" y1="1120" y2="1120" x1="928" />
        </branch>
        <branch name="i(4)">
            <wire x2="992" y1="1280" y2="1280" x1="928" />
        </branch>
        <branch name="i(5)">
            <wire x2="992" y1="1440" y2="1440" x1="928" />
        </branch>
        <branch name="i(6)">
            <wire x2="992" y1="1600" y2="1600" x1="928" />
        </branch>
        <branch name="i(7)">
            <wire x2="992" y1="1760" y2="1760" x1="928" />
        </branch>
        <bustap x2="1296" y1="1760" y2="1760" x1="1392" />
        <bustap x2="1296" y1="1600" y2="1600" x1="1392" />
        <bustap x2="1296" y1="1440" y2="1440" x1="1392" />
        <bustap x2="1296" y1="1280" y2="1280" x1="1392" />
        <bustap x2="1296" y1="1120" y2="1120" x1="1392" />
        <bustap x2="1296" y1="960" y2="960" x1="1392" />
        <bustap x2="1296" y1="800" y2="800" x1="1392" />
        <bustap x2="1296" y1="640" y2="640" x1="1392" />
        <branch name="o(0)">
            <wire x2="1296" y1="640" y2="640" x1="1216" />
        </branch>
        <branch name="o(2)">
            <wire x2="1296" y1="960" y2="960" x1="1216" />
        </branch>
        <branch name="o(3)">
            <wire x2="1296" y1="1120" y2="1120" x1="1216" />
        </branch>
        <branch name="o(4)">
            <wire x2="1296" y1="1280" y2="1280" x1="1216" />
        </branch>
        <branch name="o(5)">
            <wire x2="1296" y1="1440" y2="1440" x1="1216" />
        </branch>
        <branch name="o(6)">
            <wire x2="1296" y1="1600" y2="1600" x1="1216" />
        </branch>
        <branch name="o(7)">
            <wire x2="1296" y1="1760" y2="1760" x1="1216" />
        </branch>
        <branch name="o(1)">
            <wire x2="1296" y1="800" y2="800" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="400" y="480" name="i(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1968" y="480" name="o(7:0)" orien="R0" />
        <instance x="992" y="672" name="XLXI_76" orien="R0" />
        <instance x="992" y="832" name="XLXI_77" orien="R0" />
        <instance x="992" y="992" name="XLXI_78" orien="R0" />
        <instance x="992" y="1152" name="XLXI_79" orien="R0" />
        <instance x="992" y="1312" name="XLXI_80" orien="R0" />
        <instance x="992" y="1472" name="XLXI_81" orien="R0" />
        <instance x="992" y="1632" name="XLXI_82" orien="R0" />
        <instance x="992" y="1792" name="XLXI_83" orien="R0" />
    </sheet>
</drawing>