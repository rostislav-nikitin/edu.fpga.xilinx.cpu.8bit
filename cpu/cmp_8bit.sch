<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(7)" />
        <signal name="a(7:0)" />
        <signal name="a(6)" />
        <signal name="a(5)" />
        <signal name="a(4)" />
        <signal name="a(3)" />
        <signal name="a(2)" />
        <signal name="a(1)" />
        <signal name="a(0)" />
        <signal name="b(7:0)" />
        <signal name="b(7)" />
        <signal name="b(6)" />
        <signal name="b(5)" />
        <signal name="b(4)" />
        <signal name="b(3)" />
        <signal name="b(2)" />
        <signal name="b(0)" />
        <signal name="b(1)" />
        <signal name="x(7:0)" />
        <signal name="x(0)" />
        <signal name="x(1)" />
        <signal name="x(2)" />
        <signal name="x(4)" />
        <signal name="x(5)" />
        <signal name="x(6)" />
        <signal name="x(7)" />
        <signal name="x(3)" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="eq" />
        <signal name="gt" />
        <port polarity="Input" name="a(7:0)" />
        <port polarity="Input" name="b(7:0)" />
        <port polarity="Output" name="x(7:0)" />
        <port polarity="Output" name="eq" />
        <port polarity="Output" name="gt" />
        <blockdef name="cmp_1bit">
            <timestamp>2022-3-17T8:36:43</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
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
        <block symbolname="cmp_1bit" name="XLXI_2">
            <blockpin signalname="a(7)" name="a" />
            <blockpin signalname="b(7)" name="b" />
            <blockpin signalname="eq" name="eq" />
            <blockpin signalname="XLXN_42" name="eq_above" />
            <blockpin signalname="gt" name="gt" />
            <blockpin signalname="XLXN_43" name="gt_above" />
            <blockpin signalname="x(7)" name="x" />
        </block>
        <block symbolname="cmp_1bit" name="XLXI_3">
            <blockpin signalname="a(6)" name="a" />
            <blockpin signalname="b(6)" name="b" />
            <blockpin signalname="XLXN_42" name="eq" />
            <blockpin signalname="XLXN_44" name="eq_above" />
            <blockpin signalname="XLXN_43" name="gt" />
            <blockpin signalname="XLXN_45" name="gt_above" />
            <blockpin signalname="x(6)" name="x" />
        </block>
        <block symbolname="cmp_1bit" name="XLXI_4">
            <blockpin signalname="a(5)" name="a" />
            <blockpin signalname="b(5)" name="b" />
            <blockpin signalname="XLXN_44" name="eq" />
            <blockpin signalname="XLXN_46" name="eq_above" />
            <blockpin signalname="XLXN_45" name="gt" />
            <blockpin signalname="XLXN_47" name="gt_above" />
            <blockpin signalname="x(5)" name="x" />
        </block>
        <block symbolname="cmp_1bit" name="XLXI_5">
            <blockpin signalname="a(4)" name="a" />
            <blockpin signalname="b(4)" name="b" />
            <blockpin signalname="XLXN_46" name="eq" />
            <blockpin signalname="XLXN_52" name="eq_above" />
            <blockpin signalname="XLXN_47" name="gt" />
            <blockpin signalname="XLXN_53" name="gt_above" />
            <blockpin signalname="x(4)" name="x" />
        </block>
        <block symbolname="cmp_1bit" name="XLXI_6">
            <blockpin signalname="a(3)" name="a" />
            <blockpin signalname="b(3)" name="b" />
            <blockpin signalname="XLXN_52" name="eq" />
            <blockpin signalname="XLXN_48" name="eq_above" />
            <blockpin signalname="XLXN_53" name="gt" />
            <blockpin signalname="XLXN_51" name="gt_above" />
            <blockpin signalname="x(3)" name="x" />
        </block>
        <block symbolname="cmp_1bit" name="XLXI_7">
            <blockpin signalname="a(2)" name="a" />
            <blockpin signalname="b(2)" name="b" />
            <blockpin signalname="XLXN_48" name="eq" />
            <blockpin signalname="XLXN_54" name="eq_above" />
            <blockpin signalname="XLXN_51" name="gt" />
            <blockpin signalname="XLXN_55" name="gt_above" />
            <blockpin signalname="x(2)" name="x" />
        </block>
        <block symbolname="cmp_1bit" name="XLXI_8">
            <blockpin signalname="a(1)" name="a" />
            <blockpin signalname="b(1)" name="b" />
            <blockpin signalname="XLXN_54" name="eq" />
            <blockpin signalname="XLXN_56" name="eq_above" />
            <blockpin signalname="XLXN_55" name="gt" />
            <blockpin signalname="XLXN_57" name="gt_above" />
            <blockpin signalname="x(1)" name="x" />
        </block>
        <block symbolname="cmp_1bit" name="XLXI_9">
            <blockpin signalname="a(0)" name="a" />
            <blockpin signalname="b(0)" name="b" />
            <blockpin signalname="XLXN_56" name="eq" />
            <blockpin signalname="XLXN_58" name="eq_above" />
            <blockpin signalname="XLXN_57" name="gt" />
            <blockpin signalname="XLXN_59" name="gt_above" />
            <blockpin signalname="x(0)" name="x" />
        </block>
        <block symbolname="pullup" name="XLXI_11">
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="pulldown" name="XLXI_12">
            <blockpin signalname="XLXN_59" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1040" y="2720" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1040" y="2384" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1040" y="2048" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1040" y="1712" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1040" y="1376" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1040" y="1040" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1040" y="704" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1040" y="368" name="XLXI_9" orien="R0">
        </instance>
        <branch name="a(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="480" y="192" type="branch" />
            <wire x2="480" y1="176" y2="176" x1="384" />
            <wire x2="480" y1="176" y2="192" x1="480" />
            <wire x2="480" y1="192" y2="272" x1="480" />
            <wire x2="480" y1="272" y2="608" x1="480" />
            <wire x2="480" y1="608" y2="944" x1="480" />
            <wire x2="480" y1="944" y2="1280" x1="480" />
            <wire x2="480" y1="1280" y2="1616" x1="480" />
            <wire x2="480" y1="1616" y2="1952" x1="480" />
            <wire x2="480" y1="1952" y2="2288" x1="480" />
            <wire x2="480" y1="2288" y2="2624" x1="480" />
        </branch>
        <bustap x2="576" y1="2624" y2="2624" x1="480" />
        <bustap x2="576" y1="2288" y2="2288" x1="480" />
        <bustap x2="576" y1="1952" y2="1952" x1="480" />
        <bustap x2="576" y1="1616" y2="1616" x1="480" />
        <bustap x2="576" y1="944" y2="944" x1="480" />
        <bustap x2="576" y1="608" y2="608" x1="480" />
        <bustap x2="576" y1="272" y2="272" x1="480" />
        <branch name="a(6)">
            <wire x2="1040" y1="2288" y2="2288" x1="576" />
        </branch>
        <branch name="a(5)">
            <wire x2="1040" y1="1952" y2="1952" x1="576" />
        </branch>
        <branch name="a(4)">
            <wire x2="1040" y1="1616" y2="1616" x1="576" />
        </branch>
        <bustap x2="576" y1="1280" y2="1280" x1="480" />
        <branch name="a(3)">
            <wire x2="1040" y1="1280" y2="1280" x1="576" />
        </branch>
        <branch name="a(2)">
            <wire x2="1040" y1="944" y2="944" x1="576" />
        </branch>
        <branch name="a(1)">
            <wire x2="1040" y1="608" y2="608" x1="576" />
        </branch>
        <branch name="a(0)">
            <wire x2="1040" y1="272" y2="272" x1="576" />
        </branch>
        <branch name="b(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="304" y="256" type="branch" />
            <wire x2="304" y1="240" y2="240" x1="240" />
            <wire x2="304" y1="240" y2="256" x1="304" />
            <wire x2="304" y1="256" y2="336" x1="304" />
            <wire x2="304" y1="336" y2="672" x1="304" />
            <wire x2="304" y1="672" y2="1008" x1="304" />
            <wire x2="304" y1="1008" y2="1344" x1="304" />
            <wire x2="304" y1="1344" y2="1680" x1="304" />
            <wire x2="304" y1="1680" y2="2016" x1="304" />
            <wire x2="304" y1="2016" y2="2224" x1="304" />
            <wire x2="304" y1="2224" y2="2352" x1="304" />
            <wire x2="304" y1="2352" y2="2560" x1="304" />
            <wire x2="304" y1="2560" y2="2688" x1="304" />
        </branch>
        <bustap x2="400" y1="2688" y2="2688" x1="304" />
        <bustap x2="400" y1="2352" y2="2352" x1="304" />
        <bustap x2="400" y1="2016" y2="2016" x1="304" />
        <bustap x2="400" y1="1680" y2="1680" x1="304" />
        <bustap x2="400" y1="1344" y2="1344" x1="304" />
        <bustap x2="400" y1="1008" y2="1008" x1="304" />
        <bustap x2="400" y1="672" y2="672" x1="304" />
        <bustap x2="400" y1="336" y2="336" x1="304" />
        <branch name="b(7)">
            <wire x2="1040" y1="2688" y2="2688" x1="400" />
        </branch>
        <branch name="b(6)">
            <wire x2="1040" y1="2352" y2="2352" x1="400" />
        </branch>
        <branch name="b(5)">
            <wire x2="1040" y1="2016" y2="2016" x1="400" />
        </branch>
        <branch name="b(4)">
            <wire x2="1040" y1="1680" y2="1680" x1="400" />
        </branch>
        <branch name="b(3)">
            <wire x2="1040" y1="1344" y2="1344" x1="400" />
        </branch>
        <branch name="b(2)">
            <wire x2="1040" y1="1008" y2="1008" x1="400" />
        </branch>
        <branch name="b(0)">
            <wire x2="1040" y1="336" y2="336" x1="400" />
        </branch>
        <branch name="b(1)">
            <wire x2="1040" y1="672" y2="672" x1="400" />
        </branch>
        <iomarker fontsize="28" x="384" y="176" name="a(7:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="240" name="b(7:0)" orien="R180" />
        <branch name="a(7)">
            <wire x2="656" y1="2624" y2="2624" x1="576" />
            <wire x2="816" y1="2624" y2="2624" x1="656" />
            <wire x2="960" y1="2624" y2="2624" x1="816" />
            <wire x2="1040" y1="2624" y2="2624" x1="960" />
        </branch>
        <branch name="x(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="80" type="branch" />
            <wire x2="1680" y1="80" y2="80" x1="1600" />
            <wire x2="1600" y1="80" y2="144" x1="1600" />
            <wire x2="1600" y1="144" y2="480" x1="1600" />
            <wire x2="1600" y1="480" y2="816" x1="1600" />
            <wire x2="1600" y1="816" y2="1152" x1="1600" />
            <wire x2="1600" y1="1152" y2="1488" x1="1600" />
            <wire x2="1600" y1="1488" y2="1824" x1="1600" />
            <wire x2="1600" y1="1824" y2="2160" x1="1600" />
            <wire x2="1600" y1="2160" y2="2496" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1680" y="80" name="x(7:0)" orien="R0" />
        <bustap x2="1504" y1="2496" y2="2496" x1="1600" />
        <bustap x2="1504" y1="2160" y2="2160" x1="1600" />
        <bustap x2="1504" y1="1824" y2="1824" x1="1600" />
        <bustap x2="1504" y1="1488" y2="1488" x1="1600" />
        <bustap x2="1504" y1="1152" y2="1152" x1="1600" />
        <bustap x2="1504" y1="816" y2="816" x1="1600" />
        <bustap x2="1504" y1="480" y2="480" x1="1600" />
        <bustap x2="1504" y1="144" y2="144" x1="1600" />
        <branch name="x(0)">
            <wire x2="1504" y1="144" y2="144" x1="1424" />
        </branch>
        <branch name="x(1)">
            <wire x2="1504" y1="480" y2="480" x1="1424" />
        </branch>
        <branch name="x(2)">
            <wire x2="1504" y1="816" y2="816" x1="1424" />
        </branch>
        <branch name="x(4)">
            <wire x2="1504" y1="1488" y2="1488" x1="1424" />
        </branch>
        <branch name="x(5)">
            <wire x2="1504" y1="1824" y2="1824" x1="1424" />
        </branch>
        <branch name="x(6)">
            <wire x2="1504" y1="2160" y2="2160" x1="1424" />
        </branch>
        <branch name="x(7)">
            <wire x2="1504" y1="2496" y2="2496" x1="1424" />
        </branch>
        <branch name="x(3)">
            <wire x2="1504" y1="1152" y2="1152" x1="1424" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1040" y1="2448" y2="2496" x1="1040" />
            <wire x2="1568" y1="2448" y2="2448" x1="1040" />
            <wire x2="1568" y1="2224" y2="2224" x1="1424" />
            <wire x2="1568" y1="2224" y2="2448" x1="1568" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="960" y1="2400" y2="2560" x1="960" />
            <wire x2="1040" y1="2560" y2="2560" x1="960" />
            <wire x2="1424" y1="2400" y2="2400" x1="960" />
            <wire x2="1424" y1="2288" y2="2400" x1="1424" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1040" y1="2112" y2="2160" x1="1040" />
            <wire x2="1520" y1="2112" y2="2112" x1="1040" />
            <wire x2="1520" y1="1888" y2="1888" x1="1424" />
            <wire x2="1520" y1="1888" y2="2112" x1="1520" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="960" y1="2080" y2="2224" x1="960" />
            <wire x2="1040" y1="2224" y2="2224" x1="960" />
            <wire x2="1440" y1="2080" y2="2080" x1="960" />
            <wire x2="1440" y1="1952" y2="1952" x1="1424" />
            <wire x2="1440" y1="1952" y2="2080" x1="1440" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1040" y1="1776" y2="1824" x1="1040" />
            <wire x2="1520" y1="1776" y2="1776" x1="1040" />
            <wire x2="1520" y1="1552" y2="1552" x1="1424" />
            <wire x2="1520" y1="1552" y2="1776" x1="1520" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="960" y1="1760" y2="1888" x1="960" />
            <wire x2="1040" y1="1888" y2="1888" x1="960" />
            <wire x2="1440" y1="1760" y2="1760" x1="960" />
            <wire x2="1440" y1="1616" y2="1616" x1="1424" />
            <wire x2="1440" y1="1616" y2="1760" x1="1440" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1040" y1="1104" y2="1120" x1="1040" />
            <wire x2="1040" y1="1120" y2="1152" x1="1040" />
            <wire x2="1440" y1="1104" y2="1104" x1="1040" />
            <wire x2="1456" y1="1104" y2="1104" x1="1440" />
            <wire x2="1520" y1="1104" y2="1104" x1="1456" />
            <wire x2="1520" y1="880" y2="880" x1="1424" />
            <wire x2="1520" y1="880" y2="1104" x1="1520" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="960" y1="1072" y2="1216" x1="960" />
            <wire x2="1040" y1="1216" y2="1216" x1="960" />
            <wire x2="1440" y1="1072" y2="1072" x1="960" />
            <wire x2="1440" y1="944" y2="944" x1="1424" />
            <wire x2="1440" y1="944" y2="1072" x1="1440" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="1040" y1="1440" y2="1488" x1="1040" />
            <wire x2="1536" y1="1440" y2="1440" x1="1040" />
            <wire x2="1536" y1="1216" y2="1216" x1="1424" />
            <wire x2="1536" y1="1216" y2="1440" x1="1536" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="960" y1="1408" y2="1552" x1="960" />
            <wire x2="1040" y1="1552" y2="1552" x1="960" />
            <wire x2="1440" y1="1408" y2="1408" x1="960" />
            <wire x2="1440" y1="1280" y2="1280" x1="1424" />
            <wire x2="1440" y1="1280" y2="1408" x1="1440" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1040" y1="768" y2="816" x1="1040" />
            <wire x2="1520" y1="768" y2="768" x1="1040" />
            <wire x2="1520" y1="544" y2="544" x1="1424" />
            <wire x2="1520" y1="544" y2="768" x1="1520" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="960" y1="720" y2="880" x1="960" />
            <wire x2="1040" y1="880" y2="880" x1="960" />
            <wire x2="1440" y1="720" y2="720" x1="960" />
            <wire x2="1440" y1="608" y2="608" x1="1424" />
            <wire x2="1440" y1="608" y2="720" x1="1440" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="1040" y1="432" y2="480" x1="1040" />
            <wire x2="1520" y1="432" y2="432" x1="1040" />
            <wire x2="1520" y1="208" y2="208" x1="1424" />
            <wire x2="1520" y1="208" y2="432" x1="1520" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="960" y1="400" y2="544" x1="960" />
            <wire x2="1040" y1="544" y2="544" x1="960" />
            <wire x2="1440" y1="400" y2="400" x1="960" />
            <wire x2="1440" y1="272" y2="272" x1="1424" />
            <wire x2="1440" y1="272" y2="400" x1="1440" />
        </branch>
        <instance x="896" y="144" name="XLXI_11" orien="R0" />
        <instance x="736" y="240" name="XLXI_12" orien="R0" />
        <branch name="XLXN_58">
            <wire x2="1040" y1="144" y2="144" x1="960" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="880" y1="80" y2="80" x1="800" />
            <wire x2="880" y1="80" y2="208" x1="880" />
            <wire x2="1040" y1="208" y2="208" x1="880" />
        </branch>
        <branch name="eq">
            <wire x2="1760" y1="2560" y2="2560" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1760" y="2560" name="eq" orien="R0" />
        <iomarker fontsize="28" x="1760" y="2624" name="gt" orien="R0" />
        <branch name="gt">
            <wire x2="1760" y1="2624" y2="2624" x1="1424" />
        </branch>
    </sheet>
</drawing>