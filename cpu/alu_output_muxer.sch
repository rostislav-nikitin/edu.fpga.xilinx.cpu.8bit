<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="op(2:0)" />
        <signal name="o(7:0)" />
        <signal name="a(3:0)" />
        <signal name="op(0)" />
        <signal name="op(1)" />
        <signal name="op(2)" />
        <signal name="a(0)" />
        <signal name="a(1)" />
        <signal name="a(2)" />
        <signal name="add_o(7:0)" />
        <signal name="lsh_o(7:0)" />
        <signal name="rsh_o(7:0)" />
        <signal name="not_o(7:0)" />
        <signal name="or_o(7:0)" />
        <signal name="xor_o(7:0)" />
        <signal name="a(3)" />
        <signal name="XLXN_75" />
        <signal name="and_o(7:0)" />
        <port polarity="Input" name="op(2:0)" />
        <port polarity="Output" name="o(7:0)" />
        <port polarity="Input" name="add_o(7:0)" />
        <port polarity="Input" name="lsh_o(7:0)" />
        <port polarity="Input" name="rsh_o(7:0)" />
        <port polarity="Input" name="not_o(7:0)" />
        <port polarity="Input" name="or_o(7:0)" />
        <port polarity="Input" name="xor_o(7:0)" />
        <port polarity="Input" name="and_o(7:0)" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="op(0)" name="I" />
            <blockpin signalname="a(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="op(1)" name="I" />
            <blockpin signalname="a(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="op(2)" name="I" />
            <blockpin signalname="a(2)" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_20">
            <blockpin signalname="a(3)" name="G" />
        </block>
        <block symbolname="bus_muxer" name="XLXI_14">
            <blockpin signalname="a(3:0)" name="a(3:0)" />
            <blockpin signalname="add_o(7:0)" name="dev0(7:0)" />
            <blockpin signalname="lsh_o(7:0)" name="dev1(7:0)" />
            <blockpin name="dev10(7:0)" />
            <blockpin name="dev11(7:0)" />
            <blockpin name="dev12(7:0)" />
            <blockpin name="dev13(7:0)" />
            <blockpin name="dev14(7:0)" />
            <blockpin name="dev15(7:0)" />
            <blockpin signalname="rsh_o(7:0)" name="dev2(7:0)" />
            <blockpin signalname="not_o(7:0)" name="dev3(7:0)" />
            <blockpin signalname="and_o(7:0)" name="dev4(7:0)" />
            <blockpin signalname="or_o(7:0)" name="dev5(7:0)" />
            <blockpin signalname="xor_o(7:0)" name="dev6(7:0)" />
            <blockpin name="dev7(7:0)" />
            <blockpin name="dev8(7:0)" />
            <blockpin name="dev9(7:0)" />
            <blockpin signalname="XLXN_75" name="e" />
            <blockpin signalname="o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_23">
            <blockpin signalname="XLXN_75" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="op(2:0)">
            <wire x2="1424" y1="432" y2="432" x1="1344" />
            <wire x2="1424" y1="432" y2="592" x1="1424" />
            <wire x2="1424" y1="592" y2="672" x1="1424" />
            <wire x2="1424" y1="672" y2="752" x1="1424" />
        </branch>
        <branch name="o(7:0)">
            <wire x2="3104" y1="432" y2="432" x1="2848" />
        </branch>
        <branch name="a(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="432" type="branch" />
            <wire x2="2464" y1="432" y2="432" x1="2144" />
            <wire x2="2144" y1="432" y2="592" x1="2144" />
            <wire x2="2144" y1="592" y2="672" x1="2144" />
            <wire x2="2144" y1="672" y2="752" x1="2144" />
            <wire x2="2144" y1="752" y2="832" x1="2144" />
        </branch>
        <bustap x2="1520" y1="752" y2="752" x1="1424" />
        <bustap x2="1520" y1="672" y2="672" x1="1424" />
        <bustap x2="1520" y1="592" y2="592" x1="1424" />
        <bustap x2="2048" y1="752" y2="752" x1="2144" />
        <bustap x2="2048" y1="672" y2="672" x1="2144" />
        <bustap x2="2048" y1="592" y2="592" x1="2144" />
        <branch name="op(0)">
            <wire x2="1680" y1="592" y2="592" x1="1520" />
        </branch>
        <branch name="op(1)">
            <wire x2="1680" y1="672" y2="672" x1="1520" />
        </branch>
        <branch name="op(2)">
            <wire x2="1680" y1="752" y2="752" x1="1520" />
        </branch>
        <branch name="a(0)">
            <wire x2="2048" y1="592" y2="592" x1="1904" />
        </branch>
        <branch name="a(1)">
            <wire x2="2048" y1="672" y2="672" x1="1904" />
        </branch>
        <branch name="a(2)">
            <wire x2="2048" y1="752" y2="752" x1="1904" />
        </branch>
        <instance x="1680" y="624" name="XLXI_9" orien="R0" />
        <instance x="1680" y="704" name="XLXI_10" orien="R0" />
        <instance x="1680" y="784" name="XLXI_11" orien="R0" />
        <bustap x2="2048" y1="832" y2="832" x1="2144" />
        <instance x="1360" y="960" name="XLXI_20" orien="R0" />
        <instance x="2464" y="1552" name="XLXI_14" orien="R0">
        </instance>
        <branch name="add_o(7:0)">
            <wire x2="2464" y1="752" y2="752" x1="2400" />
        </branch>
        <branch name="lsh_o(7:0)">
            <wire x2="2464" y1="1008" y2="1008" x1="2400" />
        </branch>
        <branch name="rsh_o(7:0)">
            <wire x2="2464" y1="1200" y2="1200" x1="2400" />
        </branch>
        <branch name="not_o(7:0)">
            <wire x2="2464" y1="1392" y2="1392" x1="2400" />
        </branch>
        <branch name="or_o(7:0)">
            <wire x2="2464" y1="816" y2="816" x1="2400" />
        </branch>
        <branch name="xor_o(7:0)">
            <wire x2="2464" y1="1072" y2="1072" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="3104" y="432" name="o(7:0)" orien="R0" />
        <branch name="a(3)">
            <wire x2="2048" y1="832" y2="832" x1="1424" />
        </branch>
        <instance x="1936" y="1520" name="XLXI_23" orien="R0" />
        <branch name="XLXN_75">
            <wire x2="2464" y1="1520" y2="1520" x1="2000" />
        </branch>
        <branch name="and_o(7:0)">
            <wire x2="2464" y1="688" y2="688" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2400" y="688" name="and_o(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2400" y="752" name="add_o(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2400" y="816" name="or_o(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2400" y="1008" name="lsh_o(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2400" y="1072" name="xor_o(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2400" y="1200" name="rsh_o(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2400" y="1392" name="not_o(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1344" y="432" name="op(2:0)" orien="R180" />
    </sheet>
</drawing>