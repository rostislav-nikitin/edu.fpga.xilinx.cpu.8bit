--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cpu_output_muxer.vhf
-- /___/   /\     Timestamp : 04/07/2022 05:27:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_output_muxer.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_output_muxer.sch
--Design Name: cpu_output_muxer
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M16_1E_HXILINX_cpu_output_muxer -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M16_1E_HXILINX_cpu_output_muxer is
  
port(
    O    : out std_logic;

    D0   : in std_logic;
    D1   : in std_logic;
    D2   : in std_logic;
    D3   : in std_logic;
    D4   : in std_logic;
    D5   : in std_logic;
    D6   : in std_logic;
    D7   : in std_logic;
    D8   : in std_logic;
    D9   : in std_logic;
    D10  : in std_logic;
    D11  : in std_logic;
    D12  : in std_logic;
    D13  : in std_logic;
    D14  : in std_logic;
    D15  : in std_logic;
    E    : in std_logic;
    S0   : in std_logic;
    S1   : in std_logic;
    S2   : in std_logic;
    S3   : in std_logic
  );
end M16_1E_HXILINX_cpu_output_muxer;

architecture M16_1E_HXILINX_cpu_output_muxer_V of M16_1E_HXILINX_cpu_output_muxer is
begin
  process (D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, E, S0, S1, S2, S3)
  variable sel : std_logic_vector(3 downto 0);
  begin
    sel := S3&S2&S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "0000" => O <= D0;
      when "0001" => O <= D1;
      when "0010" => O <= D2;
      when "0011" => O <= D3;
      when "0100" => O <= D4;
      when "0101" => O <= D5;
      when "0110" => O <= D6;
      when "0111" => O <= D7;
      when "1000" => O <= D8;
      when "1001" => O <= D9;
      when "1010" => O <= D10;
      when "1011" => O <= D11;
      when "1100" => O <= D12;
      when "1101" => O <= D13;
      when "1110" => O <= D14;
      when "1111" => O <= D15;
      when others => NULL;
      end case;
    end if;
    end process; 
end M16_1E_HXILINX_cpu_output_muxer_V;
----- CELL AND8_HXILINX_cpu_output_muxer -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND8_HXILINX_cpu_output_muxer is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic;
    I7  : in std_logic
  );
end AND8_HXILINX_cpu_output_muxer;

architecture AND8_HXILINX_cpu_output_muxer_V of AND8_HXILINX_cpu_output_muxer is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5 and I6 and I7;
end AND8_HXILINX_cpu_output_muxer_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bus_muxer_MUSER_cpu_output_muxer is
   port ( a     : in    std_logic_vector (3 downto 0); 
          dev0  : in    std_logic_vector (7 downto 0); 
          dev1  : in    std_logic_vector (7 downto 0); 
          dev2  : in    std_logic_vector (7 downto 0); 
          dev3  : in    std_logic_vector (7 downto 0); 
          dev4  : in    std_logic_vector (7 downto 0); 
          dev5  : in    std_logic_vector (7 downto 0); 
          dev6  : in    std_logic_vector (7 downto 0); 
          dev7  : in    std_logic_vector (7 downto 0); 
          dev8  : in    std_logic_vector (7 downto 0); 
          dev9  : in    std_logic_vector (7 downto 0); 
          dev10 : in    std_logic_vector (7 downto 0); 
          dev11 : in    std_logic_vector (7 downto 0); 
          dev12 : in    std_logic_vector (7 downto 0); 
          dev13 : in    std_logic_vector (7 downto 0); 
          dev14 : in    std_logic_vector (7 downto 0); 
          dev15 : in    std_logic_vector (7 downto 0); 
          e     : in    std_logic; 
          o     : out   std_logic_vector (7 downto 0));
end bus_muxer_MUSER_cpu_output_muxer;

