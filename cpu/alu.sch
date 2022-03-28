<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="b(7:0)" />
        <signal name="C_in" />
        <signal name="XLXN_7(7:0)" />
        <signal name="XLXN_8" />
        <signal name="a(7:0)" />
        <signal name="t(7)" />
        <signal name="t(6)" />
        <signal name="t(5)" />
        <signal name="t(4)" />
        <signal name="t(3)" />
        <signal name="t(2)" />
        <signal name="t(1)" />
        <signal name="x(7:0)" />
        <signal name="t(7:0)" />
        <signal name="t(0)" />
        <signal name="op(2:0)" />
        <signal name="op(0)" />
        <signal name="op(1)" />
        <signal name="op(2)" />
        <signal name="XLXN_89" />
        <signal name="XLXN_91" />
        <signal name="XLXN_93" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_105" />
        <signal name="ls(7:0)" />
        <signal name="XLXN_179" />
        <signal name="ls(6)" />
        <signal name="ls(5)" />
        <signal name="ls(4)" />
        <signal name="ls(3)" />
        <signal name="ls(2)" />
        <signal name="ls(1)" />
        <signal name="ls(7)" />
        <signal name="ls(0)" />
        <signal name="XLXN_191" />
        <signal name="XLXN_192" />
        <signal name="XLXN_193" />
        <signal name="C_out" />
        <signal name="XLXN_199" />
        <signal name="XLXN_201" />
        <signal name="XLXN_202" />
        <signal name="XLXN_204(7:0)" />
        <signal name="b(7)" />
        <signal name="b(6)" />
        <signal name="b(5)" />
        <signal name="b(4)" />
        <signal name="b(3)" />
        <signal name="b(2)" />
        <signal name="b(0)" />
        <signal name="XLXN_223" />
        <signal name="XLXN_224" />
        <signal name="XLXN_225" />
        <signal name="XLXN_226" />
        <signal name="XLXN_227" />
        <signal name="XLXN_228" />
        <signal name="land(7:0)" />
        <signal name="land(0)" />
        <signal name="land(1)" />
        <signal name="land(2)" />
        <signal name="land(3)" />
        <signal name="land(4)" />
        <signal name="land(6)" />
        <signal name="land(7)" />
        <signal name="land(5)" />
        <signal name="b(1)" />
        <signal name="XLXN_239" />
        <signal name="a(3)" />
        <signal name="a(2)" />
        <signal name="a(1)" />
        <signal name="lor(7:0)" />
        <signal name="lor(0)" />
        <signal name="lor(2)" />
        <signal name="lor(3)" />
        <signal name="lor(4)" />
        <signal name="lor(5)" />
        <signal name="lor(6)" />
        <signal name="lor(7)" />
        <signal name="lor(1)" />
        <signal name="XLXN_269" />
        <signal name="XLXN_270(7:0)" />
        <signal name="XLXN_272" />
        <signal name="eq" />
        <signal name="gt" />
        <signal name="z" />
        <signal name="a(6)" />
        <signal name="a(5)" />
        <signal name="a(4)" />
        <signal name="a(0)" />
        <signal name="a(7)" />
        <port polarity="Input" name="b(7:0)" />
        <port polarity="Input" name="C_in" />
        <port polarity="Input" name="a(7:0)" />
        <port polarity="Output" name="x(7:0)" />
        <port polarity="Input" name="op(2:0)" />
        <port polarity="Output" name="C_out" />
        <port polarity="Output" name="eq" />
        <port polarity="Output" name="gt" />
        <port polarity="Output" name="z" />
        <blockdef name="d3_8e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="add8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="inv8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <circle r="16" cx="144" cy="-32" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="160" y="-44" height="24" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="cmp_8bit">
            <timestamp>2022-3-18T4:18:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
        </blockdef>
        <blockdef name="lzero">
            <timestamp>2022-3-19T17:51:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="d3_8e" name="XLXI_1">
            <blockpin signalname="op(0)" name="A0" />
            <blockpin signalname="op(1)" name="A1" />
            <blockpin signalname="op(2)" name="A2" />
            <blockpin signalname="XLXN_89" name="E" />
            <blockpin signalname="XLXN_8" name="D0" />
            <blockpin signalname="XLXN_105" name="D1" />
            <blockpin signalname="XLXN_192" name="D2" />
            <blockpin signalname="XLXN_223" name="D3" />
            <blockpin signalname="XLXN_224" name="D4" />
            <blockpin signalname="XLXN_225" name="D5" />
            <blockpin signalname="XLXN_226" name="D6" />
            <blockpin signalname="XLXN_227" name="D7" />
        </block>
        <block symbolname="add8" name="XLXI_2">
            <blockpin signalname="a(7:0)" name="A(7:0)" />
            <blockpin signalname="b(7:0)" name="B(7:0)" />
            <blockpin signalname="C_in" name="CI" />
            <blockpin signalname="XLXN_91" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_7(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="obuft8" name="XLXI_4">
            <blockpin signalname="XLXN_7(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_98" name="T" />
            <blockpin signalname="x(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="a(0)" name="I" />
            <blockpin signalname="t(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_14">
            <blockpin signalname="a(1)" name="I" />
            <blockpin signalname="t(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_15">
            <blockpin signalname="a(2)" name="I" />
            <blockpin signalname="t(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="a(3)" name="I" />
            <blockpin signalname="t(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_17">
            <blockpin signalname="a(4)" name="I" />
            <blockpin signalname="t(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_18">
            <blockpin signalname="a(5)" name="I" />
            <blockpin signalname="t(6)" name="O" />
        </block>
        <block symbolname="obuft8" name="XLXI_7">
            <blockpin signalname="t(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_99" name="T" />
            <blockpin signalname="x(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="XLXN_179" name="I" />
            <blockpin signalname="t(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_42">
            <blockpin signalname="XLXN_105" name="I" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_43">
            <blockpin signalname="XLXN_89" name="P" />
        </block>
        <block symbolname="and2" name="XLXI_44">
            <blockpin signalname="XLXN_91" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_199" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_45">
            <blockpin signalname="XLXN_93" name="I0" />
            <blockpin signalname="XLXN_105" name="I1" />
            <blockpin signalname="XLXN_202" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_19">
            <blockpin signalname="a(6)" name="I" />
            <blockpin signalname="t(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_47">
            <blockpin signalname="a(7)" name="I" />
            <blockpin signalname="XLXN_93" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_40">
            <blockpin signalname="XLXN_179" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_89">
            <blockpin signalname="a(0)" name="I" />
            <blockpin signalname="XLXN_191" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_90">
            <blockpin signalname="a(1)" name="I" />
            <blockpin signalname="ls(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_91">
            <blockpin signalname="a(2)" name="I" />
            <blockpin signalname="ls(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_92">
            <blockpin signalname="a(3)" name="I" />
            <blockpin signalname="ls(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_93">
            <blockpin signalname="a(4)" name="I" />
            <blockpin signalname="ls(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_94">
            <blockpin signalname="a(5)" name="I" />
            <blockpin signalname="ls(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_95">
            <blockpin signalname="a(6)" name="I" />
            <blockpin signalname="ls(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_96">
            <blockpin signalname="a(7)" name="I" />
            <blockpin signalname="ls(6)" name="O" />
        </block>
        <block symbolname="obuft8" name="XLXI_97">
            <blockpin signalname="ls(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_193" name="T" />
            <blockpin signalname="x(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_98">
            <blockpin signalname="XLXN_179" name="I" />
            <blockpin signalname="ls(7)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_99">
            <blockpin signalname="XLXN_191" name="I0" />
            <blockpin signalname="XLXN_192" name="I1" />
            <blockpin signalname="XLXN_201" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_100">
            <blockpin signalname="XLXN_192" name="I" />
            <blockpin signalname="XLXN_193" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_101">
            <blockpin signalname="XLXN_201" name="I0" />
            <blockpin signalname="XLXN_202" name="I1" />
            <blockpin signalname="XLXN_199" name="I2" />
            <blockpin signalname="C_out" name="O" />
        </block>
        <block symbolname="inv8" name="XLXI_102">
            <blockpin signalname="a(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_204(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="obuft8" name="XLXI_111">
            <blockpin signalname="XLXN_204(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_228" name="T" />
            <blockpin signalname="x(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="obuft8" name="XLXI_112">
            <blockpin signalname="land(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_239" name="T" />
            <blockpin signalname="x(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="obuft8" name="XLXI_113">
            <blockpin signalname="lor(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_269" name="T" />
            <blockpin signalname="x(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="and2" name="XLXI_114">
            <blockpin signalname="a(7)" name="I0" />
            <blockpin signalname="b(7)" name="I1" />
            <blockpin signalname="land(7)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_115">
            <blockpin signalname="a(6)" name="I0" />
            <blockpin signalname="b(6)" name="I1" />
            <blockpin signalname="land(6)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_116">
            <blockpin signalname="a(5)" name="I0" />
            <blockpin signalname="b(5)" name="I1" />
            <blockpin signalname="land(5)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_117">
            <blockpin signalname="a(4)" name="I0" />
            <blockpin signalname="b(4)" name="I1" />
            <blockpin signalname="land(4)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_118">
            <blockpin signalname="a(3)" name="I0" />
            <blockpin signalname="b(3)" name="I1" />
            <blockpin signalname="land(3)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_119">
            <blockpin signalname="a(2)" name="I0" />
            <blockpin signalname="b(2)" name="I1" />
            <blockpin signalname="land(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_120">
            <blockpin signalname="a(1)" name="I0" />
            <blockpin signalname="b(1)" name="I1" />
            <blockpin signalname="land(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_121">
            <blockpin signalname="a(0)" name="I0" />
            <blockpin signalname="b(0)" name="I1" />
            <blockpin signalname="land(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_122">
            <blockpin signalname="XLXN_223" name="I" />
            <blockpin signalname="XLXN_228" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_123">
            <blockpin signalname="XLXN_224" name="I" />
            <blockpin signalname="XLXN_239" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_124">
            <blockpin signalname="XLXN_225" name="I" />
            <blockpin signalname="XLXN_269" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_125">
            <blockpin signalname="XLXN_226" name="I" />
            <blockpin signalname="XLXN_272" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_126">
            <blockpin signalname="XLXN_227" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="or2" name="XLXI_127">
            <blockpin signalname="a(7)" name="I0" />
            <blockpin signalname="b(7)" name="I1" />
            <blockpin signalname="lor(7)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_128">
            <blockpin signalname="a(6)" name="I0" />
            <blockpin signalname="b(6)" name="I1" />
            <blockpin signalname="lor(6)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_129">
            <blockpin signalname="a(5)" name="I0" />
            <blockpin signalname="b(5)" name="I1" />
            <blockpin signalname="lor(5)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_130">
            <blockpin signalname="a(4)" name="I0" />
            <blockpin signalname="b(4)" name="I1" />
            <blockpin signalname="lor(4)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_131">
            <blockpin signalname="a(3)" name="I0" />
            <blockpin signalname="b(3)" name="I1" />
            <blockpin signalname="lor(3)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_132">
            <blockpin signalname="a(2)" name="I0" />
            <blockpin signalname="b(2)" name="I1" />
            <blockpin signalname="lor(2)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_133">
            <blockpin signalname="a(1)" name="I0" />
            <blockpin signalname="b(1)" name="I1" />
            <blockpin signalname="lor(1)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_134">
            <blockpin signalname="a(0)" name="I0" />
            <blockpin signalname="b(0)" name="I1" />
            <blockpin signalname="lor(0)" name="O" />
        </block>
        <block symbolname="cmp_8bit" name="XLXI_135">
            <blockpin signalname="a(7:0)" name="a(7:0)" />
            <blockpin signalname="b(7:0)" name="b(7:0)" />
            <blockpin signalname="eq" name="eq" />
            <blockpin signalname="gt" name="gt" />
            <blockpin signalname="XLXN_270(7:0)" name="x(7:0)" />
        </block>
        <block symbolname="obuft8" name="XLXI_136">
            <blockpin signalname="XLXN_270(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_272" name="T" />
            <blockpin signalname="x(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="lzero" name="XLXI_137">
            <blockpin signalname="x(7:0)" name="a(7:0)" />
            <blockpin signalname="z" name="x" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="640" y="5392" name="XLXI_1" orien="R0" />
        <instance x="1296" y="4704" name="XLXI_2" orien="R0" />
        <branch name="C_in">
            <wire x2="1296" y1="4256" y2="4256" x1="816" />
        </branch>
        <instance x="2256" y="4480" name="XLXI_4" orien="R0" />
        <branch name="XLXN_7(7:0)">
            <wire x2="2256" y1="4448" y2="4448" x1="1744" />
        </branch>
        <instance x="1136" y="4848" name="XLXI_5" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1120" y1="4816" y2="4816" x1="1024" />
            <wire x2="1136" y1="4816" y2="4816" x1="1120" />
            <wire x2="2576" y1="4720" y2="4720" x1="1120" />
            <wire x2="1120" y1="4720" y2="4816" x1="1120" />
        </branch>
        <branch name="a(7:0)">
            <wire x2="992" y1="4384" y2="4384" x1="816" />
            <wire x2="1296" y1="4384" y2="4384" x1="992" />
            <wire x2="992" y1="32" y2="144" x1="992" />
            <wire x2="992" y1="144" y2="240" x1="992" />
            <wire x2="992" y1="240" y2="336" x1="992" />
            <wire x2="992" y1="336" y2="432" x1="992" />
            <wire x2="992" y1="432" y2="464" x1="992" />
            <wire x2="992" y1="464" y2="528" x1="992" />
            <wire x2="992" y1="528" y2="544" x1="992" />
            <wire x2="992" y1="544" y2="624" x1="992" />
            <wire x2="992" y1="624" y2="720" x1="992" />
            <wire x2="992" y1="720" y2="816" x1="992" />
            <wire x2="992" y1="816" y2="912" x1="992" />
            <wire x2="992" y1="912" y2="928" x1="992" />
            <wire x2="992" y1="928" y2="1280" x1="992" />
            <wire x2="992" y1="1280" y2="1376" x1="992" />
            <wire x2="992" y1="1376" y2="1472" x1="992" />
            <wire x2="992" y1="1472" y2="1568" x1="992" />
            <wire x2="992" y1="1568" y2="1664" x1="992" />
            <wire x2="992" y1="1664" y2="1760" x1="992" />
            <wire x2="992" y1="1760" y2="1856" x1="992" />
            <wire x2="992" y1="1856" y2="1952" x1="992" />
            <wire x2="992" y1="1952" y2="2096" x1="992" />
            <wire x2="1488" y1="2096" y2="2096" x1="992" />
            <wire x2="992" y1="2096" y2="2512" x1="992" />
            <wire x2="992" y1="2512" y2="2576" x1="992" />
            <wire x2="992" y1="2576" y2="2640" x1="992" />
            <wire x2="992" y1="2640" y2="2704" x1="992" />
            <wire x2="992" y1="2704" y2="2768" x1="992" />
            <wire x2="992" y1="2768" y2="2832" x1="992" />
            <wire x2="992" y1="2832" y2="2896" x1="992" />
            <wire x2="992" y1="2896" y2="2960" x1="992" />
            <wire x2="992" y1="2960" y2="3344" x1="992" />
            <wire x2="992" y1="3344" y2="3408" x1="992" />
            <wire x2="992" y1="3408" y2="3472" x1="992" />
            <wire x2="992" y1="3472" y2="3536" x1="992" />
            <wire x2="992" y1="3536" y2="3600" x1="992" />
            <wire x2="992" y1="3600" y2="3664" x1="992" />
            <wire x2="992" y1="3664" y2="3728" x1="992" />
            <wire x2="992" y1="3728" y2="3792" x1="992" />
            <wire x2="992" y1="3792" y2="4384" x1="992" />
            <wire x2="3024" y1="32" y2="32" x1="992" />
            <wire x2="3024" y1="32" y2="144" x1="3024" />
            <wire x2="3056" y1="144" y2="144" x1="3024" />
        </branch>
        <bustap x2="1088" y1="3344" y2="3344" x1="992" />
        <instance x="1120" y="3376" name="XLXI_13" orien="R0" />
        <instance x="1120" y="3440" name="XLXI_14" orien="R0" />
        <instance x="1120" y="3504" name="XLXI_15" orien="R0" />
        <instance x="1120" y="3568" name="XLXI_16" orien="R0" />
        <instance x="1120" y="3632" name="XLXI_17" orien="R0" />
        <instance x="1120" y="3696" name="XLXI_18" orien="R0" />
        <bustap x2="1088" y1="3408" y2="3408" x1="992" />
        <bustap x2="1088" y1="3472" y2="3472" x1="992" />
        <bustap x2="1088" y1="3536" y2="3536" x1="992" />
        <bustap x2="1088" y1="3600" y2="3600" x1="992" />
        <bustap x2="1088" y1="3664" y2="3664" x1="992" />
        <bustap x2="1088" y1="3728" y2="3728" x1="992" />
        <branch name="a(0)">
            <wire x2="1120" y1="3344" y2="3344" x1="1088" />
        </branch>
        <branch name="a(1)">
            <wire x2="1120" y1="3408" y2="3408" x1="1088" />
        </branch>
        <branch name="a(2)">
            <wire x2="1120" y1="3472" y2="3472" x1="1088" />
        </branch>
        <branch name="a(3)">
            <wire x2="1120" y1="3536" y2="3536" x1="1088" />
        </branch>
        <branch name="a(4)">
            <wire x2="1120" y1="3600" y2="3600" x1="1088" />
        </branch>
        <branch name="a(5)">
            <wire x2="1120" y1="3664" y2="3664" x1="1088" />
        </branch>
        <branch name="a(6)">
            <wire x2="1120" y1="3728" y2="3728" x1="1088" />
        </branch>
        <bustap x2="2048" y1="3728" y2="3728" x1="2144" />
        <bustap x2="2048" y1="3664" y2="3664" x1="2144" />
        <bustap x2="2048" y1="3600" y2="3600" x1="2144" />
        <bustap x2="2048" y1="3536" y2="3536" x1="2144" />
        <bustap x2="2048" y1="3472" y2="3472" x1="2144" />
        <bustap x2="2048" y1="3408" y2="3408" x1="2144" />
        <bustap x2="2048" y1="3344" y2="3344" x1="2144" />
        <branch name="t(7)">
            <wire x2="2048" y1="3728" y2="3728" x1="1344" />
        </branch>
        <branch name="t(6)">
            <wire x2="2048" y1="3664" y2="3664" x1="1344" />
        </branch>
        <branch name="t(5)">
            <wire x2="2048" y1="3600" y2="3600" x1="1344" />
        </branch>
        <branch name="t(4)">
            <wire x2="2048" y1="3536" y2="3536" x1="1344" />
        </branch>
        <branch name="t(3)">
            <wire x2="2048" y1="3472" y2="3472" x1="1344" />
        </branch>
        <branch name="t(2)">
            <wire x2="2048" y1="3408" y2="3408" x1="1344" />
        </branch>
        <branch name="t(1)">
            <wire x2="2048" y1="3344" y2="3344" x1="1344" />
        </branch>
        <branch name="x(7:0)">
            <wire x2="2688" y1="144" y2="144" x1="2432" />
            <wire x2="2720" y1="144" y2="144" x1="2688" />
            <wire x2="2752" y1="144" y2="144" x1="2720" />
            <wire x2="2752" y1="144" y2="4448" x1="2752" />
            <wire x2="4016" y1="4448" y2="4448" x1="2752" />
            <wire x2="4464" y1="4448" y2="4448" x1="4016" />
            <wire x2="5040" y1="4448" y2="4448" x1="4464" />
            <wire x2="2720" y1="1072" y2="1072" x1="2432" />
            <wire x2="2720" y1="1072" y2="2096" x1="2720" />
            <wire x2="2720" y1="2096" y2="4448" x1="2720" />
            <wire x2="2752" y1="4448" y2="4448" x1="2720" />
            <wire x2="2704" y1="2096" y2="2096" x1="2464" />
            <wire x2="2704" y1="2096" y2="4448" x1="2704" />
            <wire x2="2720" y1="4448" y2="4448" x1="2704" />
            <wire x2="2640" y1="2336" y2="2336" x1="2464" />
            <wire x2="2640" y1="2336" y2="4448" x1="2640" />
            <wire x2="2704" y1="4448" y2="4448" x1="2640" />
            <wire x2="2576" y1="3152" y2="3152" x1="2464" />
            <wire x2="2576" y1="3152" y2="4448" x1="2576" />
            <wire x2="2640" y1="4448" y2="4448" x1="2576" />
            <wire x2="2576" y1="4448" y2="4448" x1="2480" />
            <wire x2="4016" y1="144" y2="144" x1="3888" />
            <wire x2="4016" y1="144" y2="4448" x1="4016" />
            <wire x2="4576" y1="4160" y2="4160" x1="4464" />
            <wire x2="4464" y1="4160" y2="4448" x1="4464" />
        </branch>
        <branch name="t(7:0)">
            <wire x2="2240" y1="3152" y2="3152" x1="2144" />
            <wire x2="2144" y1="3152" y2="3280" x1="2144" />
            <wire x2="2144" y1="3280" y2="3344" x1="2144" />
            <wire x2="2144" y1="3344" y2="3408" x1="2144" />
            <wire x2="2144" y1="3408" y2="3472" x1="2144" />
            <wire x2="2144" y1="3472" y2="3536" x1="2144" />
            <wire x2="2144" y1="3536" y2="3600" x1="2144" />
            <wire x2="2144" y1="3600" y2="3664" x1="2144" />
            <wire x2="2144" y1="3664" y2="3728" x1="2144" />
            <wire x2="2144" y1="3728" y2="3744" x1="2144" />
        </branch>
        <instance x="2240" y="3184" name="XLXI_7" orien="R0" />
        <bustap x2="2048" y1="3280" y2="3280" x1="2144" />
        <instance x="1120" y="3312" name="XLXI_12" orien="R0" />
        <branch name="t(0)">
            <wire x2="2048" y1="3280" y2="3280" x1="1344" />
        </branch>
        <instance x="1136" y="4912" name="XLXI_42" orien="R0" />
        <branch name="op(2:0)">
            <wire x2="480" y1="4752" y2="4816" x1="480" />
            <wire x2="480" y1="4816" y2="4880" x1="480" />
            <wire x2="480" y1="4880" y2="4944" x1="480" />
        </branch>
        <bustap x2="576" y1="4816" y2="4816" x1="480" />
        <bustap x2="576" y1="4880" y2="4880" x1="480" />
        <bustap x2="576" y1="4944" y2="4944" x1="480" />
        <branch name="op(0)">
            <wire x2="640" y1="4816" y2="4816" x1="576" />
        </branch>
        <branch name="op(1)">
            <wire x2="640" y1="4880" y2="4880" x1="576" />
        </branch>
        <branch name="op(2)">
            <wire x2="640" y1="4944" y2="4944" x1="576" />
        </branch>
        <instance x="496" y="5264" name="XLXI_43" orien="R0" />
        <branch name="XLXN_89">
            <wire x2="560" y1="5264" y2="5328" x1="560" />
            <wire x2="624" y1="5328" y2="5328" x1="560" />
            <wire x2="624" y1="5264" y2="5328" x1="624" />
            <wire x2="640" y1="5264" y2="5264" x1="624" />
        </branch>
        <instance x="2576" y="4848" name="XLXI_44" orien="R0" />
        <instance x="2576" y="4992" name="XLXI_45" orien="R0" />
        <branch name="XLXN_91">
            <wire x2="2480" y1="4640" y2="4640" x1="1744" />
            <wire x2="2480" y1="4640" y2="4784" x1="2480" />
            <wire x2="2576" y1="4784" y2="4784" x1="2480" />
        </branch>
        <bustap x2="1088" y1="3792" y2="3792" x1="992" />
        <instance x="1120" y="3760" name="XLXI_19" orien="R0" />
        <instance x="1120" y="3824" name="XLXI_47" orien="R0" />
        <branch name="a(7)">
            <wire x2="1120" y1="3792" y2="3792" x1="1088" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="2080" y1="3792" y2="3792" x1="1344" />
            <wire x2="2080" y1="3792" y2="4928" x1="2080" />
            <wire x2="2576" y1="4928" y2="4928" x1="2080" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="2160" y1="4816" y2="4816" x1="1360" />
            <wire x2="2256" y1="4384" y2="4384" x1="2160" />
            <wire x2="2160" y1="4384" y2="4816" x1="2160" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="2192" y1="4880" y2="4880" x1="1360" />
            <wire x2="2192" y1="3088" y2="4880" x1="2192" />
            <wire x2="2240" y1="3088" y2="3088" x1="2192" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="1120" y1="4880" y2="4880" x1="1024" />
            <wire x2="1136" y1="4880" y2="4880" x1="1120" />
            <wire x2="1120" y1="4848" y2="4880" x1="1120" />
            <wire x2="2368" y1="4848" y2="4848" x1="1120" />
            <wire x2="2368" y1="4816" y2="4848" x1="2368" />
            <wire x2="2576" y1="4816" y2="4816" x1="2368" />
            <wire x2="2576" y1="4816" y2="4864" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="816" y="4384" name="a(7:0)" orien="R180" />
        <iomarker fontsize="28" x="816" y="4256" name="C_in" orien="R180" />
        <iomarker fontsize="28" x="816" y="4512" name="b(7:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="4752" name="op(2:0)" orien="R270" />
        <instance x="1168" y="3248" name="XLXI_40" orien="R0" />
        <bustap x2="1088" y1="2960" y2="2960" x1="992" />
        <bustap x2="1088" y1="2896" y2="2896" x1="992" />
        <bustap x2="1088" y1="2832" y2="2832" x1="992" />
        <bustap x2="1088" y1="2768" y2="2768" x1="992" />
        <bustap x2="1088" y1="2704" y2="2704" x1="992" />
        <bustap x2="1088" y1="2640" y2="2640" x1="992" />
        <bustap x2="1088" y1="2576" y2="2576" x1="992" />
        <bustap x2="1088" y1="2512" y2="2512" x1="992" />
        <instance x="1120" y="2544" name="XLXI_89" orien="R0" />
        <instance x="1120" y="2608" name="XLXI_90" orien="R0" />
        <instance x="1120" y="2672" name="XLXI_91" orien="R0" />
        <instance x="1120" y="2736" name="XLXI_92" orien="R0" />
        <instance x="1120" y="2800" name="XLXI_93" orien="R0" />
        <instance x="1120" y="2864" name="XLXI_94" orien="R0" />
        <instance x="1120" y="2928" name="XLXI_95" orien="R0" />
        <instance x="1120" y="2992" name="XLXI_96" orien="R0" />
        <branch name="a(6)">
            <wire x2="1120" y1="2896" y2="2896" x1="1088" />
        </branch>
        <branch name="a(5)">
            <wire x2="1120" y1="2832" y2="2832" x1="1088" />
        </branch>
        <branch name="a(4)">
            <wire x2="1120" y1="2768" y2="2768" x1="1088" />
        </branch>
        <branch name="a(3)">
            <wire x2="1120" y1="2704" y2="2704" x1="1088" />
        </branch>
        <branch name="a(2)">
            <wire x2="1120" y1="2640" y2="2640" x1="1088" />
        </branch>
        <branch name="a(1)">
            <wire x2="1120" y1="2576" y2="2576" x1="1088" />
        </branch>
        <branch name="a(0)">
            <wire x2="1120" y1="2512" y2="2512" x1="1088" />
        </branch>
        <instance x="2240" y="2368" name="XLXI_97" orien="R0" />
        <branch name="ls(7:0)">
            <wire x2="2240" y1="2336" y2="2336" x1="2080" />
            <wire x2="2080" y1="2336" y2="2576" x1="2080" />
            <wire x2="2080" y1="2576" y2="2640" x1="2080" />
            <wire x2="2080" y1="2640" y2="2704" x1="2080" />
            <wire x2="2080" y1="2704" y2="2768" x1="2080" />
            <wire x2="2080" y1="2768" y2="2832" x1="2080" />
            <wire x2="2080" y1="2832" y2="2896" x1="2080" />
            <wire x2="2080" y1="2896" y2="2960" x1="2080" />
            <wire x2="2080" y1="2960" y2="3024" x1="2080" />
        </branch>
        <branch name="XLXN_179">
            <wire x2="1120" y1="3024" y2="3120" x1="1120" />
            <wire x2="1120" y1="3120" y2="3280" x1="1120" />
            <wire x2="1232" y1="3120" y2="3120" x1="1120" />
        </branch>
        <branch name="a(7)">
            <wire x2="1120" y1="2960" y2="2960" x1="1088" />
        </branch>
        <bustap x2="1984" y1="3024" y2="3024" x1="2080" />
        <bustap x2="1984" y1="2960" y2="2960" x1="2080" />
        <bustap x2="1984" y1="2896" y2="2896" x1="2080" />
        <bustap x2="1984" y1="2832" y2="2832" x1="2080" />
        <bustap x2="1984" y1="2768" y2="2768" x1="2080" />
        <bustap x2="1984" y1="2704" y2="2704" x1="2080" />
        <bustap x2="1984" y1="2640" y2="2640" x1="2080" />
        <bustap x2="1984" y1="2576" y2="2576" x1="2080" />
        <branch name="ls(6)">
            <wire x2="1984" y1="2960" y2="2960" x1="1344" />
        </branch>
        <branch name="ls(5)">
            <wire x2="1984" y1="2896" y2="2896" x1="1344" />
        </branch>
        <branch name="ls(4)">
            <wire x2="1984" y1="2832" y2="2832" x1="1344" />
        </branch>
        <branch name="ls(3)">
            <wire x2="1984" y1="2768" y2="2768" x1="1344" />
        </branch>
        <branch name="ls(2)">
            <wire x2="1984" y1="2704" y2="2704" x1="1344" />
        </branch>
        <branch name="ls(1)">
            <wire x2="1984" y1="2640" y2="2640" x1="1344" />
        </branch>
        <instance x="1120" y="3056" name="XLXI_98" orien="R0" />
        <branch name="ls(7)">
            <wire x2="1984" y1="3024" y2="3024" x1="1344" />
        </branch>
        <branch name="ls(0)">
            <wire x2="1984" y1="2576" y2="2576" x1="1344" />
        </branch>
        <instance x="2576" y="5136" name="XLXI_99" orien="R0" />
        <branch name="XLXN_191">
            <wire x2="1920" y1="2512" y2="2512" x1="1344" />
            <wire x2="1920" y1="2512" y2="5072" x1="1920" />
            <wire x2="2576" y1="5072" y2="5072" x1="1920" />
        </branch>
        <instance x="1136" y="4976" name="XLXI_100" orien="R0" />
        <branch name="XLXN_192">
            <wire x2="1120" y1="4944" y2="4944" x1="1024" />
            <wire x2="1136" y1="4944" y2="4944" x1="1120" />
            <wire x2="1120" y1="4912" y2="4944" x1="1120" />
            <wire x2="1840" y1="4912" y2="4912" x1="1120" />
            <wire x2="1840" y1="4912" y2="5008" x1="1840" />
            <wire x2="2576" y1="5008" y2="5008" x1="1840" />
        </branch>
        <branch name="XLXN_193">
            <wire x2="1888" y1="4944" y2="4944" x1="1360" />
            <wire x2="1888" y1="2272" y2="4944" x1="1888" />
            <wire x2="2240" y1="2272" y2="2272" x1="1888" />
        </branch>
        <branch name="C_out">
            <wire x2="3296" y1="4896" y2="4896" x1="3200" />
        </branch>
        <instance x="2944" y="5024" name="XLXI_101" orien="R0" />
        <iomarker fontsize="28" x="3296" y="4896" name="C_out" orien="R0" />
        <branch name="XLXN_199">
            <wire x2="2944" y1="4752" y2="4752" x1="2832" />
            <wire x2="2944" y1="4752" y2="4832" x1="2944" />
        </branch>
        <branch name="XLXN_201">
            <wire x2="2944" y1="5040" y2="5040" x1="2832" />
            <wire x2="2944" y1="4960" y2="5040" x1="2944" />
        </branch>
        <branch name="XLXN_202">
            <wire x2="2944" y1="4896" y2="4896" x1="2832" />
        </branch>
        <instance x="1488" y="2128" name="XLXI_102" orien="R0" />
        <branch name="XLXN_204(7:0)">
            <wire x2="2240" y1="2096" y2="2096" x1="1712" />
        </branch>
        <instance x="2240" y="2128" name="XLXI_111" orien="R0" />
        <instance x="1488" y="2016" name="XLXI_114" orien="R0" />
        <instance x="1488" y="1920" name="XLXI_115" orien="R0" />
        <instance x="1488" y="1824" name="XLXI_116" orien="R0" />
        <instance x="1488" y="1728" name="XLXI_117" orien="R0" />
        <instance x="1488" y="1632" name="XLXI_118" orien="R0" />
        <instance x="1488" y="1536" name="XLXI_119" orien="R0" />
        <instance x="1488" y="1440" name="XLXI_120" orien="R0" />
        <instance x="1488" y="1344" name="XLXI_121" orien="R0" />
        <bustap x2="1088" y1="1952" y2="1952" x1="992" />
        <bustap x2="1088" y1="1856" y2="1856" x1="992" />
        <bustap x2="1088" y1="1760" y2="1760" x1="992" />
        <bustap x2="1088" y1="1664" y2="1664" x1="992" />
        <bustap x2="1088" y1="1568" y2="1568" x1="992" />
        <bustap x2="1088" y1="1472" y2="1472" x1="992" />
        <bustap x2="1088" y1="1376" y2="1376" x1="992" />
        <bustap x2="1088" y1="1280" y2="1280" x1="992" />
        <branch name="a(7)">
            <wire x2="1488" y1="1952" y2="1952" x1="1088" />
        </branch>
        <branch name="a(6)">
            <wire x2="1488" y1="1856" y2="1856" x1="1088" />
        </branch>
        <branch name="a(5)">
            <wire x2="1488" y1="1760" y2="1760" x1="1088" />
        </branch>
        <branch name="a(4)">
            <wire x2="1488" y1="1664" y2="1664" x1="1088" />
        </branch>
        <branch name="a(3)">
            <wire x2="1488" y1="1568" y2="1568" x1="1088" />
        </branch>
        <branch name="a(1)">
            <wire x2="1488" y1="1376" y2="1376" x1="1088" />
        </branch>
        <branch name="a(0)">
            <wire x2="1488" y1="1280" y2="1280" x1="1088" />
        </branch>
        <bustap x2="976" y1="1888" y2="1888" x1="880" />
        <bustap x2="976" y1="1792" y2="1792" x1="880" />
        <bustap x2="976" y1="1696" y2="1696" x1="880" />
        <bustap x2="976" y1="1600" y2="1600" x1="880" />
        <bustap x2="976" y1="1504" y2="1504" x1="880" />
        <bustap x2="976" y1="1408" y2="1408" x1="880" />
        <bustap x2="976" y1="1312" y2="1312" x1="880" />
        <bustap x2="976" y1="1216" y2="1216" x1="880" />
        <branch name="b(7)">
            <wire x2="1488" y1="1888" y2="1888" x1="976" />
        </branch>
        <branch name="b(6)">
            <wire x2="1488" y1="1792" y2="1792" x1="976" />
        </branch>
        <branch name="b(5)">
            <wire x2="1488" y1="1696" y2="1696" x1="976" />
        </branch>
        <branch name="b(4)">
            <wire x2="1488" y1="1600" y2="1600" x1="976" />
        </branch>
        <branch name="b(3)">
            <wire x2="1488" y1="1504" y2="1504" x1="976" />
        </branch>
        <branch name="b(0)">
            <wire x2="1488" y1="1216" y2="1216" x1="976" />
        </branch>
        <instance x="1136" y="5040" name="XLXI_122" orien="R0" />
        <instance x="1136" y="5104" name="XLXI_123" orien="R0" />
        <instance x="1136" y="5168" name="XLXI_124" orien="R0" />
        <instance x="1136" y="5232" name="XLXI_125" orien="R0" />
        <instance x="1136" y="5296" name="XLXI_126" orien="R0" />
        <branch name="XLXN_223">
            <wire x2="1136" y1="5008" y2="5008" x1="1024" />
        </branch>
        <branch name="XLXN_224">
            <wire x2="1136" y1="5072" y2="5072" x1="1024" />
        </branch>
        <branch name="XLXN_225">
            <wire x2="1136" y1="5136" y2="5136" x1="1024" />
        </branch>
        <branch name="XLXN_226">
            <wire x2="1136" y1="5200" y2="5200" x1="1024" />
        </branch>
        <branch name="XLXN_227">
            <wire x2="1136" y1="5264" y2="5264" x1="1024" />
        </branch>
        <branch name="XLXN_228">
            <wire x2="1824" y1="5008" y2="5008" x1="1360" />
            <wire x2="1824" y1="2032" y2="5008" x1="1824" />
            <wire x2="2240" y1="2032" y2="2032" x1="1824" />
        </branch>
        <instance x="2208" y="1104" name="XLXI_112" orien="R0" />
        <branch name="land(7:0)">
            <wire x2="2208" y1="1072" y2="1072" x1="2112" />
            <wire x2="2112" y1="1072" y2="1248" x1="2112" />
            <wire x2="2112" y1="1248" y2="1344" x1="2112" />
            <wire x2="2112" y1="1344" y2="1440" x1="2112" />
            <wire x2="2112" y1="1440" y2="1536" x1="2112" />
            <wire x2="2112" y1="1536" y2="1632" x1="2112" />
            <wire x2="2112" y1="1632" y2="1728" x1="2112" />
            <wire x2="2112" y1="1728" y2="1824" x1="2112" />
            <wire x2="2112" y1="1824" y2="1920" x1="2112" />
        </branch>
        <bustap x2="2016" y1="1920" y2="1920" x1="2112" />
        <bustap x2="2016" y1="1824" y2="1824" x1="2112" />
        <bustap x2="2016" y1="1728" y2="1728" x1="2112" />
        <bustap x2="2016" y1="1632" y2="1632" x1="2112" />
        <bustap x2="2016" y1="1536" y2="1536" x1="2112" />
        <bustap x2="2016" y1="1440" y2="1440" x1="2112" />
        <bustap x2="2016" y1="1344" y2="1344" x1="2112" />
        <bustap x2="2016" y1="1248" y2="1248" x1="2112" />
        <branch name="land(0)">
            <wire x2="2016" y1="1248" y2="1248" x1="1744" />
        </branch>
        <branch name="land(1)">
            <wire x2="2016" y1="1344" y2="1344" x1="1744" />
        </branch>
        <branch name="land(2)">
            <wire x2="2016" y1="1440" y2="1440" x1="1744" />
        </branch>
        <branch name="land(3)">
            <wire x2="2016" y1="1536" y2="1536" x1="1744" />
        </branch>
        <branch name="land(4)">
            <wire x2="2016" y1="1632" y2="1632" x1="1744" />
        </branch>
        <branch name="land(6)">
            <wire x2="2016" y1="1824" y2="1824" x1="1744" />
        </branch>
        <branch name="land(7)">
            <wire x2="2016" y1="1920" y2="1920" x1="1744" />
        </branch>
        <branch name="a(2)">
            <wire x2="1488" y1="1472" y2="1472" x1="1088" />
        </branch>
        <branch name="land(5)">
            <wire x2="2016" y1="1728" y2="1728" x1="1744" />
        </branch>
        <branch name="b(7:0)">
            <wire x2="880" y1="4512" y2="4512" x1="816" />
            <wire x2="1296" y1="4512" y2="4512" x1="880" />
            <wire x2="880" y1="16" y2="64" x1="880" />
            <wire x2="880" y1="64" y2="80" x1="880" />
            <wire x2="880" y1="80" y2="176" x1="880" />
            <wire x2="880" y1="176" y2="272" x1="880" />
            <wire x2="880" y1="272" y2="368" x1="880" />
            <wire x2="880" y1="368" y2="464" x1="880" />
            <wire x2="880" y1="464" y2="560" x1="880" />
            <wire x2="880" y1="560" y2="656" x1="880" />
            <wire x2="880" y1="656" y2="752" x1="880" />
            <wire x2="880" y1="752" y2="848" x1="880" />
            <wire x2="880" y1="848" y2="1216" x1="880" />
            <wire x2="880" y1="1216" y2="1312" x1="880" />
            <wire x2="880" y1="1312" y2="1408" x1="880" />
            <wire x2="880" y1="1408" y2="1504" x1="880" />
            <wire x2="880" y1="1504" y2="1600" x1="880" />
            <wire x2="880" y1="1600" y2="1696" x1="880" />
            <wire x2="880" y1="1696" y2="1792" x1="880" />
            <wire x2="880" y1="1792" y2="1888" x1="880" />
            <wire x2="880" y1="1888" y2="4512" x1="880" />
            <wire x2="2960" y1="16" y2="16" x1="880" />
            <wire x2="2960" y1="16" y2="208" x1="2960" />
            <wire x2="3056" y1="208" y2="208" x1="2960" />
        </branch>
        <branch name="b(2)">
            <wire x2="1488" y1="1408" y2="1408" x1="976" />
        </branch>
        <branch name="b(1)">
            <wire x2="1488" y1="1312" y2="1312" x1="976" />
        </branch>
        <branch name="XLXN_239">
            <wire x2="1808" y1="5072" y2="5072" x1="1360" />
            <wire x2="1808" y1="1008" y2="5072" x1="1808" />
            <wire x2="2208" y1="1008" y2="1008" x1="1808" />
        </branch>
        <instance x="1504" y="976" name="XLXI_127" orien="R0" />
        <instance x="1504" y="880" name="XLXI_128" orien="R0" />
        <instance x="1504" y="784" name="XLXI_129" orien="R0" />
        <instance x="1504" y="688" name="XLXI_130" orien="R0" />
        <instance x="1504" y="592" name="XLXI_131" orien="R0" />
        <instance x="1504" y="496" name="XLXI_132" orien="R0" />
        <instance x="1504" y="400" name="XLXI_133" orien="R0" />
        <instance x="1504" y="304" name="XLXI_134" orien="R0" />
        <bustap x2="1088" y1="912" y2="912" x1="992" />
        <bustap x2="1088" y1="816" y2="816" x1="992" />
        <bustap x2="1088" y1="720" y2="720" x1="992" />
        <bustap x2="1088" y1="624" y2="624" x1="992" />
        <bustap x2="1088" y1="528" y2="528" x1="992" />
        <bustap x2="1088" y1="432" y2="432" x1="992" />
        <bustap x2="1088" y1="336" y2="336" x1="992" />
        <bustap x2="1088" y1="240" y2="240" x1="992" />
        <bustap x2="976" y1="848" y2="848" x1="880" />
        <bustap x2="976" y1="752" y2="752" x1="880" />
        <bustap x2="976" y1="656" y2="656" x1="880" />
        <bustap x2="976" y1="560" y2="560" x1="880" />
        <bustap x2="976" y1="464" y2="464" x1="880" />
        <bustap x2="976" y1="368" y2="368" x1="880" />
        <bustap x2="976" y1="272" y2="272" x1="880" />
        <bustap x2="976" y1="176" y2="176" x1="880" />
        <branch name="a(7)">
            <wire x2="1504" y1="912" y2="912" x1="1088" />
        </branch>
        <branch name="a(6)">
            <wire x2="1504" y1="816" y2="816" x1="1088" />
        </branch>
        <branch name="a(5)">
            <wire x2="1504" y1="720" y2="720" x1="1088" />
        </branch>
        <branch name="a(4)">
            <wire x2="1504" y1="624" y2="624" x1="1088" />
        </branch>
        <branch name="a(3)">
            <wire x2="1504" y1="528" y2="528" x1="1088" />
        </branch>
        <branch name="a(2)">
            <wire x2="1504" y1="432" y2="432" x1="1088" />
        </branch>
        <branch name="a(1)">
            <wire x2="1504" y1="336" y2="336" x1="1088" />
        </branch>
        <branch name="a(0)">
            <wire x2="1504" y1="240" y2="240" x1="1088" />
        </branch>
        <branch name="b(7)">
            <wire x2="1504" y1="848" y2="848" x1="976" />
        </branch>
        <branch name="b(6)">
            <wire x2="1504" y1="752" y2="752" x1="976" />
        </branch>
        <branch name="b(5)">
            <wire x2="1504" y1="656" y2="656" x1="976" />
        </branch>
        <branch name="b(4)">
            <wire x2="1504" y1="560" y2="560" x1="976" />
        </branch>
        <branch name="b(3)">
            <wire x2="1504" y1="464" y2="464" x1="976" />
        </branch>
        <branch name="b(2)">
            <wire x2="1504" y1="368" y2="368" x1="976" />
        </branch>
        <branch name="b(1)">
            <wire x2="1504" y1="272" y2="272" x1="976" />
        </branch>
        <branch name="b(0)">
            <wire x2="1504" y1="176" y2="176" x1="976" />
        </branch>
        <instance x="2208" y="176" name="XLXI_113" orien="R0" />
        <branch name="lor(7:0)">
            <wire x2="2208" y1="144" y2="144" x1="2112" />
            <wire x2="2112" y1="144" y2="192" x1="2112" />
            <wire x2="2112" y1="192" y2="208" x1="2112" />
            <wire x2="2112" y1="208" y2="304" x1="2112" />
            <wire x2="2112" y1="304" y2="400" x1="2112" />
            <wire x2="2112" y1="400" y2="496" x1="2112" />
            <wire x2="2112" y1="496" y2="592" x1="2112" />
            <wire x2="2112" y1="592" y2="688" x1="2112" />
            <wire x2="2112" y1="688" y2="784" x1="2112" />
            <wire x2="2112" y1="784" y2="880" x1="2112" />
            <wire x2="2112" y1="880" y2="928" x1="2112" />
        </branch>
        <bustap x2="2016" y1="880" y2="880" x1="2112" />
        <bustap x2="2016" y1="784" y2="784" x1="2112" />
        <bustap x2="2016" y1="688" y2="688" x1="2112" />
        <bustap x2="2016" y1="592" y2="592" x1="2112" />
        <bustap x2="2016" y1="496" y2="496" x1="2112" />
        <bustap x2="2016" y1="400" y2="400" x1="2112" />
        <bustap x2="2016" y1="304" y2="304" x1="2112" />
        <bustap x2="2016" y1="208" y2="208" x1="2112" />
        <branch name="lor(0)">
            <wire x2="2016" y1="208" y2="208" x1="1760" />
        </branch>
        <branch name="lor(2)">
            <wire x2="2016" y1="400" y2="400" x1="1760" />
        </branch>
        <branch name="lor(3)">
            <wire x2="2016" y1="496" y2="496" x1="1760" />
        </branch>
        <branch name="lor(4)">
            <wire x2="2016" y1="592" y2="592" x1="1760" />
        </branch>
        <branch name="lor(5)">
            <wire x2="2016" y1="688" y2="688" x1="1760" />
        </branch>
        <branch name="lor(6)">
            <wire x2="2016" y1="784" y2="784" x1="1760" />
        </branch>
        <branch name="lor(7)">
            <wire x2="2016" y1="880" y2="880" x1="1760" />
        </branch>
        <branch name="lor(1)">
            <wire x2="2016" y1="304" y2="304" x1="1760" />
        </branch>
        <branch name="XLXN_269">
            <wire x2="1792" y1="5136" y2="5136" x1="1360" />
            <wire x2="1792" y1="80" y2="5136" x1="1792" />
            <wire x2="2208" y1="80" y2="80" x1="1792" />
        </branch>
        <instance x="3056" y="304" name="XLXI_135" orien="R0">
        </instance>
        <branch name="XLXN_270(7:0)">
            <wire x2="3520" y1="144" y2="144" x1="3440" />
            <wire x2="3664" y1="144" y2="144" x1="3520" />
        </branch>
        <instance x="3664" y="176" name="XLXI_136" orien="R0" />
        <iomarker fontsize="28" x="5040" y="4448" name="x(7:0)" orien="R0" />
        <branch name="XLXN_272">
            <wire x2="1776" y1="5200" y2="5200" x1="1360" />
            <wire x2="1776" y1="48" y2="5200" x1="1776" />
            <wire x2="3600" y1="48" y2="48" x1="1776" />
            <wire x2="3600" y1="48" y2="80" x1="3600" />
            <wire x2="3664" y1="80" y2="80" x1="3600" />
        </branch>
        <branch name="eq">
            <wire x2="4448" y1="208" y2="208" x1="3440" />
        </branch>
        <branch name="gt">
            <wire x2="4448" y1="272" y2="272" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="4448" y="208" name="eq" orien="R0" />
        <iomarker fontsize="28" x="4448" y="272" name="gt" orien="R0" />
        <instance x="4576" y="4192" name="XLXI_137" orien="R0">
        </instance>
        <branch name="z">
            <wire x2="4976" y1="4160" y2="4160" x1="4960" />
            <wire x2="5104" y1="4160" y2="4160" x1="4976" />
        </branch>
        <iomarker fontsize="28" x="5104" y="4160" name="z" orien="R0" />
    </sheet>
</drawing>