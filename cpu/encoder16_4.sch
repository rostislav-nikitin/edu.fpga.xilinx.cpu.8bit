<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="i(15:0)" />
        <signal name="i(7)" />
        <signal name="i(6)" />
        <signal name="i(5)" />
        <signal name="i(4)" />
        <signal name="i(3)" />
        <signal name="i(2)" />
        <signal name="i(1)" />
        <signal name="i(0)" />
        <signal name="XLXN_1" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_6" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="g" />
        <signal name="i(8)" />
        <signal name="i(9)" />
        <signal name="i(10)" />
        <signal name="i(11)" />
        <signal name="i(12)" />
        <signal name="i(13)" />
        <signal name="i(14)" />
        <signal name="i(15)" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="o(1)" />
        <signal name="o(2)" />
        <signal name="o(0)" />
        <signal name="o(3:0)" />
        <signal name="o(3)" />
        <port polarity="Input" name="i(15:0)" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="o(3:0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-1024" y2="-64" x1="64" />
            <line x2="64" y1="-960" y2="-960" x1="0" />
            <line x2="64" y1="-768" y2="-768" x1="0" />
            <line x2="64" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <arc ex="144" ey="-592" sx="144" sy="-496" r="48" cx="144" cy="-544" />
            <line x2="144" y1="-592" y2="-592" x1="64" />
            <line x2="64" y1="-496" y2="-496" x1="144" />
            <line x2="192" y1="-544" y2="-544" x1="256" />
            <line x2="64" y1="-832" y2="-832" x1="0" />
            <line x2="64" y1="-1024" y2="-1024" x1="0" />
            <line x2="64" y1="-896" y2="-896" x1="0" />
            <line x2="64" y1="-704" y2="-704" x1="0" />
        </blockdef>
        <blockdef name="or8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-512" y2="-512" x1="0" />
            <line x2="192" y1="-288" y2="-288" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <arc ex="112" ey="-336" sx="192" sy="-288" r="88" cx="116" cy="-248" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <arc ex="192" ey="-288" sx="112" sy="-240" r="88" cx="116" cy="-328" />
            <arc ex="48" ey="-336" sx="48" sy="-240" r="56" cx="16" cy="-288" />
            <line x2="48" y1="-336" y2="-336" x1="112" />
            <line x2="48" y1="-336" y2="-512" x1="48" />
            <line x2="48" y1="-64" y2="-240" x1="48" />
        </blockdef>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="i(4)" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="i(5)" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="i(6)" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="i(7)" name="I" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="i(8)" name="I" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="i(9)" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="i(10)" name="I" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="i(11)" name="I" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and16" name="XLXI_25">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="XLXN_93" name="I1" />
            <blockpin signalname="XLXN_19" name="I10" />
            <blockpin signalname="XLXN_1" name="I11" />
            <blockpin signalname="XLXN_86" name="I12" />
            <blockpin signalname="XLXN_85" name="I13" />
            <blockpin signalname="XLXN_84" name="I14" />
            <blockpin signalname="XLXN_83" name="I15" />
            <blockpin signalname="XLXN_92" name="I2" />
            <blockpin signalname="XLXN_91" name="I3" />
            <blockpin signalname="XLXN_25" name="I4" />
            <blockpin signalname="XLXN_24" name="I5" />
            <blockpin signalname="XLXN_6" name="I6" />
            <blockpin signalname="XLXN_22" name="I7" />
            <blockpin signalname="XLXN_21" name="I8" />
            <blockpin signalname="XLXN_20" name="I9" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_33">
            <blockpin signalname="i(0)" name="I" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_34">
            <blockpin signalname="i(1)" name="I" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_35">
            <blockpin signalname="i(2)" name="I" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_36">
            <blockpin signalname="i(3)" name="I" />
            <blockpin signalname="XLXN_86" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_37">
            <blockpin signalname="i(12)" name="I" />
            <blockpin signalname="XLXN_91" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_38">
            <blockpin signalname="i(13)" name="I" />
            <blockpin signalname="XLXN_92" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_39">
            <blockpin signalname="i(14)" name="I" />
            <blockpin signalname="XLXN_93" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_40">
            <blockpin signalname="i(15)" name="I" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_48">
            <blockpin signalname="i(15)" name="I0" />
            <blockpin signalname="i(13)" name="I1" />
            <blockpin signalname="i(11)" name="I2" />
            <blockpin signalname="i(9)" name="I3" />
            <blockpin signalname="i(7)" name="I4" />
            <blockpin signalname="i(5)" name="I5" />
            <blockpin signalname="i(3)" name="I6" />
            <blockpin signalname="i(1)" name="I7" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_49">
            <blockpin signalname="i(15)" name="I0" />
            <blockpin signalname="i(14)" name="I1" />
            <blockpin signalname="i(11)" name="I2" />
            <blockpin signalname="i(10)" name="I3" />
            <blockpin signalname="i(7)" name="I4" />
            <blockpin signalname="i(6)" name="I5" />
            <blockpin signalname="i(3)" name="I6" />
            <blockpin signalname="i(2)" name="I7" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_50">
            <blockpin signalname="i(15)" name="I0" />
            <blockpin signalname="i(14)" name="I1" />
            <blockpin signalname="i(13)" name="I2" />
            <blockpin signalname="i(12)" name="I3" />
            <blockpin signalname="i(7)" name="I4" />
            <blockpin signalname="i(6)" name="I5" />
            <blockpin signalname="i(5)" name="I6" />
            <blockpin signalname="i(4)" name="I7" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_59">
            <blockpin signalname="i(15)" name="I0" />
            <blockpin signalname="i(14)" name="I1" />
            <blockpin signalname="i(13)" name="I2" />
            <blockpin signalname="i(12)" name="I3" />
            <blockpin signalname="i(11)" name="I4" />
            <blockpin signalname="i(10)" name="I5" />
            <blockpin signalname="i(9)" name="I6" />
            <blockpin signalname="i(8)" name="I7" />
            <blockpin signalname="o(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="i(15:0)">
            <wire x2="272" y1="144" y2="144" x1="192" />
            <wire x2="272" y1="144" y2="224" x1="272" />
            <wire x2="272" y1="224" y2="304" x1="272" />
            <wire x2="272" y1="304" y2="384" x1="272" />
            <wire x2="272" y1="384" y2="464" x1="272" />
            <wire x2="272" y1="464" y2="544" x1="272" />
            <wire x2="272" y1="544" y2="624" x1="272" />
            <wire x2="272" y1="624" y2="704" x1="272" />
            <wire x2="272" y1="704" y2="864" x1="272" />
            <wire x2="272" y1="864" y2="944" x1="272" />
            <wire x2="272" y1="944" y2="1024" x1="272" />
            <wire x2="272" y1="1024" y2="1104" x1="272" />
            <wire x2="272" y1="1104" y2="1184" x1="272" />
            <wire x2="272" y1="1184" y2="1264" x1="272" />
            <wire x2="272" y1="1264" y2="1344" x1="272" />
            <wire x2="272" y1="1344" y2="1424" x1="272" />
        </branch>
        <bustap x2="368" y1="784" y2="784" x1="272" />
        <bustap x2="368" y1="704" y2="704" x1="272" />
        <bustap x2="368" y1="624" y2="624" x1="272" />
        <bustap x2="368" y1="544" y2="544" x1="272" />
        <bustap x2="368" y1="464" y2="464" x1="272" />
        <bustap x2="368" y1="384" y2="384" x1="272" />
        <bustap x2="368" y1="304" y2="304" x1="272" />
        <bustap x2="368" y1="224" y2="224" x1="272" />
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="784" type="branch" />
            <wire x2="512" y1="784" y2="784" x1="368" />
        </branch>
        <branch name="i(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="704" type="branch" />
            <wire x2="512" y1="704" y2="704" x1="368" />
        </branch>
        <branch name="i(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="624" type="branch" />
            <wire x2="512" y1="624" y2="624" x1="368" />
        </branch>
        <branch name="i(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="544" type="branch" />
            <wire x2="512" y1="544" y2="544" x1="368" />
        </branch>
        <branch name="i(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="464" type="branch" />
            <wire x2="512" y1="464" y2="464" x1="368" />
        </branch>
        <branch name="i(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="384" type="branch" />
            <wire x2="512" y1="384" y2="384" x1="368" />
        </branch>
        <branch name="i(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="304" type="branch" />
            <wire x2="512" y1="304" y2="304" x1="368" />
        </branch>
        <branch name="i(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="224" type="branch" />
            <wire x2="512" y1="224" y2="224" x1="368" />
        </branch>
        <iomarker fontsize="28" x="192" y="144" name="i(15:0)" orien="R180" />
        <instance x="848" y="1792" name="XLXI_5" orien="R0" />
        <instance x="848" y="1856" name="XLXI_6" orien="R0" />
        <instance x="848" y="1920" name="XLXI_7" orien="R0" />
        <instance x="848" y="1984" name="XLXI_8" orien="R0" />
        <instance x="848" y="2048" name="XLXI_9" orien="R0" />
        <instance x="848" y="2112" name="XLXI_10" orien="R0" />
        <instance x="848" y="2176" name="XLXI_11" orien="R0" />
        <instance x="848" y="2240" name="XLXI_12" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1248" y1="1760" y2="1760" x1="1072" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1248" y1="1824" y2="1824" x1="1072" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1248" y1="1888" y2="1888" x1="1072" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1248" y1="1952" y2="1952" x1="1072" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1248" y1="2016" y2="2016" x1="1072" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1248" y1="2080" y2="2080" x1="1072" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1248" y1="2144" y2="2144" x1="1072" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1248" y1="2208" y2="2208" x1="1072" />
        </branch>
        <branch name="g">
            <wire x2="1632" y1="1984" y2="1984" x1="1504" />
            <wire x2="1792" y1="1984" y2="1984" x1="1632" />
        </branch>
        <branch name="i(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1760" type="branch" />
            <wire x2="848" y1="1760" y2="1760" x1="752" />
        </branch>
        <branch name="i(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1824" type="branch" />
            <wire x2="848" y1="1824" y2="1824" x1="752" />
        </branch>
        <branch name="i(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1888" type="branch" />
            <wire x2="848" y1="1888" y2="1888" x1="752" />
        </branch>
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1952" type="branch" />
            <wire x2="848" y1="1952" y2="1952" x1="752" />
        </branch>
        <branch name="i(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2016" type="branch" />
            <wire x2="848" y1="2016" y2="2016" x1="752" />
        </branch>
        <branch name="i(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2080" type="branch" />
            <wire x2="848" y1="2080" y2="2080" x1="752" />
        </branch>
        <branch name="i(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2144" type="branch" />
            <wire x2="848" y1="2144" y2="2144" x1="752" />
        </branch>
        <branch name="i(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2208" type="branch" />
            <wire x2="848" y1="2208" y2="2208" x1="752" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1984" name="g" orien="R0" />
        <bustap x2="368" y1="864" y2="864" x1="272" />
        <bustap x2="368" y1="944" y2="944" x1="272" />
        <bustap x2="368" y1="1024" y2="1024" x1="272" />
        <bustap x2="368" y1="1104" y2="1104" x1="272" />
        <bustap x2="368" y1="1184" y2="1184" x1="272" />
        <bustap x2="368" y1="1264" y2="1264" x1="272" />
        <bustap x2="368" y1="1344" y2="1344" x1="272" />
        <bustap x2="368" y1="1424" y2="1424" x1="272" />
        <branch name="i(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="864" type="branch" />
            <wire x2="512" y1="864" y2="864" x1="368" />
        </branch>
        <branch name="i(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="944" type="branch" />
            <wire x2="512" y1="944" y2="944" x1="368" />
        </branch>
        <branch name="i(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1024" type="branch" />
            <wire x2="512" y1="1024" y2="1024" x1="368" />
        </branch>
        <branch name="i(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1104" type="branch" />
            <wire x2="512" y1="1104" y2="1104" x1="368" />
        </branch>
        <branch name="i(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1184" type="branch" />
            <wire x2="512" y1="1184" y2="1184" x1="368" />
        </branch>
        <branch name="i(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1264" type="branch" />
            <wire x2="512" y1="1264" y2="1264" x1="368" />
        </branch>
        <branch name="i(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1344" type="branch" />
            <wire x2="512" y1="1344" y2="1344" x1="368" />
        </branch>
        <branch name="i(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1424" type="branch" />
            <wire x2="512" y1="1424" y2="1424" x1="368" />
        </branch>
        <instance x="1248" y="2528" name="XLXI_25" orien="R0" />
        <instance x="848" y="1536" name="XLXI_33" orien="R0" />
        <instance x="848" y="1600" name="XLXI_34" orien="R0" />
        <instance x="848" y="1664" name="XLXI_35" orien="R0" />
        <branch name="XLXN_83">
            <wire x2="1248" y1="1504" y2="1504" x1="1072" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="1248" y1="1568" y2="1568" x1="1072" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="1248" y1="1632" y2="1632" x1="1072" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="1248" y1="1696" y2="1696" x1="1072" />
        </branch>
        <branch name="i(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1504" type="branch" />
            <wire x2="848" y1="1504" y2="1504" x1="752" />
        </branch>
        <branch name="i(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1568" type="branch" />
            <wire x2="848" y1="1568" y2="1568" x1="752" />
        </branch>
        <branch name="i(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1632" type="branch" />
            <wire x2="848" y1="1632" y2="1632" x1="752" />
        </branch>
        <branch name="i(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1696" type="branch" />
            <wire x2="848" y1="1696" y2="1696" x1="752" />
        </branch>
        <instance x="848" y="1728" name="XLXI_36" orien="R0" />
        <instance x="848" y="2304" name="XLXI_37" orien="R0" />
        <instance x="848" y="2368" name="XLXI_38" orien="R0" />
        <instance x="848" y="2432" name="XLXI_39" orien="R0" />
        <branch name="XLXN_91">
            <wire x2="1248" y1="2272" y2="2272" x1="1072" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="1248" y1="2336" y2="2336" x1="1072" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="1248" y1="2400" y2="2400" x1="1072" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="1248" y1="2464" y2="2464" x1="1072" />
        </branch>
        <branch name="i(12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2272" type="branch" />
            <wire x2="848" y1="2272" y2="2272" x1="752" />
        </branch>
        <branch name="i(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2336" type="branch" />
            <wire x2="848" y1="2336" y2="2336" x1="752" />
        </branch>
        <branch name="i(14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2400" type="branch" />
            <wire x2="848" y1="2400" y2="2400" x1="752" />
        </branch>
        <branch name="i(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2464" type="branch" />
            <wire x2="848" y1="2464" y2="2464" x1="752" />
        </branch>
        <instance x="848" y="2496" name="XLXI_40" orien="R0" />
        <branch name="o(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="144" type="branch" />
            <wire x2="3248" y1="144" y2="144" x1="3168" />
            <wire x2="3168" y1="144" y2="304" x1="3168" />
            <wire x2="3168" y1="304" y2="384" x1="3168" />
            <wire x2="3168" y1="384" y2="464" x1="3168" />
            <wire x2="3168" y1="464" y2="544" x1="3168" />
        </branch>
        <bustap x2="3072" y1="464" y2="464" x1="3168" />
        <bustap x2="3072" y1="384" y2="384" x1="3168" />
        <bustap x2="3072" y1="304" y2="304" x1="3168" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="304" type="branch" />
            <wire x2="3072" y1="304" y2="304" x1="2928" />
        </branch>
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="384" type="branch" />
            <wire x2="3072" y1="384" y2="384" x1="2928" />
        </branch>
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="464" type="branch" />
            <wire x2="3072" y1="464" y2="464" x1="2928" />
        </branch>
        <bustap x2="3072" y1="544" y2="544" x1="3168" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="544" type="branch" />
            <wire x2="3072" y1="544" y2="544" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3248" y="144" name="o(3:0)" orien="R0" />
        <branch name="i(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="336" type="branch" />
            <wire x2="2240" y1="336" y2="336" x1="2080" />
        </branch>
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="272" type="branch" />
            <wire x2="2240" y1="272" y2="272" x1="2080" />
        </branch>
        <branch name="i(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="208" type="branch" />
            <wire x2="2240" y1="208" y2="208" x1="2080" />
        </branch>
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="304" type="branch" />
            <wire x2="2640" y1="304" y2="304" x1="2496" />
        </branch>
        <branch name="i(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="80" type="branch" />
            <wire x2="2240" y1="80" y2="80" x1="2080" />
        </branch>
        <branch name="i(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="144" type="branch" />
            <wire x2="2240" y1="144" y2="144" x1="2080" />
        </branch>
        <branch name="i(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="464" type="branch" />
            <wire x2="2240" y1="464" y2="464" x1="2080" />
        </branch>
        <branch name="i(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="528" type="branch" />
            <wire x2="2240" y1="528" y2="528" x1="2080" />
        </branch>
        <branch name="i(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="400" type="branch" />
            <wire x2="2240" y1="400" y2="400" x1="2080" />
        </branch>
        <instance x="2240" y="592" name="XLXI_48" orien="R0" />
        <branch name="i(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="960" type="branch" />
            <wire x2="2240" y1="960" y2="960" x1="2080" />
        </branch>
        <branch name="i(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="896" type="branch" />
            <wire x2="2240" y1="896" y2="896" x1="2080" />
        </branch>
        <branch name="i(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="768" type="branch" />
            <wire x2="2240" y1="768" y2="768" x1="2080" />
        </branch>
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="864" type="branch" />
            <wire x2="2640" y1="864" y2="864" x1="2496" />
        </branch>
        <instance x="2240" y="1152" name="XLXI_49" orien="R0" />
        <branch name="i(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="704" type="branch" />
            <wire x2="2240" y1="704" y2="704" x1="2064" />
        </branch>
        <branch name="i(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="640" type="branch" />
            <wire x2="2240" y1="640" y2="640" x1="2064" />
        </branch>
        <branch name="i(14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1024" type="branch" />
            <wire x2="2240" y1="1024" y2="1024" x1="2064" />
        </branch>
        <branch name="i(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1088" type="branch" />
            <wire x2="2240" y1="1088" y2="1088" x1="2064" />
        </branch>
        <branch name="i(12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1424" type="branch" />
            <wire x2="2240" y1="1424" y2="1424" x1="2096" />
        </branch>
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1360" type="branch" />
            <wire x2="2240" y1="1360" y2="1360" x1="2096" />
        </branch>
        <branch name="i(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1296" type="branch" />
            <wire x2="2240" y1="1296" y2="1296" x1="2096" />
        </branch>
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1392" type="branch" />
            <wire x2="2656" y1="1392" y2="1392" x1="2496" />
        </branch>
        <instance x="2240" y="1680" name="XLXI_50" orien="R0" />
        <branch name="i(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1232" type="branch" />
            <wire x2="2240" y1="1232" y2="1232" x1="2096" />
        </branch>
        <branch name="i(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1168" type="branch" />
            <wire x2="2112" y1="1168" y2="1168" x1="2096" />
            <wire x2="2240" y1="1168" y2="1168" x1="2112" />
        </branch>
        <branch name="i(14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1552" type="branch" />
            <wire x2="2240" y1="1552" y2="1552" x1="2096" />
        </branch>
        <branch name="i(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1616" type="branch" />
            <wire x2="2240" y1="1616" y2="1616" x1="2112" />
        </branch>
        <branch name="i(12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="2000" type="branch" />
            <wire x2="2240" y1="2000" y2="2000" x1="2096" />
        </branch>
        <branch name="i(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1936" type="branch" />
            <wire x2="2240" y1="1936" y2="1936" x1="2096" />
        </branch>
        <branch name="i(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1872" type="branch" />
            <wire x2="2240" y1="1872" y2="1872" x1="2096" />
        </branch>
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1968" type="branch" />
            <wire x2="2656" y1="1968" y2="1968" x1="2496" />
        </branch>
        <branch name="i(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1808" type="branch" />
            <wire x2="2240" y1="1808" y2="1808" x1="2096" />
        </branch>
        <instance x="2240" y="2256" name="XLXI_59" orien="R0" />
        <branch name="i(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="832" type="branch" />
            <wire x2="2240" y1="832" y2="832" x1="2080" />
        </branch>
        <branch name="i(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1488" type="branch" />
            <wire x2="2240" y1="1488" y2="1488" x1="2096" />
        </branch>
        <branch name="i(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1744" type="branch" />
            <wire x2="2112" y1="1744" y2="1744" x1="2096" />
            <wire x2="2240" y1="1744" y2="1744" x1="2112" />
        </branch>
        <branch name="i(14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="2128" type="branch" />
            <wire x2="2240" y1="2128" y2="2128" x1="2096" />
        </branch>
        <branch name="i(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="2064" type="branch" />
            <wire x2="2240" y1="2064" y2="2064" x1="2096" />
        </branch>
        <branch name="i(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="2192" type="branch" />
            <wire x2="2240" y1="2192" y2="2192" x1="2112" />
        </branch>
    </sheet>
</drawing>