architecture BEHAVIORAL of bus_muxer_MUSER_cpu_output_muxer is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal o0       : std_logic;
   signal o1       : std_logic;
   signal o2       : std_logic;
   signal o3       : std_logic;
   signal o4       : std_logic;
   signal o5       : std_logic;
   signal o6       : std_logic;
   signal o7       : std_logic;
   signal XLXN_54  : std_logic;
   signal XLXN_55  : std_logic;
   signal XLXN_56  : std_logic;
   signal XLXN_57  : std_logic;
   signal XLXN_58  : std_logic;
   signal XLXN_59  : std_logic;
   signal XLXN_60  : std_logic;
   signal XLXN_61  : std_logic;
   signal XLXN_70  : std_logic;
   signal XLXN_71  : std_logic;
   signal XLXN_72  : std_logic;
   signal XLXN_73  : std_logic;
   signal XLXN_74  : std_logic;
   signal XLXN_75  : std_logic;
   signal XLXN_76  : std_logic;
   signal XLXN_77  : std_logic;
   signal XLXN_86  : std_logic;
   signal XLXN_87  : std_logic;
   signal XLXN_88  : std_logic;
   signal XLXN_89  : std_logic;
   signal XLXN_90  : std_logic;
   signal XLXN_91  : std_logic;
   signal XLXN_92  : std_logic;
   signal XLXN_93  : std_logic;
   signal XLXN_102 : std_logic;
   signal XLXN_103 : std_logic;
   signal XLXN_104 : std_logic;
   signal XLXN_105 : std_logic;
   signal XLXN_106 : std_logic;
   signal XLXN_107 : std_logic;
   signal XLXN_108 : std_logic;
   signal XLXN_109 : std_logic;
   signal XLXN_118 : std_logic;
   signal XLXN_119 : std_logic;
   signal XLXN_120 : std_logic;
   signal XLXN_121 : std_logic;
   signal XLXN_122 : std_logic;
   signal XLXN_123 : std_logic;
   signal XLXN_124 : std_logic;
   signal XLXN_125 : std_logic;
   signal XLXN_134 : std_logic;
   signal XLXN_135 : std_logic;
   signal XLXN_136 : std_logic;
   signal XLXN_137 : std_logic;
   signal XLXN_138 : std_logic;
   signal XLXN_139 : std_logic;
   signal XLXN_140 : std_logic;
   signal XLXN_141 : std_logic;
   signal XLXN_150 : std_logic;
   signal XLXN_151 : std_logic;
   signal XLXN_152 : std_logic;
   signal XLXN_153 : std_logic;
   signal XLXN_154 : std_logic;
   signal XLXN_155 : std_logic;
   signal XLXN_156 : std_logic;
   signal XLXN_157 : std_logic;
   signal XLXN_166 : std_logic;
   signal XLXN_167 : std_logic;
   signal XLXN_168 : std_logic;
   signal XLXN_169 : std_logic;
   signal XLXN_170 : std_logic;
   signal XLXN_171 : std_logic;
   signal XLXN_172 : std_logic;
   signal XLXN_173 : std_logic;
   component M16_1E_HXILINX_cpu_output_muxer
      port ( D0  : in    std_logic; 
             D1  : in    std_logic; 
             D10 : in    std_logic; 
             D11 : in    std_logic; 
             D12 : in    std_logic; 
             D13 : in    std_logic; 
             D14 : in    std_logic; 
             D15 : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             D4  : in    std_logic; 
             D5  : in    std_logic; 
             D6  : in    std_logic; 
             D7  : in    std_logic; 
             D8  : in    std_logic; 
             D9  : in    std_logic; 
             E   : in    std_logic; 
             S0  : in    std_logic; 
             S1  : in    std_logic; 
             S2  : in    std_logic; 
             S3  : in    std_logic; 
             O   : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_35";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_34";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_36";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_37";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_38";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_39";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_40";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_41";
begin
   XLXI_1 : M16_1E_HXILINX_cpu_output_muxer
      port map (D0=>dev0(0),
                D1=>dev1(0),
                D2=>dev2(0),
                D3=>dev3(0),
                D4=>dev4(0),
                D5=>dev5(0),
                D6=>dev6(0),
                D7=>dev7(0),
                D8=>XLXN_54,
                D9=>XLXN_55,
                D10=>XLXN_56,
                D11=>XLXN_57,
                D12=>XLXN_58,
                D13=>XLXN_59,
                D14=>XLXN_60,
                D15=>XLXN_61,
                E=>e,
                S0=>a(0),
                S1=>a(1),
                S2=>a(2),
                S3=>a(3),
                O=>o0);
   
   XLXI_2 : M16_1E_HXILINX_cpu_output_muxer
      port map (D0=>dev0(4),
                D1=>dev1(4),
                D2=>dev2(4),
                D3=>dev3(4),
                D4=>dev4(4),
                D5=>dev5(4),
                D6=>dev6(4),
                D7=>dev7(4),
                D8=>XLXN_70,
                D9=>XLXN_71,
                D10=>XLXN_72,
                D11=>XLXN_73,
                D12=>XLXN_74,
                D13=>XLXN_75,
                D14=>XLXN_76,
                D15=>XLXN_77,
                E=>e,
                S0=>a(0),
                S1=>a(1),
                S2=>a(2),
                S3=>a(3),
                O=>o4);
   
   XLXI_12 : M16_1E_HXILINX_cpu_output_muxer
      port map (D0=>dev0(5),
                D1=>dev1(5),
                D2=>dev2(5),
                D3=>dev3(5),
                D4=>dev4(5),
                D5=>dev5(5),
                D6=>dev6(5),
                D7=>dev7(5),
                D8=>XLXN_102,
                D9=>XLXN_103,
                D10=>XLXN_104,
                D11=>XLXN_105,
                D12=>XLXN_106,
                D13=>XLXN_107,
                D14=>XLXN_108,
                D15=>XLXN_109,
                E=>e,
                S0=>a(0),
                S1=>a(1),
                S2=>a(2),
                S3=>a(3),
                O=>o5);
   
   XLXI_13 : M16_1E_HXILINX_cpu_output_muxer
      port map (D0=>dev0(1),
                D1=>dev1(1),
                D2=>dev2(1),
                D3=>dev3(1),
                D4=>dev4(1),
                D5=>dev5(1),
                D6=>dev6(1),
                D7=>dev7(1),
                D8=>XLXN_86,
                D9=>XLXN_87,
                D10=>XLXN_88,
                D11=>XLXN_89,
                D12=>XLXN_90,
                D13=>XLXN_91,
                D14=>XLXN_92,
                D15=>XLXN_93,
                E=>e,
                S0=>a(0),
                S1=>a(1),
                S2=>a(2),
                S3=>a(3),
                O=>o1);
   
   XLXI_14 : M16_1E_HXILINX_cpu_output_muxer
      port map (D0=>dev0(6),
                D1=>dev1(6),
                D2=>dev2(6),
                D3=>dev3(6),
                D4=>dev4(6),
                D5=>dev5(6),
                D6=>dev6(6),
                D7=>dev7(6),
                D8=>XLXN_134,
                D9=>XLXN_135,
                D10=>XLXN_136,
                D11=>XLXN_137,
                D12=>XLXN_138,
                D13=>XLXN_139,
                D14=>XLXN_140,
                D15=>XLXN_141,
                E=>e,
                S0=>a(0),
                S1=>a(1),
                S2=>a(2),
                S3=>a(3),
                O=>o6);
   
   XLXI_15 : M16_1E_HXILINX_cpu_output_muxer
      port map (D0=>dev0(2),
                D1=>dev1(2),
                D2=>dev2(2),
                D3=>dev3(2),
                D4=>dev4(2),
                D5=>dev5(2),
                D6=>dev6(2),
                D7=>dev7(2),
                D8=>XLXN_118,
                D9=>XLXN_119,
                D10=>XLXN_120,
                D11=>XLXN_121,
                D12=>XLXN_122,
                D13=>XLXN_123,
                D14=>XLXN_124,
                D15=>XLXN_125,
                E=>e,
                S0=>a(0),
                S1=>a(1),
                S2=>a(2),
                S3=>a(3),
                O=>o2);
   
   XLXI_16 : M16_1E_HXILINX_cpu_output_muxer
      port map (D0=>dev0(7),
                D1=>dev1(7),
                D2=>dev2(7),
                D3=>dev3(7),
                D4=>dev4(7),
                D5=>dev5(7),
                D6=>dev6(7),
                D7=>dev7(7),
                D8=>XLXN_166,
                D9=>XLXN_167,
                D10=>XLXN_168,
                D11=>XLXN_169,
                D12=>XLXN_170,
                D13=>XLXN_171,
                D14=>XLXN_172,
                D15=>XLXN_173,
                E=>e,
                S0=>a(0),
                S1=>a(1),
                S2=>a(2),
                S3=>a(3),
                O=>o7);
   
   XLXI_17 : M16_1E_HXILINX_cpu_output_muxer
      port map (D0=>dev0(3),
                D1=>dev1(3),
                D2=>dev2(3),
                D3=>dev3(3),
                D4=>dev4(3),
                D5=>dev5(3),
                D6=>dev6(3),
                D7=>dev7(3),
                D8=>XLXN_150,
                D9=>XLXN_151,
                D10=>XLXN_152,
                D11=>XLXN_153,
                D12=>XLXN_154,
                D13=>XLXN_155,
                D14=>XLXN_156,
                D15=>XLXN_157,
                E=>e,
                S0=>a(0),
                S1=>a(1),
                S2=>a(2),
                S3=>a(3),
                O=>o3);
   
   XLXI_18 : BUF
      port map (I=>o0,
                O=>o(0));
   
   XLXI_19 : BUF
      port map (I=>o1,
                O=>o(1));
   
   XLXI_20 : BUF
      port map (I=>o2,
                O=>o(2));
   
   XLXI_21 : BUF
      port map (I=>o3,
                O=>o(3));
   
   XLXI_22 : BUF
      port map (I=>o4,
                O=>o(4));
   
   XLXI_23 : BUF
      port map (I=>o5,
                O=>o(5));
   
   XLXI_24 : BUF
      port map (I=>o6,
                O=>o(6));
   
   XLXI_26 : BUF
      port map (I=>o7,
                O=>o(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity encoder8_3_MUSER_cpu_output_muxer is
   port ( i : in    std_logic_vector (7 downto 0); 
          g : out   std_logic; 
          o : out   std_logic_vector (2 downto 0));
end encoder8_3_MUSER_cpu_output_muxer;

architecture BEHAVIORAL of encoder8_3_MUSER_cpu_output_muxer is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   signal XLXN_4 : std_logic;
   signal XLXN_5 : std_logic;
   signal XLXN_6 : std_logic;
   signal XLXN_7 : std_logic;
   signal XLXN_8 : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component AND8_HXILINX_cpu_output_muxer
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_42";
begin
   XLXI_1 : OR4
      port map (I0=>i(1),
                I1=>i(3),
                I2=>i(5),
                I3=>i(7),
                O=>o(0));
   
   XLXI_2 : OR4
      port map (I0=>i(2),
                I1=>i(3),
                I2=>i(6),
                I3=>i(7),
                O=>o(1));
   
   XLXI_3 : OR4
      port map (I0=>i(4),
                I1=>i(5),
                I2=>i(6),
                I3=>i(7),
                O=>o(2));
   
   XLXI_4 : AND8_HXILINX_cpu_output_muxer
      port map (I0=>XLXN_8,
                I1=>XLXN_7,
                I2=>XLXN_6,
                I3=>XLXN_5,
                I4=>XLXN_4,
                I5=>XLXN_3,
                I6=>XLXN_2,
                I7=>XLXN_1,
                O=>g);
   
   XLXI_5 : INV
      port map (I=>i(0),
                O=>XLXN_1);
   
   XLXI_6 : INV
      port map (I=>i(1),
                O=>XLXN_2);
   
   XLXI_7 : INV
      port map (I=>i(2),
                O=>XLXN_3);
   
   XLXI_8 : INV
      port map (I=>i(3),
                O=>XLXN_4);
   
   XLXI_9 : INV
      port map (I=>i(4),
                O=>XLXN_5);
   
   XLXI_10 : INV
      port map (I=>i(5),
                O=>XLXN_6);
   
   XLXI_11 : INV
      port map (I=>i(6),
                O=>XLXN_7);
   
   XLXI_12 : INV
      port map (I=>i(7),
                O=>XLXN_8);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_output_muxer is
   port ( acc_o : in    std_logic_vector (7 downto 0); 
          acc_r : in    std_logic; 
          iar_o : in    std_logic_vector (7 downto 0); 
          iar_r : in    std_logic; 
          mem_o : in    std_logic_vector (7 downto 0); 
          mem_r : in    std_logic; 
          r0_o  : in    std_logic_vector (7 downto 0); 
          r0_r  : in    std_logic; 
          r1_o  : in    std_logic_vector (7 downto 0); 
          r1_r  : in    std_logic; 
          r2_o  : in    std_logic_vector (7 downto 0); 
          r2_r  : in    std_logic; 
          r3_o  : in    std_logic_vector (7 downto 0); 
          r3_r  : in    std_logic; 
          o     : out   std_logic_vector (7 downto 0));
end cpu_output_muxer;

architecture BEHAVIORAL of cpu_output_muxer is
   attribute BOX_TYPE   : string ;
   signal a                       : std_logic_vector (3 downto 0);
   signal enc_o                   : std_logic_vector (2 downto 0);
   signal g                       : std_logic;
   signal i                       : std_logic_vector (7 downto 0);
   signal XLXN_20                 : std_logic;
   signal XLXN_73                 : std_logic;
   signal XLXI_1_dev7_openSignal  : std_logic_vector (7 downto 0);
   signal XLXI_1_dev8_openSignal  : std_logic_vector (7 downto 0);
   signal XLXI_1_dev9_openSignal  : std_logic_vector (7 downto 0);
   signal XLXI_1_dev10_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev11_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev12_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev13_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev14_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev15_openSignal : std_logic_vector (7 downto 0);
   component bus_muxer_MUSER_cpu_output_muxer
      port ( a     : in    std_logic_vector (3 downto 0); 
             dev0  : in    std_logic_vector (7 downto 0); 
             dev1  : in    std_logic_vector (7 downto 0); 
             dev10 : in    std_logic_vector (7 downto 0); 
             dev11 : in    std_logic_vector (7 downto 0); 
             dev12 : in    std_logic_vector (7 downto 0); 
             dev13 : in    std_logic_vector (7 downto 0); 
             dev14 : in    std_logic_vector (7 downto 0); 
             dev15 : in    std_logic_vector (7 downto 0); 
             dev2  : in    std_logic_vector (7 downto 0); 
             dev3  : in    std_logic_vector (7 downto 0); 
             dev4  : in    std_logic_vector (7 downto 0); 
             dev5  : in    std_logic_vector (7 downto 0); 
             dev6  : in    std_logic_vector (7 downto 0); 
             dev7  : in    std_logic_vector (7 downto 0); 
             dev8  : in    std_logic_vector (7 downto 0); 
             dev9  : in    std_logic_vector (7 downto 0); 
             e     : in    std_logic; 
             o     : out   std_logic_vector (7 downto 0));
   end component;
   
   component encoder8_3_MUSER_cpu_output_muxer
      port ( g : out   std_logic; 
             i : in    std_logic_vector (7 downto 0); 
             o : out   std_logic_vector (2 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : bus_muxer_MUSER_cpu_output_muxer
      port map (a(3 downto 0)=>a(3 downto 0),
                dev0(7 downto 0)=>iar_o(7 downto 0),
                dev1(7 downto 0)=>acc_o(7 downto 0),
                dev2(7 downto 0)=>mem_o(7 downto 0),
                dev3(7 downto 0)=>r0_o(7 downto 0),
                dev4(7 downto 0)=>r1_o(7 downto 0),
                dev5(7 downto 0)=>r2_o(7 downto 0),
                dev6(7 downto 0)=>r3_o(7 downto 0),
                dev7(7 downto 0)=>XLXI_1_dev7_openSignal(7 downto 0),
                dev8(7 downto 0)=>XLXI_1_dev8_openSignal(7 downto 0),
                dev9(7 downto 0)=>XLXI_1_dev9_openSignal(7 downto 0),
                dev10(7 downto 0)=>XLXI_1_dev10_openSignal(7 downto 0),
                dev11(7 downto 0)=>XLXI_1_dev11_openSignal(7 downto 0),
                dev12(7 downto 0)=>XLXI_1_dev12_openSignal(7 downto 0),
                dev13(7 downto 0)=>XLXI_1_dev13_openSignal(7 downto 0),
                dev14(7 downto 0)=>XLXI_1_dev14_openSignal(7 downto 0),
                dev15(7 downto 0)=>XLXI_1_dev15_openSignal(7 downto 0),
                e=>XLXN_73,
                o(7 downto 0)=>o(7 downto 0));
   
   XLXI_2 : encoder8_3_MUSER_cpu_output_muxer
      port map (i(7 downto 0)=>i(7 downto 0),
                g=>g,
                o(2 downto 0)=>enc_o(2 downto 0));
   
   XLXI_3 : BUF
      port map (I=>iar_r,
                O=>i(0));
   
   XLXI_4 : BUF
      port map (I=>acc_r,
                O=>i(1));
   
   XLXI_5 : BUF
      port map (I=>mem_r,
                O=>i(2));
   
   XLXI_6 : BUF
      port map (I=>r0_r,
                O=>i(3));
   
   XLXI_7 : BUF
      port map (I=>r1_r,
                O=>i(4));
   
   XLXI_8 : BUF
      port map (I=>r2_r,
                O=>i(5));
   
   XLXI_9 : BUF
      port map (I=>r3_r,
                O=>i(6));
   
   XLXI_10 : BUF
      port map (I=>XLXN_20,
                O=>i(7));
   
   XLXI_14 : BUF
      port map (I=>enc_o(0),
                O=>a(0));
   
   XLXI_15 : BUF
      port map (I=>enc_o(1),
                O=>a(1));
   
   XLXI_16 : BUF
      port map (I=>enc_o(2),
                O=>a(2));
   
   XLXI_20 : GND
      port map (G=>a(3));
   
   XLXI_21 : INV
      port map (I=>g,
                O=>XLXN_73);
   
   XLXI_22 : GND
      port map (G=>XLXN_20);
   
end BEHAVIORAL;


