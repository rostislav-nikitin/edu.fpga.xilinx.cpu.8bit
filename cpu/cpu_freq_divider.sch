<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_in" />
        <signal name="in_enc(2:0)" />
        <signal name="in_enc(0)" />
        <signal name="in_enc(1)" />
        <signal name="in_enc(2)" />
        <signal name="enc_in(7:0)" />
        <signal name="enc_in(2)" />
        <signal name="enc_in(3)" />
        <signal name="enc_in(4)" />
        <signal name="enc_in(5)" />
        <signal name="enc_in(6)" />
        <signal name="enc_in(7)" />
        <signal name="enc_in(0)" />
        <signal name="enc_in(1)" />
        <signal name="low" />
        <signal name="external" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="high" />
        <signal name="manual" />
        <signal name="rst" />
        <signal name="XLXN_1(31:0)" />
        <signal name="XLXN_92" />
        <signal name="manual_clk_in" />
        <signal name="external_clk_in" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="clk_out" />
        <signal name="XLXN_100" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Input" name="low" />
        <port polarity="Input" name="external" />
        <port polarity="Input" name="high" />
        <port polarity="Input" name="manual" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="manual_clk_in" />
        <port polarity="Input" name="external_clk_in" />
        <port polarity="Output" name="clk_out" />
        <blockdef name="freq_divider">
            <timestamp>2022-4-15T21:22:6</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
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
        <blockdef name="m8_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-544" y2="-544" x1="0" />
            <line x2="96" y1="-608" y2="-608" x1="0" />
            <line x2="96" y1="-672" y2="-672" x1="0" />
            <line x2="96" y1="-736" y2="-736" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="160" />
            <line x2="160" y1="-268" y2="-160" x1="160" />
            <line x2="96" y1="-224" y2="-224" x1="128" />
            <line x2="128" y1="-264" y2="-224" x1="128" />
            <line x2="96" y1="-96" y2="-96" x1="192" />
            <line x2="192" y1="-276" y2="-96" x1="192" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-280" y2="-32" x1="224" />
            <line x2="256" y1="-512" y2="-512" x1="320" />
            <line x2="96" y1="-768" y2="-256" x1="96" />
            <line x2="96" y1="-704" y2="-768" x1="256" />
            <line x2="256" y1="-288" y2="-704" x1="256" />
            <line x2="256" y1="-256" y2="-288" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="96" y1="-480" y2="-480" x1="0" />
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
        <block symbolname="m8_1e" name="XLXI_4">
            <blockpin signalname="clk_in" name="D0" />
            <blockpin signalname="XLXN_92" name="D1" />
            <blockpin signalname="manual_clk_in" name="D2" />
            <blockpin signalname="external_clk_in" name="D3" />
            <blockpin signalname="XLXN_100" name="D4" />
            <blockpin signalname="XLXN_100" name="D5" />
            <blockpin signalname="XLXN_100" name="D6" />
            <blockpin signalname="XLXN_100" name="D7" />
            <blockpin signalname="XLXN_98" name="E" />
            <blockpin signalname="in_enc(0)" name="S0" />
            <blockpin signalname="in_enc(1)" name="S1" />
            <blockpin signalname="in_enc(2)" name="S2" />
            <blockpin signalname="clk_out" name="O" />
        </block>
        <block symbolname="encoder8_3" name="XLXI_38">
            <blockpin signalname="XLXN_99" name="g" />
            <blockpin signalname="enc_in(7:0)" name="i(7:0)" />
            <blockpin signalname="in_enc(2:0)" name="o(2:0)" />
        </block>
        <block symbolname="buf" name="XLXI_40">
            <blockpin signalname="high" name="I" />
            <blockpin signalname="enc_in(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_41">
            <blockpin signalname="low" name="I" />
            <blockpin signalname="enc_in(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_42">
            <blockpin signalname="manual" name="I" />
            <blockpin signalname="enc_in(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_43">
            <blockpin signalname="external" name="I" />
            <blockpin signalname="enc_in(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_44">
            <blockpin signalname="XLXN_68" name="I" />
            <blockpin signalname="enc_in(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_45">
            <blockpin signalname="XLXN_68" name="I" />
            <blockpin signalname="enc_in(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_46">
            <blockpin signalname="XLXN_68" name="I" />
            <blockpin signalname="enc_in(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_49">
            <blockpin signalname="XLXN_68" name="I" />
            <blockpin signalname="enc_in(7)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_2">
            <attr value="000F4240" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_1(31:0)" name="O" />
        </block>
        <block symbolname="freq_divider" name="XLXI_1">
            <blockpin signalname="clk_in" name="clk_in" />
            <blockpin signalname="XLXN_92" name="clk_out" />
            <blockpin signalname="XLXN_1(31:0)" name="divider(31:0)" />
            <blockpin signalname="rst" name="rst" />
        </block>
        <block symbolname="inv" name="XLXI_62">
            <blockpin signalname="XLXN_99" name="I" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_63">
            <blockpin signalname="XLXN_68" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_64">
            <blockpin signalname="XLXN_100" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1456" y="976" name="XLXI_38" orien="R0">
        </instance>
        <instance x="2240" y="1104" name="XLXI_4" orien="R0" />
        <branch name="in_enc(2:0)">
            <wire x2="2000" y1="880" y2="880" x1="1840" />
            <wire x2="2000" y1="880" y2="944" x1="2000" />
            <wire x2="2000" y1="944" y2="1008" x1="2000" />
        </branch>
        <bustap x2="2096" y1="944" y2="944" x1="2000" />
        <bustap x2="2096" y1="880" y2="880" x1="2000" />
        <bustap x2="2096" y1="1008" y2="1008" x1="2000" />
        <branch name="in_enc(0)">
            <wire x2="2240" y1="880" y2="880" x1="2096" />
        </branch>
        <branch name="in_enc(1)">
            <wire x2="2240" y1="944" y2="944" x1="2096" />
        </branch>
        <branch name="in_enc(2)">
            <wire x2="2240" y1="1008" y2="1008" x1="2096" />
        </branch>
        <branch name="enc_in(7:0)">
            <wire x2="1456" y1="880" y2="880" x1="640" />
            <wire x2="640" y1="880" y2="960" x1="640" />
            <wire x2="640" y1="960" y2="1040" x1="640" />
            <wire x2="640" y1="1040" y2="1120" x1="640" />
            <wire x2="640" y1="1120" y2="1200" x1="640" />
            <wire x2="640" y1="1200" y2="1280" x1="640" />
            <wire x2="640" y1="1280" y2="1360" x1="640" />
            <wire x2="640" y1="1360" y2="1440" x1="640" />
        </branch>
        <bustap x2="544" y1="1440" y2="1440" x1="640" />
        <bustap x2="544" y1="1360" y2="1360" x1="640" />
        <bustap x2="544" y1="1280" y2="1280" x1="640" />
        <bustap x2="544" y1="1200" y2="1200" x1="640" />
        <bustap x2="544" y1="1120" y2="1120" x1="640" />
        <bustap x2="544" y1="1040" y2="1040" x1="640" />
        <bustap x2="544" y1="960" y2="960" x1="640" />
        <bustap x2="544" y1="880" y2="880" x1="640" />
        <branch name="enc_in(2)">
            <wire x2="544" y1="1040" y2="1040" x1="480" />
        </branch>
        <branch name="enc_in(3)">
            <wire x2="544" y1="1120" y2="1120" x1="480" />
        </branch>
        <branch name="enc_in(4)">
            <wire x2="544" y1="1200" y2="1200" x1="480" />
        </branch>
        <branch name="enc_in(5)">
            <wire x2="544" y1="1280" y2="1280" x1="480" />
        </branch>
        <branch name="enc_in(6)">
            <wire x2="544" y1="1360" y2="1360" x1="480" />
        </branch>
        <branch name="enc_in(7)">
            <wire x2="544" y1="1440" y2="1440" x1="480" />
        </branch>
        <instance x="256" y="912" name="XLXI_40" orien="R0" />
        <instance x="256" y="992" name="XLXI_41" orien="R0" />
        <instance x="256" y="1152" name="XLXI_43" orien="R0" />
        <instance x="256" y="1232" name="XLXI_44" orien="R0" />
        <instance x="256" y="1312" name="XLXI_45" orien="R0" />
        <instance x="256" y="1392" name="XLXI_46" orien="R0" />
        <instance x="256" y="1472" name="XLXI_49" orien="R0" />
        <instance x="256" y="1072" name="XLXI_42" orien="R0" />
        <branch name="enc_in(0)">
            <wire x2="544" y1="880" y2="880" x1="480" />
        </branch>
        <branch name="enc_in(1)">
            <wire x2="544" y1="960" y2="960" x1="480" />
        </branch>
        <branch name="external">
            <wire x2="256" y1="1120" y2="1120" x1="160" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="80" y1="1200" y2="1280" x1="80" />
            <wire x2="80" y1="1280" y2="1360" x1="80" />
            <wire x2="80" y1="1360" y2="1440" x1="80" />
            <wire x2="80" y1="1440" y2="1504" x1="80" />
            <wire x2="256" y1="1440" y2="1440" x1="80" />
            <wire x2="256" y1="1360" y2="1360" x1="80" />
            <wire x2="256" y1="1280" y2="1280" x1="80" />
            <wire x2="256" y1="1200" y2="1200" x1="80" />
        </branch>
        <branch name="high">
            <wire x2="256" y1="880" y2="880" x1="160" />
        </branch>
        <branch name="low">
            <wire x2="224" y1="960" y2="960" x1="160" />
            <wire x2="256" y1="960" y2="960" x1="224" />
        </branch>
        <branch name="manual">
            <wire x2="256" y1="1040" y2="1040" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="880" name="high" orien="R180" />
        <iomarker fontsize="28" x="160" y="960" name="low" orien="R180" />
        <iomarker fontsize="28" x="160" y="1040" name="manual" orien="R180" />
        <iomarker fontsize="28" x="160" y="1120" name="external" orien="R180" />
        <branch name="clk_in">
            <wire x2="2240" y1="368" y2="368" x1="2160" />
        </branch>
        <branch name="clk_in">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="496" type="branch" />
            <wire x2="1168" y1="496" y2="496" x1="1152" />
            <wire x2="1536" y1="496" y2="496" x1="1168" />
            <wire x2="1552" y1="496" y2="496" x1="1536" />
        </branch>
        <branch name="rst">
            <wire x2="1248" y1="560" y2="560" x1="1152" />
            <wire x2="1472" y1="560" y2="560" x1="1248" />
            <wire x2="1488" y1="560" y2="560" x1="1472" />
            <wire x2="1552" y1="560" y2="560" x1="1488" />
        </branch>
        <instance x="1040" y="400" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="1200" y1="432" y2="432" x1="1184" />
            <wire x2="1536" y1="432" y2="432" x1="1200" />
            <wire x2="1552" y1="432" y2="432" x1="1536" />
        </branch>
        <instance x="1552" y="592" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1152" y="560" name="rst" orien="R180" />
        <branch name="XLXN_92">
            <wire x2="2240" y1="432" y2="432" x1="1936" />
        </branch>
        <branch name="manual_clk_in">
            <wire x2="2240" y1="496" y2="496" x1="2160" />
        </branch>
        <branch name="external_clk_in">
            <wire x2="2240" y1="560" y2="560" x1="2160" />
        </branch>
        <instance x="1936" y="1104" name="XLXI_62" orien="R0" />
        <branch name="XLXN_98">
            <wire x2="2240" y1="1072" y2="1072" x1="2160" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="1920" y1="944" y2="944" x1="1840" />
            <wire x2="1920" y1="944" y2="1072" x1="1920" />
            <wire x2="1936" y1="1072" y2="1072" x1="1920" />
        </branch>
        <branch name="clk_out">
            <wire x2="2720" y1="592" y2="592" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2720" y="592" name="clk_out" orien="R0" />
        <iomarker fontsize="28" x="2160" y="496" name="manual_clk_in" orien="R180" />
        <iomarker fontsize="28" x="2160" y="560" name="external_clk_in" orien="R180" />
        <iomarker fontsize="28" x="2160" y="368" name="clk_in" orien="R180" />
        <instance x="16" y="1632" name="XLXI_63" orien="R0" />
        <branch name="XLXN_100">
            <wire x2="2160" y1="752" y2="752" x1="2080" />
            <wire x2="2160" y1="752" y2="816" x1="2160" />
            <wire x2="2240" y1="816" y2="816" x1="2160" />
            <wire x2="2240" y1="752" y2="752" x1="2160" />
            <wire x2="2240" y1="624" y2="624" x1="2160" />
            <wire x2="2160" y1="624" y2="688" x1="2160" />
            <wire x2="2160" y1="688" y2="752" x1="2160" />
            <wire x2="2240" y1="688" y2="688" x1="2160" />
        </branch>
        <instance x="1952" y="688" name="XLXI_64" orien="R90" />
    </sheet>
</drawing>