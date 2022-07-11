<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="one" />
        <signal name="o(0)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <signal name="o(4)" />
        <signal name="o(5)" />
        <signal name="o(6)" />
        <signal name="o(7)" />
        <signal name="o(7:0)" />
        <signal name="o(1)" />
        <signal name="i(7:0)" />
        <signal name="i(0)" />
        <signal name="i(1)" />
        <signal name="i(2)" />
        <signal name="i(3)" />
        <signal name="i(4)" />
        <signal name="i(5)" />
        <signal name="i(6)" />
        <signal name="i(7)" />
        <signal name="const_zero" />
        <signal name="const_one" />
        <port polarity="Input" name="one" />
        <port polarity="Output" name="o(7:0)" />
        <port polarity="Input" name="i(7:0)" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_1">
            <blockpin signalname="i(2)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_2">
            <blockpin signalname="i(3)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(3)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_3">
            <blockpin signalname="i(4)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(4)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_4">
            <blockpin signalname="i(5)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(5)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_5">
            <blockpin signalname="i(6)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(6)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_6">
            <blockpin signalname="i(7)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(7)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_7">
            <blockpin signalname="i(1)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_13">
            <blockpin signalname="i(0)" name="D0" />
            <blockpin signalname="const_one" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_18">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="const_zero" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_19">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="const_one" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1264" y="1136" name="XLXI_1" orien="R0" />
        <instance x="1264" y="1376" name="XLXI_2" orien="R0" />
        <instance x="1264" y="1616" name="XLXI_3" orien="R0" />
        <instance x="1264" y="1856" name="XLXI_4" orien="R0" />
        <instance x="1264" y="2096" name="XLXI_5" orien="R0" />
        <instance x="1264" y="2336" name="XLXI_6" orien="R0" />
        <instance x="1264" y="896" name="XLXI_7" orien="R0" />
        <instance x="1264" y="656" name="XLXI_13" orien="R0" />
        <branch name="one">
            <wire x2="1040" y1="624" y2="624" x1="880" />
            <wire x2="1264" y1="624" y2="624" x1="1040" />
            <wire x2="1040" y1="624" y2="864" x1="1040" />
            <wire x2="1040" y1="864" y2="1104" x1="1040" />
            <wire x2="1264" y1="1104" y2="1104" x1="1040" />
            <wire x2="1040" y1="1104" y2="1344" x1="1040" />
            <wire x2="1264" y1="1344" y2="1344" x1="1040" />
            <wire x2="1040" y1="1344" y2="1584" x1="1040" />
            <wire x2="1040" y1="1584" y2="1824" x1="1040" />
            <wire x2="1264" y1="1824" y2="1824" x1="1040" />
            <wire x2="1040" y1="1824" y2="2064" x1="1040" />
            <wire x2="1040" y1="2064" y2="2080" x1="1040" />
            <wire x2="1040" y1="2080" y2="2304" x1="1040" />
            <wire x2="1264" y1="2304" y2="2304" x1="1040" />
            <wire x2="1264" y1="2064" y2="2064" x1="1040" />
            <wire x2="1264" y1="1584" y2="1584" x1="1040" />
            <wire x2="1264" y1="864" y2="864" x1="1040" />
        </branch>
        <branch name="o(0)">
            <wire x2="1760" y1="528" y2="528" x1="1584" />
        </branch>
        <branch name="o(2)">
            <wire x2="1632" y1="1008" y2="1008" x1="1584" />
            <wire x2="1760" y1="1008" y2="1008" x1="1632" />
        </branch>
        <branch name="o(3)">
            <wire x2="1760" y1="1248" y2="1248" x1="1584" />
        </branch>
        <branch name="o(4)">
            <wire x2="1760" y1="1488" y2="1488" x1="1584" />
        </branch>
        <branch name="o(5)">
            <wire x2="1760" y1="1728" y2="1728" x1="1584" />
        </branch>
        <branch name="o(6)">
            <wire x2="1760" y1="1968" y2="1968" x1="1584" />
        </branch>
        <branch name="o(7)">
            <wire x2="1760" y1="2208" y2="2208" x1="1584" />
        </branch>
        <branch name="o(7:0)">
            <wire x2="2000" y1="384" y2="384" x1="1856" />
            <wire x2="1856" y1="384" y2="512" x1="1856" />
            <wire x2="1856" y1="512" y2="528" x1="1856" />
            <wire x2="1856" y1="528" y2="768" x1="1856" />
            <wire x2="1856" y1="768" y2="1008" x1="1856" />
            <wire x2="1856" y1="1008" y2="1248" x1="1856" />
            <wire x2="1856" y1="1248" y2="1488" x1="1856" />
            <wire x2="1856" y1="1488" y2="1728" x1="1856" />
            <wire x2="1856" y1="1728" y2="1968" x1="1856" />
            <wire x2="1856" y1="1968" y2="2208" x1="1856" />
        </branch>
        <bustap x2="1760" y1="2208" y2="2208" x1="1856" />
        <bustap x2="1760" y1="1968" y2="1968" x1="1856" />
        <bustap x2="1760" y1="1728" y2="1728" x1="1856" />
        <bustap x2="1760" y1="1488" y2="1488" x1="1856" />
        <bustap x2="1760" y1="1248" y2="1248" x1="1856" />
        <bustap x2="1760" y1="1008" y2="1008" x1="1856" />
        <bustap x2="1760" y1="768" y2="768" x1="1856" />
        <bustap x2="1760" y1="528" y2="528" x1="1856" />
        <branch name="o(1)">
            <wire x2="1760" y1="768" y2="768" x1="1584" />
        </branch>
        <branch name="i(7:0)">
            <wire x2="560" y1="400" y2="400" x1="448" />
            <wire x2="560" y1="400" y2="496" x1="560" />
            <wire x2="560" y1="496" y2="736" x1="560" />
            <wire x2="560" y1="736" y2="976" x1="560" />
            <wire x2="560" y1="976" y2="1216" x1="560" />
            <wire x2="560" y1="1216" y2="1456" x1="560" />
            <wire x2="560" y1="1456" y2="1696" x1="560" />
            <wire x2="560" y1="1696" y2="1936" x1="560" />
            <wire x2="560" y1="1936" y2="2176" x1="560" />
        </branch>
        <branch name="i(0)">
            <wire x2="1264" y1="496" y2="496" x1="656" />
        </branch>
        <bustap x2="656" y1="496" y2="496" x1="560" />
        <bustap x2="656" y1="736" y2="736" x1="560" />
        <branch name="i(1)">
            <wire x2="1264" y1="736" y2="736" x1="656" />
        </branch>
        <branch name="i(2)">
            <wire x2="1264" y1="976" y2="976" x1="656" />
        </branch>
        <bustap x2="656" y1="976" y2="976" x1="560" />
        <branch name="i(3)">
            <wire x2="1264" y1="1216" y2="1216" x1="656" />
        </branch>
        <bustap x2="656" y1="1216" y2="1216" x1="560" />
        <bustap x2="656" y1="1456" y2="1456" x1="560" />
        <branch name="i(4)">
            <wire x2="1264" y1="1456" y2="1456" x1="656" />
        </branch>
        <branch name="i(5)">
            <wire x2="1264" y1="1696" y2="1696" x1="656" />
        </branch>
        <bustap x2="656" y1="1696" y2="1696" x1="560" />
        <branch name="i(6)">
            <wire x2="1264" y1="1936" y2="1936" x1="656" />
        </branch>
        <bustap x2="656" y1="1936" y2="1936" x1="560" />
        <bustap x2="656" y1="2176" y2="2176" x1="560" />
        <branch name="i(7)">
            <wire x2="1264" y1="2176" y2="2176" x1="656" />
        </branch>
        <instance x="800" y="528" name="XLXI_18" orien="R0">
        </instance>
        <branch name="const_zero">
            <wire x2="1104" y1="560" y2="560" x1="944" />
            <wire x2="1200" y1="560" y2="560" x1="1104" />
            <wire x2="1200" y1="560" y2="800" x1="1200" />
            <wire x2="1264" y1="800" y2="800" x1="1200" />
            <wire x2="1200" y1="800" y2="1040" x1="1200" />
            <wire x2="1200" y1="1040" y2="1280" x1="1200" />
            <wire x2="1200" y1="1280" y2="1520" x1="1200" />
            <wire x2="1200" y1="1520" y2="1760" x1="1200" />
            <wire x2="1200" y1="1760" y2="2000" x1="1200" />
            <wire x2="1200" y1="2000" y2="2240" x1="1200" />
            <wire x2="1264" y1="2240" y2="2240" x1="1200" />
            <wire x2="1264" y1="2000" y2="2000" x1="1200" />
            <wire x2="1264" y1="1760" y2="1760" x1="1200" />
            <wire x2="1264" y1="1520" y2="1520" x1="1200" />
            <wire x2="1264" y1="1280" y2="1280" x1="1200" />
            <wire x2="1264" y1="1040" y2="1040" x1="1200" />
        </branch>
        <instance x="800" y="416" name="XLXI_19" orien="R0">
        </instance>
        <branch name="const_one">
            <wire x2="1232" y1="448" y2="448" x1="944" />
            <wire x2="1232" y1="448" y2="560" x1="1232" />
            <wire x2="1264" y1="560" y2="560" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="880" y="624" name="one" orien="R180" />
        <iomarker fontsize="28" x="2000" y="384" name="o(7:0)" orien="R0" />
        <iomarker fontsize="28" x="448" y="400" name="i(7:0)" orien="R180" />
    </sheet>
</drawing>