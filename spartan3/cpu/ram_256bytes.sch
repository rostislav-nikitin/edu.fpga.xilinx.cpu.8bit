<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a_w" />
        <signal name="a(7:0)" />
        <signal name="a_o(7:0)" />
        <signal name="i(7:0)" />
        <signal name="i(7)" />
        <signal name="i(6)" />
        <signal name="i(5)" />
        <signal name="i(4)" />
        <signal name="i(3)" />
        <signal name="i(2)" />
        <signal name="i(1)" />
        <signal name="i(0)" />
        <signal name="o(7:0)" />
        <signal name="i_r" />
        <signal name="o(0)" />
        <signal name="o(1)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <signal name="o(4)" />
        <signal name="o(6)" />
        <signal name="o(7)" />
        <signal name="o(5)" />
        <signal name="i_wclk" />
        <signal name="i_w" />
        <port polarity="Input" name="a_w" />
        <port polarity="Input" name="a(7:0)" />
        <port polarity="Output" name="a_o(7:0)" />
        <port polarity="Input" name="i(7:0)" />
        <port polarity="Output" name="o(7:0)" />
        <port polarity="Input" name="i_r" />
        <port polarity="Input" name="i_wclk" />
        <port polarity="Input" name="i_w" />
        <blockdef name="ld8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <block symbolname="ld8" name="XLXI_15">
            <blockpin signalname="a(7:0)" name="D(7:0)" />
            <blockpin signalname="a_w" name="G" />
            <blockpin signalname="a_o(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_42">
            <blockpin signalname="i_r" name="I" />
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="256" y="896" name="XLXI_15" orien="R0" />
        <branch name="a_w">
            <wire x2="256" y1="768" y2="768" x1="160" />
        </branch>
        <branch name="a(7:0)">
            <wire x2="256" y1="640" y2="640" x1="160" />
        </branch>
        <branch name="a_o(7:0)">
            <wire x2="848" y1="640" y2="640" x1="640" />
            <wire x2="1280" y1="640" y2="640" x1="848" />
            <wire x2="1584" y1="640" y2="640" x1="1280" />
            <wire x2="1280" y1="640" y2="992" x1="1280" />
            <wire x2="1280" y1="992" y2="1344" x1="1280" />
            <wire x2="1280" y1="1344" y2="1696" x1="1280" />
            <wire x2="1280" y1="1696" y2="2048" x1="1280" />
            <wire x2="1584" y1="2048" y2="2048" x1="1280" />
            <wire x2="1280" y1="2048" y2="2336" x1="1280" />
            <wire x2="1280" y1="2336" y2="2400" x1="1280" />
            <wire x2="1584" y1="2400" y2="2400" x1="1280" />
            <wire x2="1280" y1="2400" y2="2688" x1="1280" />
            <wire x2="1280" y1="2688" y2="2704" x1="1280" />
            <wire x2="1280" y1="2704" y2="2752" x1="1280" />
            <wire x2="1280" y1="2752" y2="3104" x1="1280" />
            <wire x2="1584" y1="3104" y2="3104" x1="1280" />
            <wire x2="1584" y1="2752" y2="2752" x1="1280" />
            <wire x2="1584" y1="1696" y2="1696" x1="1280" />
            <wire x2="1584" y1="1344" y2="1344" x1="1280" />
            <wire x2="1584" y1="992" y2="992" x1="1280" />
            <wire x2="848" y1="640" y2="720" x1="848" />
        </branch>
        <branch name="i(7:0)">
            <wire x2="1120" y1="400" y2="400" x1="160" />
            <wire x2="1120" y1="400" y2="448" x1="1120" />
            <wire x2="1120" y1="448" y2="800" x1="1120" />
            <wire x2="1120" y1="800" y2="1152" x1="1120" />
            <wire x2="1120" y1="1152" y2="1504" x1="1120" />
            <wire x2="1120" y1="1504" y2="1856" x1="1120" />
            <wire x2="1120" y1="1856" y2="2208" x1="1120" />
            <wire x2="1120" y1="2208" y2="2560" x1="1120" />
            <wire x2="1120" y1="2560" y2="2912" x1="1120" />
        </branch>
        <bustap x2="1216" y1="2912" y2="2912" x1="1120" />
        <bustap x2="1216" y1="2560" y2="2560" x1="1120" />
        <bustap x2="1216" y1="2208" y2="2208" x1="1120" />
        <bustap x2="1216" y1="1856" y2="1856" x1="1120" />
        <bustap x2="1216" y1="1504" y2="1504" x1="1120" />
        <bustap x2="1216" y1="1152" y2="1152" x1="1120" />
        <bustap x2="1216" y1="800" y2="800" x1="1120" />
        <bustap x2="1216" y1="448" y2="448" x1="1120" />
        <branch name="i(7)">
            <wire x2="1584" y1="2912" y2="2912" x1="1216" />
        </branch>
        <branch name="i(6)">
            <wire x2="1584" y1="2560" y2="2560" x1="1216" />
        </branch>
        <branch name="i(5)">
            <wire x2="1584" y1="2208" y2="2208" x1="1216" />
        </branch>
        <branch name="i(4)">
            <wire x2="1584" y1="1856" y2="1856" x1="1216" />
        </branch>
        <branch name="i(3)">
            <wire x2="1584" y1="1504" y2="1504" x1="1216" />
        </branch>
        <branch name="i(2)">
            <wire x2="1584" y1="1152" y2="1152" x1="1216" />
        </branch>
        <branch name="i(1)">
            <wire x2="1584" y1="800" y2="800" x1="1216" />
        </branch>
        <branch name="i(0)">
            <wire x2="1584" y1="448" y2="448" x1="1216" />
        </branch>
        <branch name="o(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="400" type="branch" />
            <wire x2="2640" y1="400" y2="512" x1="2640" />
            <wire x2="2640" y1="512" y2="864" x1="2640" />
            <wire x2="2640" y1="864" y2="1216" x1="2640" />
            <wire x2="2640" y1="1216" y2="1568" x1="2640" />
            <wire x2="2640" y1="1568" y2="1920" x1="2640" />
            <wire x2="2640" y1="1920" y2="2272" x1="2640" />
            <wire x2="2640" y1="2272" y2="2624" x1="2640" />
            <wire x2="2640" y1="2624" y2="2976" x1="2640" />
            <wire x2="3008" y1="400" y2="400" x1="2640" />
        </branch>
        <bustap x2="2544" y1="2976" y2="2976" x1="2640" />
        <bustap x2="2544" y1="2624" y2="2624" x1="2640" />
        <bustap x2="2544" y1="2272" y2="2272" x1="2640" />
        <bustap x2="2544" y1="1920" y2="1920" x1="2640" />
        <bustap x2="2544" y1="1568" y2="1568" x1="2640" />
        <bustap x2="2544" y1="1216" y2="1216" x1="2640" />
        <bustap x2="2544" y1="864" y2="864" x1="2640" />
        <bustap x2="2544" y1="512" y2="512" x1="2640" />
        <iomarker fontsize="28" x="160" y="768" name="a_w" orien="R180" />
        <iomarker fontsize="28" x="160" y="640" name="a(7:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="336" name="i_r" orien="R180" />
        <iomarker fontsize="28" x="160" y="400" name="i(7:0)" orien="R180" />
        <branch name="i_r">
            <wire x2="1376" y1="336" y2="336" x1="160" />
        </branch>
        <iomarker fontsize="28" x="848" y="720" name="a_o(7:0)" orien="R90" />
        <instance x="1376" y="368" name="XLXI_42" orien="R0" />
        <branch name="o(0)">
            <wire x2="2544" y1="512" y2="512" x1="1968" />
        </branch>
        <branch name="o(1)">
            <wire x2="2544" y1="864" y2="864" x1="1968" />
        </branch>
        <branch name="o(2)">
            <wire x2="2544" y1="1216" y2="1216" x1="1968" />
        </branch>
        <branch name="o(4)">
            <wire x2="2544" y1="1920" y2="1920" x1="1968" />
        </branch>
        <branch name="o(6)">
            <wire x2="2544" y1="2624" y2="2624" x1="1968" />
        </branch>
        <branch name="o(7)">
            <wire x2="2544" y1="2976" y2="2976" x1="1968" />
        </branch>
        <branch name="o(5)">
            <wire x2="2544" y1="2272" y2="2272" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="3008" y="400" name="o(7:0)" orien="R0" />
        <branch name="o(3)">
            <wire x2="2544" y1="1568" y2="1568" x1="1968" />
        </branch>
        <branch name="i_wclk">
            <wire x2="240" y1="560" y2="560" x1="160" />
            <wire x2="1392" y1="560" y2="560" x1="240" />
            <wire x2="1392" y1="560" y2="576" x1="1392" />
            <wire x2="1392" y1="576" y2="928" x1="1392" />
            <wire x2="1392" y1="928" y2="1280" x1="1392" />
            <wire x2="1392" y1="1280" y2="1632" x1="1392" />
            <wire x2="1392" y1="1632" y2="1984" x1="1392" />
            <wire x2="1392" y1="1984" y2="2336" x1="1392" />
            <wire x2="1392" y1="2336" y2="2672" x1="1392" />
            <wire x2="1392" y1="2672" y2="2688" x1="1392" />
            <wire x2="1392" y1="2688" y2="3040" x1="1392" />
            <wire x2="1584" y1="3040" y2="3040" x1="1392" />
            <wire x2="1584" y1="2688" y2="2688" x1="1392" />
            <wire x2="1584" y1="2336" y2="2336" x1="1392" />
            <wire x2="1584" y1="1984" y2="1984" x1="1392" />
            <wire x2="1584" y1="1632" y2="1632" x1="1392" />
            <wire x2="1584" y1="1280" y2="1280" x1="1392" />
            <wire x2="1584" y1="928" y2="928" x1="1392" />
            <wire x2="1584" y1="576" y2="576" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="160" y="560" name="i_wclk" orien="R180" />
        <branch name="i_w">
            <wire x2="1440" y1="512" y2="512" x1="160" />
            <wire x2="1584" y1="512" y2="512" x1="1440" />
            <wire x2="1440" y1="512" y2="576" x1="1440" />
            <wire x2="1440" y1="576" y2="864" x1="1440" />
            <wire x2="1584" y1="864" y2="864" x1="1440" />
            <wire x2="1440" y1="864" y2="928" x1="1440" />
            <wire x2="1440" y1="928" y2="1216" x1="1440" />
            <wire x2="1584" y1="1216" y2="1216" x1="1440" />
            <wire x2="1440" y1="1216" y2="1280" x1="1440" />
            <wire x2="1440" y1="1280" y2="1568" x1="1440" />
            <wire x2="1584" y1="1568" y2="1568" x1="1440" />
            <wire x2="1440" y1="1568" y2="1632" x1="1440" />
            <wire x2="1440" y1="1632" y2="1920" x1="1440" />
            <wire x2="1584" y1="1920" y2="1920" x1="1440" />
            <wire x2="1440" y1="1920" y2="1984" x1="1440" />
            <wire x2="1440" y1="1984" y2="2272" x1="1440" />
            <wire x2="1584" y1="2272" y2="2272" x1="1440" />
            <wire x2="1440" y1="2272" y2="2336" x1="1440" />
            <wire x2="1440" y1="2336" y2="2624" x1="1440" />
            <wire x2="1584" y1="2624" y2="2624" x1="1440" />
            <wire x2="1440" y1="2624" y2="2688" x1="1440" />
            <wire x2="1440" y1="2688" y2="2976" x1="1440" />
            <wire x2="1584" y1="2976" y2="2976" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="160" y="512" name="i_w" orien="R180" />
    </sheet>
</drawing>