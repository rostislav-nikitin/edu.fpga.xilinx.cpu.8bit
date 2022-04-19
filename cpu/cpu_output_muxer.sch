<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="i(7:0)" />
        <signal name="i(0)" />
        <signal name="i(1)" />
        <signal name="i(2)" />
        <signal name="i(3)" />
        <signal name="i(4)" />
        <signal name="i(5)" />
        <signal name="i(6)" />
        <signal name="i(7)" />
        <signal name="acc_r" />
        <signal name="mem_r" />
        <signal name="r0_r" />
        <signal name="r2_r" />
        <signal name="r3_r" />
        <signal name="iar_r" />
        <signal name="r1_r" />
        <signal name="enc_o(2:0)" />
        <signal name="o(7:0)" />
        <signal name="a(3:0)" />
        <signal name="enc_o(0)" />
        <signal name="enc_o(1)" />
        <signal name="enc_o(2)" />
        <signal name="a(0)" />
        <signal name="a(1)" />
        <signal name="a(2)" />
        <signal name="a(3)" />
        <signal name="iar_o(7:0)" />
        <signal name="acc_o(7:0)" />
        <signal name="mem_o(7:0)" />
        <signal name="r0_o(7:0)" />
        <signal name="r1_o(7:0)" />
        <signal name="r2_o(7:0)" />
        <signal name="r3_o(7:0)" />
        <signal name="g" />
        <signal name="XLXN_73" />
        <signal name="manr_r" />
        <signal name="manr_o(7:0)" />
        <port polarity="Input" name="acc_r" />
        <port polarity="Input" name="mem_r" />
        <port polarity="Input" name="r0_r" />
        <port polarity="Input" name="r2_r" />
        <port polarity="Input" name="r3_r" />
        <port polarity="Input" name="iar_r" />
        <port polarity="Input" name="r1_r" />
        <port polarity="Output" name="o(7:0)" />
        <port polarity="Input" name="iar_o(7:0)" />
        <port polarity="Input" name="acc_o(7:0)" />
        <port polarity="Input" name="mem_o(7:0)" />
        <port polarity="Input" name="r0_o(7:0)" />
        <port polarity="Input" name="r1_o(7:0)" />
        <port polarity="Input" name="r2_o(7:0)" />
        <port polarity="Input" name="r3_o(7:0)" />
        <port polarity="Output" name="g" />
        <port polarity="Input" name="manr_r" />
        <port polarity="Input" name="manr_o(7:0)" />
        <blockdef name="bus_muxer">
            <timestamp>2022-4-7T2:5:7</timestamp>
            <rect width="256" x="64" y="-1152" height="1152" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <rect width="64" x="0" y="-1132" height="24" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-812" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <rect width="64" x="0" y="-1004" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <rect width="64" x="0" y="-1068" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-876" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <rect width="64" x="0" y="-940" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <rect width="64" x="320" y="-1132" height="24" />
        </blockdef>
        <blockdef name="encoder8_3">
            <timestamp>2022-4-7T2:3:15</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
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
        <block symbolname="encoder8_3" name="XLXI_2">
            <blockpin signalname="g" name="g" />
            <blockpin signalname="i(7:0)" name="i(7:0)" />
            <blockpin signalname="enc_o(2:0)" name="o(2:0)" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="iar_r" name="I" />
            <blockpin signalname="i(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="acc_r" name="I" />
            <blockpin signalname="i(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="mem_r" name="I" />
            <blockpin signalname="i(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="r0_r" name="I" />
            <blockpin signalname="i(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="r1_r" name="I" />
            <blockpin signalname="i(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="r2_r" name="I" />
            <blockpin signalname="i(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="r3_r" name="I" />
            <blockpin signalname="i(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="manr_r" name="I" />
            <blockpin signalname="i(7)" name="O" />
        </block>
        <block symbolname="bus_muxer" name="XLXI_1">
            <blockpin signalname="a(3:0)" name="a(3:0)" />
            <blockpin signalname="iar_o(7:0)" name="dev0(7:0)" />
            <blockpin signalname="acc_o(7:0)" name="dev1(7:0)" />
            <blockpin name="dev10(7:0)" />
            <blockpin name="dev11(7:0)" />
            <blockpin name="dev12(7:0)" />
            <blockpin name="dev13(7:0)" />
            <blockpin name="dev14(7:0)" />
            <blockpin name="dev15(7:0)" />
            <blockpin signalname="mem_o(7:0)" name="dev2(7:0)" />
            <blockpin signalname="r0_o(7:0)" name="dev3(7:0)" />
            <blockpin signalname="r1_o(7:0)" name="dev4(7:0)" />
            <blockpin signalname="r2_o(7:0)" name="dev5(7:0)" />
            <blockpin signalname="r3_o(7:0)" name="dev6(7:0)" />
            <blockpin signalname="manr_o(7:0)" name="dev7(7:0)" />
            <blockpin name="dev8(7:0)" />
            <blockpin name="dev9(7:0)" />
            <blockpin signalname="XLXN_73" name="e" />
            <blockpin signalname="o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_14">
            <blockpin signalname="enc_o(0)" name="I" />
            <blockpin signalname="a(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_15">
            <blockpin signalname="enc_o(1)" name="I" />
            <blockpin signalname="a(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="enc_o(2)" name="I" />
            <blockpin signalname="a(2)" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_20">
            <blockpin signalname="a(3)" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="g" name="I" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="i(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="240" type="branch" />
            <wire x2="896" y1="240" y2="240" x1="800" />
            <wire x2="800" y1="240" y2="320" x1="800" />
            <wire x2="800" y1="320" y2="400" x1="800" />
            <wire x2="800" y1="400" y2="480" x1="800" />
            <wire x2="800" y1="480" y2="560" x1="800" />
            <wire x2="800" y1="560" y2="640" x1="800" />
            <wire x2="800" y1="640" y2="720" x1="800" />
            <wire x2="800" y1="720" y2="800" x1="800" />
            <wire x2="800" y1="800" y2="880" x1="800" />
        </branch>
        <bustap x2="704" y1="880" y2="880" x1="800" />
        <bustap x2="704" y1="800" y2="800" x1="800" />
        <bustap x2="704" y1="720" y2="720" x1="800" />
        <bustap x2="704" y1="640" y2="640" x1="800" />
        <bustap x2="704" y1="560" y2="560" x1="800" />
        <bustap x2="704" y1="480" y2="480" x1="800" />
        <bustap x2="704" y1="400" y2="400" x1="800" />
        <bustap x2="704" y1="320" y2="320" x1="800" />
        <instance x="416" y="352" name="XLXI_3" orien="R0" />
        <instance x="416" y="432" name="XLXI_4" orien="R0" />
        <instance x="416" y="512" name="XLXI_5" orien="R0" />
        <instance x="416" y="592" name="XLXI_6" orien="R0" />
        <instance x="416" y="672" name="XLXI_7" orien="R0" />
        <instance x="416" y="752" name="XLXI_8" orien="R0" />
        <instance x="416" y="832" name="XLXI_9" orien="R0" />
        <instance x="416" y="912" name="XLXI_10" orien="R0" />
        <branch name="i(0)">
            <wire x2="704" y1="320" y2="320" x1="640" />
        </branch>
        <branch name="i(1)">
            <wire x2="704" y1="400" y2="400" x1="640" />
        </branch>
        <branch name="i(2)">
            <wire x2="704" y1="480" y2="480" x1="640" />
        </branch>
        <branch name="i(3)">
            <wire x2="704" y1="560" y2="560" x1="640" />
        </branch>
        <branch name="i(4)">
            <wire x2="704" y1="640" y2="640" x1="640" />
        </branch>
        <branch name="i(5)">
            <wire x2="704" y1="720" y2="720" x1="640" />
        </branch>
        <branch name="i(6)">
            <wire x2="704" y1="800" y2="800" x1="640" />
        </branch>
        <branch name="i(7)">
            <wire x2="704" y1="880" y2="880" x1="640" />
        </branch>
        <branch name="acc_r">
            <wire x2="416" y1="400" y2="400" x1="320" />
        </branch>
        <branch name="mem_r">
            <wire x2="416" y1="480" y2="480" x1="320" />
        </branch>
        <branch name="r0_r">
            <wire x2="416" y1="560" y2="560" x1="320" />
        </branch>
        <branch name="r2_r">
            <wire x2="416" y1="720" y2="720" x1="320" />
        </branch>
        <branch name="r3_r">
            <wire x2="416" y1="800" y2="800" x1="320" />
        </branch>
        <branch name="iar_r">
            <wire x2="416" y1="320" y2="320" x1="320" />
        </branch>
        <branch name="r1_r">
            <wire x2="416" y1="640" y2="640" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="320" name="iar_r" orien="R180" />
        <iomarker fontsize="28" x="320" y="400" name="acc_r" orien="R180" />
        <iomarker fontsize="28" x="320" y="480" name="mem_r" orien="R180" />
        <iomarker fontsize="28" x="320" y="560" name="r0_r" orien="R180" />
        <iomarker fontsize="28" x="320" y="640" name="r1_r" orien="R180" />
        <iomarker fontsize="28" x="320" y="720" name="r2_r" orien="R180" />
        <iomarker fontsize="28" x="320" y="800" name="r3_r" orien="R180" />
        <branch name="enc_o(2:0)">
            <wire x2="1360" y1="240" y2="240" x1="1280" />
            <wire x2="1360" y1="240" y2="400" x1="1360" />
            <wire x2="1360" y1="400" y2="480" x1="1360" />
            <wire x2="1360" y1="480" y2="560" x1="1360" />
        </branch>
        <branch name="o(7:0)">
            <wire x2="3040" y1="240" y2="240" x1="2784" />
        </branch>
        <branch name="a(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="240" type="branch" />
            <wire x2="2080" y1="240" y2="400" x1="2080" />
            <wire x2="2080" y1="400" y2="480" x1="2080" />
            <wire x2="2080" y1="480" y2="560" x1="2080" />
            <wire x2="2080" y1="560" y2="640" x1="2080" />
            <wire x2="2256" y1="240" y2="240" x1="2080" />
            <wire x2="2400" y1="240" y2="240" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="3040" y="240" name="o(7:0)" orien="R0" />
        <bustap x2="1456" y1="560" y2="560" x1="1360" />
        <bustap x2="1456" y1="480" y2="480" x1="1360" />
        <bustap x2="1456" y1="400" y2="400" x1="1360" />
        <bustap x2="1984" y1="560" y2="560" x1="2080" />
        <bustap x2="1984" y1="480" y2="480" x1="2080" />
        <bustap x2="1984" y1="400" y2="400" x1="2080" />
        <branch name="enc_o(0)">
            <wire x2="1616" y1="400" y2="400" x1="1456" />
        </branch>
        <branch name="enc_o(1)">
            <wire x2="1616" y1="480" y2="480" x1="1456" />
        </branch>
        <branch name="enc_o(2)">
            <wire x2="1616" y1="560" y2="560" x1="1456" />
        </branch>
        <branch name="a(0)">
            <wire x2="1984" y1="400" y2="400" x1="1840" />
        </branch>
        <branch name="a(1)">
            <wire x2="1984" y1="480" y2="480" x1="1840" />
        </branch>
        <branch name="a(2)">
            <wire x2="1984" y1="560" y2="560" x1="1840" />
        </branch>
        <instance x="1616" y="432" name="XLXI_14" orien="R0" />
        <instance x="1616" y="512" name="XLXI_15" orien="R0" />
        <instance x="1616" y="592" name="XLXI_16" orien="R0" />
        <bustap x2="1984" y1="640" y2="640" x1="2080" />
        <instance x="1296" y="768" name="XLXI_20" orien="R0" />
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="592" type="branch" />
            <wire x2="1360" y1="592" y2="640" x1="1360" />
            <wire x2="1440" y1="592" y2="592" x1="1360" />
            <wire x2="1440" y1="592" y2="640" x1="1440" />
            <wire x2="1616" y1="640" y2="640" x1="1440" />
            <wire x2="1984" y1="640" y2="640" x1="1616" />
        </branch>
        <instance x="896" y="336" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2400" y="1360" name="XLXI_1" orien="R0">
        </instance>
        <branch name="iar_o(7:0)">
            <wire x2="2400" y1="560" y2="560" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2336" y="560" name="iar_o(7:0)" orien="R180" />
        <branch name="acc_o(7:0)">
            <wire x2="2400" y1="816" y2="816" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2336" y="816" name="acc_o(7:0)" orien="R180" />
        <branch name="mem_o(7:0)">
            <wire x2="2400" y1="1008" y2="1008" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1008" name="mem_o(7:0)" orien="R180" />
        <branch name="r0_o(7:0)">
            <wire x2="2400" y1="1200" y2="1200" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2336" y="1200" name="r0_o(7:0)" orien="R180" />
        <branch name="r1_o(7:0)">
            <wire x2="2400" y1="496" y2="496" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2336" y="496" name="r1_o(7:0)" orien="R180" />
        <branch name="r2_o(7:0)">
            <wire x2="2400" y1="624" y2="624" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2336" y="624" name="r2_o(7:0)" orien="R180" />
        <branch name="r3_o(7:0)">
            <wire x2="2400" y1="880" y2="880" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2336" y="880" name="r3_o(7:0)" orien="R180" />
        <branch name="g">
            <wire x2="1328" y1="304" y2="304" x1="1280" />
        </branch>
        <instance x="2096" y="1360" name="XLXI_21" orien="R0" />
        <branch name="g">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1328" type="branch" />
            <wire x2="2096" y1="1328" y2="1328" x1="2000" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="2400" y1="1328" y2="1328" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="1328" y="304" name="g" orien="R0" />
        <branch name="manr_r">
            <wire x2="416" y1="880" y2="880" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="880" name="manr_r" orien="R180" />
        <branch name="manr_o(7:0)">
            <wire x2="2400" y1="1136" y2="1136" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2320" y="1136" name="manr_o(7:0)" orien="R180" />
    </sheet>
</drawing>