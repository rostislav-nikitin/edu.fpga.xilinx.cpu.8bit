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
            <blockpin signalname="i(1)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_3">
            <blockpin signalname="i(2)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_4">
            <blockpin signalname="i(3)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(3)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_5">
            <blockpin signalname="i(4)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(4)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_6">
            <blockpin signalname="i(5)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(5)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_7">
            <blockpin signalname="i(6)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(6)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_8">
            <blockpin signalname="i(7)" name="D0" />
            <blockpin signalname="const_zero" name="D1" />
            <blockpin signalname="one" name="S0" />
            <blockpin signalname="o(7)" name="O" />
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
        <instance x="944" y="1472" name="XLXI_3" orien="R0" />
        <instance x="944" y="1712" name="XLXI_4" orien="R0" />
        <instance x="944" y="1952" name="XLXI_5" orien="R0" />
        <instance x="944" y="2192" name="XLXI_6" orien="R0" />
        <instance x="944" y="2432" name="XLXI_7" orien="R0" />
        <instance x="944" y="2672" name="XLXI_8" orien="R0" />
        <instance x="944" y="1232" name="XLXI_1" orien="R0" />
        <instance x="944" y="992" name="XLXI_13" orien="R0" />
        <branch name="one">
            <wire x2="720" y1="960" y2="960" x1="560" />
            <wire x2="944" y1="960" y2="960" x1="720" />
            <wire x2="720" y1="960" y2="1200" x1="720" />
            <wire x2="720" y1="1200" y2="1440" x1="720" />
            <wire x2="944" y1="1440" y2="1440" x1="720" />
            <wire x2="720" y1="1440" y2="1680" x1="720" />
            <wire x2="944" y1="1680" y2="1680" x1="720" />
            <wire x2="720" y1="1680" y2="1920" x1="720" />
            <wire x2="720" y1="1920" y2="2160" x1="720" />
            <wire x2="944" y1="2160" y2="2160" x1="720" />
            <wire x2="720" y1="2160" y2="2400" x1="720" />
            <wire x2="720" y1="2400" y2="2416" x1="720" />
            <wire x2="720" y1="2416" y2="2640" x1="720" />
            <wire x2="944" y1="2640" y2="2640" x1="720" />
            <wire x2="944" y1="2400" y2="2400" x1="720" />
            <wire x2="944" y1="1920" y2="1920" x1="720" />
            <wire x2="944" y1="1200" y2="1200" x1="720" />
        </branch>
        <iomarker fontsize="28" x="560" y="960" name="one" orien="R180" />
        <branch name="o(0)">
            <wire x2="1440" y1="864" y2="864" x1="1264" />
        </branch>
        <branch name="o(2)">
            <wire x2="1312" y1="1344" y2="1344" x1="1264" />
            <wire x2="1440" y1="1344" y2="1344" x1="1312" />
        </branch>
        <branch name="o(3)">
            <wire x2="1440" y1="1584" y2="1584" x1="1264" />
        </branch>
        <branch name="o(4)">
            <wire x2="1440" y1="1824" y2="1824" x1="1264" />
        </branch>
        <branch name="o(5)">
            <wire x2="1440" y1="2064" y2="2064" x1="1264" />
        </branch>
        <branch name="o(6)">
            <wire x2="1440" y1="2304" y2="2304" x1="1264" />
        </branch>
        <branch name="o(7)">
            <wire x2="1440" y1="2544" y2="2544" x1="1264" />
        </branch>
        <branch name="o(7:0)">
            <wire x2="1680" y1="720" y2="720" x1="1536" />
            <wire x2="1536" y1="720" y2="848" x1="1536" />
            <wire x2="1536" y1="848" y2="864" x1="1536" />
            <wire x2="1536" y1="864" y2="1104" x1="1536" />
            <wire x2="1536" y1="1104" y2="1344" x1="1536" />
            <wire x2="1536" y1="1344" y2="1584" x1="1536" />
            <wire x2="1536" y1="1584" y2="1824" x1="1536" />
            <wire x2="1536" y1="1824" y2="2064" x1="1536" />
            <wire x2="1536" y1="2064" y2="2304" x1="1536" />
            <wire x2="1536" y1="2304" y2="2544" x1="1536" />
        </branch>
        <bustap x2="1440" y1="2544" y2="2544" x1="1536" />
        <bustap x2="1440" y1="2304" y2="2304" x1="1536" />
        <bustap x2="1440" y1="2064" y2="2064" x1="1536" />
        <bustap x2="1440" y1="1824" y2="1824" x1="1536" />
        <bustap x2="1440" y1="1584" y2="1584" x1="1536" />
        <bustap x2="1440" y1="1344" y2="1344" x1="1536" />
        <bustap x2="1440" y1="1104" y2="1104" x1="1536" />
        <bustap x2="1440" y1="864" y2="864" x1="1536" />
        <iomarker fontsize="28" x="1680" y="720" name="o(7:0)" orien="R0" />
        <branch name="o(1)">
            <wire x2="1440" y1="1104" y2="1104" x1="1264" />
        </branch>
        <branch name="i(7:0)">
            <wire x2="240" y1="736" y2="736" x1="128" />
            <wire x2="240" y1="736" y2="832" x1="240" />
            <wire x2="240" y1="832" y2="1072" x1="240" />
            <wire x2="240" y1="1072" y2="1312" x1="240" />
            <wire x2="240" y1="1312" y2="1552" x1="240" />
            <wire x2="240" y1="1552" y2="1792" x1="240" />
            <wire x2="240" y1="1792" y2="2032" x1="240" />
            <wire x2="240" y1="2032" y2="2272" x1="240" />
            <wire x2="240" y1="2272" y2="2512" x1="240" />
        </branch>
        <branch name="i(0)">
            <wire x2="944" y1="832" y2="832" x1="336" />
        </branch>
        <bustap x2="336" y1="832" y2="832" x1="240" />
        <bustap x2="336" y1="1072" y2="1072" x1="240" />
        <branch name="i(1)">
            <wire x2="944" y1="1072" y2="1072" x1="336" />
        </branch>
        <branch name="i(2)">
            <wire x2="944" y1="1312" y2="1312" x1="336" />
        </branch>
        <bustap x2="336" y1="1312" y2="1312" x1="240" />
        <branch name="i(3)">
            <wire x2="944" y1="1552" y2="1552" x1="336" />
        </branch>
        <bustap x2="336" y1="1552" y2="1552" x1="240" />
        <bustap x2="336" y1="1792" y2="1792" x1="240" />
        <branch name="i(4)">
            <wire x2="944" y1="1792" y2="1792" x1="336" />
        </branch>
        <branch name="i(5)">
            <wire x2="944" y1="2032" y2="2032" x1="336" />
        </branch>
        <bustap x2="336" y1="2032" y2="2032" x1="240" />
        <branch name="i(6)">
            <wire x2="944" y1="2272" y2="2272" x1="336" />
        </branch>
        <bustap x2="336" y1="2272" y2="2272" x1="240" />
        <bustap x2="336" y1="2512" y2="2512" x1="240" />
        <branch name="i(7)">
            <wire x2="944" y1="2512" y2="2512" x1="336" />
        </branch>
        <iomarker fontsize="28" x="128" y="736" name="i(7:0)" orien="R180" />
        <instance x="480" y="864" name="XLXI_18" orien="R0">
        </instance>
        <branch name="const_zero">
            <wire x2="784" y1="896" y2="896" x1="624" />
            <wire x2="880" y1="896" y2="896" x1="784" />
            <wire x2="880" y1="896" y2="1136" x1="880" />
            <wire x2="944" y1="1136" y2="1136" x1="880" />
            <wire x2="880" y1="1136" y2="1376" x1="880" />
            <wire x2="880" y1="1376" y2="1616" x1="880" />
            <wire x2="880" y1="1616" y2="1856" x1="880" />
            <wire x2="880" y1="1856" y2="2096" x1="880" />
            <wire x2="880" y1="2096" y2="2336" x1="880" />
            <wire x2="880" y1="2336" y2="2576" x1="880" />
            <wire x2="944" y1="2576" y2="2576" x1="880" />
            <wire x2="944" y1="2336" y2="2336" x1="880" />
            <wire x2="944" y1="2096" y2="2096" x1="880" />
            <wire x2="944" y1="1856" y2="1856" x1="880" />
            <wire x2="944" y1="1616" y2="1616" x1="880" />
            <wire x2="944" y1="1376" y2="1376" x1="880" />
        </branch>
        <instance x="480" y="752" name="XLXI_19" orien="R0">
        </instance>
        <branch name="const_one">
            <wire x2="912" y1="784" y2="784" x1="624" />
            <wire x2="912" y1="784" y2="896" x1="912" />
            <wire x2="944" y1="896" y2="896" x1="912" />
        </branch>
    </sheet>
</drawing>