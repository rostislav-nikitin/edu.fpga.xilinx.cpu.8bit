<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a_w" />
        <signal name="a(7:0)" />
        <signal name="a_o(7:0)" />
        <signal name="i_wclk" />
        <signal name="i_w" />
        <signal name="i(7:0)" />
        <signal name="i(7)" />
        <signal name="i(6)" />
        <signal name="i(5)" />
        <signal name="i(4)" />
        <signal name="i(3)" />
        <signal name="i(2)" />
        <signal name="i(1)" />
        <signal name="i(0)" />
        <signal name="ro(7:0)" />
        <signal name="ro(7)" />
        <signal name="ro(6)" />
        <signal name="ro(5)" />
        <signal name="ro(4)" />
        <signal name="ro(3)" />
        <signal name="ro(2)" />
        <signal name="ro(1)" />
        <signal name="ro(0)" />
        <signal name="o(7:0)" />
        <signal name="XLXN_71" />
        <signal name="i_r" />
        <port polarity="Input" name="a_w" />
        <port polarity="Input" name="a(7:0)" />
        <port polarity="Output" name="a_o(7:0)" />
        <port polarity="Input" name="i_wclk" />
        <port polarity="Input" name="i_w" />
        <port polarity="Input" name="i(7:0)" />
        <port polarity="Output" name="o(7:0)" />
        <port polarity="Input" name="i_r" />
        <blockdef name="ram256x1s">
            <timestamp>2005-6-1T10:10:10</timestamp>
            <line x2="64" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="80" y1="-496" y2="-512" x1="64" />
            <line x2="64" y1="-512" y2="-528" x1="80" />
            <rect width="256" x="64" y="-704" height="348" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <line x2="64" y1="-432" y2="-432" x1="0" />
            <line x2="0" y1="-432" y2="-464" x1="0" />
        </blockdef>
        <blockdef name="ld8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="obuft8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="96" x="128" y="-44" height="24" />
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
        <block symbolname="ram256x1s" name="XLXI_1">
            <attr value="0000000000000000000000000000000000000000000000000000000000000072" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 256 hexadecimal" />
            </attr>
            <blockpin signalname="i_w" name="WE" />
            <blockpin signalname="i_wclk" name="WCLK" />
            <blockpin signalname="i(0)" name="D" />
            <blockpin signalname="ro(0)" name="O" />
            <blockpin signalname="a_o(7:0)" name="A(7:0)" />
        </block>
        <block symbolname="ram256x1s" name="XLXI_17">
            <attr value="0000000000000000000000000000000000000000000000000000000000000000" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 256 hexadecimal" />
            </attr>
            <blockpin signalname="i_w" name="WE" />
            <blockpin signalname="i_wclk" name="WCLK" />
            <blockpin signalname="i(1)" name="D" />
            <blockpin signalname="ro(1)" name="O" />
            <blockpin signalname="a_o(7:0)" name="A(7:0)" />
        </block>
        <block symbolname="ram256x1s" name="XLXI_18">
            <attr value="0000000000000000000000000000000000000000000000000000000000000901" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 256 hexadecimal" />
            </attr>
            <blockpin signalname="i_w" name="WE" />
            <blockpin signalname="i_wclk" name="WCLK" />
            <blockpin signalname="i(2)" name="D" />
            <blockpin signalname="ro(2)" name="O" />
            <blockpin signalname="a_o(7:0)" name="A(7:0)" />
        </block>
        <block symbolname="ram256x1s" name="XLXI_19">
            <attr value="0000000000000000000000000000000000000000000000000000000000000040" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 256 hexadecimal" />
            </attr>
            <blockpin signalname="i_w" name="WE" />
            <blockpin signalname="i_wclk" name="WCLK" />
            <blockpin signalname="i(3)" name="D" />
            <blockpin signalname="ro(3)" name="O" />
            <blockpin signalname="a_o(7:0)" name="A(7:0)" />
        </block>
        <block symbolname="ram256x1s" name="XLXI_20">
            <attr value="0000000000000000000000000000000000000000000000000000000000000020" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 256 hexadecimal" />
            </attr>
            <blockpin signalname="i_w" name="WE" />
            <blockpin signalname="i_wclk" name="WCLK" />
            <blockpin signalname="i(4)" name="D" />
            <blockpin signalname="ro(4)" name="O" />
            <blockpin signalname="a_o(7:0)" name="A(7:0)" />
        </block>
        <block symbolname="ram256x1s" name="XLXI_21">
            <attr value="0000000000000000000000000000000000000000000000000000000000000205" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 256 hexadecimal" />
            </attr>
            <blockpin signalname="i_w" name="WE" />
            <blockpin signalname="i_wclk" name="WCLK" />
            <blockpin signalname="i(5)" name="D" />
            <blockpin signalname="ro(5)" name="O" />
            <blockpin signalname="a_o(7:0)" name="A(7:0)" />
        </block>
        <block symbolname="ram256x1s" name="XLXI_22">
            <attr value="00000000000000000000000000000000000000000000000000000000000006A0" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 256 hexadecimal" />
            </attr>
            <blockpin signalname="i_w" name="WE" />
            <blockpin signalname="i_wclk" name="WCLK" />
            <blockpin signalname="i(6)" name="D" />
            <blockpin signalname="ro(6)" name="O" />
            <blockpin signalname="a_o(7:0)" name="A(7:0)" />
        </block>
        <block symbolname="ram256x1s" name="XLXI_23">
            <attr value="0000000000000000000000000000000000000000000000000000000000000010" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 256 hexadecimal" />
            </attr>
            <blockpin signalname="i_w" name="WE" />
            <blockpin signalname="i_wclk" name="WCLK" />
            <blockpin signalname="i(7)" name="D" />
            <blockpin signalname="ro(7)" name="O" />
            <blockpin signalname="a_o(7:0)" name="A(7:0)" />
        </block>
        <block symbolname="obuft8" name="XLXI_41">
            <blockpin signalname="ro(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_71" name="T" />
            <blockpin signalname="o(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_42">
            <blockpin signalname="i_r" name="I" />
            <blockpin signalname="XLXN_71" name="O" />
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
            <wire x2="1280" y1="2048" y2="2400" x1="1280" />
            <wire x2="1280" y1="2400" y2="2752" x1="1280" />
            <wire x2="1280" y1="2752" y2="3104" x1="1280" />
            <wire x2="1584" y1="3104" y2="3104" x1="1280" />
            <wire x2="1584" y1="2752" y2="2752" x1="1280" />
            <wire x2="1584" y1="2400" y2="2400" x1="1280" />
            <wire x2="1584" y1="2048" y2="2048" x1="1280" />
            <wire x2="1584" y1="1696" y2="1696" x1="1280" />
            <wire x2="1584" y1="1344" y2="1344" x1="1280" />
            <wire x2="1584" y1="992" y2="992" x1="1280" />
            <wire x2="848" y1="640" y2="720" x1="848" />
        </branch>
        <branch name="i_wclk">
            <wire x2="880" y1="544" y2="544" x1="160" />
            <wire x2="880" y1="544" y2="576" x1="880" />
            <wire x2="1440" y1="576" y2="576" x1="880" />
            <wire x2="1584" y1="576" y2="576" x1="1440" />
            <wire x2="1440" y1="576" y2="928" x1="1440" />
            <wire x2="1440" y1="928" y2="1280" x1="1440" />
            <wire x2="1440" y1="1280" y2="1632" x1="1440" />
            <wire x2="1440" y1="1632" y2="1984" x1="1440" />
            <wire x2="1440" y1="1984" y2="2336" x1="1440" />
            <wire x2="1440" y1="2336" y2="2688" x1="1440" />
            <wire x2="1440" y1="2688" y2="3040" x1="1440" />
            <wire x2="1584" y1="3040" y2="3040" x1="1440" />
            <wire x2="1584" y1="2688" y2="2688" x1="1440" />
            <wire x2="1584" y1="2336" y2="2336" x1="1440" />
            <wire x2="1584" y1="1984" y2="1984" x1="1440" />
            <wire x2="1584" y1="1632" y2="1632" x1="1440" />
            <wire x2="1584" y1="1280" y2="1280" x1="1440" />
            <wire x2="1584" y1="928" y2="928" x1="1440" />
        </branch>
        <branch name="i_w">
            <wire x2="176" y1="480" y2="480" x1="160" />
            <wire x2="176" y1="480" y2="512" x1="176" />
            <wire x2="1360" y1="512" y2="512" x1="176" />
            <wire x2="1584" y1="512" y2="512" x1="1360" />
            <wire x2="1360" y1="512" y2="864" x1="1360" />
            <wire x2="1360" y1="864" y2="1216" x1="1360" />
            <wire x2="1360" y1="1216" y2="1568" x1="1360" />
            <wire x2="1360" y1="1568" y2="1920" x1="1360" />
            <wire x2="1360" y1="1920" y2="2272" x1="1360" />
            <wire x2="1360" y1="2272" y2="2624" x1="1360" />
            <wire x2="1360" y1="2624" y2="2976" x1="1360" />
            <wire x2="1584" y1="2976" y2="2976" x1="1360" />
            <wire x2="1584" y1="2624" y2="2624" x1="1360" />
            <wire x2="1584" y1="2272" y2="2272" x1="1360" />
            <wire x2="1584" y1="1920" y2="1920" x1="1360" />
            <wire x2="1584" y1="1568" y2="1568" x1="1360" />
            <wire x2="1584" y1="1216" y2="1216" x1="1360" />
            <wire x2="1584" y1="864" y2="864" x1="1360" />
        </branch>
        <instance x="1584" y="1088" name="XLXI_1" orien="R0" />
        <instance x="1584" y="1440" name="XLXI_17" orien="R0" />
        <instance x="1584" y="1792" name="XLXI_18" orien="R0" />
        <instance x="1584" y="2144" name="XLXI_19" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="192" y="-576" type="instance" />
        </instance>
        <instance x="1584" y="2496" name="XLXI_20" orien="R0" />
        <instance x="1584" y="2848" name="XLXI_21" orien="R0" />
        <instance x="1584" y="3200" name="XLXI_22" orien="R0" />
        <instance x="1584" y="3552" name="XLXI_23" orien="R0" />
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
        <branch name="ro(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="400" type="branch" />
            <wire x2="2640" y1="400" y2="512" x1="2640" />
            <wire x2="2640" y1="512" y2="864" x1="2640" />
            <wire x2="2640" y1="864" y2="1216" x1="2640" />
            <wire x2="2640" y1="1216" y2="1568" x1="2640" />
            <wire x2="2640" y1="1568" y2="1920" x1="2640" />
            <wire x2="2640" y1="1920" y2="2272" x1="2640" />
            <wire x2="2640" y1="2272" y2="2624" x1="2640" />
            <wire x2="2640" y1="2624" y2="2976" x1="2640" />
            <wire x2="2720" y1="400" y2="400" x1="2640" />
            <wire x2="2928" y1="400" y2="400" x1="2720" />
        </branch>
        <branch name="ro(7)">
            <wire x2="2080" y1="2976" y2="2976" x1="1968" />
            <wire x2="2304" y1="2976" y2="2976" x1="2080" />
            <wire x2="2544" y1="2976" y2="2976" x1="2304" />
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
        <iomarker fontsize="28" x="160" y="544" name="i_wclk" orien="R180" />
        <iomarker fontsize="28" x="160" y="480" name="i_w" orien="R180" />
        <iomarker fontsize="28" x="160" y="336" name="i_r" orien="R180" />
        <iomarker fontsize="28" x="160" y="400" name="i(7:0)" orien="R180" />
        <branch name="ro(6)">
            <wire x2="2080" y1="2624" y2="2624" x1="1968" />
            <wire x2="2304" y1="2624" y2="2624" x1="2080" />
            <wire x2="2544" y1="2624" y2="2624" x1="2304" />
        </branch>
        <branch name="ro(5)">
            <wire x2="2080" y1="2272" y2="2272" x1="1968" />
            <wire x2="2304" y1="2272" y2="2272" x1="2080" />
            <wire x2="2544" y1="2272" y2="2272" x1="2304" />
        </branch>
        <branch name="ro(4)">
            <wire x2="2080" y1="1920" y2="1920" x1="1968" />
            <wire x2="2304" y1="1920" y2="1920" x1="2080" />
            <wire x2="2544" y1="1920" y2="1920" x1="2304" />
        </branch>
        <branch name="ro(3)">
            <wire x2="2080" y1="1568" y2="1568" x1="1968" />
            <wire x2="2304" y1="1568" y2="1568" x1="2080" />
            <wire x2="2544" y1="1568" y2="1568" x1="2304" />
        </branch>
        <branch name="ro(2)">
            <wire x2="2080" y1="1216" y2="1216" x1="1968" />
            <wire x2="2304" y1="1216" y2="1216" x1="2080" />
            <wire x2="2544" y1="1216" y2="1216" x1="2304" />
        </branch>
        <branch name="ro(1)">
            <wire x2="2080" y1="864" y2="864" x1="1968" />
            <wire x2="2304" y1="864" y2="864" x1="2080" />
            <wire x2="2544" y1="864" y2="864" x1="2304" />
        </branch>
        <branch name="ro(0)">
            <wire x2="2080" y1="512" y2="512" x1="1968" />
            <wire x2="2304" y1="512" y2="512" x1="2080" />
            <wire x2="2544" y1="512" y2="512" x1="2304" />
        </branch>
        <instance x="2928" y="432" name="XLXI_41" orien="R0" />
        <branch name="o(7:0)">
            <wire x2="3360" y1="400" y2="400" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="3360" y="400" name="o(7:0)" orien="R0" />
        <instance x="2288" y="368" name="XLXI_42" orien="R0" />
        <branch name="XLXN_71">
            <wire x2="2928" y1="336" y2="336" x1="2512" />
        </branch>
        <branch name="i_r">
            <wire x2="2288" y1="336" y2="336" x1="160" />
        </branch>
        <iomarker fontsize="28" x="848" y="720" name="a_o(7:0)" orien="R90" />
    </sheet>
</drawing>