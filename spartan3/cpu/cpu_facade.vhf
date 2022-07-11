--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cpu_facade.vhf
-- /___/   /\     Timestamp : 06/28/2022 04:25:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/cpu_facade.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/cpu_facade.sch
--Design Name: cpu_facade
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity USART_MUSER_cpu_facade is
   port ( clk  : in    std_logic; 
          data : in    std_logic_vector (7 downto 0); 
          rst  : in    std_logic; 
          tx   : out   std_logic);
end USART_MUSER_cpu_facade;

architecture BEHAVIORAL of USART_MUSER_cpu_facade is
   component usart_tramnsmitter
      port ( clk  : in    std_logic; 
             rst  : in    std_logic; 
             data : in    std_logic_vector (7 downto 0); 
             tx   : out   std_logic; 
             done : out   std_logic);
   end component;
   
begin
   XLXI_2 : usart_tramnsmitter
      port map (clk=>clk,
                data(7 downto 0)=>data(7 downto 0),
                rst=>rst,
                done=>open,
                tx=>tx);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LD8CE_MXILINX_cpu_facade is
   port ( CLR : in    std_logic; 
          D   : in    std_logic_vector (7 downto 0); 
          G   : in    std_logic; 
          GE  : in    std_logic; 
          Q   : out   std_logic_vector (7 downto 0));
end LD8CE_MXILINX_cpu_facade;

architecture BEHAVIORAL of LD8CE_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   component LDCE
      generic( INIT : bit :=  '0');
      port ( CLR : in    std_logic; 
             D   : in    std_logic; 
             G   : in    std_logic; 
             GE  : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of LDCE : component is "BLACK_BOX";
   
begin
   I_Q0 : LDCE
      port map (CLR=>CLR,
                D=>D(0),
                G=>G,
                GE=>GE,
                Q=>Q(0));
   
   I_Q1 : LDCE
      port map (CLR=>CLR,
                D=>D(1),
                G=>G,
                GE=>GE,
                Q=>Q(1));
   
   I_Q2 : LDCE
      port map (CLR=>CLR,
                D=>D(2),
                G=>G,
                GE=>GE,
                Q=>Q(2));
   
   I_Q3 : LDCE
      port map (CLR=>CLR,
                D=>D(3),
                G=>G,
                GE=>GE,
                Q=>Q(3));
   
   I_Q4 : LDCE
      port map (CLR=>CLR,
                D=>D(4),
                G=>G,
                GE=>GE,
                Q=>Q(4));
   
   I_Q5 : LDCE
      port map (CLR=>CLR,
                D=>D(5),
                G=>G,
                GE=>GE,
                Q=>Q(5));
   
   I_Q6 : LDCE
      port map (CLR=>CLR,
                D=>D(6),
                G=>G,
                GE=>GE,
                Q=>Q(6));
   
   I_Q7 : LDCE
      port map (CLR=>CLR,
                D=>D(7),
                G=>G,
                GE=>GE,
                Q=>Q(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LD8_MXILINX_cpu_facade is
   port ( D : in    std_logic_vector (7 downto 0); 
          G : in    std_logic; 
          Q : out   std_logic_vector (7 downto 0));
end LD8_MXILINX_cpu_facade;

architecture BEHAVIORAL of LD8_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   component LD
      generic( INIT : bit :=  '0');
      port ( D : in    std_logic; 
             G : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of LD : component is "BLACK_BOX";
   
begin
   I_Q0 : LD
      port map (D=>D(0),
                G=>G,
                Q=>Q(0));
   
   I_Q1 : LD
      port map (D=>D(1),
                G=>G,
                Q=>Q(1));
   
   I_Q2 : LD
      port map (D=>D(2),
                G=>G,
                Q=>Q(2));
   
   I_Q3 : LD
      port map (D=>D(3),
                G=>G,
                Q=>Q(3));
   
   I_Q4 : LD
      port map (D=>D(4),
                G=>G,
                Q=>Q(4));
   
   I_Q5 : LD
      port map (D=>D(5),
                G=>G,
                Q=>Q(5));
   
   I_Q6 : LD
      port map (D=>D(6),
                G=>G,
                Q=>Q(6));
   
   I_Q7 : LD
      port map (D=>D(7),
                G=>G,
                Q=>Q(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ram_256bytes_MUSER_cpu_facade is
   port ( a      : in    std_logic_vector (7 downto 0); 
          a_w    : in    std_logic; 
          i      : in    std_logic_vector (7 downto 0); 
          i_r    : in    std_logic; 
          i_w    : in    std_logic; 
          i_wclk : in    std_logic; 
          a_o    : out   std_logic_vector (7 downto 0); 
          o      : out   std_logic_vector (7 downto 0));
end ram_256bytes_MUSER_cpu_facade;

architecture BEHAVIORAL of ram_256bytes_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   component LD8_MXILINX_cpu_facade
      port ( D : in    std_logic_vector (7 downto 0); 
             G : in    std_logic; 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_15 : label is "XLXI_15_0";
begin
   XLXI_15 : LD8_MXILINX_cpu_facade
      port map (D(7 downto 0)=>a(7 downto 0),
                G=>a_w,
                Q(7 downto 0)=>a_o(7 downto 0));
   
   XLXI_42 : INV
      port map (I=>i_r,
                O=>open);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1_MXILINX_cpu_facade is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_cpu_facade;

architecture BEHAVIORAL of M2_1_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1E_MXILINX_cpu_facade is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1E_MXILINX_cpu_facade;

architecture BEHAVIORAL of M2_1E_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>D1,
                I1=>E,
                I2=>S0,
                O=>M1);
   
   I_36_31 : AND3B1
      port map (I0=>S0,
                I1=>E,
                I2=>D0,
                O=>M0);
   
   I_36_38 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M16_1E_MXILINX_cpu_facade is
   port ( D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          D4  : in    std_logic; 
          D5  : in    std_logic; 
          D6  : in    std_logic; 
          D7  : in    std_logic; 
          D8  : in    std_logic; 
          D9  : in    std_logic; 
          D10 : in    std_logic; 
          D11 : in    std_logic; 
          D12 : in    std_logic; 
          D13 : in    std_logic; 
          D14 : in    std_logic; 
          D15 : in    std_logic; 
          E   : in    std_logic; 
          S0  : in    std_logic; 
          S1  : in    std_logic; 
          S2  : in    std_logic; 
          S3  : in    std_logic; 
          O   : out   std_logic);
end M16_1E_MXILINX_cpu_facade;

architecture BEHAVIORAL of M16_1E_MXILINX_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal MAB : std_logic;
   signal MBF : std_logic;
   signal MCD : std_logic;
   signal MCF : std_logic;
   signal MEF : std_logic;
   signal MO7 : std_logic;
   signal M8B : std_logic;
   signal M01 : std_logic;
   signal M03 : std_logic;
   signal M23 : std_logic;
   signal M45 : std_logic;
   signal M47 : std_logic;
   signal M67 : std_logic;
   signal M89 : std_logic;
   component M2_1_MXILINX_cpu_facade
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component MUXF5_L
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXF5_L : component is "BLACK_BOX";
   
   component MUXF6
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXF6 : component is "BLACK_BOX";
   
   component M2_1E_MXILINX_cpu_facade
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of I_MAB : label is "I_MAB_4";
   attribute HU_SET of I_MCD : label is "I_MCD_3";
   attribute HU_SET of I_MEF : label is "I_MEF_2";
   attribute HU_SET of I_M01 : label is "I_M01_9";
   attribute HU_SET of I_M23 : label is "I_M23_8";
   attribute HU_SET of I_M45 : label is "I_M45_7";
   attribute HU_SET of I_M67 : label is "I_M67_6";
   attribute HU_SET of I_M89 : label is "I_M89_5";
   attribute HU_SET of I_O : label is "I_O_1";
begin
   I_MAB : M2_1_MXILINX_cpu_facade
      port map (D0=>D10,
                D1=>D11,
                S0=>S0,
                O=>MAB);
   
   I_MCD : M2_1_MXILINX_cpu_facade
      port map (D0=>D12,
                D1=>D13,
                S0=>S0,
                O=>MCD);
   
   I_MCF : MUXF5_L
      port map (I0=>MCD,
                I1=>MEF,
                S=>S1,
                LO=>MCF);
   
   I_MEF : M2_1_MXILINX_cpu_facade
      port map (D0=>D14,
                D1=>D15,
                S0=>S0,
                O=>MEF);
   
   I_M8B : MUXF5_L
      port map (I0=>M89,
                I1=>MAB,
                S=>S1,
                LO=>M8B);
   
   I_M8F : MUXF6
      port map (I0=>M8B,
                I1=>MCF,
                S=>S2,
                O=>MBF);
   
   I_M01 : M2_1_MXILINX_cpu_facade
      port map (D0=>D0,
                D1=>D1,
                S0=>S0,
                O=>M01);
   
   I_M03 : MUXF5_L
      port map (I0=>M01,
                I1=>M23,
                S=>S1,
                LO=>M03);
   
   I_M07 : MUXF6
      port map (I0=>M03,
                I1=>M47,
                S=>S2,
                O=>MO7);
   
   I_M23 : M2_1_MXILINX_cpu_facade
      port map (D0=>D2,
                D1=>D3,
                S0=>S0,
                O=>M23);
   
   I_M45 : M2_1_MXILINX_cpu_facade
      port map (D0=>D4,
                D1=>D5,
                S0=>S0,
                O=>M45);
   
   I_M47 : MUXF5_L
      port map (I0=>M45,
                I1=>M67,
                S=>S1,
                LO=>M47);
   
   I_M67 : M2_1_MXILINX_cpu_facade
      port map (D0=>D6,
                D1=>D7,
                S0=>S0,
                O=>M67);
   
   I_M89 : M2_1_MXILINX_cpu_facade
      port map (D0=>D8,
                D1=>D9,
                S0=>S0,
                O=>M89);
   
   I_O : M2_1E_MXILINX_cpu_facade
      port map (D0=>MO7,
                D1=>MBF,
                E=>E,
                S0=>S3,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bus_muxer_MUSER_cpu_facade is
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
end bus_muxer_MUSER_cpu_facade;

architecture BEHAVIORAL of bus_muxer_MUSER_cpu_facade is
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
   signal XLXN_56  : std_logic;
   signal XLXN_57  : std_logic;
   signal XLXN_58  : std_logic;
   signal XLXN_59  : std_logic;
   signal XLXN_60  : std_logic;
   signal XLXN_61  : std_logic;
   signal XLXN_72  : std_logic;
   signal XLXN_73  : std_logic;
   signal XLXN_74  : std_logic;
   signal XLXN_75  : std_logic;
   signal XLXN_76  : std_logic;
   signal XLXN_77  : std_logic;
   signal XLXN_88  : std_logic;
   signal XLXN_89  : std_logic;
   signal XLXN_90  : std_logic;
   signal XLXN_91  : std_logic;
   signal XLXN_92  : std_logic;
   signal XLXN_93  : std_logic;
   signal XLXN_104 : std_logic;
   signal XLXN_105 : std_logic;
   signal XLXN_106 : std_logic;
   signal XLXN_107 : std_logic;
   signal XLXN_108 : std_logic;
   signal XLXN_109 : std_logic;
   signal XLXN_120 : std_logic;
   signal XLXN_121 : std_logic;
   signal XLXN_122 : std_logic;
   signal XLXN_123 : std_logic;
   signal XLXN_124 : std_logic;
   signal XLXN_125 : std_logic;
   signal XLXN_136 : std_logic;
   signal XLXN_137 : std_logic;
   signal XLXN_138 : std_logic;
   signal XLXN_139 : std_logic;
   signal XLXN_140 : std_logic;
   signal XLXN_141 : std_logic;
   signal XLXN_152 : std_logic;
   signal XLXN_153 : std_logic;
   signal XLXN_154 : std_logic;
   signal XLXN_155 : std_logic;
   signal XLXN_156 : std_logic;
   signal XLXN_157 : std_logic;
   signal XLXN_168 : std_logic;
   signal XLXN_169 : std_logic;
   signal XLXN_170 : std_logic;
   signal XLXN_171 : std_logic;
   signal XLXN_172 : std_logic;
   signal XLXN_173 : std_logic;
   component M16_1E_MXILINX_cpu_facade
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_11";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_10";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_12";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_13";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_14";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_15";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_16";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_17";
begin
   XLXI_1 : M16_1E_MXILINX_cpu_facade
      port map (D0=>dev0(0),
                D1=>dev1(0),
                D2=>dev2(0),
                D3=>dev3(0),
                D4=>dev4(0),
                D5=>dev5(0),
                D6=>dev6(0),
                D7=>dev7(0),
                D8=>dev8(0),
                D9=>dev9(0),
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
   
   XLXI_2 : M16_1E_MXILINX_cpu_facade
      port map (D0=>dev0(4),
                D1=>dev1(4),
                D2=>dev2(4),
                D3=>dev3(4),
                D4=>dev4(4),
                D5=>dev5(4),
                D6=>dev6(4),
                D7=>dev7(4),
                D8=>dev8(4),
                D9=>dev9(4),
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
   
   XLXI_12 : M16_1E_MXILINX_cpu_facade
      port map (D0=>dev0(5),
                D1=>dev1(5),
                D2=>dev2(5),
                D3=>dev3(5),
                D4=>dev4(5),
                D5=>dev5(5),
                D6=>dev6(5),
                D7=>dev7(5),
                D8=>dev8(5),
                D9=>dev9(5),
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
   
   XLXI_13 : M16_1E_MXILINX_cpu_facade
      port map (D0=>dev0(1),
                D1=>dev1(1),
                D2=>dev2(1),
                D3=>dev3(1),
                D4=>dev4(1),
                D5=>dev5(1),
                D6=>dev6(1),
                D7=>dev7(1),
                D8=>dev8(1),
                D9=>dev9(1),
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
   
   XLXI_14 : M16_1E_MXILINX_cpu_facade
      port map (D0=>dev0(6),
                D1=>dev1(6),
                D2=>dev2(6),
                D3=>dev3(6),
                D4=>dev4(6),
                D5=>dev5(6),
                D6=>dev6(6),
                D7=>dev7(6),
                D8=>dev8(6),
                D9=>dev9(6),
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
   
   XLXI_15 : M16_1E_MXILINX_cpu_facade
      port map (D0=>dev0(2),
                D1=>dev1(2),
                D2=>dev2(2),
                D3=>dev3(2),
                D4=>dev4(2),
                D5=>dev5(2),
                D6=>dev6(2),
                D7=>dev7(2),
                D8=>dev8(2),
                D9=>dev9(2),
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
   
   XLXI_16 : M16_1E_MXILINX_cpu_facade
      port map (D0=>dev0(7),
                D1=>dev1(7),
                D2=>dev2(7),
                D3=>dev3(7),
                D4=>dev4(7),
                D5=>dev5(7),
                D6=>dev6(7),
                D7=>dev7(7),
                D8=>dev8(7),
                D9=>dev9(7),
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
   
   XLXI_17 : M16_1E_MXILINX_cpu_facade
      port map (D0=>dev0(3),
                D1=>dev1(3),
                D2=>dev2(3),
                D3=>dev3(3),
                D4=>dev4(3),
                D5=>dev5(3),
                D6=>dev6(3),
                D7=>dev7(3),
                D8=>dev8(3),
                D9=>dev9(3),
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

entity reg_8bit_MUSER_cpu_facade is
   port ( clr : in    std_logic; 
          d   : in    std_logic_vector (7 downto 0); 
          r   : in    std_logic; 
          w   : in    std_logic; 
          o   : out   std_logic_vector (7 downto 0));
end reg_8bit_MUSER_cpu_facade;

architecture BEHAVIORAL of reg_8bit_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_2 : std_logic;
   component LD8CE_MXILINX_cpu_facade
      port ( CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             G   : in    std_logic; 
             GE  : in    std_logic; 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_18";
begin
   XLXI_5 : LD8CE_MXILINX_cpu_facade
      port map (CLR=>clr,
                D(7 downto 0)=>d(7 downto 0),
                G=>w,
                GE=>XLXN_2,
                Q(7 downto 0)=>o(7 downto 0));
   
   XLXI_6 : VCC
      port map (P=>XLXN_2);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity D4_16E_MXILINX_cpu_facade is
   port ( A0  : in    std_logic; 
          A1  : in    std_logic; 
          A2  : in    std_logic; 
          A3  : in    std_logic; 
          E   : in    std_logic; 
          D0  : out   std_logic; 
          D1  : out   std_logic; 
          D2  : out   std_logic; 
          D3  : out   std_logic; 
          D4  : out   std_logic; 
          D5  : out   std_logic; 
          D6  : out   std_logic; 
          D7  : out   std_logic; 
          D8  : out   std_logic; 
          D9  : out   std_logic; 
          D10 : out   std_logic; 
          D11 : out   std_logic; 
          D12 : out   std_logic; 
          D13 : out   std_logic; 
          D14 : out   std_logic; 
          D15 : out   std_logic);
end D4_16E_MXILINX_cpu_facade;

architecture BEHAVIORAL of D4_16E_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   component AND5B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B3 : component is "BLACK_BOX";
   
   component AND5B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B2 : component is "BLACK_BOX";
   
   component AND5B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B1 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component AND5B4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B4 : component is "BLACK_BOX";
   
begin
   I_36_53 : AND5B3
      port map (I0=>A0,
                I1=>A1,
                I2=>A2,
                I3=>A3,
                I4=>E,
                O=>D8);
   
   I_36_54 : AND5B2
      port map (I0=>A1,
                I1=>A2,
                I2=>E,
                I3=>A3,
                I4=>A0,
                O=>D9);
   
   I_36_55 : AND5B2
      port map (I0=>A0,
                I1=>A2,
                I2=>E,
                I3=>A3,
                I4=>A1,
                O=>D10);
   
   I_36_56 : AND5B1
      port map (I0=>A2,
                I1=>A0,
                I2=>A1,
                I3=>A3,
                I4=>E,
                O=>D11);
   
   I_36_57 : AND5B2
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                I3=>A3,
                I4=>A2,
                O=>D12);
   
   I_36_58 : AND5B1
      port map (I0=>A1,
                I1=>A0,
                I2=>A2,
                I3=>A3,
                I4=>E,
                O=>D13);
   
   I_36_59 : AND5B1
      port map (I0=>A0,
                I1=>A1,
                I2=>A2,
                I3=>A3,
                I4=>E,
                O=>D14);
   
   I_36_60 : AND5
      port map (I0=>A3,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                I4=>E,
                O=>D15);
   
   I_36_61 : AND5B2
      port map (I0=>A3,
                I1=>A0,
                I2=>E,
                I3=>A2,
                I4=>A1,
                O=>D6);
   
   I_36_62 : AND5B1
      port map (I0=>A3,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                I4=>E,
                O=>D7);
   
   I_36_63 : AND5B2
      port map (I0=>A3,
                I1=>A1,
                I2=>E,
                I3=>A2,
                I4=>A0,
                O=>D5);
   
   I_36_64 : AND5B3
      port map (I0=>A0,
                I1=>A1,
                I2=>A3,
                I3=>A2,
                I4=>E,
                O=>D4);
   
   I_36_65 : AND5B2
      port map (I0=>A2,
                I1=>A3,
                I2=>E,
                I3=>A0,
                I4=>A1,
                O=>D3);
   
   I_36_66 : AND5B3
      port map (I0=>A0,
                I1=>A3,
                I2=>A2,
                I3=>A1,
                I4=>E,
                O=>D2);
   
   I_36_67 : AND5B3
      port map (I0=>A1,
                I1=>A2,
                I2=>A3,
                I3=>A0,
                I4=>E,
                O=>D1);
   
   I_36_68 : AND5B4
      port map (I0=>A3,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                I4=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FJKC_MXILINX_cpu_facade is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          J   : in    std_logic; 
          K   : in    std_logic; 
          Q   : out   std_logic);
end FJKC_MXILINX_cpu_facade;

architecture BEHAVIORAL of FJKC_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal AD      : std_logic;
   signal A0      : std_logic;
   signal A1      : std_logic;
   signal A2      : std_logic;
   signal Q_DUMMY : std_logic;
   component FDC
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_32 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_32 : FDC
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>CLR,
                D=>AD,
                Q=>Q_DUMMY);
   
   I_36_37 : AND3B2
      port map (I0=>J,
                I1=>K,
                I2=>Q_DUMMY,
                O=>A0);
   
   I_36_40 : AND3B1
      port map (I0=>Q_DUMMY,
                I1=>K,
                I2=>J,
                O=>A1);
   
   I_36_41 : OR3
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                O=>AD);
   
   I_36_43 : AND2B1
      port map (I0=>K,
                I1=>J,
                O=>A2);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_cpu_facade is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCE_MXILINX_cpu_facade;

architecture BEHAVIORAL of FTCE_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDCE
   generic map( INIT => INIT)
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>TQ,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB16CE_MXILINX_cpu_facade is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q   : out   std_logic_vector (15 downto 0); 
          TC  : out   std_logic);
end CB16CE_MXILINX_cpu_facade;

architecture BEHAVIORAL of CB16CE_MXILINX_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal T4       : std_logic;
   signal T5       : std_logic;
   signal T6       : std_logic;
   signal T7       : std_logic;
   signal T8       : std_logic;
   signal T9       : std_logic;
   signal T10      : std_logic;
   signal T11      : std_logic;
   signal T12      : std_logic;
   signal T13      : std_logic;
   signal T14      : std_logic;
   signal T15      : std_logic;
   signal XLXN_1   : std_logic;
   signal Q_DUMMY  : std_logic_vector (15 downto 0);
   signal TC_DUMMY : std_logic;
   component FTCE_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   attribute HU_SET of I_Q0 : label is "I_Q0_20";
   attribute HU_SET of I_Q1 : label is "I_Q1_19";
   attribute HU_SET of I_Q2 : label is "I_Q2_22";
   attribute HU_SET of I_Q3 : label is "I_Q3_21";
   attribute HU_SET of I_Q4 : label is "I_Q4_26";
   attribute HU_SET of I_Q5 : label is "I_Q5_25";
   attribute HU_SET of I_Q6 : label is "I_Q6_24";
   attribute HU_SET of I_Q7 : label is "I_Q7_23";
   attribute HU_SET of I_Q8 : label is "I_Q8_27";
   attribute HU_SET of I_Q9 : label is "I_Q9_28";
   attribute HU_SET of I_Q10 : label is "I_Q10_29";
   attribute HU_SET of I_Q11 : label is "I_Q11_30";
   attribute HU_SET of I_Q12 : label is "I_Q12_31";
   attribute HU_SET of I_Q13 : label is "I_Q13_32";
   attribute HU_SET of I_Q14 : label is "I_Q14_33";
   attribute HU_SET of I_Q15 : label is "I_Q15_34";
begin
   Q(15 downto 0) <= Q_DUMMY(15 downto 0);
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q_DUMMY(0));
   
   I_Q1 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   I_Q2 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T2,
                Q=>Q_DUMMY(2));
   
   I_Q3 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T3,
                Q=>Q_DUMMY(3));
   
   I_Q4 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T4,
                Q=>Q_DUMMY(4));
   
   I_Q5 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T5,
                Q=>Q_DUMMY(5));
   
   I_Q6 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T6,
                Q=>Q_DUMMY(6));
   
   I_Q7 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T7,
                Q=>Q_DUMMY(7));
   
   I_Q8 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T8,
                Q=>Q_DUMMY(8));
   
   I_Q9 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T9,
                Q=>Q_DUMMY(9));
   
   I_Q10 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T10,
                Q=>Q_DUMMY(10));
   
   I_Q11 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T11,
                Q=>Q_DUMMY(11));
   
   I_Q12 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T12,
                Q=>Q_DUMMY(12));
   
   I_Q13 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T13,
                Q=>Q_DUMMY(13));
   
   I_Q14 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T14,
                Q=>Q_DUMMY(14));
   
   I_Q15 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T15,
                Q=>Q_DUMMY(15));
   
   I_36_3 : AND3
      port map (I0=>Q_DUMMY(2),
                I1=>Q_DUMMY(1),
                I2=>Q_DUMMY(0),
                O=>T3);
   
   I_36_4 : AND2
      port map (I0=>Q_DUMMY(1),
                I1=>Q_DUMMY(0),
                O=>T2);
   
   I_36_9 : VCC
      port map (P=>XLXN_1);
   
   I_36_10 : AND4
      port map (I0=>Q_DUMMY(3),
                I1=>Q_DUMMY(2),
                I2=>Q_DUMMY(1),
                I3=>Q_DUMMY(0),
                O=>T4);
   
   I_36_14 : AND5
      port map (I0=>Q_DUMMY(7),
                I1=>Q_DUMMY(6),
                I2=>Q_DUMMY(5),
                I3=>Q_DUMMY(4),
                I4=>T4,
                O=>T8);
   
   I_36_15 : AND2
      port map (I0=>Q_DUMMY(4),
                I1=>T4,
                O=>T5);
   
   I_36_19 : AND3
      port map (I0=>Q_DUMMY(5),
                I1=>Q_DUMMY(4),
                I2=>T4,
                O=>T6);
   
   I_36_21 : AND4
      port map (I0=>Q_DUMMY(6),
                I1=>Q_DUMMY(5),
                I2=>Q_DUMMY(4),
                I3=>T4,
                O=>T7);
   
   I_36_22 : AND5
      port map (I0=>Q_DUMMY(15),
                I1=>Q_DUMMY(14),
                I2=>Q_DUMMY(13),
                I3=>Q_DUMMY(12),
                I4=>T12,
                O=>TC_DUMMY);
   
   I_36_23 : AND2
      port map (I0=>Q_DUMMY(12),
                I1=>T12,
                O=>T13);
   
   I_36_24 : AND3
      port map (I0=>Q_DUMMY(13),
                I1=>Q_DUMMY(12),
                I2=>T12,
                O=>T14);
   
   I_36_25 : AND4
      port map (I0=>Q_DUMMY(14),
                I1=>Q_DUMMY(13),
                I2=>Q_DUMMY(12),
                I3=>T12,
                O=>T15);
   
   I_36_26 : AND4
      port map (I0=>Q_DUMMY(10),
                I1=>Q_DUMMY(9),
                I2=>Q_DUMMY(8),
                I3=>T8,
                O=>T11);
   
   I_36_27 : AND3
      port map (I0=>Q_DUMMY(9),
                I1=>Q_DUMMY(8),
                I2=>T8,
                O=>T10);
   
   I_36_28 : AND2
      port map (I0=>Q_DUMMY(8),
                I1=>T8,
                O=>T9);
   
   I_36_29 : AND5
      port map (I0=>Q_DUMMY(11),
                I1=>Q_DUMMY(10),
                I2=>Q_DUMMY(9),
                I3=>Q_DUMMY(8),
                I4=>T8,
                O=>T12);
   
   I_36_54 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity debouncer_MUSER_cpu_facade is
   port ( in_clk     : in    std_logic; 
          in_signal  : in    std_logic; 
          out_signal : out   std_logic);
end debouncer_MUSER_cpu_facade;

architecture BEHAVIORAL of debouncer_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal db2        : std_logic_vector (15 downto 0);
   signal XLXN_3     : std_logic;
   signal XLXN_4     : std_logic;
   component CB16CE_MXILINX_cpu_facade
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_35";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_36";
begin
   XLXI_1 : CB16CE_MXILINX_cpu_facade
      port map (C=>in_clk,
                CE=>XLXN_4,
                CLR=>in_signal,
                CEO=>XLXN_3,
                Q=>open,
                TC=>open);
   
   XLXI_2 : CB16CE_MXILINX_cpu_facade
      port map (C=>in_clk,
                CE=>XLXN_3,
                CLR=>in_signal,
                CEO=>open,
                Q(15 downto 0)=>db2(15 downto 0),
                TC=>open);
   
   XLXI_4 : VCC
      port map (P=>XLXN_4);
   
   XLXI_5 : BUF
      port map (I=>db2(7),
                O=>out_signal);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity INV8_MXILINX_cpu_facade is
   port ( I : in    std_logic_vector (7 downto 0); 
          O : out   std_logic_vector (7 downto 0));
end INV8_MXILINX_cpu_facade;

architecture BEHAVIORAL of INV8_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   I_36_30 : INV
      port map (I=>I(4),
                O=>O(4));
   
   I_36_31 : INV
      port map (I=>I(5),
                O=>O(5));
   
   I_36_32 : INV
      port map (I=>I(6),
                O=>O(6));
   
   I_36_33 : INV
      port map (I=>I(7),
                O=>O(7));
   
   I_36_34 : INV
      port map (I=>I(3),
                O=>O(3));
   
   I_36_35 : INV
      port map (I=>I(2),
                O=>O(2));
   
   I_36_36 : INV
      port map (I=>I(1),
                O=>O(1));
   
   I_36_37 : INV
      port map (I=>I(0),
                O=>O(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity OR6_MXILINX_cpu_facade is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          O  : out   std_logic);
end OR6_MXILINX_cpu_facade;

architecture BEHAVIORAL of OR6_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal I35     : std_logic;
   signal O_DUMMY : std_logic;
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   attribute RLOC of I_36_106 : label is "X0Y0";
   attribute RLOC of I_36_107 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_87 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I35,
                O=>O_DUMMY);
   
   I_36_88 : OR3
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                O=>I35);
   
   I_36_106 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I35,
                O=>O_DUMMY);
   
   I_36_107 : FMAP
      port map (I1=>I3,
                I2=>I4,
                I3=>I5,
                I4=>dummy,
                O=>I35);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity D3_8E_MXILINX_cpu_facade is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          E  : in    std_logic; 
          D0 : out   std_logic; 
          D1 : out   std_logic; 
          D2 : out   std_logic; 
          D3 : out   std_logic; 
          D4 : out   std_logic; 
          D5 : out   std_logic; 
          D6 : out   std_logic; 
          D7 : out   std_logic);
end D3_8E_MXILINX_cpu_facade;

architecture BEHAVIORAL of D3_8E_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND4
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>E,
                O=>D7);
   
   I_36_31 : AND4B1
      port map (I0=>A0,
                I1=>A2,
                I2=>A1,
                I3=>E,
                O=>D6);
   
   I_36_32 : AND4B1
      port map (I0=>A1,
                I1=>A2,
                I2=>A0,
                I3=>E,
                O=>D5);
   
   I_36_33 : AND4B2
      port map (I0=>A1,
                I1=>A0,
                I2=>A2,
                I3=>E,
                O=>D4);
   
   I_36_34 : AND4B1
      port map (I0=>A2,
                I1=>A0,
                I2=>A1,
                I3=>E,
                O=>D3);
   
   I_36_35 : AND4B2
      port map (I0=>A2,
                I1=>A0,
                I2=>A1,
                I3=>E,
                O=>D2);
   
   I_36_36 : AND4B2
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>E,
                O=>D1);
   
   I_36_37 : AND4B3
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity D2_4E_MXILINX_cpu_facade is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          E  : in    std_logic; 
          D0 : out   std_logic; 
          D1 : out   std_logic; 
          D2 : out   std_logic; 
          D3 : out   std_logic);
end D2_4E_MXILINX_cpu_facade;

architecture BEHAVIORAL of D2_4E_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>A1,
                I1=>A0,
                I2=>E,
                O=>D3);
   
   I_36_31 : AND3B1
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                O=>D2);
   
   I_36_32 : AND3B1
      port map (I0=>A1,
                I1=>A0,
                I2=>E,
                O=>D1);
   
   I_36_33 : AND3B2
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB4CE_MXILINX_cpu_facade is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          TC  : out   std_logic);
end CB4CE_MXILINX_cpu_facade;

architecture BEHAVIORAL of CB4CE_MXILINX_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal XLXN_1   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component FTCE_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of I_Q0 : label is "I_Q0_37";
   attribute HU_SET of I_Q1 : label is "I_Q1_38";
   attribute HU_SET of I_Q2 : label is "I_Q2_39";
   attribute HU_SET of I_Q3 : label is "I_Q3_40";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   I_Q2 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T2,
                Q=>Q2_DUMMY);
   
   I_Q3 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T3,
                Q=>Q3_DUMMY);
   
   I_36_31 : AND4
      port map (I0=>Q3_DUMMY,
                I1=>Q2_DUMMY,
                I2=>Q1_DUMMY,
                I3=>Q0_DUMMY,
                O=>TC_DUMMY);
   
   I_36_32 : AND3
      port map (I0=>Q2_DUMMY,
                I1=>Q1_DUMMY,
                I2=>Q0_DUMMY,
                O=>T3);
   
   I_36_33 : AND2
      port map (I0=>Q1_DUMMY,
                I1=>Q0_DUMMY,
                O=>T2);
   
   I_36_58 : VCC
      port map (P=>XLXN_1);
   
   I_36_67 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity stepper_MUSER_cpu_facade is
   port ( clk : in    std_logic; 
          rst : in    std_logic; 
          s1  : out   std_logic; 
          s2  : out   std_logic; 
          s3  : out   std_logic; 
          s4  : out   std_logic; 
          s5  : out   std_logic; 
          s6  : out   std_logic);
end stepper_MUSER_cpu_facade;

architecture BEHAVIORAL of stepper_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_14 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CB4CE_MXILINX_cpu_facade
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component D3_8E_MXILINX_cpu_facade
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_24 : label is "XLXI_24_41";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_42";
begin
   XLXI_21 : VCC
      port map (P=>XLXN_14);
   
   XLXI_24 : CB4CE_MXILINX_cpu_facade
      port map (C=>XLXN_23,
                CE=>XLXN_14,
                CLR=>XLXN_24,
                CEO=>open,
                Q0=>XLXN_18,
                Q1=>XLXN_19,
                Q2=>XLXN_20,
                Q3=>open,
                TC=>open);
   
   XLXI_25 : D3_8E_MXILINX_cpu_facade
      port map (A0=>XLXN_18,
                A1=>XLXN_19,
                A2=>XLXN_20,
                E=>XLXN_14,
                D0=>s6,
                D1=>s1,
                D2=>s2,
                D3=>s3,
                D4=>s4,
                D5=>s5,
                D6=>XLXN_22,
                D7=>open);
   
   XLXI_26 : INV
      port map (I=>clk,
                O=>XLXN_23);
   
   XLXI_28 : OR2
      port map (I0=>XLXN_22,
                I1=>rst,
                O=>XLXN_24);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_control_MUSER_cpu_facade is
   port ( clk              : in    std_logic; 
          clkr             : in    std_logic; 
          clkw             : in    std_logic; 
          flags            : in    std_logic_vector (3 downto 0); 
          ir               : in    std_logic_vector (7 downto 0); 
          rst              : in    std_logic; 
          acc_r            : out   std_logic; 
          acc_w            : out   std_logic; 
          alu              : out   std_logic; 
          alu_and          : out   std_logic; 
          alu_C_in_enabled : out   std_logic; 
          alu_lshift       : out   std_logic; 
          alu_not          : out   std_logic; 
          alu_op0          : out   std_logic; 
          alu_op1          : out   std_logic; 
          alu_op2          : out   std_logic; 
          alu_or           : out   std_logic; 
          alu_rshift       : out   std_logic; 
          alu_sum          : out   std_logic; 
          alu_xor          : out   std_logic; 
          bus1             : out   std_logic; 
          flags_clr        : out   std_logic; 
          flags_w          : out   std_logic; 
          flg_clf          : out   std_logic; 
          ground           : out   std_logic; 
          iar_r            : out   std_logic; 
          iar_w            : out   std_logic; 
          in_from_port     : out   std_logic; 
          ir_w             : out   std_logic; 
          jmp_ifjmp        : out   std_logic; 
          jmp_jmp          : out   std_logic; 
          jmp_jmpr         : out   std_logic; 
          ls_ld            : out   std_logic; 
          ls_ldc           : out   std_logic; 
          ls_st            : out   std_logic; 
          out_to_port      : out   std_logic; 
          pt_const         : out   std_logic_vector (7 downto 0); 
          ram_a_w          : out   std_logic; 
          ram_r            : out   std_logic; 
          ram_w            : out   std_logic; 
          r0_r             : out   std_logic; 
          r0_w             : out   std_logic; 
          r1_r             : out   std_logic; 
          r1_w             : out   std_logic; 
          r2_r             : out   std_logic; 
          r2_w             : out   std_logic; 
          r3_r             : out   std_logic; 
          r3_w             : out   std_logic; 
          s1               : out   std_logic; 
          s2               : out   std_logic; 
          s3               : out   std_logic; 
          s4               : out   std_logic; 
          s5               : out   std_logic; 
          s6               : out   std_logic; 
          temp_w           : out   std_logic);
end cpu_control_MUSER_cpu_facade;

architecture BEHAVIORAL of cpu_control_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal alu_binary                      : std_logic;
   signal alu_binary_s4                   : std_logic;
   signal alu_binary_s5                   : std_logic;
   signal alu_calc                        : std_logic;
   signal alu_port_in                     : std_logic;
   signal alu_s4                          : std_logic;
   signal alu_s6                          : std_logic;
   signal alu_unari                       : std_logic;
   signal alu_unari_s4                    : std_logic;
   signal flags_c                         : std_logic;
   signal flags_eq                        : std_logic;
   signal flags_gt                        : std_logic;
   signal flags_z                         : std_logic;
   signal flag_equals_op                  : std_logic;
   signal flg_clf_s4                      : std_logic;
   signal in_from_port_s4                 : std_logic;
   signal in_from_port_s6                 : std_logic;
   signal jmp_ifjmp_flag_equals_op        : std_logic;
   signal jmp_ifjmp_flag_equals_op_s4     : std_logic;
   signal jmp_ifjmp_flag_equals_op_s5     : std_logic;
   signal jmp_ifjmp_flag_not_equals_op    : std_logic;
   signal jmp_ifjmp_flag_not_equals_op_s4 : std_logic;
   signal jmp_ifjmp_flag_not_equals_op_s5 : std_logic;
   signal jmp_jmpr_s4                     : std_logic;
   signal jmp_jmp_s4                      : std_logic;
   signal jmp_jmp_s5                      : std_logic;
   signal ls_jmp_flg                      : std_logic;
   signal ls_ldc_s4                       : std_logic;
   signal ls_ldc_s5                       : std_logic;
   signal ls_ldc_s6                       : std_logic;
   signal ls_ldst_s4                      : std_logic;
   signal ls_ld_s5                        : std_logic;
   signal ls_st_s5                        : std_logic;
   signal op_c                            : std_logic;
   signal op_eq                           : std_logic;
   signal op_gt                           : std_logic;
   signal op_z                            : std_logic;
   signal out_to_in_from_port_s4          : std_logic;
   signal out_to_in_from_port_s5          : std_logic;
   signal out_to_port_s4                  : std_logic;
   signal out_to_port_s6                  : std_logic;
   signal pt_const_addr                   : std_logic_vector (3 downto 0);
   signal raw_int                         : std_logic;
   signal ra_int                          : std_logic;
   signal ra_0                            : std_logic;
   signal ra_1                            : std_logic;
   signal ra_2                            : std_logic;
   signal ra_3                            : std_logic;
   signal ra0_r                           : std_logic;
   signal ra0_w                           : std_logic;
   signal ra1_r                           : std_logic;
   signal ra1_w                           : std_logic;
   signal ra2_r                           : std_logic;
   signal ra2_w                           : std_logic;
   signal ra3_r                           : std_logic;
   signal ra3_w                           : std_logic;
   signal rb_int                          : std_logic;
   signal rb_0                            : std_logic;
   signal rb_1                            : std_logic;
   signal rb_2                            : std_logic;
   signal rb_3                            : std_logic;
   signal rb0_r                           : std_logic;
   signal rb1_r                           : std_logic;
   signal rb2_r                           : std_logic;
   signal rb3_r                           : std_logic;
   signal XLXN_4                          : std_logic;
   signal XLXN_5                          : std_logic;
   signal XLXN_11                         : std_logic;
   signal XLXN_12                         : std_logic;
   signal XLXN_16                         : std_logic;
   signal XLXN_22                         : std_logic;
   signal XLXN_23                         : std_logic;
   signal XLXN_30                         : std_logic;
   signal XLXN_31                         : std_logic;
   signal XLXN_32                         : std_logic;
   signal XLXN_83                         : std_logic;
   signal XLXN_84                         : std_logic;
   signal XLXN_99                         : std_logic;
   signal XLXN_155                        : std_logic;
   signal XLXN_156                        : std_logic;
   signal XLXN_157                        : std_logic;
   signal XLXN_158                        : std_logic;
   signal XLXN_435                        : std_logic;
   signal XLXN_462                        : std_logic;
   signal XLXN_811                        : std_logic;
   signal XLXN_812                        : std_logic;
   signal XLXN_813                        : std_logic;
   signal XLXN_814                        : std_logic;
   signal XLXN_981                        : std_logic;
   signal XLXN_997                        : std_logic;
   signal XLXN_1018                       : std_logic;
   signal XLXN_1019                       : std_logic;
   signal XLXN_1020                       : std_logic;
   signal XLXN_1021                       : std_logic;
   signal XLXN_1034                       : std_logic;
   signal XLXN_1063                       : std_logic;
   signal XLXN_1076                       : std_logic_vector (7 downto 0);
   signal XLXN_1077                       : std_logic_vector (7 downto 0);
   signal XLXN_1086                       : std_logic;
   signal XLXN_1089                       : std_logic;
   signal XLXN_1158                       : std_logic;
   signal XLXN_1238                       : std_logic;
   signal XLXN_1241                       : std_logic;
   signal XLXN_1242                       : std_logic;
   signal XLXN_1243                       : std_logic;
   signal XLXN_1247                       : std_logic;
   signal XLXN_1248                       : std_logic;
   signal XLXN_1249                       : std_logic;
   signal jmp_ifjmp_DUMMY                 : std_logic;
   signal alu_sum_DUMMY                   : std_logic;
   signal alu_rshift_DUMMY                : std_logic;
   signal s1_DUMMY                        : std_logic;
   signal s2_DUMMY                        : std_logic;
   signal s3_DUMMY                        : std_logic;
   signal s4_DUMMY                        : std_logic;
   signal s5_DUMMY                        : std_logic;
   signal s6_DUMMY                        : std_logic;
   signal jmp_jmpr_DUMMY                  : std_logic;
   signal alu_and_DUMMY                   : std_logic;
   signal alu_xor_DUMMY                   : std_logic;
   signal alu_or_DUMMY                    : std_logic;
   signal jmp_jmp_DUMMY                   : std_logic;
   signal flg_clf_DUMMY                   : std_logic;
   signal out_to_port_DUMMY               : std_logic;
   signal ls_ld_DUMMY                     : std_logic;
   signal alu_lshift_DUMMY                : std_logic;
   signal alu_DUMMY                       : std_logic;
   signal ground_DUMMY                    : std_logic;
   signal in_from_port_DUMMY              : std_logic;
   signal alu_not_DUMMY                   : std_logic;
   signal ls_ldc_DUMMY                    : std_logic;
   signal ls_st_DUMMY                     : std_logic;
   signal XLXI_579_dev2_openSignal        : std_logic_vector (7 downto 0);
   signal XLXI_579_dev3_openSignal        : std_logic_vector (7 downto 0);
   signal XLXI_579_dev4_openSignal        : std_logic_vector (7 downto 0);
   signal XLXI_579_dev5_openSignal        : std_logic_vector (7 downto 0);
   signal XLXI_579_dev6_openSignal        : std_logic_vector (7 downto 0);
   signal XLXI_579_dev7_openSignal        : std_logic_vector (7 downto 0);
   signal XLXI_579_dev8_openSignal        : std_logic_vector (7 downto 0);
   signal XLXI_579_dev9_openSignal        : std_logic_vector (7 downto 0);
   signal XLXI_579_dev10_openSignal       : std_logic_vector (7 downto 0);
   signal XLXI_579_dev11_openSignal       : std_logic_vector (7 downto 0);
   signal XLXI_579_dev12_openSignal       : std_logic_vector (7 downto 0);
   signal XLXI_579_dev13_openSignal       : std_logic_vector (7 downto 0);
   signal XLXI_579_dev14_openSignal       : std_logic_vector (7 downto 0);
   signal XLXI_579_dev15_openSignal       : std_logic_vector (7 downto 0);
   component stepper_MUSER_cpu_facade
      port ( clk : in    std_logic; 
             rst : in    std_logic; 
             s1  : out   std_logic; 
             s2  : out   std_logic; 
             s3  : out   std_logic; 
             s4  : out   std_logic; 
             s5  : out   std_logic; 
             s6  : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component D3_8E_MXILINX_cpu_facade
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component D2_4E_MXILINX_cpu_facade
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OR6_MXILINX_cpu_facade
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component bus_muxer_MUSER_cpu_facade
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
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_39 : label is "XLXI_39_45";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_43";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_44";
   attribute HU_SET of XLXI_252 : label is "XLXI_252_46";
   attribute HU_SET of XLXI_577 : label is "XLXI_577_47";
   attribute HU_SET of XLXI_608 : label is "XLXI_608_48";
   attribute HU_SET of XLXI_616 : label is "XLXI_616_49";
   attribute HU_SET of XLXI_637 : label is "XLXI_637_50";
begin
   XLXN_1076(7 downto 0) <= x"01";
   XLXN_1077(7 downto 0) <= x"F0";
   XLXN_1247 <= '1';
   XLXN_1248 <= '0';
   XLXN_1249 <= '1';
   alu <= alu_DUMMY;
   alu_and <= alu_and_DUMMY;
   alu_lshift <= alu_lshift_DUMMY;
   alu_not <= alu_not_DUMMY;
   alu_or <= alu_or_DUMMY;
   alu_rshift <= alu_rshift_DUMMY;
   alu_sum <= alu_sum_DUMMY;
   alu_xor <= alu_xor_DUMMY;
   flg_clf <= flg_clf_DUMMY;
   ground <= ground_DUMMY;
   in_from_port <= in_from_port_DUMMY;
   jmp_ifjmp <= jmp_ifjmp_DUMMY;
   jmp_jmp <= jmp_jmp_DUMMY;
   jmp_jmpr <= jmp_jmpr_DUMMY;
   ls_ld <= ls_ld_DUMMY;
   ls_ldc <= ls_ldc_DUMMY;
   ls_st <= ls_st_DUMMY;
   out_to_port <= out_to_port_DUMMY;
   s1 <= s1_DUMMY;
   s2 <= s2_DUMMY;
   s3 <= s3_DUMMY;
   s4 <= s4_DUMMY;
   s5 <= s5_DUMMY;
   s6 <= s6_DUMMY;
   stp : stepper_MUSER_cpu_facade
      port map (clk=>clk,
                rst=>rst,
                s1=>s2_DUMMY,
                s2=>s3_DUMMY,
                s3=>s4_DUMMY,
                s4=>s5_DUMMY,
                s5=>s6_DUMMY,
                s6=>s1_DUMMY);
   
   XLXI_2 : AND2
      port map (I0=>clkr,
                I1=>XLXN_4,
                O=>iar_r);
   
   XLXI_3 : AND2
      port map (I0=>clkr,
                I1=>XLXN_5,
                O=>bus1);
   
   XLXI_4 : AND2
      port map (I0=>clkr,
                I1=>XLXN_1238,
                O=>ram_r);
   
   XLXI_5 : AND2
      port map (I0=>XLXN_11,
                I1=>clkw,
                O=>iar_w);
   
   XLXI_6 : AND2
      port map (I0=>XLXN_12,
                I1=>clkw,
                O=>ir_w);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_16,
                I1=>clkw,
                O=>ram_a_w);
   
   XLXI_9 : GND
      port map (G=>ground_DUMMY);
   
   XLXI_11 : OR4
      port map (I0=>s1_DUMMY,
                I1=>ls_ldc_s4,
                I2=>jmp_ifjmp_flag_not_equals_op_s4,
                I3=>out_to_in_from_port_s4,
                O=>XLXN_5);
   
   XLXI_14 : OR4
      port map (I0=>ground_DUMMY,
                I1=>ground_DUMMY,
                I2=>ground_DUMMY,
                I3=>s2_DUMMY,
                O=>XLXN_12);
   
   XLXI_16 : AND2
      port map (I0=>clkr,
                I1=>XLXN_22,
                O=>acc_r);
   
   XLXI_17 : AND2
      port map (I0=>XLXN_23,
                I1=>clkw,
                O=>acc_w);
   
   XLXI_21 : OR2
      port map (I0=>XLXN_30,
                I1=>XLXN_1243,
                O=>alu_op0);
   
   XLXI_22 : OR2
      port map (I0=>XLXN_31,
                I1=>XLXN_1242,
                O=>alu_op1);
   
   XLXI_23 : OR2
      port map (I0=>XLXN_32,
                I1=>XLXN_1241,
                O=>alu_op2);
   
   XLXI_39 : D3_8E_MXILINX_cpu_facade
      port map (A0=>ir(4),
                A1=>ir(5),
                A2=>ir(6),
                E=>alu_DUMMY,
                D0=>alu_sum_DUMMY,
                D1=>alu_lshift_DUMMY,
                D2=>alu_rshift_DUMMY,
                D3=>alu_not_DUMMY,
                D4=>alu_and_DUMMY,
                D5=>alu_or_DUMMY,
                D6=>alu_xor_DUMMY,
                D7=>in_from_port_DUMMY);
   
   XLXI_40 : BUF
      port map (I=>ir(7),
                O=>alu_DUMMY);
   
   XLXI_41 : OR3
      port map (I0=>alu_not_DUMMY,
                I1=>alu_rshift_DUMMY,
                I2=>alu_lshift_DUMMY,
                O=>XLXN_83);
   
   XLXI_42 : OR4
      port map (I0=>alu_xor_DUMMY,
                I1=>alu_and_DUMMY,
                I2=>alu_or_DUMMY,
                I3=>alu_sum_DUMMY,
                O=>XLXN_84);
   
   XLXI_45 : AND2
      port map (I0=>alu_DUMMY,
                I1=>XLXN_83,
                O=>alu_unari);
   
   XLXI_46 : AND2
      port map (I0=>alu_DUMMY,
                I1=>XLXN_84,
                O=>alu_binary);
   
   XLXI_47 : D2_4E_MXILINX_cpu_facade
      port map (A0=>ir(2),
                A1=>ir(3),
                E=>XLXN_99,
                D0=>ra_0,
                D1=>ra_1,
                D2=>ra_2,
                D3=>ra_3);
   
   XLXI_48 : D2_4E_MXILINX_cpu_facade
      port map (A0=>ir(0),
                A1=>ir(1),
                E=>XLXN_99,
                D0=>rb_0,
                D1=>rb_1,
                D2=>rb_2,
                D3=>rb_3);
   
   XLXI_52 : VCC
      port map (P=>XLXN_99);
   
   XLXI_80 : AND2
      port map (I0=>XLXN_158,
                I1=>clkw,
                O=>r0_w);
   
   XLXI_81 : AND2
      port map (I0=>XLXN_157,
                I1=>clkw,
                O=>r1_w);
   
   XLXI_82 : AND2
      port map (I0=>XLXN_156,
                I1=>clkw,
                O=>r2_w);
   
   XLXI_83 : AND2
      port map (I0=>XLXN_155,
                I1=>clkw,
                O=>r3_w);
   
   XLXI_105 : AND2
      port map (I0=>s4_DUMMY,
                I1=>alu_unari,
                O=>alu_unari_s4);
   
   XLXI_138 : AND2
      port map (I0=>clkr,
                I1=>XLXN_811,
                O=>r0_r);
   
   XLXI_139 : AND2
      port map (I0=>clkr,
                I1=>XLXN_812,
                O=>r1_r);
   
   XLXI_140 : AND2
      port map (I0=>clkr,
                I1=>XLXN_813,
                O=>r2_r);
   
   XLXI_141 : AND2
      port map (I0=>clkr,
                I1=>XLXN_814,
                O=>r3_r);
   
   XLXI_228 : AND2
      port map (I0=>s4_DUMMY,
                I1=>alu_binary,
                O=>alu_binary_s4);
   
   XLXI_229 : AND2
      port map (I0=>XLXN_435,
                I1=>clkw,
                O=>temp_w);
   
   XLXI_230 : OR4
      port map (I0=>ground_DUMMY,
                I1=>ground_DUMMY,
                I2=>ground_DUMMY,
                I3=>alu_binary_s4,
                O=>XLXN_435);
   
   XLXI_250 : AND2
      port map (I0=>s5_DUMMY,
                I1=>alu_binary,
                O=>alu_binary_s5);
   
   XLXI_251 : INV
      port map (I=>alu_DUMMY,
                O=>ls_jmp_flg);
   
   XLXI_252 : D3_8E_MXILINX_cpu_facade
      port map (A0=>ir(4),
                A1=>ir(5),
                A2=>ir(6),
                E=>ls_jmp_flg,
                D0=>ls_ld_DUMMY,
                D1=>ls_st_DUMMY,
                D2=>ls_ldc_DUMMY,
                D3=>jmp_jmpr_DUMMY,
                D4=>jmp_jmp_DUMMY,
                D5=>jmp_ifjmp_DUMMY,
                D6=>flg_clf_DUMMY,
                D7=>out_to_port_DUMMY);
   
   XLXI_255 : AND2
      port map (I0=>XLXN_462,
                I1=>s4_DUMMY,
                O=>ls_ldst_s4);
   
   XLXI_260 : OR2
      port map (I0=>ls_st_DUMMY,
                I1=>ls_ld_DUMMY,
                O=>XLXN_462);
   
   XLXI_272 : AND2
      port map (I0=>ra_0,
                I1=>ra_int,
                O=>ra0_r);
   
   XLXI_273 : AND2
      port map (I0=>ra_1,
                I1=>ra_int,
                O=>ra1_r);
   
   XLXI_274 : AND2
      port map (I0=>ra_2,
                I1=>ra_int,
                O=>ra2_r);
   
   XLXI_275 : AND2
      port map (I0=>ra_3,
                I1=>ra_int,
                O=>ra3_r);
   
   XLXI_400 : AND2
      port map (I0=>rb_0,
                I1=>rb_int,
                O=>rb0_r);
   
   XLXI_401 : AND2
      port map (I0=>rb_1,
                I1=>rb_int,
                O=>rb1_r);
   
   XLXI_402 : AND2
      port map (I0=>rb_2,
                I1=>rb_int,
                O=>rb2_r);
   
   XLXI_403 : AND2
      port map (I0=>rb_3,
                I1=>rb_int,
                O=>rb3_r);
   
   XLXI_407 : OR2
      port map (I0=>ra0_r,
                I1=>rb0_r,
                O=>XLXN_811);
   
   XLXI_408 : OR2
      port map (I0=>ra1_r,
                I1=>rb1_r,
                O=>XLXN_812);
   
   XLXI_409 : OR2
      port map (I0=>ra2_r,
                I1=>rb2_r,
                O=>XLXN_813);
   
   XLXI_410 : OR2
      port map (I0=>ra3_r,
                I1=>rb3_r,
                O=>XLXN_814);
   
   XLXI_458 : AND2
      port map (I0=>ra_0,
                I1=>raw_int,
                O=>ra0_w);
   
   XLXI_459 : AND2
      port map (I0=>ra_1,
                I1=>raw_int,
                O=>ra1_w);
   
   XLXI_460 : AND2
      port map (I0=>ra_2,
                I1=>raw_int,
                O=>ra2_w);
   
   XLXI_461 : AND2
      port map (I0=>ra_3,
                I1=>raw_int,
                O=>ra3_w);
   
   XLXI_465 : OR4
      port map (I0=>in_from_port_s6,
                I1=>ls_ldc_s5,
                I2=>ls_ld_s5,
                I3=>alu_s6,
                O=>raw_int);
   
   XLXI_475 : OR2
      port map (I0=>ground_DUMMY,
                I1=>ra0_w,
                O=>XLXN_158);
   
   XLXI_476 : OR2
      port map (I0=>ground_DUMMY,
                I1=>ra1_w,
                O=>XLXN_157);
   
   XLXI_477 : OR2
      port map (I0=>ground_DUMMY,
                I1=>ra2_w,
                O=>XLXN_156);
   
   XLXI_478 : OR2
      port map (I0=>ground_DUMMY,
                I1=>ra3_w,
                O=>XLXN_155);
   
   XLXI_487 : AND2
      port map (I0=>ls_ld_DUMMY,
                I1=>s5_DUMMY,
                O=>ls_ld_s5);
   
   XLXI_491 : AND2
      port map (I0=>ls_st_DUMMY,
                I1=>s5_DUMMY,
                O=>ls_st_s5);
   
   XLXI_492 : AND2
      port map (I0=>XLXN_981,
                I1=>clkw,
                O=>ram_w);
   
   XLXI_493 : OR4
      port map (I0=>ground_DUMMY,
                I1=>ground_DUMMY,
                I2=>out_to_port_s6,
                I3=>ls_st_s5,
                O=>XLXN_981);
   
   XLXI_494 : AND2
      port map (I0=>ls_ldc_DUMMY,
                I1=>s4_DUMMY,
                O=>ls_ldc_s4);
   
   XLXI_498 : AND2
      port map (I0=>ls_ldc_DUMMY,
                I1=>s5_DUMMY,
                O=>ls_ldc_s5);
   
   XLXI_499 : AND2
      port map (I0=>ls_ldc_DUMMY,
                I1=>s6_DUMMY,
                O=>ls_ldc_s6);
   
   XLXI_500 : AND2
      port map (I0=>jmp_jmpr_DUMMY,
                I1=>s4_DUMMY,
                O=>jmp_jmpr_s4);
   
   XLXI_501 : AND2
      port map (I0=>jmp_jmp_DUMMY,
                I1=>s4_DUMMY,
                O=>jmp_jmp_s4);
   
   XLXI_503 : AND2
      port map (I0=>XLXN_997,
                I1=>clkw,
                O=>flags_w);
   
   XLXI_505 : BUF
      port map (I=>flags(3),
                O=>flags_z);
   
   XLXI_506 : BUF
      port map (I=>flags(2),
                O=>flags_eq);
   
   XLXI_507 : BUF
      port map (I=>flags(1),
                O=>flags_gt);
   
   XLXI_508 : BUF
      port map (I=>flags(0),
                O=>flags_c);
   
   XLXI_509 : OR2
      port map (I0=>alu_binary_s5,
                I1=>alu_unari_s4,
                O=>XLXN_997);
   
   XLXI_526 : BUF
      port map (I=>ir(0),
                O=>op_c);
   
   XLXI_527 : BUF
      port map (I=>ir(1),
                O=>op_gt);
   
   XLXI_528 : BUF
      port map (I=>ir(2),
                O=>op_eq);
   
   XLXI_529 : BUF
      port map (I=>ir(3),
                O=>op_z);
   
   XLXI_530 : OR4
      port map (I0=>XLXN_1021,
                I1=>XLXN_1020,
                I2=>XLXN_1019,
                I3=>XLXN_1018,
                O=>flag_equals_op);
   
   XLXI_532 : AND2
      port map (I0=>op_c,
                I1=>flags_c,
                O=>XLXN_1018);
   
   XLXI_533 : AND2
      port map (I0=>op_gt,
                I1=>flags_gt,
                O=>XLXN_1019);
   
   XLXI_534 : AND2
      port map (I0=>op_eq,
                I1=>flags_eq,
                O=>XLXN_1020);
   
   XLXI_535 : AND2
      port map (I0=>op_z,
                I1=>flags_z,
                O=>XLXN_1021);
   
   XLXI_541 : AND2
      port map (I0=>flag_equals_op,
                I1=>jmp_ifjmp_DUMMY,
                O=>jmp_ifjmp_flag_equals_op);
   
   XLXI_547 : AND2
      port map (I0=>jmp_ifjmp_flag_equals_op,
                I1=>s4_DUMMY,
                O=>jmp_ifjmp_flag_equals_op_s4);
   
   XLXI_548 : AND2
      port map (I0=>jmp_ifjmp_flag_equals_op,
                I1=>s5_DUMMY,
                O=>jmp_ifjmp_flag_equals_op_s5);
   
   XLXI_551 : AND2
      port map (I0=>flg_clf_s4,
                I1=>clkw,
                O=>flags_clr);
   
   XLXI_552 : AND2
      port map (I0=>flg_clf_DUMMY,
                I1=>s4_DUMMY,
                O=>flg_clf_s4);
   
   XLXI_553 : OR2
      port map (I0=>alu_binary_s5,
                I1=>alu_unari_s4,
                O=>XLXN_1034);
   
   XLXI_554 : AND2
      port map (I0=>clkr,
                I1=>XLXN_1034,
                O=>alu_C_in_enabled);
   
   XLXI_555 : OR2
      port map (I0=>alu_binary_s5,
                I1=>alu_unari_s4,
                O=>alu_calc);
   
   XLXI_557 : AND3B1
      port map (I0=>s1_DUMMY,
                I1=>ir(4),
                I2=>alu_calc,
                O=>XLXN_30);
   
   XLXI_558 : AND3B1
      port map (I0=>s1_DUMMY,
                I1=>ir(5),
                I2=>alu_calc,
                O=>XLXN_31);
   
   XLXI_559 : AND3B1
      port map (I0=>s1_DUMMY,
                I1=>ir(6),
                I2=>alu_calc,
                O=>XLXN_32);
   
   XLXI_563 : AND2
      port map (I0=>jmp_jmp_DUMMY,
                I1=>s5_DUMMY,
                O=>jmp_jmp_s5);
   
   XLXI_571 : AND2
      port map (I0=>jmp_ifjmp_flag_not_equals_op,
                I1=>s4_DUMMY,
                O=>jmp_ifjmp_flag_not_equals_op_s4);
   
   XLXI_572 : AND2
      port map (I0=>jmp_ifjmp_flag_not_equals_op,
                I1=>s5_DUMMY,
                O=>jmp_ifjmp_flag_not_equals_op_s5);
   
   XLXI_573 : AND2
      port map (I0=>XLXN_1063,
                I1=>jmp_ifjmp_DUMMY,
                O=>jmp_ifjmp_flag_not_equals_op);
   
   XLXI_574 : INV
      port map (I=>flag_equals_op,
                O=>XLXN_1063);
   
   XLXI_575 : OR5
      port map (I0=>s1_DUMMY,
                I1=>ls_ldc_s4,
                I2=>jmp_ifjmp_flag_equals_op_s4,
                I3=>jmp_jmp_s4,
                I4=>jmp_ifjmp_flag_not_equals_op_s4,
                O=>XLXN_4);
   
   XLXI_577 : OR6_MXILINX_cpu_facade
      port map (I0=>jmp_ifjmp_flag_not_equals_op_s5,
                I1=>jmp_ifjmp_flag_equals_op_s5,
                I2=>jmp_jmp_s5,
                I3=>jmp_jmpr_s4,
                I4=>ls_ldc_s6,
                I5=>s3_DUMMY,
                O=>XLXN_11);
   
   XLXI_578 : AND2
      port map (I0=>out_to_port_DUMMY,
                I1=>s4_DUMMY,
                O=>out_to_port_s4);
   
   XLXI_579 : bus_muxer_MUSER_cpu_facade
      port map (a(3 downto 0)=>pt_const_addr(3 downto 0),
                dev0(7 downto 0)=>XLXN_1076(7 downto 0),
                dev1(7 downto 0)=>XLXN_1077(7 downto 0),
                dev2(7 downto 0)=>XLXI_579_dev2_openSignal(7 downto 0),
                dev3(7 downto 0)=>XLXI_579_dev3_openSignal(7 downto 0),
                dev4(7 downto 0)=>XLXI_579_dev4_openSignal(7 downto 0),
                dev5(7 downto 0)=>XLXI_579_dev5_openSignal(7 downto 0),
                dev6(7 downto 0)=>XLXI_579_dev6_openSignal(7 downto 0),
                dev7(7 downto 0)=>XLXI_579_dev7_openSignal(7 downto 0),
                dev8(7 downto 0)=>XLXI_579_dev8_openSignal(7 downto 0),
                dev9(7 downto 0)=>XLXI_579_dev9_openSignal(7 downto 0),
                dev10(7 downto 0)=>XLXI_579_dev10_openSignal(7 downto 0),
                dev11(7 downto 0)=>XLXI_579_dev11_openSignal(7 downto 0),
                dev12(7 downto 0)=>XLXI_579_dev12_openSignal(7 downto 0),
                dev13(7 downto 0)=>XLXI_579_dev13_openSignal(7 downto 0),
                dev14(7 downto 0)=>XLXI_579_dev14_openSignal(7 downto 0),
                dev15(7 downto 0)=>XLXI_579_dev15_openSignal(7 downto 0),
                e=>XLXN_1089,
                o(7 downto 0)=>pt_const(7 downto 0));
   
   XLXI_585 : BUF
      port map (I=>out_to_in_from_port_s4,
                O=>pt_const_addr(0));
   
   XLXI_586 : BUF
      port map (I=>XLXN_1086,
                O=>pt_const_addr(1));
   
   XLXI_587 : BUF
      port map (I=>XLXN_1086,
                O=>pt_const_addr(2));
   
   XLXI_588 : BUF
      port map (I=>XLXN_1086,
                O=>pt_const_addr(3));
   
   XLXI_589 : VCC
      port map (P=>XLXN_1089);
   
   XLXI_590 : GND
      port map (G=>XLXN_1086);
   
   XLXI_597 : AND2
      port map (I0=>in_from_port_DUMMY,
                I1=>s4_DUMMY,
                O=>in_from_port_s4);
   
   XLXI_601 : OR2
      port map (I0=>in_from_port_s4,
                I1=>out_to_port_s4,
                O=>out_to_in_from_port_s4);
   
   XLXI_602 : OR4
      port map (I0=>out_to_port_s4,
                I1=>jmp_jmpr_s4,
                I2=>ls_st_s5,
                I3=>alu_s4,
                O=>ra_int);
   
   XLXI_608 : OR6_MXILINX_cpu_facade
      port map (I0=>out_to_in_from_port_s4,
                I1=>jmp_ifjmp_flag_not_equals_op_s4,
                I2=>ls_ldc_s4,
                I3=>alu_binary_s5,
                I4=>alu_unari_s4,
                I5=>s1_DUMMY,
                O=>XLXN_23);
   
   XLXI_613 : OR2
      port map (I0=>in_from_port_DUMMY,
                I1=>out_to_port_DUMMY,
                O=>XLXN_1158);
   
   XLXI_614 : AND2
      port map (I0=>XLXN_1158,
                I1=>s5_DUMMY,
                O=>out_to_in_from_port_s5);
   
   XLXI_615 : OR5
      port map (I0=>s3_DUMMY,
                I1=>alu_s6,
                I2=>ls_ldc_s6,
                I3=>jmp_ifjmp_flag_not_equals_op_s5,
                I4=>out_to_in_from_port_s5,
                O=>XLXN_22);
   
   XLXI_616 : OR6_MXILINX_cpu_facade
      port map (I0=>jmp_jmp_s4,
                I1=>jmp_ifjmp_flag_equals_op_s4,
                I2=>ls_ldc_s4,
                I3=>ls_ldst_s4,
                I4=>s1_DUMMY,
                I5=>out_to_in_from_port_s5,
                O=>XLXN_16);
   
   XLXI_623 : AND2
      port map (I0=>out_to_port_DUMMY,
                I1=>s6_DUMMY,
                O=>out_to_port_s6);
   
   XLXI_624 : AND2
      port map (I0=>in_from_port_DUMMY,
                I1=>s6_DUMMY,
                O=>in_from_port_s6);
   
   XLXI_625 : OR4
      port map (I0=>out_to_port_s6,
                I1=>in_from_port_s4,
                I2=>ls_ldst_s4,
                I3=>alu_binary_s5,
                O=>rb_int);
   
   XLXI_637 : OR6_MXILINX_cpu_facade
      port map (I0=>s2_DUMMY,
                I1=>ls_ld_s5,
                I2=>ls_ldc_s5,
                I3=>jmp_jmp_s5,
                I4=>jmp_ifjmp_flag_equals_op_s5,
                I5=>in_from_port_s6,
                O=>XLXN_1238);
   
   XLXI_638 : AND3B1
      port map (I0=>alu_port_in,
                I1=>s4_DUMMY,
                I2=>alu_DUMMY,
                O=>alu_s4);
   
   XLXI_639 : AND3B1
      port map (I0=>alu_port_in,
                I1=>s6_DUMMY,
                I2=>alu_DUMMY,
                O=>alu_s6);
   
   XLXI_641 : AND4
      port map (I0=>ir(7),
                I1=>ir(6),
                I2=>ir(5),
                I3=>ir(4),
                O=>alu_port_in);
   
   XLXI_642 : AND3B1
      port map (I0=>s1_DUMMY,
                I1=>XLXN_1247,
                I2=>out_to_in_from_port_s4,
                O=>XLXN_1243);
   
   XLXI_643 : AND3B1
      port map (I0=>s1_DUMMY,
                I1=>XLXN_1248,
                I2=>out_to_in_from_port_s4,
                O=>XLXN_1242);
   
   XLXI_644 : AND3B1
      port map (I0=>s1_DUMMY,
                I1=>XLXN_1249,
                I2=>out_to_in_from_port_s4,
                O=>XLXN_1241);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_freq_divider_base_MUSER_cpu_facade is
   port ( in_clk       : in    std_logic; 
          in_clr       : in    std_logic; 
          out_clk_high : out   std_logic_vector (15 downto 0); 
          out_clk_low  : out   std_logic_vector (15 downto 0));
end cpu_freq_divider_base_MUSER_cpu_facade;

architecture BEHAVIORAL of cpu_freq_divider_base_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_3       : std_logic;
   signal XLXN_4       : std_logic;
   component CB16CE_MXILINX_cpu_facade
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_51";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_52";
begin
   XLXI_1 : CB16CE_MXILINX_cpu_facade
      port map (C=>in_clk,
                CE=>XLXN_4,
                CLR=>in_clr,
                CEO=>XLXN_3,
                Q(15 downto 0)=>out_clk_low(15 downto 0),
                TC=>open);
   
   XLXI_2 : CB16CE_MXILINX_cpu_facade
      port map (C=>in_clk,
                CE=>XLXN_3,
                CLR=>in_clr,
                CEO=>open,
                Q(15 downto 0)=>out_clk_high(15 downto 0),
                TC=>open);
   
   XLXI_3 : VCC
      port map (P=>XLXN_4);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_freq_divider_1KHz_MUSER_cpu_facade is
   port ( in_clk  : in    std_logic; 
          in_clr  : in    std_logic; 
          out_clk : out   std_logic);
end cpu_freq_divider_1KHz_MUSER_cpu_facade;

architecture BEHAVIORAL of cpu_freq_divider_1KHz_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal half_period_tick : std_logic;
   signal high             : std_logic_vector (15 downto 0);
   signal XLXN_37          : std_logic;
   signal XLXN_38          : std_logic;
   signal XLXN_44          : std_logic;
   signal XLXN_45          : std_logic;
   signal XLXN_46          : std_logic;
   signal XLXN_47          : std_logic;
   component cpu_freq_divider_base_MUSER_cpu_facade
      port ( in_clk       : in    std_logic; 
             in_clr       : in    std_logic; 
             out_clk_high : out   std_logic_vector (15 downto 0); 
             out_clk_low  : out   std_logic_vector (15 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FJKC_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_15 : label is "XLXI_15_53";
begin
   XLXI_1 : cpu_freq_divider_base_MUSER_cpu_facade
      port map (in_clk=>in_clk,
                in_clr=>XLXN_37,
                out_clk_high=>open,
                out_clk_low(15 downto 0)=>high(15 downto 0));
   
   XLXI_14 : OR2
      port map (I0=>half_period_tick,
                I1=>in_clr,
                O=>XLXN_37);
   
   XLXI_15 : FJKC_MXILINX_cpu_facade
      port map (C=>half_period_tick,
                CLR=>in_clr,
                J=>XLXN_38,
                K=>XLXN_38,
                Q=>out_clk);
   
   XLXI_16 : VCC
      port map (P=>XLXN_38);
   
   XLXI_23 : BUF
      port map (I=>high(5),
                O=>XLXN_44);
   
   XLXI_24 : BUF
      port map (I=>high(6),
                O=>XLXN_45);
   
   XLXI_25 : BUF
      port map (I=>high(7),
                O=>XLXN_46);
   
   XLXI_26 : BUF
      port map (I=>high(12),
                O=>XLXN_47);
   
   XLXI_27 : AND4
      port map (I0=>XLXN_44,
                I1=>XLXN_45,
                I2=>XLXN_46,
                I3=>XLXN_47,
                O=>half_period_tick);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_freq_divider_1Inst_MUSER_cpu_facade is
   port ( in_clk  : in    std_logic; 
          in_clr  : in    std_logic; 
          out_clk : out   std_logic);
end cpu_freq_divider_1Inst_MUSER_cpu_facade;

architecture BEHAVIORAL of cpu_freq_divider_1Inst_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal half_period_tick : std_logic;
   signal high             : std_logic_vector (15 downto 0);
   signal XLXN_37          : std_logic;
   signal XLXN_38          : std_logic;
   component cpu_freq_divider_base_MUSER_cpu_facade
      port ( in_clk       : in    std_logic; 
             in_clr       : in    std_logic; 
             out_clk_high : out   std_logic_vector (15 downto 0); 
             out_clk_low  : out   std_logic_vector (15 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FJKC_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_15 : label is "XLXI_15_54";
begin
   XLXI_1 : cpu_freq_divider_base_MUSER_cpu_facade
      port map (in_clk=>in_clk,
                in_clr=>XLXN_37,
                out_clk_high(15 downto 0)=>high(15 downto 0),
                out_clk_low=>open);
   
   XLXI_14 : OR2
      port map (I0=>half_period_tick,
                I1=>in_clr,
                O=>XLXN_37);
   
   XLXI_15 : FJKC_MXILINX_cpu_facade
      port map (C=>half_period_tick,
                CLR=>in_clr,
                J=>XLXN_38,
                K=>XLXN_38,
                Q=>out_clk);
   
   XLXI_16 : VCC
      port map (P=>XLXN_38);
   
   XLXI_23 : BUF
      port map (I=>high(3),
                O=>half_period_tick);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND7_MXILINX_cpu_facade is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          O  : out   std_logic);
end AND7_MXILINX_cpu_facade;

architecture BEHAVIORAL of AND7_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal I36     : std_logic;
   signal O_DUMMY : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   attribute RLOC of I_36_98 : label is "X0Y0";
   attribute RLOC of I_36_110 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_69 : AND4
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                I3=>I6,
                O=>I36);
   
   I_36_85 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I36,
                O=>O_DUMMY);
   
   I_36_98 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I36,
                O=>O_DUMMY);
   
   I_36_110 : FMAP
      port map (I1=>I3,
                I2=>I4,
                I3=>I5,
                I4=>I6,
                O=>I36);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_freq_divider_1Hz_MUSER_cpu_facade is
   port ( in_clk  : in    std_logic; 
          in_clr  : in    std_logic; 
          out_clk : out   std_logic);
end cpu_freq_divider_1Hz_MUSER_cpu_facade;

architecture BEHAVIORAL of cpu_freq_divider_1Hz_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal half_period_tick : std_logic;
   signal high             : std_logic_vector (15 downto 0);
   signal low              : std_logic_vector (15 downto 0);
   signal XLXN_9           : std_logic;
   signal XLXN_10          : std_logic;
   signal XLXN_11          : std_logic;
   signal XLXN_12          : std_logic;
   signal XLXN_13          : std_logic;
   signal XLXN_24          : std_logic;
   signal XLXN_25          : std_logic;
   signal XLXN_26          : std_logic;
   signal XLXN_27          : std_logic;
   signal XLXN_29          : std_logic;
   signal XLXN_30          : std_logic;
   signal XLXN_31          : std_logic;
   signal XLXN_34          : std_logic;
   signal XLXN_35          : std_logic;
   signal XLXN_37          : std_logic;
   signal XLXN_38          : std_logic;
   component cpu_freq_divider_base_MUSER_cpu_facade
      port ( in_clk       : in    std_logic; 
             in_clr       : in    std_logic; 
             out_clk_high : out   std_logic_vector (15 downto 0); 
             out_clk_low  : out   std_logic_vector (15 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component AND7_MXILINX_cpu_facade
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FJKC_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_15 : label is "XLXI_15_55";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_56";
begin
   XLXI_1 : cpu_freq_divider_base_MUSER_cpu_facade
      port map (in_clk=>in_clk,
                in_clr=>XLXN_37,
                out_clk_high(15 downto 0)=>high(15 downto 0),
                out_clk_low(15 downto 0)=>low(15 downto 0));
   
   XLXI_2 : BUF
      port map (I=>low(12),
                O=>XLXN_9);
   
   XLXI_3 : BUF
      port map (I=>low(11),
                O=>XLXN_10);
   
   XLXI_4 : BUF
      port map (I=>low(10),
                O=>XLXN_11);
   
   XLXI_5 : BUF
      port map (I=>low(9),
                O=>XLXN_12);
   
   XLXI_6 : BUF
      port map (I=>low(4),
                O=>XLXN_13);
   
   XLXI_7 : BUF
      port map (I=>high(0),
                O=>XLXN_24);
   
   XLXI_8 : BUF
      port map (I=>high(2),
                O=>XLXN_25);
   
   XLXI_9 : BUF
      port map (I=>high(3),
                O=>XLXN_26);
   
   XLXI_10 : BUF
      port map (I=>high(4),
                O=>XLXN_27);
   
   XLXI_11 : BUF
      port map (I=>high(5),
                O=>XLXN_29);
   
   XLXI_12 : BUF
      port map (I=>high(6),
                O=>XLXN_30);
   
   XLXI_13 : BUF
      port map (I=>high(8),
                O=>XLXN_31);
   
   XLXI_14 : AND5
      port map (I0=>XLXN_13,
                I1=>XLXN_12,
                I2=>XLXN_11,
                I3=>XLXN_10,
                I4=>XLXN_9,
                O=>XLXN_34);
   
   XLXI_15 : AND7_MXILINX_cpu_facade
      port map (I0=>XLXN_31,
                I1=>XLXN_30,
                I2=>XLXN_29,
                I3=>XLXN_27,
                I4=>XLXN_26,
                I5=>XLXN_25,
                I6=>XLXN_24,
                O=>XLXN_35);
   
   XLXI_16 : AND2
      port map (I0=>XLXN_35,
                I1=>XLXN_34,
                O=>half_period_tick);
   
   XLXI_17 : OR2
      port map (I0=>half_period_tick,
                I1=>in_clr,
                O=>XLXN_37);
   
   XLXI_18 : FJKC_MXILINX_cpu_facade
      port map (C=>half_period_tick,
                CLR=>in_clr,
                J=>XLXN_38,
                K=>XLXN_38,
                Q=>out_clk);
   
   XLXI_19 : VCC
      port map (P=>XLXN_38);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND6_MXILINX_cpu_facade is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          O  : out   std_logic);
end AND6_MXILINX_cpu_facade;

architecture BEHAVIORAL of AND6_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal I35     : std_logic;
   signal O_DUMMY : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   attribute RLOC of I_36_93 : label is "X0Y0";
   attribute RLOC of I_36_94 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_69 : AND3
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                O=>I35);
   
   I_36_85 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I35,
                O=>O_DUMMY);
   
   I_36_93 : FMAP
      port map (I1=>I3,
                I2=>I4,
                I3=>I5,
                I4=>dummy,
                O=>I35);
   
   I_36_94 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I35,
                O=>O_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_freq_divider_1Stg_MUSER_cpu_facade is
   port ( in_clk  : in    std_logic; 
          in_clr  : in    std_logic; 
          out_clk : out   std_logic);
end cpu_freq_divider_1Stg_MUSER_cpu_facade;

architecture BEHAVIORAL of cpu_freq_divider_1Stg_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal half_period_tick : std_logic;
   signal high             : std_logic_vector (15 downto 0);
   signal low              : std_logic_vector (15 downto 0);
   signal XLXN_3           : std_logic;
   signal XLXN_4           : std_logic;
   signal XLXN_5           : std_logic;
   signal XLXN_6           : std_logic;
   signal XLXN_7           : std_logic;
   signal XLXN_10          : std_logic;
   signal XLXN_26          : std_logic;
   signal XLXN_27          : std_logic;
   signal XLXN_29          : std_logic;
   signal XLXN_30          : std_logic;
   signal XLXN_31          : std_logic;
   signal XLXN_34          : std_logic;
   signal XLXN_35          : std_logic;
   signal XLXN_37          : std_logic;
   signal XLXN_38          : std_logic;
   signal XLXN_43          : std_logic;
   component cpu_freq_divider_base_MUSER_cpu_facade
      port ( in_clk       : in    std_logic; 
             in_clr       : in    std_logic; 
             out_clk_high : out   std_logic_vector (15 downto 0); 
             out_clk_low  : out   std_logic_vector (15 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FJKC_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND6_MXILINX_cpu_facade
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_18 : label is "XLXI_18_57";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_58";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_59";
begin
   XLXI_1 : cpu_freq_divider_base_MUSER_cpu_facade
      port map (in_clk=>in_clk,
                in_clr=>XLXN_37,
                out_clk_high(15 downto 0)=>high(15 downto 0),
                out_clk_low(15 downto 0)=>low(15 downto 0));
   
   XLXI_2 : BUF
      port map (I=>low(10),
                O=>XLXN_3);
   
   XLXI_3 : BUF
      port map (I=>low(9),
                O=>XLXN_4);
   
   XLXI_4 : BUF
      port map (I=>low(8),
                O=>XLXN_5);
   
   XLXI_5 : BUF
      port map (I=>low(7),
                O=>XLXN_6);
   
   XLXI_6 : BUF
      port map (I=>low(2),
                O=>XLXN_7);
   
   XLXI_8 : BUF
      port map (I=>high(0),
                O=>XLXN_10);
   
   XLXI_9 : BUF
      port map (I=>high(1),
                O=>XLXN_26);
   
   XLXI_10 : BUF
      port map (I=>high(2),
                O=>XLXN_27);
   
   XLXI_11 : BUF
      port map (I=>high(3),
                O=>XLXN_29);
   
   XLXI_12 : BUF
      port map (I=>high(4),
                O=>XLXN_30);
   
   XLXI_13 : BUF
      port map (I=>high(6),
                O=>XLXN_31);
   
   XLXI_16 : AND2
      port map (I0=>XLXN_35,
                I1=>XLXN_34,
                O=>half_period_tick);
   
   XLXI_17 : OR2
      port map (I0=>half_period_tick,
                I1=>in_clr,
                O=>XLXN_37);
   
   XLXI_18 : FJKC_MXILINX_cpu_facade
      port map (C=>half_period_tick,
                CLR=>in_clr,
                J=>XLXN_38,
                K=>XLXN_38,
                Q=>out_clk);
   
   XLXI_19 : VCC
      port map (P=>XLXN_38);
   
   XLXI_20 : BUF
      port map (I=>low(14),
                O=>XLXN_43);
   
   XLXI_21 : AND6_MXILINX_cpu_facade
      port map (I0=>XLXN_7,
                I1=>XLXN_6,
                I2=>XLXN_5,
                I3=>XLXN_4,
                I4=>XLXN_3,
                I5=>XLXN_43,
                O=>XLXN_34);
   
   XLXI_22 : AND6_MXILINX_cpu_facade
      port map (I0=>XLXN_31,
                I1=>XLXN_30,
                I2=>XLXN_29,
                I3=>XLXN_27,
                I4=>XLXN_26,
                I5=>XLXN_10,
                O=>XLXN_35);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND8_MXILINX_cpu_facade is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end AND8_MXILINX_cpu_facade;

architecture BEHAVIORAL of AND8_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal O_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_29 : label is "X0Y0";
   attribute RLOC of I_36_138 : label is "X0Y0";
   attribute RLOC of I_36_152 : label is "X0Y1";
begin
   O <= O_DUMMY;
   I_36_29 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_110 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : AND4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_138 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
   I_36_142 : AND2
      port map (I0=>S0,
                I1=>S1,
                O=>O_DUMMY);
   
   I_36_152 : FMAP
      port map (I1=>S0,
                I2=>S1,
                I3=>dummy,
                I4=>dummy,
                O=>O_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity freq_divider_MUSER_cpu_facade is
   port ( clk_in  : in    std_logic; 
          divider : in    std_logic_vector (31 downto 0); 
          rst     : in    std_logic; 
          clk_out : out   std_logic);
end freq_divider_MUSER_cpu_facade;

architecture BEHAVIORAL of freq_divider_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal clr      : std_logic;
   signal cnt_1    : std_logic_vector (15 downto 0);
   signal cnt_2    : std_logic_vector (15 downto 0);
   signal eq       : std_logic;
   signal XLXN_2   : std_logic;
   signal XLXN_4   : std_logic;
   signal XLXN_55  : std_logic;
   signal XLXN_56  : std_logic;
   signal XLXN_57  : std_logic;
   signal XLXN_58  : std_logic;
   signal XLXN_59  : std_logic;
   signal XLXN_60  : std_logic;
   signal XLXN_61  : std_logic;
   signal XLXN_62  : std_logic;
   signal XLXN_63  : std_logic;
   signal XLXN_64  : std_logic;
   signal XLXN_65  : std_logic;
   signal XLXN_66  : std_logic;
   signal XLXN_67  : std_logic;
   signal XLXN_68  : std_logic;
   signal XLXN_69  : std_logic;
   signal XLXN_70  : std_logic;
   signal XLXN_82  : std_logic;
   signal XLXN_83  : std_logic;
   signal XLXN_86  : std_logic;
   signal XLXN_122 : std_logic;
   signal XLXN_123 : std_logic;
   signal XLXN_124 : std_logic;
   signal XLXN_125 : std_logic;
   signal XLXN_126 : std_logic;
   signal XLXN_128 : std_logic;
   signal XLXN_129 : std_logic;
   signal XLXN_130 : std_logic;
   signal XLXN_132 : std_logic;
   signal XLXN_134 : std_logic;
   signal XLXN_136 : std_logic;
   signal XLXN_137 : std_logic;
   signal XLXN_138 : std_logic;
   signal XLXN_139 : std_logic;
   signal XLXN_141 : std_logic;
   signal XLXN_142 : std_logic;
   signal XLXN_160 : std_logic;
   signal XLXN_161 : std_logic;
   component CB16CE_MXILINX_cpu_facade
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND8_MXILINX_cpu_facade
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
   
   component FJKC_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_61";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_60";
   attribute HU_SET of XLXI_123 : label is "XLXI_123_62";
   attribute HU_SET of XLXI_124 : label is "XLXI_124_63";
   attribute HU_SET of XLXI_128 : label is "XLXI_128_66";
   attribute HU_SET of XLXI_149 : label is "XLXI_149_64";
   attribute HU_SET of XLXI_150 : label is "XLXI_150_65";
begin
   XLXI_1 : CB16CE_MXILINX_cpu_facade
      port map (C=>clk_in,
                CE=>XLXN_4,
                CLR=>clr,
                CEO=>XLXN_2,
                Q(15 downto 0)=>cnt_1(15 downto 0),
                TC=>open);
   
   XLXI_2 : CB16CE_MXILINX_cpu_facade
      port map (C=>clk_in,
                CE=>XLXN_2,
                CLR=>clr,
                CEO=>open,
                Q(15 downto 0)=>cnt_2(15 downto 0),
                TC=>open);
   
   XLXI_5 : VCC
      port map (P=>XLXN_4);
   
   XLXI_18 : XNOR2
      port map (I0=>divider(0),
                I1=>cnt_1(0),
                O=>XLXN_70);
   
   XLXI_19 : XNOR2
      port map (I0=>divider(2),
                I1=>cnt_1(2),
                O=>XLXN_55);
   
   XLXI_20 : XNOR2
      port map (I0=>divider(4),
                I1=>cnt_1(4),
                O=>XLXN_58);
   
   XLXI_21 : XNOR2
      port map (I0=>divider(6),
                I1=>cnt_1(6),
                O=>XLXN_65);
   
   XLXI_22 : XNOR2
      port map (I0=>divider(8),
                I1=>cnt_1(8),
                O=>XLXN_66);
   
   XLXI_24 : XNOR2
      port map (I0=>divider(10),
                I1=>cnt_1(10),
                O=>XLXN_67);
   
   XLXI_25 : XNOR2
      port map (I0=>divider(12),
                I1=>cnt_1(12),
                O=>XLXN_68);
   
   XLXI_26 : XNOR2
      port map (I0=>divider(14),
                I1=>cnt_1(14),
                O=>XLXN_69);
   
   XLXI_115 : XNOR2
      port map (I0=>divider(1),
                I1=>cnt_1(1),
                O=>XLXN_56);
   
   XLXI_116 : XNOR2
      port map (I0=>divider(3),
                I1=>cnt_1(3),
                O=>XLXN_57);
   
   XLXI_117 : XNOR2
      port map (I0=>divider(5),
                I1=>cnt_1(5),
                O=>XLXN_59);
   
   XLXI_118 : XNOR2
      port map (I0=>divider(7),
                I1=>cnt_1(7),
                O=>XLXN_60);
   
   XLXI_119 : XNOR2
      port map (I0=>divider(9),
                I1=>cnt_1(9),
                O=>XLXN_61);
   
   XLXI_120 : XNOR2
      port map (I0=>divider(11),
                I1=>cnt_1(11),
                O=>XLXN_62);
   
   XLXI_121 : XNOR2
      port map (I0=>divider(13),
                I1=>cnt_1(13),
                O=>XLXN_63);
   
   XLXI_122 : XNOR2
      port map (I0=>divider(15),
                I1=>cnt_1(15),
                O=>XLXN_64);
   
   XLXI_123 : AND8_MXILINX_cpu_facade
      port map (I0=>XLXN_60,
                I1=>XLXN_65,
                I2=>XLXN_59,
                I3=>XLXN_58,
                I4=>XLXN_57,
                I5=>XLXN_55,
                I6=>XLXN_56,
                I7=>XLXN_70,
                O=>XLXN_82);
   
   XLXI_124 : AND8_MXILINX_cpu_facade
      port map (I0=>XLXN_64,
                I1=>XLXN_69,
                I2=>XLXN_63,
                I3=>XLXN_68,
                I4=>XLXN_62,
                I5=>XLXN_67,
                I6=>XLXN_61,
                I7=>XLXN_66,
                O=>XLXN_83);
   
   XLXI_128 : FJKC_MXILINX_cpu_facade
      port map (C=>eq,
                CLR=>rst,
                J=>XLXN_86,
                K=>XLXN_86,
                Q=>clk_out);
   
   XLXI_129 : VCC
      port map (P=>XLXN_86);
   
   XLXI_133 : XNOR2
      port map (I0=>divider(16),
                I1=>cnt_2(0),
                O=>XLXN_142);
   
   XLXI_134 : XNOR2
      port map (I0=>divider(18),
                I1=>cnt_2(2),
                O=>XLXN_122);
   
   XLXI_135 : XNOR2
      port map (I0=>divider(20),
                I1=>cnt_2(4),
                O=>XLXN_125);
   
   XLXI_136 : XNOR2
      port map (I0=>divider(22),
                I1=>cnt_2(6),
                O=>XLXN_136);
   
   XLXI_137 : XNOR2
      port map (I0=>divider(24),
                I1=>cnt_2(8),
                O=>XLXN_137);
   
   XLXI_138 : XNOR2
      port map (I0=>divider(26),
                I1=>cnt_2(10),
                O=>XLXN_138);
   
   XLXI_139 : XNOR2
      port map (I0=>divider(28),
                I1=>cnt_2(12),
                O=>XLXN_139);
   
   XLXI_140 : XNOR2
      port map (I0=>divider(30),
                I1=>cnt_2(14),
                O=>XLXN_141);
   
   XLXI_141 : XNOR2
      port map (I0=>divider(17),
                I1=>cnt_2(1),
                O=>XLXN_123);
   
   XLXI_142 : XNOR2
      port map (I0=>divider(19),
                I1=>cnt_2(3),
                O=>XLXN_124);
   
   XLXI_143 : XNOR2
      port map (I0=>divider(21),
                I1=>cnt_2(5),
                O=>XLXN_126);
   
   XLXI_144 : XNOR2
      port map (I0=>divider(23),
                I1=>cnt_2(7),
                O=>XLXN_128);
   
   XLXI_145 : XNOR2
      port map (I0=>divider(25),
                I1=>cnt_2(9),
                O=>XLXN_129);
   
   XLXI_146 : XNOR2
      port map (I0=>divider(27),
                I1=>cnt_2(11),
                O=>XLXN_130);
   
   XLXI_147 : XNOR2
      port map (I0=>divider(29),
                I1=>cnt_2(13),
                O=>XLXN_132);
   
   XLXI_148 : XNOR2
      port map (I0=>divider(31),
                I1=>cnt_2(15),
                O=>XLXN_134);
   
   XLXI_149 : AND8_MXILINX_cpu_facade
      port map (I0=>XLXN_128,
                I1=>XLXN_136,
                I2=>XLXN_126,
                I3=>XLXN_125,
                I4=>XLXN_124,
                I5=>XLXN_122,
                I6=>XLXN_123,
                I7=>XLXN_142,
                O=>XLXN_160);
   
   XLXI_150 : AND8_MXILINX_cpu_facade
      port map (I0=>XLXN_134,
                I1=>XLXN_141,
                I2=>XLXN_132,
                I3=>XLXN_139,
                I4=>XLXN_130,
                I5=>XLXN_138,
                I6=>XLXN_129,
                I7=>XLXN_137,
                O=>XLXN_161);
   
   XLXI_152 : AND4
      port map (I0=>XLXN_161,
                I1=>XLXN_160,
                I2=>XLXN_83,
                I3=>XLXN_82,
                O=>eq);
   
   XLXI_155 : OR2
      port map (I0=>eq,
                I1=>rst,
                O=>clr);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity encoder8_3_MUSER_cpu_facade is
   port ( i : in    std_logic_vector (7 downto 0); 
          g : out   std_logic; 
          o : out   std_logic_vector (2 downto 0));
end encoder8_3_MUSER_cpu_facade;

architecture BEHAVIORAL of encoder8_3_MUSER_cpu_facade is
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
   
   component AND8_MXILINX_cpu_facade
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
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_67";
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
   
   XLXI_4 : AND8_MXILINX_cpu_facade
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

entity M8_1E_MXILINX_cpu_facade is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          D2 : in    std_logic; 
          D3 : in    std_logic; 
          D4 : in    std_logic; 
          D5 : in    std_logic; 
          D6 : in    std_logic; 
          D7 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          S1 : in    std_logic; 
          S2 : in    std_logic; 
          O  : out   std_logic);
end M8_1E_MXILINX_cpu_facade;

architecture BEHAVIORAL of M8_1E_MXILINX_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal M01 : std_logic;
   signal M03 : std_logic;
   signal M23 : std_logic;
   signal M45 : std_logic;
   signal M47 : std_logic;
   signal M67 : std_logic;
   component M2_1E_MXILINX_cpu_facade
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component MUXF5_L
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXF5_L : component is "BLACK_BOX";
   
   component MUXF6
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXF6 : component is "BLACK_BOX";
   
   attribute HU_SET of I_M01 : label is "I_M01_71";
   attribute HU_SET of I_M23 : label is "I_M23_70";
   attribute HU_SET of I_M45 : label is "I_M45_69";
   attribute HU_SET of I_M67 : label is "I_M67_68";
begin
   I_M01 : M2_1E_MXILINX_cpu_facade
      port map (D0=>D0,
                D1=>D1,
                E=>E,
                S0=>S0,
                O=>M01);
   
   I_M03 : MUXF5_L
      port map (I0=>M01,
                I1=>M23,
                S=>S1,
                LO=>M03);
   
   I_M23 : M2_1E_MXILINX_cpu_facade
      port map (D0=>D2,
                D1=>D3,
                E=>E,
                S0=>S0,
                O=>M23);
   
   I_M45 : M2_1E_MXILINX_cpu_facade
      port map (D0=>D4,
                D1=>D5,
                E=>E,
                S0=>S0,
                O=>M45);
   
   I_M47 : MUXF5_L
      port map (I0=>M45,
                I1=>M67,
                S=>S1,
                LO=>M47);
   
   I_M67 : M2_1E_MXILINX_cpu_facade
      port map (D0=>D6,
                D1=>D7,
                E=>E,
                S0=>S0,
                O=>M67);
   
   I_O : MUXF6
      port map (I0=>M03,
                I1=>M47,
                S=>S2,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_freq_divider_MUSER_cpu_facade is
   port ( clk_in          : in    std_logic; 
          external        : in    std_logic; 
          external_clk_in : in    std_logic; 
          high            : in    std_logic; 
          low             : in    std_logic; 
          manual          : in    std_logic; 
          manual_clk_in   : in    std_logic; 
          rst             : in    std_logic; 
          clk_out         : out   std_logic);
end cpu_freq_divider_MUSER_cpu_facade;

architecture BEHAVIORAL of cpu_freq_divider_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal enc_in          : std_logic_vector (7 downto 0);
   signal in_enc          : std_logic_vector (2 downto 0);
   signal XLXN_1          : std_logic_vector (31 downto 0);
   signal XLXN_68         : std_logic;
   signal XLXN_92         : std_logic;
   signal XLXN_98         : std_logic;
   signal XLXN_99         : std_logic;
   signal XLXN_100        : std_logic;
   component freq_divider_MUSER_cpu_facade
      port ( clk_in  : in    std_logic; 
             clk_out : out   std_logic; 
             divider : in    std_logic_vector (31 downto 0); 
             rst     : in    std_logic);
   end component;
   
   component M8_1E_MXILINX_cpu_facade
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component encoder8_3_MUSER_cpu_facade
      port ( g : out   std_logic; 
             i : in    std_logic_vector (7 downto 0); 
             o : out   std_logic_vector (2 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_72";
begin
   XLXN_1(31 downto 0) <= x"000F4240";
   XLXI_1 : freq_divider_MUSER_cpu_facade
      port map (clk_in=>clk_in,
                divider(31 downto 0)=>XLXN_1(31 downto 0),
                rst=>rst,
                clk_out=>XLXN_92);
   
   XLXI_4 : M8_1E_MXILINX_cpu_facade
      port map (D0=>clk_in,
                D1=>XLXN_92,
                D2=>manual_clk_in,
                D3=>external_clk_in,
                D4=>XLXN_100,
                D5=>XLXN_100,
                D6=>XLXN_100,
                D7=>XLXN_100,
                E=>XLXN_98,
                S0=>in_enc(0),
                S1=>in_enc(1),
                S2=>in_enc(2),
                O=>clk_out);
   
   XLXI_38 : encoder8_3_MUSER_cpu_facade
      port map (i(7 downto 0)=>enc_in(7 downto 0),
                g=>XLXN_99,
                o(2 downto 0)=>in_enc(2 downto 0));
   
   XLXI_40 : BUF
      port map (I=>high,
                O=>enc_in(0));
   
   XLXI_41 : BUF
      port map (I=>low,
                O=>enc_in(1));
   
   XLXI_42 : BUF
      port map (I=>manual,
                O=>enc_in(2));
   
   XLXI_43 : BUF
      port map (I=>external,
                O=>enc_in(3));
   
   XLXI_44 : BUF
      port map (I=>XLXN_68,
                O=>enc_in(4));
   
   XLXI_45 : BUF
      port map (I=>XLXN_68,
                O=>enc_in(5));
   
   XLXI_46 : BUF
      port map (I=>XLXN_68,
                O=>enc_in(6));
   
   XLXI_49 : BUF
      port map (I=>XLXN_68,
                O=>enc_in(7));
   
   XLXI_62 : INV
      port map (I=>XLXN_99,
                O=>XLXN_98);
   
   XLXI_63 : GND
      port map (G=>XLXN_68);
   
   XLXI_64 : GND
      port map (G=>XLXN_100);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity buf_8bit_MUSER_cpu_facade is
   port ( i : in    std_logic_vector (7 downto 0); 
          o : out   std_logic_vector (7 downto 0));
end buf_8bit_MUSER_cpu_facade;

architecture BEHAVIORAL of buf_8bit_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_76 : BUF
      port map (I=>i(0),
                O=>o(0));
   
   XLXI_77 : BUF
      port map (I=>i(1),
                O=>o(1));
   
   XLXI_78 : BUF
      port map (I=>i(2),
                O=>o(2));
   
   XLXI_79 : BUF
      port map (I=>i(3),
                O=>o(3));
   
   XLXI_80 : BUF
      port map (I=>i(4),
                O=>o(4));
   
   XLXI_81 : BUF
      port map (I=>i(5),
                O=>o(5));
   
   XLXI_82 : BUF
      port map (I=>i(6),
                O=>o(6));
   
   XLXI_83 : BUF
      port map (I=>i(7),
                O=>o(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB2CE_MXILINX_cpu_facade is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          TC  : out   std_logic);
end CB2CE_MXILINX_cpu_facade;

architecture BEHAVIORAL of CB2CE_MXILINX_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component FTCE_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of I_Q0 : label is "I_Q0_73";
   attribute HU_SET of I_Q1 : label is "I_Q1_74";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   I_Q1 : FTCE_MXILINX_cpu_facade
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   I_36_37 : AND2
      port map (I0=>Q1_DUMMY,
                I1=>Q0_DUMMY,
                O=>TC_DUMMY);
   
   I_36_47 : VCC
      port map (P=>XLXN_1);
   
   I_36_52 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity clk_generator_MUSER_cpu_facade is
   port ( clk  : in    std_logic; 
          rst  : in    std_logic; 
          clkc : out   std_logic; 
          clkr : out   std_logic; 
          clkw : out   std_logic);
end clk_generator_MUSER_cpu_facade;

architecture BEHAVIORAL of clk_generator_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal clkc_old   : std_logic;
   signal clkr_old   : std_logic;
   signal clkw_old   : std_logic;
   signal XLXN_1     : std_logic;
   signal XLXN_9     : std_logic;
   signal XLXN_10    : std_logic;
   signal XLXN_13    : std_logic;
   signal clkc_DUMMY : std_logic;
   component FJKC_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CB2CE_MXILINX_cpu_facade
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_75";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_76";
begin
   clkc <= clkc_DUMMY;
   XLXI_4 : FJKC_MXILINX_cpu_facade
      port map (C=>XLXN_9,
                CLR=>rst,
                J=>XLXN_1,
                K=>XLXN_1,
                Q=>clkc_old);
   
   XLXI_9 : OR2
      port map (I0=>clkc_old,
                I1=>clk,
                O=>clkr_old);
   
   XLXI_10 : AND2B1
      port map (I0=>clk,
                I1=>clkc_old,
                O=>clkw_old);
   
   XLXI_12 : INV
      port map (I=>clk,
                O=>XLXN_9);
   
   XLXI_13 : VCC
      port map (P=>XLXN_1);
   
   XLXI_14 : CB2CE_MXILINX_cpu_facade
      port map (C=>clk,
                CE=>XLXN_10,
                CLR=>rst,
                CEO=>open,
                Q0=>XLXN_13,
                Q1=>clkc_DUMMY,
                TC=>open);
   
   XLXI_15 : VCC
      port map (P=>XLXN_10);
   
   XLXI_16 : OR2
      port map (I0=>clkc_DUMMY,
                I1=>XLXN_13,
                O=>clkr);
   
   XLXI_17 : AND2B1
      port map (I0=>XLXN_13,
                I1=>clkc_DUMMY,
                O=>clkw);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity OR8_MXILINX_cpu_facade is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end OR8_MXILINX_cpu_facade;

architecture BEHAVIORAL of OR8_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal O_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_91 : label is "X0Y1";
   attribute RLOC of I_36_116 : label is "X0Y0";
   attribute RLOC of I_36_117 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_91 : FMAP
      port map (I1=>S0,
                I2=>S1,
                I3=>dummy,
                I4=>dummy,
                O=>O_DUMMY);
   
   I_36_94 : OR2
      port map (I0=>S0,
                I1=>S1,
                O=>O_DUMMY);
   
   I_36_95 : OR4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_112 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_116 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_117 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND16_MXILINX_cpu_facade is
   port ( I0  : in    std_logic; 
          I1  : in    std_logic; 
          I2  : in    std_logic; 
          I3  : in    std_logic; 
          I4  : in    std_logic; 
          I5  : in    std_logic; 
          I6  : in    std_logic; 
          I7  : in    std_logic; 
          I8  : in    std_logic; 
          I9  : in    std_logic; 
          I10 : in    std_logic; 
          I11 : in    std_logic; 
          I12 : in    std_logic; 
          I13 : in    std_logic; 
          I14 : in    std_logic; 
          I15 : in    std_logic; 
          O   : out   std_logic);
end AND16_MXILINX_cpu_facade;

architecture BEHAVIORAL of AND16_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal CIN     : std_logic;
   signal C0      : std_logic;
   signal C1      : std_logic;
   signal C2      : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal S2      : std_logic;
   signal S3      : std_logic;
   signal XLXN_46 : std_logic;
   component MUXCY_L
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_L : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component MUXCY
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY : component is "BLACK_BOX";
   
   attribute RLOC of I_36_2 : label is "X0Y0";
   attribute RLOC of I_36_29 : label is "X0Y0";
   attribute RLOC of I_36_129 : label is "X0Y0";
   attribute RLOC of I_36_138 : label is "X0Y0";
   attribute RLOC of I_36_142 : label is "X0Y1";
   attribute RLOC of I_36_147 : label is "X0Y1";
   attribute RLOC of I_36_165 : label is "X0Y1";
   attribute RLOC of I_36_170 : label is "X0Y1";
begin
   I_36_2 : MUXCY_L
      port map (CI=>CIN,
                DI=>XLXN_46,
                S=>S0,
                LO=>C0);
   
   I_36_29 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_107 : VCC
      port map (P=>CIN);
   
   I_36_109 : GND
      port map (G=>XLXN_46);
   
   I_36_110 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : AND4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_129 : MUXCY_L
      port map (CI=>C0,
                DI=>XLXN_46,
                S=>S1,
                LO=>C1);
   
   I_36_138 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
   I_36_142 : FMAP
      port map (I1=>I8,
                I2=>I9,
                I3=>I10,
                I4=>I11,
                O=>S2);
   
   I_36_147 : MUXCY_L
      port map (CI=>C1,
                DI=>XLXN_46,
                S=>S2,
                LO=>C2);
   
   I_36_151 : AND4
      port map (I0=>I8,
                I1=>I9,
                I2=>I10,
                I3=>I11,
                O=>S2);
   
   I_36_161 : AND4
      port map (I0=>I12,
                I1=>I13,
                I2=>I14,
                I3=>I15,
                O=>S3);
   
   I_36_165 : MUXCY
      port map (CI=>C2,
                DI=>XLXN_46,
                S=>S3,
                O=>O);
   
   I_36_170 : FMAP
      port map (I1=>I12,
                I2=>I13,
                I3=>I14,
                I4=>I15,
                O=>S3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity encoder16_4_MUSER_cpu_facade is
   port ( i : in    std_logic_vector (15 downto 0); 
          g : out   std_logic; 
          o : out   std_logic_vector (3 downto 0));
end encoder16_4_MUSER_cpu_facade;

architecture BEHAVIORAL of encoder16_4_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_83 : std_logic;
   signal XLXN_84 : std_logic;
   signal XLXN_85 : std_logic;
   signal XLXN_86 : std_logic;
   signal XLXN_91 : std_logic;
   signal XLXN_92 : std_logic;
   signal XLXN_93 : std_logic;
   signal XLXN_94 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND16_MXILINX_cpu_facade
      port ( I0  : in    std_logic; 
             I1  : in    std_logic; 
             I10 : in    std_logic; 
             I11 : in    std_logic; 
             I12 : in    std_logic; 
             I13 : in    std_logic; 
             I14 : in    std_logic; 
             I15 : in    std_logic; 
             I2  : in    std_logic; 
             I3  : in    std_logic; 
             I4  : in    std_logic; 
             I5  : in    std_logic; 
             I6  : in    std_logic; 
             I7  : in    std_logic; 
             I8  : in    std_logic; 
             I9  : in    std_logic; 
             O   : out   std_logic);
   end component;
   
   component OR8_MXILINX_cpu_facade
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
   
   attribute HU_SET of XLXI_25 : label is "XLXI_25_77";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_78";
   attribute HU_SET of XLXI_49 : label is "XLXI_49_79";
   attribute HU_SET of XLXI_50 : label is "XLXI_50_80";
   attribute HU_SET of XLXI_59 : label is "XLXI_59_81";
begin
   XLXI_5 : INV
      port map (I=>i(4),
                O=>XLXN_1);
   
   XLXI_6 : INV
      port map (I=>i(5),
                O=>XLXN_19);
   
   XLXI_7 : INV
      port map (I=>i(6),
                O=>XLXN_20);
   
   XLXI_8 : INV
      port map (I=>i(7),
                O=>XLXN_21);
   
   XLXI_9 : INV
      port map (I=>i(8),
                O=>XLXN_22);
   
   XLXI_10 : INV
      port map (I=>i(9),
                O=>XLXN_6);
   
   XLXI_11 : INV
      port map (I=>i(10),
                O=>XLXN_24);
   
   XLXI_12 : INV
      port map (I=>i(11),
                O=>XLXN_25);
   
   XLXI_25 : AND16_MXILINX_cpu_facade
      port map (I0=>XLXN_94,
                I1=>XLXN_93,
                I2=>XLXN_92,
                I3=>XLXN_91,
                I4=>XLXN_25,
                I5=>XLXN_24,
                I6=>XLXN_6,
                I7=>XLXN_22,
                I8=>XLXN_21,
                I9=>XLXN_20,
                I10=>XLXN_19,
                I11=>XLXN_1,
                I12=>XLXN_86,
                I13=>XLXN_85,
                I14=>XLXN_84,
                I15=>XLXN_83,
                O=>g);
   
   XLXI_33 : INV
      port map (I=>i(0),
                O=>XLXN_83);
   
   XLXI_34 : INV
      port map (I=>i(1),
                O=>XLXN_84);
   
   XLXI_35 : INV
      port map (I=>i(2),
                O=>XLXN_85);
   
   XLXI_36 : INV
      port map (I=>i(3),
                O=>XLXN_86);
   
   XLXI_37 : INV
      port map (I=>i(12),
                O=>XLXN_91);
   
   XLXI_38 : INV
      port map (I=>i(13),
                O=>XLXN_92);
   
   XLXI_39 : INV
      port map (I=>i(14),
                O=>XLXN_93);
   
   XLXI_40 : INV
      port map (I=>i(15),
                O=>XLXN_94);
   
   XLXI_48 : OR8_MXILINX_cpu_facade
      port map (I0=>i(15),
                I1=>i(13),
                I2=>i(11),
                I3=>i(9),
                I4=>i(7),
                I5=>i(5),
                I6=>i(3),
                I7=>i(1),
                O=>o(0));
   
   XLXI_49 : OR8_MXILINX_cpu_facade
      port map (I0=>i(15),
                I1=>i(14),
                I2=>i(11),
                I3=>i(10),
                I4=>i(7),
                I5=>i(6),
                I6=>i(3),
                I7=>i(2),
                O=>o(1));
   
   XLXI_50 : OR8_MXILINX_cpu_facade
      port map (I0=>i(15),
                I1=>i(14),
                I2=>i(13),
                I3=>i(12),
                I4=>i(7),
                I5=>i(6),
                I6=>i(5),
                I7=>i(4),
                O=>o(2));
   
   XLXI_59 : OR8_MXILINX_cpu_facade
      port map (I0=>i(15),
                I1=>i(14),
                I2=>i(13),
                I3=>i(12),
                I4=>i(11),
                I5=>i(10),
                I6=>i(9),
                I7=>i(8),
                O=>o(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_output_muxer_MUSER_cpu_facade is
   port ( acc_o          : in    std_logic_vector (7 downto 0); 
          acc_r          : in    std_logic; 
          iar_o          : in    std_logic_vector (7 downto 0); 
          iar_r          : in    std_logic; 
          ir_o           : in    std_logic_vector (7 downto 0); 
          ir_r           : in    std_logic; 
          manr_o         : in    std_logic_vector (7 downto 0); 
          manr_r         : in    std_logic; 
          manual_input_o : in    std_logic_vector (7 downto 0); 
          manual_input_r : in    std_logic; 
          mem_o          : in    std_logic_vector (7 downto 0); 
          mem_r          : in    std_logic; 
          r0_o           : in    std_logic_vector (7 downto 0); 
          r0_r           : in    std_logic; 
          r1_o           : in    std_logic_vector (7 downto 0); 
          r1_r           : in    std_logic; 
          r2_o           : in    std_logic_vector (7 downto 0); 
          r2_r           : in    std_logic; 
          r3_o           : in    std_logic_vector (7 downto 0); 
          r3_r           : in    std_logic; 
          g              : out   std_logic; 
          o              : out   std_logic_vector (7 downto 0));
end cpu_output_muxer_MUSER_cpu_facade;

architecture BEHAVIORAL of cpu_output_muxer_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   signal a                       : std_logic_vector (3 downto 0);
   signal enc_o                   : std_logic_vector (3 downto 0);
   signal i                       : std_logic_vector (15 downto 0);
   signal XLXN_73                 : std_logic;
   signal XLXN_86                 : std_logic;
   signal g_DUMMY                 : std_logic;
   signal XLXI_1_dev10_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev11_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev12_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev13_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev14_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_1_dev15_openSignal : std_logic_vector (7 downto 0);
   component bus_muxer_MUSER_cpu_facade
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
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component encoder16_4_MUSER_cpu_facade
      port ( g : out   std_logic; 
             i : in    std_logic_vector (15 downto 0); 
             o : out   std_logic_vector (3 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   g <= g_DUMMY;
   XLXI_1 : bus_muxer_MUSER_cpu_facade
      port map (a(3 downto 0)=>a(3 downto 0),
                dev0(7 downto 0)=>iar_o(7 downto 0),
                dev1(7 downto 0)=>acc_o(7 downto 0),
                dev2(7 downto 0)=>mem_o(7 downto 0),
                dev3(7 downto 0)=>r0_o(7 downto 0),
                dev4(7 downto 0)=>r1_o(7 downto 0),
                dev5(7 downto 0)=>r2_o(7 downto 0),
                dev6(7 downto 0)=>r3_o(7 downto 0),
                dev7(7 downto 0)=>manr_o(7 downto 0),
                dev8(7 downto 0)=>manual_input_o(7 downto 0),
                dev9(7 downto 0)=>ir_o(7 downto 0),
                dev10(7 downto 0)=>XLXI_1_dev10_openSignal(7 downto 0),
                dev11(7 downto 0)=>XLXI_1_dev11_openSignal(7 downto 0),
                dev12(7 downto 0)=>XLXI_1_dev12_openSignal(7 downto 0),
                dev13(7 downto 0)=>XLXI_1_dev13_openSignal(7 downto 0),
                dev14(7 downto 0)=>XLXI_1_dev14_openSignal(7 downto 0),
                dev15(7 downto 0)=>XLXI_1_dev15_openSignal(7 downto 0),
                e=>XLXN_73,
                o(7 downto 0)=>o(7 downto 0));
   
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
      port map (I=>manr_r,
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
   
   XLXI_21 : INV
      port map (I=>g_DUMMY,
                O=>XLXN_73);
   
   XLXI_22 : encoder16_4_MUSER_cpu_facade
      port map (i(15 downto 0)=>i(15 downto 0),
                g=>g_DUMMY,
                o(3 downto 0)=>enc_o(3 downto 0));
   
   XLXI_23 : BUF
      port map (I=>enc_o(3),
                O=>a(3));
   
   XLXI_24 : BUF
      port map (I=>manual_input_r,
                O=>i(8));
   
   XLXI_25 : BUF
      port map (I=>ir_r,
                O=>i(9));
   
   XLXI_32 : BUF
      port map (I=>XLXN_86,
                O=>i(10));
   
   XLXI_33 : BUF
      port map (I=>XLXN_86,
                O=>i(11));
   
   XLXI_34 : BUF
      port map (I=>XLXN_86,
                O=>i(12));
   
   XLXI_35 : BUF
      port map (I=>XLXN_86,
                O=>i(13));
   
   XLXI_36 : BUF
      port map (I=>XLXN_86,
                O=>i(14));
   
   XLXI_37 : BUF
      port map (I=>XLXN_86,
                O=>i(15));
   
   XLXI_38 : GND
      port map (G=>XLXN_86);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity pass_through_or_one_MUSER_cpu_facade is
   port ( const : in    std_logic_vector (7 downto 0); 
          i     : in    std_logic_vector (7 downto 0); 
          one   : in    std_logic; 
          o     : out   std_logic_vector (7 downto 0));
end pass_through_or_one_MUSER_cpu_facade;

architecture BEHAVIORAL of pass_through_or_one_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   component M2_1_MXILINX_cpu_facade
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_82";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_83";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_84";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_85";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_86";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_87";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_88";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_89";
begin
   XLXI_1 : M2_1_MXILINX_cpu_facade
      port map (D0=>i(1),
                D1=>const(1),
                S0=>one,
                O=>o(1));
   
   XLXI_3 : M2_1_MXILINX_cpu_facade
      port map (D0=>i(2),
                D1=>const(2),
                S0=>one,
                O=>o(2));
   
   XLXI_4 : M2_1_MXILINX_cpu_facade
      port map (D0=>i(3),
                D1=>const(3),
                S0=>one,
                O=>o(3));
   
   XLXI_5 : M2_1_MXILINX_cpu_facade
      port map (D0=>i(4),
                D1=>const(4),
                S0=>one,
                O=>o(4));
   
   XLXI_6 : M2_1_MXILINX_cpu_facade
      port map (D0=>i(5),
                D1=>const(5),
                S0=>one,
                O=>o(5));
   
   XLXI_7 : M2_1_MXILINX_cpu_facade
      port map (D0=>i(6),
                D1=>const(6),
                S0=>one,
                O=>o(6));
   
   XLXI_8 : M2_1_MXILINX_cpu_facade
      port map (D0=>i(7),
                D1=>const(7),
                S0=>one,
                O=>o(7));
   
   XLXI_13 : M2_1_MXILINX_cpu_facade
      port map (D0=>i(0),
                D1=>const(0),
                S0=>one,
                O=>o(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LD4CE_MXILINX_cpu_facade is
   port ( CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          G   : in    std_logic; 
          GE  : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end LD4CE_MXILINX_cpu_facade;

architecture BEHAVIORAL of LD4CE_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   component LDCE
      generic( INIT : bit :=  '0');
      port ( CLR : in    std_logic; 
             D   : in    std_logic; 
             G   : in    std_logic; 
             GE  : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of LDCE : component is "BLACK_BOX";
   
begin
   I_Q0 : LDCE
      port map (CLR=>CLR,
                D=>D0,
                G=>G,
                GE=>GE,
                Q=>Q0);
   
   I_Q1 : LDCE
      port map (CLR=>CLR,
                D=>D1,
                G=>G,
                GE=>GE,
                Q=>Q1);
   
   I_Q2 : LDCE
      port map (CLR=>CLR,
                D=>D2,
                G=>G,
                GE=>GE,
                Q=>Q2);
   
   I_Q3 : LDCE
      port map (CLR=>CLR,
                D=>D3,
                G=>G,
                GE=>GE,
                Q=>Q3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity alu_output_muxer_MUSER_cpu_facade is
   port ( add_o : in    std_logic_vector (7 downto 0); 
          and_o : in    std_logic_vector (7 downto 0); 
          lsh_o : in    std_logic_vector (7 downto 0); 
          not_o : in    std_logic_vector (7 downto 0); 
          op    : in    std_logic_vector (2 downto 0); 
          or_o  : in    std_logic_vector (7 downto 0); 
          rsh_o : in    std_logic_vector (7 downto 0); 
          xor_o : in    std_logic_vector (7 downto 0); 
          o     : out   std_logic_vector (7 downto 0));
end alu_output_muxer_MUSER_cpu_facade;

architecture BEHAVIORAL of alu_output_muxer_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   signal a                        : std_logic_vector (3 downto 0);
   signal XLXN_75                  : std_logic;
   signal XLXI_14_dev7_openSignal  : std_logic_vector (7 downto 0);
   signal XLXI_14_dev8_openSignal  : std_logic_vector (7 downto 0);
   signal XLXI_14_dev9_openSignal  : std_logic_vector (7 downto 0);
   signal XLXI_14_dev10_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_14_dev11_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_14_dev12_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_14_dev13_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_14_dev14_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_14_dev15_openSignal : std_logic_vector (7 downto 0);
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component bus_muxer_MUSER_cpu_facade
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   XLXI_9 : BUF
      port map (I=>op(0),
                O=>a(0));
   
   XLXI_10 : BUF
      port map (I=>op(1),
                O=>a(1));
   
   XLXI_11 : BUF
      port map (I=>op(2),
                O=>a(2));
   
   XLXI_14 : bus_muxer_MUSER_cpu_facade
      port map (a(3 downto 0)=>a(3 downto 0),
                dev0(7 downto 0)=>add_o(7 downto 0),
                dev1(7 downto 0)=>lsh_o(7 downto 0),
                dev2(7 downto 0)=>rsh_o(7 downto 0),
                dev3(7 downto 0)=>not_o(7 downto 0),
                dev4(7 downto 0)=>and_o(7 downto 0),
                dev5(7 downto 0)=>or_o(7 downto 0),
                dev6(7 downto 0)=>xor_o(7 downto 0),
                dev7(7 downto 0)=>XLXI_14_dev7_openSignal(7 downto 0),
                dev8(7 downto 0)=>XLXI_14_dev8_openSignal(7 downto 0),
                dev9(7 downto 0)=>XLXI_14_dev9_openSignal(7 downto 0),
                dev10(7 downto 0)=>XLXI_14_dev10_openSignal(7 downto 0),
                dev11(7 downto 0)=>XLXI_14_dev11_openSignal(7 downto 0),
                dev12(7 downto 0)=>XLXI_14_dev12_openSignal(7 downto 0),
                dev13(7 downto 0)=>XLXI_14_dev13_openSignal(7 downto 0),
                dev14(7 downto 0)=>XLXI_14_dev14_openSignal(7 downto 0),
                dev15(7 downto 0)=>XLXI_14_dev15_openSignal(7 downto 0),
                e=>XLXN_75,
                o(7 downto 0)=>o(7 downto 0));
   
   XLXI_20 : GND
      port map (G=>a(3));
   
   XLXI_23 : VCC
      port map (P=>XLXN_75);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity NOR8_MXILINX_cpu_facade is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end NOR8_MXILINX_cpu_facade;

architecture BEHAVIORAL of NOR8_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal O_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_29 : label is "X0Y0";
   attribute RLOC of I_36_138 : label is "X0Y0";
   attribute RLOC of I_36_144 : label is "X0Y1";
begin
   O <= O_DUMMY;
   I_36_29 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_110 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : OR4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_138 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
   I_36_140 : NOR2
      port map (I0=>S0,
                I1=>S1,
                O=>O_DUMMY);
   
   I_36_144 : FMAP
      port map (I1=>S0,
                I2=>S1,
                I3=>dummy,
                I4=>dummy,
                O=>O_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lzero_MUSER_cpu_facade is
   port ( a : in    std_logic_vector (7 downto 0); 
          x : out   std_logic);
end lzero_MUSER_cpu_facade;

architecture BEHAVIORAL of lzero_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   component NOR8_MXILINX_cpu_facade
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_90";
begin
   XLXI_1 : NOR8_MXILINX_cpu_facade
      port map (I0=>a(7),
                I1=>a(6),
                I2=>a(5),
                I3=>a(4),
                I4=>a(3),
                I5=>a(2),
                I6=>a(1),
                I7=>a(0),
                O=>x);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cmp_1bit_MUSER_cpu_facade is
   port ( a        : in    std_logic; 
          b        : in    std_logic; 
          eq_above : in    std_logic; 
          gt_above : in    std_logic; 
          eq       : out   std_logic; 
          gt       : out   std_logic; 
          x        : out   std_logic);
end cmp_1bit_MUSER_cpu_facade;

architecture BEHAVIORAL of cmp_1bit_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   signal XLXN_3   : std_logic;
   signal XLXN_8   : std_logic;
   signal XLXN_9   : std_logic;
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : XNOR2
      port map (I0=>b,
                I1=>a,
                O=>XLXN_3);
   
   XLXI_2 : AND2
      port map (I0=>XLXN_3,
                I1=>eq_above,
                O=>eq);
   
   XLXI_3 : OR2
      port map (I0=>XLXN_8,
                I1=>gt_above,
                O=>gt);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_9,
                I1=>a,
                O=>XLXN_8);
   
   XLXI_5 : INV
      port map (I=>b,
                O=>XLXN_9);
   
   XLXI_6 : INV
      port map (I=>XLXN_3,
                O=>x);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cmp_8bit_MUSER_cpu_facade is
   port ( a  : in    std_logic_vector (7 downto 0); 
          b  : in    std_logic_vector (7 downto 0); 
          eq : out   std_logic; 
          gt : out   std_logic; 
          x  : out   std_logic_vector (7 downto 0));
end cmp_8bit_MUSER_cpu_facade;

architecture BEHAVIORAL of cmp_8bit_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   signal XLXN_42 : std_logic;
   signal XLXN_43 : std_logic;
   signal XLXN_44 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_46 : std_logic;
   signal XLXN_47 : std_logic;
   signal XLXN_48 : std_logic;
   signal XLXN_51 : std_logic;
   signal XLXN_52 : std_logic;
   signal XLXN_53 : std_logic;
   signal XLXN_54 : std_logic;
   signal XLXN_55 : std_logic;
   signal XLXN_56 : std_logic;
   signal XLXN_57 : std_logic;
   signal XLXN_58 : std_logic;
   signal XLXN_59 : std_logic;
   component cmp_1bit_MUSER_cpu_facade
      port ( a        : in    std_logic; 
             b        : in    std_logic; 
             eq       : out   std_logic; 
             eq_above : in    std_logic; 
             gt       : out   std_logic; 
             gt_above : in    std_logic; 
             x        : out   std_logic);
   end component;
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
   component PULLDOWN
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLDOWN : component is "BLACK_BOX";
   
begin
   XLXI_2 : cmp_1bit_MUSER_cpu_facade
      port map (a=>a(7),
                b=>b(7),
                eq_above=>XLXN_42,
                gt_above=>XLXN_43,
                eq=>eq,
                gt=>gt,
                x=>x(7));
   
   XLXI_3 : cmp_1bit_MUSER_cpu_facade
      port map (a=>a(6),
                b=>b(6),
                eq_above=>XLXN_44,
                gt_above=>XLXN_45,
                eq=>XLXN_42,
                gt=>XLXN_43,
                x=>x(6));
   
   XLXI_4 : cmp_1bit_MUSER_cpu_facade
      port map (a=>a(5),
                b=>b(5),
                eq_above=>XLXN_46,
                gt_above=>XLXN_47,
                eq=>XLXN_44,
                gt=>XLXN_45,
                x=>x(5));
   
   XLXI_5 : cmp_1bit_MUSER_cpu_facade
      port map (a=>a(4),
                b=>b(4),
                eq_above=>XLXN_52,
                gt_above=>XLXN_53,
                eq=>XLXN_46,
                gt=>XLXN_47,
                x=>x(4));
   
   XLXI_6 : cmp_1bit_MUSER_cpu_facade
      port map (a=>a(3),
                b=>b(3),
                eq_above=>XLXN_48,
                gt_above=>XLXN_51,
                eq=>XLXN_52,
                gt=>XLXN_53,
                x=>x(3));
   
   XLXI_7 : cmp_1bit_MUSER_cpu_facade
      port map (a=>a(2),
                b=>b(2),
                eq_above=>XLXN_54,
                gt_above=>XLXN_55,
                eq=>XLXN_48,
                gt=>XLXN_51,
                x=>x(2));
   
   XLXI_8 : cmp_1bit_MUSER_cpu_facade
      port map (a=>a(1),
                b=>b(1),
                eq_above=>XLXN_56,
                gt_above=>XLXN_57,
                eq=>XLXN_54,
                gt=>XLXN_55,
                x=>x(1));
   
   XLXI_9 : cmp_1bit_MUSER_cpu_facade
      port map (a=>a(0),
                b=>b(0),
                eq_above=>XLXN_58,
                gt_above=>XLXN_59,
                eq=>XLXN_56,
                gt=>XLXN_57,
                x=>x(0));
   
   XLXI_11 : PULLUP
      port map (O=>XLXN_58);
   
   XLXI_12 : PULLDOWN
      port map (O=>XLXN_59);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ADD8_MXILINX_cpu_facade is
   port ( A   : in    std_logic_vector (7 downto 0); 
          B   : in    std_logic_vector (7 downto 0); 
          CI  : in    std_logic; 
          CO  : out   std_logic; 
          OFL : out   std_logic; 
          S   : out   std_logic_vector (7 downto 0));
end ADD8_MXILINX_cpu_facade;

architecture BEHAVIORAL of ADD8_MXILINX_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal C0       : std_logic;
   signal C1       : std_logic;
   signal C2       : std_logic;
   signal C3       : std_logic;
   signal C4       : std_logic;
   signal C5       : std_logic;
   signal C6       : std_logic;
   signal C6O      : std_logic;
   signal dummy    : std_logic;
   signal I0       : std_logic;
   signal I1       : std_logic;
   signal I2       : std_logic;
   signal I3       : std_logic;
   signal I4       : std_logic;
   signal I5       : std_logic;
   signal I6       : std_logic;
   signal I7       : std_logic;
   signal CO_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component MUXCY_L
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_L : component is "BLACK_BOX";
   
   component MUXCY
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY : component is "BLACK_BOX";
   
   component XORCY
      port ( CI : in    std_logic; 
             LI : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XORCY : component is "BLACK_BOX";
   
   component MUXCY_D
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_D : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_16 : label is "X0Y0";
   attribute RLOC of I_36_17 : label is "X0Y0";
   attribute RLOC of I_36_18 : label is "X0Y1";
   attribute RLOC of I_36_19 : label is "X0Y1";
   attribute RLOC of I_36_20 : label is "X0Y2";
   attribute RLOC of I_36_21 : label is "X0Y2";
   attribute RLOC of I_36_22 : label is "X0Y3";
   attribute RLOC of I_36_23 : label is "X0Y3";
   attribute RLOC of I_36_55 : label is "X0Y0";
   attribute RLOC of I_36_58 : label is "X0Y1";
   attribute RLOC of I_36_62 : label is "X0Y1";
   attribute RLOC of I_36_63 : label is "X0Y2";
   attribute RLOC of I_36_64 : label is "X0Y3";
   attribute RLOC of I_36_107 : label is "X0Y3";
   attribute RLOC of I_36_110 : label is "X0Y2";
   attribute RLOC of I_36_111 : label is "X0Y0";
begin
   CO <= CO_DUMMY;
   I_36_16 : FMAP
      port map (I1=>A(0),
                I2=>B(0),
                I3=>dummy,
                I4=>dummy,
                O=>I0);
   
   I_36_17 : FMAP
      port map (I1=>A(1),
                I2=>B(1),
                I3=>dummy,
                I4=>dummy,
                O=>I1);
   
   I_36_18 : FMAP
      port map (I1=>A(2),
                I2=>B(2),
                I3=>dummy,
                I4=>dummy,
                O=>I2);
   
   I_36_19 : FMAP
      port map (I1=>A(3),
                I2=>B(3),
                I3=>dummy,
                I4=>dummy,
                O=>I3);
   
   I_36_20 : FMAP
      port map (I1=>A(4),
                I2=>B(4),
                I3=>dummy,
                I4=>dummy,
                O=>I4);
   
   I_36_21 : FMAP
      port map (I1=>A(5),
                I2=>B(5),
                I3=>dummy,
                I4=>dummy,
                O=>I5);
   
   I_36_22 : FMAP
      port map (I1=>A(6),
                I2=>B(6),
                I3=>dummy,
                I4=>dummy,
                O=>I6);
   
   I_36_23 : FMAP
      port map (I1=>A(7),
                I2=>B(7),
                I3=>dummy,
                I4=>dummy,
                O=>I7);
   
   I_36_55 : MUXCY_L
      port map (CI=>C0,
                DI=>A(1),
                S=>I1,
                LO=>C1);
   
   I_36_58 : MUXCY_L
      port map (CI=>C2,
                DI=>A(3),
                S=>I3,
                LO=>C3);
   
   I_36_62 : MUXCY_L
      port map (CI=>C1,
                DI=>A(2),
                S=>I2,
                LO=>C2);
   
   I_36_63 : MUXCY_L
      port map (CI=>C3,
                DI=>A(4),
                S=>I4,
                LO=>C4);
   
   I_36_64 : MUXCY
      port map (CI=>C6,
                DI=>A(7),
                S=>I7,
                O=>CO_DUMMY);
   
   I_36_73 : XORCY
      port map (CI=>CI,
                LI=>I0,
                O=>S(0));
   
   I_36_74 : XORCY
      port map (CI=>C0,
                LI=>I1,
                O=>S(1));
   
   I_36_75 : XORCY
      port map (CI=>C2,
                LI=>I3,
                O=>S(3));
   
   I_36_76 : XORCY
      port map (CI=>C1,
                LI=>I2,
                O=>S(2));
   
   I_36_77 : XORCY
      port map (CI=>C4,
                LI=>I5,
                O=>S(5));
   
   I_36_78 : XORCY
      port map (CI=>C3,
                LI=>I4,
                O=>S(4));
   
   I_36_80 : XORCY
      port map (CI=>C6,
                LI=>I7,
                O=>S(7));
   
   I_36_81 : XORCY
      port map (CI=>C5,
                LI=>I6,
                O=>S(6));
   
   I_36_107 : MUXCY_D
      port map (CI=>C5,
                DI=>A(6),
                S=>I6,
                LO=>C6,
                O=>C6O);
   
   I_36_110 : MUXCY_L
      port map (CI=>C4,
                DI=>A(5),
                S=>I5,
                LO=>C5);
   
   I_36_111 : MUXCY_L
      port map (CI=>CI,
                DI=>A(0),
                S=>I0,
                LO=>C0);
   
   I_36_221 : XOR2
      port map (I0=>A(7),
                I1=>B(7),
                O=>I7);
   
   I_36_222 : XOR2
      port map (I0=>A(6),
                I1=>B(6),
                O=>I6);
   
   I_36_223 : XOR2
      port map (I0=>A(5),
                I1=>B(5),
                O=>I5);
   
   I_36_224 : XOR2
      port map (I0=>A(4),
                I1=>B(4),
                O=>I4);
   
   I_36_225 : XOR2
      port map (I0=>A(3),
                I1=>B(3),
                O=>I3);
   
   I_36_228 : XOR2
      port map (I0=>A(0),
                I1=>B(0),
                O=>I0);
   
   I_36_229 : XOR2
      port map (I0=>A(1),
                I1=>B(1),
                O=>I1);
   
   I_36_230 : XOR2
      port map (I0=>A(2),
                I1=>B(2),
                O=>I2);
   
   I_36_239 : XOR2
      port map (I0=>C6O,
                I1=>CO_DUMMY,
                O=>OFL);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity alu_MUSER_cpu_facade is
   port ( a     : in    std_logic_vector (7 downto 0); 
          b     : in    std_logic_vector (7 downto 0); 
          C_in  : in    std_logic; 
          op    : in    std_logic_vector (2 downto 0); 
          C_out : out   std_logic; 
          eq    : out   std_logic; 
          gt    : out   std_logic; 
          x     : out   std_logic_vector (7 downto 0); 
          z     : out   std_logic);
end alu_MUSER_cpu_facade;

architecture BEHAVIORAL of alu_MUSER_cpu_facade is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal add_o    : std_logic_vector (7 downto 0);
   signal and_o    : std_logic_vector (7 downto 0);
   signal lsh_o    : std_logic_vector (7 downto 0);
   signal not_o    : std_logic_vector (7 downto 0);
   signal or_o     : std_logic_vector (7 downto 0);
   signal rsh_o    : std_logic_vector (7 downto 0);
   signal XLXN_8   : std_logic;
   signal XLXN_89  : std_logic;
   signal XLXN_91  : std_logic;
   signal XLXN_93  : std_logic;
   signal XLXN_105 : std_logic;
   signal XLXN_191 : std_logic;
   signal XLXN_192 : std_logic;
   signal XLXN_199 : std_logic;
   signal XLXN_201 : std_logic;
   signal XLXN_202 : std_logic;
   signal XLXN_223 : std_logic;
   signal XLXN_224 : std_logic;
   signal XLXN_225 : std_logic;
   signal XLXN_226 : std_logic;
   signal XLXN_227 : std_logic;
   signal xor_o    : std_logic_vector (7 downto 0);
   component D3_8E_MXILINX_cpu_facade
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component ADD8_MXILINX_cpu_facade
      port ( A   : in    std_logic_vector (7 downto 0); 
             B   : in    std_logic_vector (7 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (7 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component INV8_MXILINX_cpu_facade
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component cmp_8bit_MUSER_cpu_facade
      port ( a  : in    std_logic_vector (7 downto 0); 
             b  : in    std_logic_vector (7 downto 0); 
             eq : out   std_logic; 
             gt : out   std_logic; 
             x  : out   std_logic_vector (7 downto 0));
   end component;
   
   component lzero_MUSER_cpu_facade
      port ( a : in    std_logic_vector (7 downto 0); 
             x : out   std_logic);
   end component;
   
   component alu_output_muxer_MUSER_cpu_facade
      port ( add_o : in    std_logic_vector (7 downto 0); 
             and_o : in    std_logic_vector (7 downto 0); 
             lsh_o : in    std_logic_vector (7 downto 0); 
             not_o : in    std_logic_vector (7 downto 0); 
             o     : out   std_logic_vector (7 downto 0); 
             op    : in    std_logic_vector (2 downto 0); 
             or_o  : in    std_logic_vector (7 downto 0); 
             rsh_o : in    std_logic_vector (7 downto 0); 
             xor_o : in    std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_91";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_92";
   attribute HU_SET of XLXI_102 : label is "XLXI_102_93";
begin
   XLXI_1 : D3_8E_MXILINX_cpu_facade
      port map (A0=>op(0),
                A1=>op(1),
                A2=>op(2),
                E=>XLXN_89,
                D0=>XLXN_8,
                D1=>XLXN_105,
                D2=>XLXN_192,
                D3=>XLXN_223,
                D4=>XLXN_224,
                D5=>XLXN_225,
                D6=>XLXN_226,
                D7=>XLXN_227);
   
   XLXI_2 : ADD8_MXILINX_cpu_facade
      port map (A(7 downto 0)=>a(7 downto 0),
                B(7 downto 0)=>b(7 downto 0),
                CI=>C_in,
                CO=>XLXN_91,
                OFL=>open,
                S(7 downto 0)=>add_o(7 downto 0));
   
   XLXI_12 : BUF
      port map (I=>C_in,
                O=>lsh_o(0));
   
   XLXI_13 : BUF
      port map (I=>a(0),
                O=>lsh_o(1));
   
   XLXI_14 : BUF
      port map (I=>a(1),
                O=>lsh_o(2));
   
   XLXI_15 : BUF
      port map (I=>a(2),
                O=>lsh_o(3));
   
   XLXI_16 : BUF
      port map (I=>a(3),
                O=>lsh_o(4));
   
   XLXI_17 : BUF
      port map (I=>a(4),
                O=>lsh_o(5));
   
   XLXI_18 : BUF
      port map (I=>a(5),
                O=>lsh_o(6));
   
   XLXI_19 : BUF
      port map (I=>a(6),
                O=>lsh_o(7));
   
   XLXI_43 : VCC
      port map (P=>XLXN_89);
   
   XLXI_44 : AND2
      port map (I0=>XLXN_91,
                I1=>XLXN_8,
                O=>XLXN_199);
   
   XLXI_45 : AND2
      port map (I0=>XLXN_93,
                I1=>XLXN_105,
                O=>XLXN_202);
   
   XLXI_47 : BUF
      port map (I=>a(7),
                O=>XLXN_93);
   
   XLXI_89 : BUF
      port map (I=>a(0),
                O=>XLXN_191);
   
   XLXI_90 : BUF
      port map (I=>a(1),
                O=>rsh_o(0));
   
   XLXI_91 : BUF
      port map (I=>a(2),
                O=>rsh_o(1));
   
   XLXI_92 : BUF
      port map (I=>a(3),
                O=>rsh_o(2));
   
   XLXI_93 : BUF
      port map (I=>a(4),
                O=>rsh_o(3));
   
   XLXI_94 : BUF
      port map (I=>a(5),
                O=>rsh_o(4));
   
   XLXI_95 : BUF
      port map (I=>a(6),
                O=>rsh_o(5));
   
   XLXI_96 : BUF
      port map (I=>a(7),
                O=>rsh_o(6));
   
   XLXI_98 : BUF
      port map (I=>C_in,
                O=>rsh_o(7));
   
   XLXI_99 : AND2
      port map (I0=>XLXN_191,
                I1=>XLXN_192,
                O=>XLXN_201);
   
   XLXI_101 : OR3
      port map (I0=>XLXN_201,
                I1=>XLXN_202,
                I2=>XLXN_199,
                O=>C_out);
   
   XLXI_102 : INV8_MXILINX_cpu_facade
      port map (I(7 downto 0)=>a(7 downto 0),
                O(7 downto 0)=>not_o(7 downto 0));
   
   XLXI_114 : AND2
      port map (I0=>a(7),
                I1=>b(7),
                O=>and_o(7));
   
   XLXI_115 : AND2
      port map (I0=>a(6),
                I1=>b(6),
                O=>and_o(6));
   
   XLXI_116 : AND2
      port map (I0=>a(5),
                I1=>b(5),
                O=>and_o(5));
   
   XLXI_117 : AND2
      port map (I0=>a(4),
                I1=>b(4),
                O=>and_o(4));
   
   XLXI_118 : AND2
      port map (I0=>a(3),
                I1=>b(3),
                O=>and_o(3));
   
   XLXI_119 : AND2
      port map (I0=>a(2),
                I1=>b(2),
                O=>and_o(2));
   
   XLXI_120 : AND2
      port map (I0=>a(1),
                I1=>b(1),
                O=>and_o(1));
   
   XLXI_121 : AND2
      port map (I0=>a(0),
                I1=>b(0),
                O=>and_o(0));
   
   XLXI_127 : OR2
      port map (I0=>a(7),
                I1=>b(7),
                O=>or_o(7));
   
   XLXI_128 : OR2
      port map (I0=>a(6),
                I1=>b(6),
                O=>or_o(6));
   
   XLXI_129 : OR2
      port map (I0=>a(5),
                I1=>b(5),
                O=>or_o(5));
   
   XLXI_130 : OR2
      port map (I0=>a(4),
                I1=>b(4),
                O=>or_o(4));
   
   XLXI_131 : OR2
      port map (I0=>a(3),
                I1=>b(3),
                O=>or_o(3));
   
   XLXI_132 : OR2
      port map (I0=>a(2),
                I1=>b(2),
                O=>or_o(2));
   
   XLXI_133 : OR2
      port map (I0=>a(1),
                I1=>b(1),
                O=>or_o(1));
   
   XLXI_134 : OR2
      port map (I0=>a(0),
                I1=>b(0),
                O=>or_o(0));
   
   XLXI_135 : cmp_8bit_MUSER_cpu_facade
      port map (a(7 downto 0)=>a(7 downto 0),
                b(7 downto 0)=>b(7 downto 0),
                eq=>eq,
                gt=>gt,
                x(7 downto 0)=>xor_o(7 downto 0));
   
   XLXI_137 : lzero_MUSER_cpu_facade
      port map (a(7 downto 0)=>a(7 downto 0),
                x=>z);
   
   XLXI_138 : alu_output_muxer_MUSER_cpu_facade
      port map (add_o(7 downto 0)=>add_o(7 downto 0),
                and_o(7 downto 0)=>and_o(7 downto 0),
                lsh_o(7 downto 0)=>lsh_o(7 downto 0),
                not_o(7 downto 0)=>not_o(7 downto 0),
                op(2 downto 0)=>op(2 downto 0),
                or_o(7 downto 0)=>or_o(7 downto 0),
                rsh_o(7 downto 0)=>rsh_o(7 downto 0),
                xor_o(7 downto 0)=>xor_o(7 downto 0),
                o(7 downto 0)=>x(7 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_MUSER_cpu_facade is
   port ( in_acc_r             : in    std_logic; 
          in_acc_w             : in    std_logic; 
          in_bus1              : in    std_logic; 
          in_clk               : in    std_logic; 
          in_clk_external      : in    std_logic; 
          in_clk_manual        : in    std_logic; 
          in_iar_r             : in    std_logic; 
          in_iar_w             : in    std_logic; 
          in_ir_r              : in    std_logic; 
          in_ir_w              : in    std_logic; 
          in_is_bus1_w         : in    std_logic; 
          in_is_clk_external   : in    std_logic; 
          in_is_clk_high       : in    std_logic; 
          in_is_clk_low        : in    std_logic; 
          in_is_clk_manual     : in    std_logic; 
          in_is_clk_veryhigh   : in    std_logic; 
          in_manr_d            : in    std_logic_vector (7 downto 0); 
          in_manr_r            : in    std_logic; 
          in_manr_w            : in    std_logic; 
          in_manual_input_o    : in    std_logic_vector (7 downto 0); 
          in_manual_input_r    : in    std_logic; 
          in_mem_o             : in    std_logic_vector (7 downto 0); 
          in_ram_a_w           : in    std_logic; 
          in_ram_r             : in    std_logic; 
          in_ram_w             : in    std_logic; 
          in_read_reg_en       : in    std_logic; 
          in_rst               : in    std_logic; 
          in_r0_r              : in    std_logic; 
          in_r0_w              : in    std_logic; 
          in_r1_r              : in    std_logic; 
          in_r1_w              : in    std_logic; 
          in_r2_r              : in    std_logic; 
          in_r2_w              : in    std_logic; 
          in_r3_r              : in    std_logic; 
          in_r3_w              : in    std_logic; 
          in_temp_w            : in    std_logic; 
          in_write_reg_en      : in    std_logic; 
          manr_o               : out   std_logic_vector (7 downto 0); 
          manr_r               : out   std_logic; 
          manr_w               : out   std_logic; 
          monitor              : out   std_logic_vector (7 downto 0); 
          out_acc_r            : out   std_logic; 
          out_acc_w            : out   std_logic; 
          out_alu_C_in         : out   std_logic; 
          out_alu_C_out        : out   std_logic; 
          out_alu_eq           : out   std_logic; 
          out_alu_gt           : out   std_logic; 
          out_alu_x            : out   std_logic_vector (7 downto 0); 
          out_alu_z            : out   std_logic; 
          out_bus1             : out   std_logic; 
          out_can_read         : out   std_logic; 
          out_can_write        : out   std_logic; 
          out_clkc             : out   std_logic; 
          out_clkr             : out   std_logic; 
          out_clkw             : out   std_logic; 
          out_clk_internal     : out   std_logic; 
          out_C_in_enabled     : out   std_logic; 
          out_C_out_flipflop_o : out   std_logic; 
          out_flags_clr        : out   std_logic; 
          out_flags_C_out      : out   std_logic; 
          out_flags_eq         : out   std_logic; 
          out_flags_gt         : out   std_logic; 
          out_flags_w          : out   std_logic; 
          out_flags_z          : out   std_logic; 
          out_iar_o            : out   std_logic_vector (7 downto 0); 
          out_iar_r            : out   std_logic; 
          out_iar_w            : out   std_logic; 
          out_ir_o             : out   std_logic_vector (7 downto 0); 
          out_ir_w             : out   std_logic; 
          out_is_bus1_w        : out   std_logic; 
          out_op_alt_nop       : out   std_logic; 
          out_op_alu           : out   std_logic; 
          out_op_alu_add       : out   std_logic; 
          out_op_alu_and       : out   std_logic; 
          out_op_alu_lshift    : out   std_logic; 
          out_op_alu_nop       : out   std_logic; 
          out_op_alu_not       : out   std_logic; 
          out_op_alu_or        : out   std_logic; 
          out_op_alu_rshift    : out   std_logic; 
          out_op_alu_xor       : out   std_logic; 
          out_op_flg_clf       : out   std_logic; 
          out_op_jmp_ifjmp     : out   std_logic; 
          out_op_jmp_jmp       : out   std_logic; 
          out_op_jmp_jmpr      : out   std_logic; 
          out_op_ls_ld         : out   std_logic; 
          out_op_ls_ldc        : out   std_logic; 
          out_op_ls_st         : out   std_logic; 
          out_ram_a_o          : out   std_logic_vector (7 downto 0); 
          out_ram_a_w          : out   std_logic; 
          out_ram_r            : out   std_logic; 
          out_ram_w            : out   std_logic; 
          out_r0_r             : out   std_logic; 
          out_r0_w             : out   std_logic; 
          out_r1_r             : out   std_logic; 
          out_r1_w             : out   std_logic; 
          out_r2_r             : out   std_logic; 
          out_r2_w             : out   std_logic; 
          out_r3_r             : out   std_logic; 
          out_r3_w             : out   std_logic; 
          out_sysbus           : out   std_logic_vector (7 downto 0); 
          out_sysbus_released  : out   std_logic; 
          out_s1               : out   std_logic; 
          out_s2               : out   std_logic; 
          out_s3               : out   std_logic; 
          out_s4               : out   std_logic; 
          out_s5               : out   std_logic; 
          out_s6               : out   std_logic; 
          out_temp_o           : out   std_logic_vector (7 downto 0); 
          out_temp_w           : out   std_logic);
end cpu_MUSER_cpu_facade;

architecture BEHAVIORAL of cpu_MUSER_cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal acc_o                : std_logic_vector (7 downto 0);
   signal acc_r                : std_logic;
   signal acc_w                : std_logic;
   signal alu_C_in             : std_logic;
   signal alu_C_in_enabled     : std_logic;
   signal alu_C_out            : std_logic;
   signal alu_C_out_flipflop_o : std_logic;
   signal alu_eq               : std_logic;
   signal alu_gt               : std_logic;
   signal alu_x                : std_logic_vector (7 downto 0);
   signal alu_z                : std_logic;
   signal bus1                 : std_logic;
   signal can_read             : std_logic;
   signal can_write            : std_logic;
   signal cc_acc_r             : std_logic;
   signal cc_acc_w             : std_logic;
   signal cc_alu_op            : std_logic_vector (2 downto 0);
   signal cc_bus1              : std_logic;
   signal cc_dbg_alt_nop       : std_logic;
   signal cc_dbg_alu           : std_logic;
   signal cc_dbg_alu_and       : std_logic;
   signal cc_dbg_alu_lshift    : std_logic;
   signal cc_dbg_alu_nop       : std_logic;
   signal cc_dbg_alu_not       : std_logic;
   signal cc_dbg_alu_or        : std_logic;
   signal cc_dbg_alu_rshift    : std_logic;
   signal cc_dbg_alu_sum       : std_logic;
   signal cc_dbg_alu_xor       : std_logic;
   signal cc_dbg_flg_clf       : std_logic;
   signal cc_dbg_jmp_ifjmp     : std_logic;
   signal cc_dbg_jmp_jmp       : std_logic;
   signal cc_dbg_jmp_jmpr      : std_logic;
   signal cc_dbg_ls_ld         : std_logic;
   signal cc_dbg_ls_ldc        : std_logic;
   signal cc_dbg_ls_st         : std_logic;
   signal cc_dbg_s1            : std_logic;
   signal cc_dbg_s2            : std_logic;
   signal cc_dbg_s3            : std_logic;
   signal cc_dbg_s4            : std_logic;
   signal cc_dbg_s5            : std_logic;
   signal cc_dbg_s6            : std_logic;
   signal cc_flags_clr         : std_logic;
   signal cc_flags_w           : std_logic;
   signal cc_iar_r             : std_logic;
   signal cc_iar_w             : std_logic;
   signal cc_ir_w              : std_logic;
   signal cc_ram_a_w           : std_logic;
   signal cc_ram_r             : std_logic;
   signal cc_ram_w             : std_logic;
   signal cc_r0_r              : std_logic;
   signal cc_r0_w              : std_logic;
   signal cc_r1_r              : std_logic;
   signal cc_r1_w              : std_logic;
   signal cc_r2_r              : std_logic;
   signal cc_r2_w              : std_logic;
   signal cc_r3_r              : std_logic;
   signal cc_r3_w              : std_logic;
   signal cc_temp_w            : std_logic;
   signal clkc                 : std_logic;
   signal clkr                 : std_logic;
   signal clkw                 : std_logic;
   signal clk_internal         : std_logic;
   signal flags_o              : std_logic_vector (3 downto 0);
   signal freq_div_1           : std_logic_vector (15 downto 0);
   signal ground               : std_logic;
   signal iar_o                : std_logic_vector (7 downto 0);
   signal iar_r                : std_logic;
   signal iar_w                : std_logic;
   signal ir_o                 : std_logic_vector (7 downto 0);
   signal ir_r                 : std_logic;
   signal ir_w                 : std_logic;
   signal is_bus1_w_manual     : std_logic;
   signal manual_acc_r         : std_logic;
   signal manual_acc_w         : std_logic;
   signal manual_iar_r         : std_logic;
   signal manual_iar_w         : std_logic;
   signal manual_input_r       : std_logic;
   signal manual_ir_w          : std_logic;
   signal manual_ram_a_w       : std_logic;
   signal manual_ram_r         : std_logic;
   signal manual_ram_w         : std_logic;
   signal manual_r0_r          : std_logic;
   signal manual_r0_w          : std_logic;
   signal manual_r1_r          : std_logic;
   signal manual_r1_w          : std_logic;
   signal manual_r2_r          : std_logic;
   signal manual_r2_w          : std_logic;
   signal manual_r3_r          : std_logic;
   signal manual_r3_w          : std_logic;
   signal manual_temp_w        : std_logic;
   signal not_reading          : std_logic;
   signal pto                  : std_logic_vector (7 downto 0);
   signal pt_const             : std_logic_vector (7 downto 0);
   signal ram_a_o              : std_logic_vector (7 downto 0);
   signal ram_a_w              : std_logic;
   signal ram_r                : std_logic;
   signal ram_w                : std_logic;
   signal rst                  : std_logic;
   signal r0_o                 : std_logic_vector (7 downto 0);
   signal r0_r                 : std_logic;
   signal r0_w                 : std_logic;
   signal r1_o                 : std_logic_vector (7 downto 0);
   signal r1_r                 : std_logic;
   signal r1_w                 : std_logic;
   signal r2_o                 : std_logic_vector (7 downto 0);
   signal r2_r                 : std_logic;
   signal r2_w                 : std_logic;
   signal r3_o                 : std_logic_vector (7 downto 0);
   signal r3_r                 : std_logic;
   signal r3_w                 : std_logic;
   signal sysbus               : std_logic_vector (7 downto 0);
   signal sysbus_released      : std_logic;
   signal temp_o               : std_logic_vector (7 downto 0);
   signal temp_r               : std_logic;
   signal temp_w               : std_logic;
   signal XLXN_23              : std_logic;
   signal XLXN_194             : std_logic;
   signal XLXN_217             : std_logic;
   signal XLXN_233             : std_logic;
   signal XLXN_234             : std_logic;
   signal XLXN_235             : std_logic;
   signal XLXN_247             : std_logic;
   signal XLXN_252             : std_logic;
   signal XLXN_255             : std_logic;
   signal XLXN_256             : std_logic;
   signal XLXN_262             : std_logic;
   signal XLXN_267             : std_logic;
   signal XLXN_272             : std_logic;
   signal XLXN_275             : std_logic;
   signal XLXN_278             : std_logic;
   signal manr_o_DUMMY         : std_logic_vector (7 downto 0);
   signal manr_r_DUMMY         : std_logic;
   signal manr_w_DUMMY         : std_logic;
   component alu_MUSER_cpu_facade
      port ( a     : in    std_logic_vector (7 downto 0); 
             b     : in    std_logic_vector (7 downto 0); 
             C_in  : in    std_logic; 
             C_out : out   std_logic; 
             eq    : out   std_logic; 
             gt    : out   std_logic; 
             op    : in    std_logic_vector (2 downto 0); 
             x     : out   std_logic_vector (7 downto 0); 
             z     : out   std_logic);
   end component;
   
   component clk_generator_MUSER_cpu_facade
      port ( clk  : in    std_logic; 
             clkc : out   std_logic; 
             clkr : out   std_logic; 
             clkw : out   std_logic; 
             rst  : in    std_logic);
   end component;
   
   component cpu_control_MUSER_cpu_facade
      port ( acc_r            : out   std_logic; 
             acc_w            : out   std_logic; 
             alu              : out   std_logic; 
             alu_and          : out   std_logic; 
             alu_C_in_enabled : out   std_logic; 
             alu_lshift       : out   std_logic; 
             alu_not          : out   std_logic; 
             alu_op0          : out   std_logic; 
             alu_op1          : out   std_logic; 
             alu_op2          : out   std_logic; 
             alu_or           : out   std_logic; 
             alu_rshift       : out   std_logic; 
             alu_sum          : out   std_logic; 
             alu_xor          : out   std_logic; 
             bus1             : out   std_logic; 
             clk              : in    std_logic; 
             clkr             : in    std_logic; 
             clkw             : in    std_logic; 
             flags            : in    std_logic_vector (3 downto 0); 
             flags_clr        : out   std_logic; 
             flags_w          : out   std_logic; 
             flg_clf          : out   std_logic; 
             ground           : out   std_logic; 
             iar_r            : out   std_logic; 
             iar_w            : out   std_logic; 
             in_from_port     : out   std_logic; 
             ir               : in    std_logic_vector (7 downto 0); 
             ir_w             : out   std_logic; 
             jmp_ifjmp        : out   std_logic; 
             jmp_jmp          : out   std_logic; 
             jmp_jmpr         : out   std_logic; 
             ls_ld            : out   std_logic; 
             ls_ldc           : out   std_logic; 
             ls_st            : out   std_logic; 
             out_to_port      : out   std_logic; 
             pt_const         : out   std_logic_vector (7 downto 0); 
             r0_r             : out   std_logic; 
             r0_w             : out   std_logic; 
             r1_r             : out   std_logic; 
             r1_w             : out   std_logic; 
             r2_r             : out   std_logic; 
             r2_w             : out   std_logic; 
             r3_r             : out   std_logic; 
             r3_w             : out   std_logic; 
             ram_a_w          : out   std_logic; 
             ram_r            : out   std_logic; 
             ram_w            : out   std_logic; 
             rst              : in    std_logic; 
             s1               : out   std_logic; 
             s2               : out   std_logic; 
             s3               : out   std_logic; 
             s4               : out   std_logic; 
             s5               : out   std_logic; 
             s6               : out   std_logic; 
             temp_w           : out   std_logic);
   end component;
   
   component pass_through_or_one_MUSER_cpu_facade
      port ( const : in    std_logic_vector (7 downto 0); 
             i     : in    std_logic_vector (7 downto 0); 
             o     : out   std_logic_vector (7 downto 0); 
             one   : in    std_logic);
   end component;
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
   component LD4CE_MXILINX_cpu_facade
      port ( CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             G   : in    std_logic; 
             GE  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component FDC_1
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC_1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component LD8_MXILINX_cpu_facade
      port ( D : in    std_logic_vector (7 downto 0); 
             G : in    std_logic; 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component reg_8bit_MUSER_cpu_facade
      port ( clr : in    std_logic; 
             d   : in    std_logic_vector (7 downto 0); 
             o   : out   std_logic_vector (7 downto 0); 
             r   : in    std_logic; 
             w   : in    std_logic);
   end component;
   
   component cpu_output_muxer_MUSER_cpu_facade
      port ( acc_o          : in    std_logic_vector (7 downto 0); 
             acc_r          : in    std_logic; 
             g              : out   std_logic; 
             iar_o          : in    std_logic_vector (7 downto 0); 
             iar_r          : in    std_logic; 
             ir_o           : in    std_logic_vector (7 downto 0); 
             ir_r           : in    std_logic; 
             manr_o         : in    std_logic_vector (7 downto 0); 
             manr_r         : in    std_logic; 
             manual_input_o : in    std_logic_vector (7 downto 0); 
             manual_input_r : in    std_logic; 
             mem_o          : in    std_logic_vector (7 downto 0); 
             mem_r          : in    std_logic; 
             o              : out   std_logic_vector (7 downto 0); 
             r0_o           : in    std_logic_vector (7 downto 0); 
             r0_r           : in    std_logic; 
             r1_o           : in    std_logic_vector (7 downto 0); 
             r1_r           : in    std_logic; 
             r2_o           : in    std_logic_vector (7 downto 0); 
             r2_r           : in    std_logic; 
             r3_o           : in    std_logic_vector (7 downto 0); 
             r3_r           : in    std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component M2_1_MXILINX_cpu_facade
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component buf_8bit_MUSER_cpu_facade
      port ( i : in    std_logic_vector (7 downto 0); 
             o : out   std_logic_vector (7 downto 0));
   end component;
   
   component cpu_freq_divider_MUSER_cpu_facade
      port ( clk_in          : in    std_logic; 
             clk_out         : out   std_logic; 
             external        : in    std_logic; 
             external_clk_in : in    std_logic; 
             high            : in    std_logic; 
             low             : in    std_logic; 
             manual          : in    std_logic; 
             manual_clk_in   : in    std_logic; 
             rst             : in    std_logic);
   end component;
   
   component CB16CE_MXILINX_cpu_facade
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component cpu_freq_divider_1Hz_MUSER_cpu_facade
      port ( in_clk  : in    std_logic; 
             in_clr  : in    std_logic; 
             out_clk : out   std_logic);
   end component;
   
   component cpu_freq_divider_1Stg_MUSER_cpu_facade
      port ( in_clk  : in    std_logic; 
             in_clr  : in    std_logic; 
             out_clk : out   std_logic);
   end component;
   
   component cpu_freq_divider_1Inst_MUSER_cpu_facade
      port ( in_clk  : in    std_logic; 
             in_clr  : in    std_logic; 
             out_clk : out   std_logic);
   end component;
   
   component cpu_freq_divider_1KHz_MUSER_cpu_facade
      port ( in_clk  : in    std_logic; 
             in_clr  : in    std_logic; 
             out_clk : out   std_logic);
   end component;
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_87 : label is "XLXI_87_94";
   attribute HU_SET of XLXI_104 : label is "XLXI_104_95";
   attribute HU_SET of XLXI_571 : label is "XLXI_571_96";
   attribute HU_SET of XLXI_914 : label is "XLXI_914_97";
   attribute HU_SET of XLXI_917 : label is "XLXI_917_98";
begin
   manr_o(7 downto 0) <= manr_o_DUMMY(7 downto 0);
   manr_r <= manr_r_DUMMY;
   manr_w <= manr_w_DUMMY;
   alu_inst : alu_MUSER_cpu_facade
      port map (a(7 downto 0)=>sysbus(7 downto 0),
                b(7 downto 0)=>pto(7 downto 0),
                C_in=>alu_C_in,
                op(2 downto 0)=>cc_alu_op(2 downto 0),
                C_out=>alu_C_out,
                eq=>alu_eq,
                gt=>alu_gt,
                x(7 downto 0)=>alu_x(7 downto 0),
                z=>alu_z);
   
   clck_gen : clk_generator_MUSER_cpu_facade
      port map (clk=>clk_internal,
                rst=>rst,
                clkc=>clkc,
                clkr=>clkr,
                clkw=>clkw);
   
   cpu_ctl : cpu_control_MUSER_cpu_facade
      port map (clk=>clkc,
                clkr=>clkr,
                clkw=>clkw,
                flags(3 downto 0)=>flags_o(3 downto 0),
                ir(7 downto 0)=>ir_o(7 downto 0),
                rst=>rst,
                acc_r=>cc_acc_r,
                acc_w=>cc_acc_w,
                alu=>cc_dbg_alu,
                alu_and=>cc_dbg_alu_and,
                alu_C_in_enabled=>alu_C_in_enabled,
                alu_lshift=>cc_dbg_alu_lshift,
                alu_not=>cc_dbg_alu_not,
                alu_op0=>cc_alu_op(0),
                alu_op1=>cc_alu_op(1),
                alu_op2=>cc_alu_op(2),
                alu_or=>ground,
                alu_rshift=>cc_dbg_alu_rshift,
                alu_sum=>cc_dbg_alu_sum,
                alu_xor=>cc_dbg_alu_or,
                bus1=>cc_bus1,
                flags_clr=>cc_flags_clr,
                flags_w=>cc_flags_w,
                flg_clf=>cc_dbg_flg_clf,
                ground=>cc_dbg_alu_nop,
                iar_r=>cc_iar_r,
                iar_w=>cc_iar_w,
                in_from_port=>cc_dbg_alu_xor,
                ir_w=>cc_ir_w,
                jmp_ifjmp=>cc_dbg_jmp_ifjmp,
                jmp_jmp=>cc_dbg_jmp_jmp,
                jmp_jmpr=>cc_dbg_jmp_jmpr,
                ls_ld=>cc_dbg_ls_ld,
                ls_ldc=>cc_dbg_ls_ldc,
                ls_st=>cc_dbg_ls_st,
                out_to_port=>cc_dbg_alt_nop,
                pt_const(7 downto 0)=>pt_const(7 downto 0),
                ram_a_w=>cc_ram_a_w,
                ram_r=>cc_ram_r,
                ram_w=>cc_ram_w,
                r0_r=>cc_r0_r,
                r0_w=>cc_r0_w,
                r1_r=>cc_r1_r,
                r1_w=>cc_r1_w,
                r2_r=>cc_r2_r,
                r2_w=>cc_r2_w,
                r3_r=>cc_r3_r,
                r3_w=>cc_r3_w,
                s1=>cc_dbg_s1,
                s2=>cc_dbg_s2,
                s3=>cc_dbg_s3,
                s4=>cc_dbg_s4,
                s5=>cc_dbg_s5,
                s6=>cc_dbg_s6,
                temp_w=>cc_temp_w);
   
   pass_th : pass_through_or_one_MUSER_cpu_facade
      port map (const(7 downto 0)=>pt_const(7 downto 0),
                i(7 downto 0)=>temp_o(7 downto 0),
                one=>bus1,
                o(7 downto 0)=>pto(7 downto 0));
   
   XLXI_7 : PULLUP
      port map (O=>XLXN_23);
   
   XLXI_8 : PULLUP
      port map (O=>temp_r);
   
   XLXI_87 : LD4CE_MXILINX_cpu_facade
      port map (CLR=>XLXN_217,
                D0=>alu_C_out,
                D1=>alu_gt,
                D2=>alu_eq,
                D3=>alu_z,
                G=>cc_flags_w,
                GE=>XLXN_194,
                Q0=>flags_o(0),
                Q1=>flags_o(1),
                Q2=>flags_o(2),
                Q3=>flags_o(3));
   
   XLXI_88 : VCC
      port map (P=>XLXN_194);
   
   XLXI_89 : AND2
      port map (I0=>alu_C_out_flipflop_o,
                I1=>alu_C_in_enabled,
                O=>alu_C_in);
   
   XLXI_102 : FDC_1
      port map (C=>clkr,
                CLR=>rst,
                D=>flags_o(0),
                Q=>alu_C_out_flipflop_o);
   
   XLXI_103 : OR2
      port map (I0=>rst,
                I1=>cc_flags_clr,
                O=>XLXN_217);
   
   XLXI_104 : LD8_MXILINX_cpu_facade
      port map (D(7 downto 0)=>sysbus(7 downto 0),
                G=>cc_r0_w,
                Q(7 downto 0)=>monitor(7 downto 0));
   
   XLXI_116 : BUF
      port map (I=>in_rst,
                O=>XLXN_233);
   
   XLXI_117 : INV
      port map (I=>XLXN_233,
                O=>rst);
   
   XLXI_121 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>in_manr_d(7 downto 0),
                r=>manr_r_DUMMY,
                w=>manr_w_DUMMY,
                o(7 downto 0)=>manr_o_DUMMY(7 downto 0));
   
   XLXI_122 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>sysbus(7 downto 0),
                r=>iar_r,
                w=>iar_w,
                o(7 downto 0)=>iar_o(7 downto 0));
   
   XLXI_123 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>sysbus(7 downto 0),
                r=>XLXN_23,
                w=>cc_ir_w,
                o(7 downto 0)=>ir_o(7 downto 0));
   
   XLXI_124 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>sysbus(7 downto 0),
                r=>temp_r,
                w=>temp_w,
                o(7 downto 0)=>temp_o(7 downto 0));
   
   XLXI_125 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>alu_x(7 downto 0),
                r=>acc_r,
                w=>acc_w,
                o(7 downto 0)=>acc_o(7 downto 0));
   
   XLXI_126 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>sysbus(7 downto 0),
                r=>r0_r,
                w=>r0_w,
                o(7 downto 0)=>r0_o(7 downto 0));
   
   XLXI_127 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>sysbus(7 downto 0),
                r=>r1_r,
                w=>r1_w,
                o(7 downto 0)=>r1_o(7 downto 0));
   
   XLXI_128 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>sysbus(7 downto 0),
                r=>r2_r,
                w=>r2_w,
                o(7 downto 0)=>r2_o(7 downto 0));
   
   XLXI_129 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>sysbus(7 downto 0),
                r=>r3_r,
                w=>r3_w,
                o(7 downto 0)=>r3_o(7 downto 0));
   
   XLXI_130 : cpu_output_muxer_MUSER_cpu_facade
      port map (acc_o(7 downto 0)=>acc_o(7 downto 0),
                acc_r=>acc_r,
                iar_o(7 downto 0)=>iar_o(7 downto 0),
                iar_r=>iar_r,
                ir_o(7 downto 0)=>ir_o(7 downto 0),
                ir_r=>ir_r,
                manr_o(7 downto 0)=>manr_o_DUMMY(7 downto 0),
                manr_r=>manr_r_DUMMY,
                manual_input_o(7 downto 0)=>in_manual_input_o(7 downto 0),
                manual_input_r=>manual_input_r,
                mem_o(7 downto 0)=>in_mem_o(7 downto 0),
                mem_r=>ram_r,
                r0_o(7 downto 0)=>r0_o(7 downto 0),
                r0_r=>r0_r,
                r1_o(7 downto 0)=>r1_o(7 downto 0),
                r1_r=>r1_r,
                r2_o(7 downto 0)=>r2_o(7 downto 0),
                r2_r=>r2_r,
                r3_o(7 downto 0)=>r3_o(7 downto 0),
                r3_r=>r3_r,
                g=>not_reading,
                o(7 downto 0)=>sysbus(7 downto 0));
   
   XLXI_136 : GND
      port map (G=>open);
   
   XLXI_189 : BUF
      port map (I=>clkc,
                O=>out_clkc);
   
   XLXI_190 : BUF
      port map (I=>clkr,
                O=>out_clkr);
   
   XLXI_191 : BUF
      port map (I=>clkw,
                O=>out_clkw);
   
   XLXI_192 : BUF
      port map (I=>cc_dbg_s1,
                O=>out_s1);
   
   XLXI_193 : BUF
      port map (I=>cc_dbg_s2,
                O=>out_s2);
   
   XLXI_194 : BUF
      port map (I=>cc_dbg_s3,
                O=>out_s3);
   
   XLXI_195 : BUF
      port map (I=>cc_dbg_s4,
                O=>out_s4);
   
   XLXI_196 : BUF
      port map (I=>cc_dbg_s5,
                O=>out_s5);
   
   XLXI_207 : BUF
      port map (I=>cc_dbg_s6,
                O=>out_s6);
   
   XLXI_212 : INV
      port map (I=>clkr,
                O=>sysbus_released);
   
   XLXI_218 : OR2
      port map (I0=>manual_r0_r,
                I1=>cc_r0_r,
                O=>r0_r);
   
   XLXI_219 : BUF
      port map (I=>r0_r,
                O=>out_r0_r);
   
   XLXI_220 : BUF
      port map (I=>r0_w,
                O=>out_r0_w);
   
   XLXI_221 : BUF
      port map (I=>r1_r,
                O=>out_r1_r);
   
   XLXI_222 : BUF
      port map (I=>r1_w,
                O=>out_r1_w);
   
   XLXI_223 : BUF
      port map (I=>r2_r,
                O=>out_r2_r);
   
   XLXI_224 : BUF
      port map (I=>r2_w,
                O=>out_r2_w);
   
   XLXI_225 : BUF
      port map (I=>r3_r,
                O=>out_r3_r);
   
   XLXI_226 : BUF
      port map (I=>r3_w,
                O=>out_r3_w);
   
   XLXI_227 : BUF
      port map (I=>iar_r,
                O=>out_iar_r);
   
   XLXI_228 : BUF
      port map (I=>iar_w,
                O=>out_iar_w);
   
   XLXI_229 : BUF
      port map (I=>temp_w,
                O=>out_temp_w);
   
   XLXI_326 : AND3
      port map (I0=>sysbus_released,
                I1=>in_is_clk_manual,
                I2=>in_read_reg_en,
                O=>can_read);
   
   XLXI_371 : AND2
      port map (I0=>can_read,
                I1=>in_r0_r,
                O=>manual_r0_r);
   
   XLXI_375 : OR2
      port map (I0=>manual_r0_w,
                I1=>cc_r0_w,
                O=>r0_w);
   
   XLXI_380 : AND2
      port map (I0=>in_is_clk_manual,
                I1=>in_write_reg_en,
                O=>can_write);
   
   XLXI_381 : AND2
      port map (I0=>can_write,
                I1=>in_r0_w,
                O=>manual_r0_w);
   
   XLXI_390 : AND2
      port map (I0=>can_read,
                I1=>in_manr_r,
                O=>manr_r_DUMMY);
   
   XLXI_394 : AND2
      port map (I0=>can_write,
                I1=>in_manr_w,
                O=>manr_w_DUMMY);
   
   XLXI_465 : AND2
      port map (I0=>can_read,
                I1=>in_r1_r,
                O=>manual_r1_r);
   
   XLXI_466 : OR2
      port map (I0=>manual_r1_r,
                I1=>cc_r1_r,
                O=>r1_r);
   
   XLXI_467 : AND2
      port map (I0=>can_write,
                I1=>in_r1_w,
                O=>manual_r1_w);
   
   XLXI_468 : OR2
      port map (I0=>manual_r1_w,
                I1=>cc_r1_w,
                O=>r1_w);
   
   XLXI_525 : AND2
      port map (I0=>can_read,
                I1=>in_r2_r,
                O=>manual_r2_r);
   
   XLXI_526 : OR2
      port map (I0=>manual_r2_r,
                I1=>cc_r2_r,
                O=>r2_r);
   
   XLXI_527 : AND2
      port map (I0=>can_write,
                I1=>in_r2_w,
                O=>manual_r2_w);
   
   XLXI_528 : OR2
      port map (I0=>manual_r2_w,
                I1=>cc_r2_w,
                O=>r2_w);
   
   XLXI_529 : AND2
      port map (I0=>can_read,
                I1=>in_r3_r,
                O=>manual_r3_r);
   
   XLXI_530 : OR2
      port map (I0=>manual_r3_r,
                I1=>cc_r3_r,
                O=>r3_r);
   
   XLXI_531 : AND2
      port map (I0=>can_write,
                I1=>in_r3_w,
                O=>manual_r3_w);
   
   XLXI_532 : OR2
      port map (I0=>manual_r3_w,
                I1=>cc_r3_w,
                O=>r3_w);
   
   XLXI_533 : AND2
      port map (I0=>can_read,
                I1=>in_iar_r,
                O=>manual_iar_r);
   
   XLXI_534 : OR2
      port map (I0=>manual_iar_r,
                I1=>cc_iar_r,
                O=>iar_r);
   
   XLXI_535 : AND2
      port map (I0=>can_write,
                I1=>in_iar_w,
                O=>manual_iar_w);
   
   XLXI_536 : OR2
      port map (I0=>manual_iar_w,
                I1=>cc_iar_w,
                O=>iar_w);
   
   XLXI_537 : AND2
      port map (I0=>can_write,
                I1=>in_temp_w,
                O=>manual_temp_w);
   
   XLXI_538 : OR2
      port map (I0=>manual_temp_w,
                I1=>cc_temp_w,
                O=>temp_w);
   
   XLXI_545 : AND2
      port map (I0=>can_read,
                I1=>in_acc_r,
                O=>manual_acc_r);
   
   XLXI_546 : OR2
      port map (I0=>manual_acc_r,
                I1=>cc_acc_r,
                O=>acc_r);
   
   XLXI_547 : AND2
      port map (I0=>can_write,
                I1=>in_acc_w,
                O=>manual_acc_w);
   
   XLXI_548 : OR2
      port map (I0=>manual_acc_w,
                I1=>cc_acc_w,
                O=>acc_w);
   
   XLXI_549 : AND2
      port map (I0=>can_read,
                I1=>in_ram_r,
                O=>manual_ram_r);
   
   XLXI_550 : OR2
      port map (I0=>manual_ram_r,
                I1=>cc_ram_r,
                O=>ram_r);
   
   XLXI_551 : AND2
      port map (I0=>can_write,
                I1=>in_ram_w,
                O=>manual_ram_w);
   
   XLXI_552 : OR2
      port map (I0=>manual_ram_w,
                I1=>cc_ram_w,
                O=>ram_w);
   
   XLXI_553 : BUF
      port map (I=>acc_r,
                O=>out_acc_r);
   
   XLXI_554 : BUF
      port map (I=>acc_w,
                O=>out_acc_w);
   
   XLXI_555 : BUF
      port map (I=>ram_r,
                O=>out_ram_r);
   
   XLXI_556 : BUF
      port map (I=>ram_w,
                O=>out_ram_w);
   
   XLXI_557 : BUF
      port map (I=>ir_w,
                O=>out_ir_w);
   
   XLXI_558 : BUF
      port map (I=>ram_a_w,
                O=>out_ram_a_w);
   
   XLXI_559 : BUF
      port map (I=>bus1,
                O=>out_bus1);
   
   XLXI_560 : BUF
      port map (I=>is_bus1_w_manual,
                O=>out_is_bus1_w);
   
   XLXI_561 : BUF
      port map (I=>cc_flags_w,
                O=>out_flags_w);
   
   XLXI_562 : BUF
      port map (I=>cc_flags_clr,
                O=>out_flags_clr);
   
   XLXI_563 : BUF
      port map (I=>cc_dbg_alu,
                O=>out_op_alu);
   
   XLXI_564 : BUF
      port map (I=>cc_dbg_alu_sum,
                O=>out_op_alu_add);
   
   XLXI_565 : AND2
      port map (I0=>can_write,
                I1=>in_ir_w,
                O=>manual_ir_w);
   
   XLXI_566 : OR2
      port map (I0=>manual_ir_w,
                I1=>cc_ir_w,
                O=>ir_w);
   
   XLXI_567 : AND2
      port map (I0=>can_write,
                I1=>in_ram_a_w,
                O=>manual_ram_a_w);
   
   XLXI_568 : OR2
      port map (I0=>manual_ram_a_w,
                I1=>cc_ram_a_w,
                O=>ram_a_w);
   
   XLXI_571 : M2_1_MXILINX_cpu_facade
      port map (D0=>cc_bus1,
                D1=>in_bus1,
                S0=>is_bus1_w_manual,
                O=>bus1);
   
   XLXI_574 : buf_8bit_MUSER_cpu_facade
      port map (i(7 downto 0)=>iar_o(7 downto 0),
                o(7 downto 0)=>out_iar_o(7 downto 0));
   
   XLXI_575 : buf_8bit_MUSER_cpu_facade
      port map (i(7 downto 0)=>ir_o(7 downto 0),
                o(7 downto 0)=>out_ir_o(7 downto 0));
   
   XLXI_576 : buf_8bit_MUSER_cpu_facade
      port map (i(7 downto 0)=>temp_o(7 downto 0),
                o(7 downto 0)=>out_temp_o(7 downto 0));
   
   XLXI_648 : BUF
      port map (I=>cc_dbg_alu_lshift,
                O=>out_op_alu_lshift);
   
   XLXI_649 : BUF
      port map (I=>cc_dbg_alu_rshift,
                O=>out_op_alu_rshift);
   
   XLXI_650 : BUF
      port map (I=>cc_dbg_alu_not,
                O=>out_op_alu_not);
   
   XLXI_651 : BUF
      port map (I=>cc_dbg_alu_and,
                O=>out_op_alu_and);
   
   XLXI_652 : BUF
      port map (I=>cc_dbg_alu_or,
                O=>out_op_alu_or);
   
   XLXI_653 : BUF
      port map (I=>cc_dbg_alu_xor,
                O=>out_op_alu_xor);
   
   XLXI_654 : BUF
      port map (I=>cc_dbg_alu_nop,
                O=>out_op_alu_nop);
   
   XLXI_655 : BUF
      port map (I=>cc_dbg_ls_ld,
                O=>out_op_ls_ld);
   
   XLXI_656 : BUF
      port map (I=>cc_dbg_ls_st,
                O=>out_op_ls_st);
   
   XLXI_657 : BUF
      port map (I=>cc_dbg_ls_ldc,
                O=>out_op_ls_ldc);
   
   XLXI_658 : BUF
      port map (I=>cc_dbg_jmp_jmpr,
                O=>out_op_jmp_jmpr);
   
   XLXI_659 : BUF
      port map (I=>cc_dbg_jmp_jmp,
                O=>out_op_jmp_jmp);
   
   XLXI_660 : BUF
      port map (I=>cc_dbg_jmp_ifjmp,
                O=>out_op_jmp_ifjmp);
   
   XLXI_661 : BUF
      port map (I=>cc_dbg_flg_clf,
                O=>out_op_flg_clf);
   
   XLXI_662 : BUF
      port map (I=>cc_dbg_alt_nop,
                O=>out_op_alt_nop);
   
   XLXI_664 : BUF
      port map (I=>alu_C_in,
                O=>out_alu_C_in);
   
   XLXI_665 : BUF
      port map (I=>alu_gt,
                O=>out_alu_gt);
   
   XLXI_666 : BUF
      port map (I=>alu_eq,
                O=>out_alu_eq);
   
   XLXI_667 : BUF
      port map (I=>alu_z,
                O=>out_alu_z);
   
   XLXI_668 : BUF
      port map (I=>alu_C_out,
                O=>out_alu_C_out);
   
   XLXI_669 : BUF
      port map (I=>flags_o(0),
                O=>out_flags_C_out);
   
   XLXI_670 : BUF
      port map (I=>flags_o(1),
                O=>out_flags_gt);
   
   XLXI_671 : BUF
      port map (I=>flags_o(2),
                O=>out_flags_eq);
   
   XLXI_675 : buf_8bit_MUSER_cpu_facade
      port map (i(7 downto 0)=>alu_x(7 downto 0),
                o(7 downto 0)=>out_alu_x(7 downto 0));
   
   XLXI_679 : BUF
      port map (I=>flags_o(3),
                O=>out_flags_z);
   
   XLXI_680 : BUF
      port map (I=>alu_C_in_enabled,
                O=>out_C_in_enabled);
   
   XLXI_681 : BUF
      port map (I=>alu_C_out_flipflop_o,
                O=>out_C_out_flipflop_o);
   
   XLXI_799 : buf_8bit_MUSER_cpu_facade
      port map (i(7 downto 0)=>ram_a_o(7 downto 0),
                o(7 downto 0)=>out_ram_a_o(7 downto 0));
   
   XLXI_844 : BUF
      port map (I=>sysbus_released,
                O=>out_sysbus_released);
   
   XLXI_860 : buf_8bit_MUSER_cpu_facade
      port map (i(7 downto 0)=>sysbus(7 downto 0),
                o(7 downto 0)=>out_sysbus(7 downto 0));
   
   XLXI_901 : BUF
      port map (I=>can_read,
                O=>out_can_read);
   
   XLXI_903 : BUF
      port map (I=>can_write,
                O=>out_can_write);
   
   XLXI_912 : cpu_freq_divider_MUSER_cpu_facade
      port map (clk_in=>in_clk,
                external=>in_is_clk_external,
                external_clk_in=>in_clk_external,
                high=>in_is_clk_high,
                low=>in_is_clk_low,
                manual=>in_is_clk_manual,
                manual_clk_in=>in_clk_manual,
                rst=>rst,
                clk_out=>open);
   
   XLXI_913 : BUF
      port map (I=>clk_internal,
                O=>out_clk_internal);
   
   XLXI_914 : CB16CE_MXILINX_cpu_facade
      port map (C=>in_clk,
                CE=>XLXN_234,
                CLR=>rst,
                CEO=>XLXN_235,
                Q=>open,
                TC=>open);
   
   XLXI_915 : VCC
      port map (P=>XLXN_234);
   
   XLXI_916 : BUF
      port map (I=>freq_div_1(3),
                O=>open);
   
   XLXI_917 : CB16CE_MXILINX_cpu_facade
      port map (C=>in_clk,
                CE=>XLXN_235,
                CLR=>rst,
                CEO=>open,
                Q(15 downto 0)=>freq_div_1(15 downto 0),
                TC=>open);
   
   XLXI_918 : AND2
      port map (I0=>in_clk_manual,
                I1=>in_is_clk_manual,
                O=>XLXN_247);
   
   XLXI_919 : AND2
      port map (I0=>XLXN_255,
                I1=>in_is_clk_low,
                O=>XLXN_252);
   
   XLXI_925 : AND2
      port map (I0=>can_read,
                I1=>in_manual_input_r,
                O=>manual_input_r);
   
   XLXI_926 : cpu_freq_divider_1Hz_MUSER_cpu_facade
      port map (in_clk=>in_clk,
                in_clr=>rst,
                out_clk=>XLXN_255);
   
   XLXI_927 : cpu_freq_divider_1Stg_MUSER_cpu_facade
      port map (in_clk=>in_clk,
                in_clr=>rst,
                out_clk=>XLXN_256);
   
   XLXI_928 : AND2
      port map (I0=>XLXN_256,
                I1=>in_is_clk_high,
                O=>XLXN_262);
   
   XLXI_931 : cpu_freq_divider_1Inst_MUSER_cpu_facade
      port map (in_clk=>in_clk,
                in_clr=>rst,
                out_clk=>XLXN_267);
   
   XLXI_935 : AND2
      port map (I0=>XLXN_267,
                I1=>in_is_clk_external,
                O=>XLXN_272);
   
   XLXI_937 : cpu_freq_divider_1KHz_MUSER_cpu_facade
      port map (in_clk=>in_clk,
                in_clr=>rst,
                out_clk=>XLXN_275);
   
   XLXI_938 : AND2
      port map (I0=>XLXN_275,
                I1=>in_is_clk_veryhigh,
                O=>XLXN_278);
   
   XLXI_939 : OR5
      port map (I0=>XLXN_278,
                I1=>XLXN_272,
                I2=>XLXN_252,
                I3=>XLXN_247,
                I4=>XLXN_262,
                O=>clk_internal);
   
   XLXI_940 : AND2
      port map (I0=>can_read,
                I1=>in_ir_r,
                O=>ir_r);
   
   XLXI_941 : AND2
      port map (I0=>can_read,
                I1=>in_is_bus1_w,
                O=>is_bus1_w_manual);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_facade is
   port ( in_acc_r           : in    std_logic; 
          in_acc_w           : in    std_logic; 
          in_bus1            : in    std_logic; 
          in_clk             : in    std_logic; 
          in_clk_manual      : in    std_logic; 
          in_iar_r           : in    std_logic; 
          in_iar_w           : in    std_logic; 
          in_ir_r            : in    std_logic; 
          in_ir_w            : in    std_logic; 
          in_is_bus1_w       : in    std_logic; 
          in_is_clk_external : in    std_logic; 
          in_is_clk_high     : in    std_logic; 
          in_is_clk_low      : in    std_logic; 
          in_is_clk_manual   : in    std_logic; 
          in_is_clk_veryhigh : in    std_logic; 
          in_manr_w          : in    std_logic; 
          in_manual_input_o  : in    std_logic_vector (7 downto 0); 
          in_manual_input_r  : in    std_logic; 
          in_ram_a_w         : in    std_logic; 
          in_ram_r           : in    std_logic; 
          in_ram_w           : in    std_logic; 
          in_read_reg_en     : in    std_logic; 
          in_rst             : in    std_logic; 
          in_r0_r            : in    std_logic; 
          in_r0_w            : in    std_logic; 
          in_r1_r            : in    std_logic; 
          in_r1_w            : in    std_logic; 
          in_r2_r            : in    std_logic; 
          in_r2_w            : in    std_logic; 
          in_r3_r            : in    std_logic; 
          in_r3_w            : in    std_logic; 
          in_temp_w          : in    std_logic; 
          in_write_reg_en    : in    std_logic; 
          monitor            : out   std_logic_vector (7 downto 0); 
          out_acc_r          : out   std_logic; 
          out_acc_w          : out   std_logic; 
          out_bus1           : out   std_logic; 
          out_can_read       : out   std_logic; 
          out_can_write      : out   std_logic; 
          out_clkc           : out   std_logic; 
          out_clkr           : out   std_logic; 
          out_clkw           : out   std_logic; 
          out_clk_internal   : out   std_logic; 
          out_flags_C_out    : out   std_logic; 
          out_flags_eq       : out   std_logic; 
          out_flags_gt       : out   std_logic; 
          out_flags_w        : out   std_logic; 
          out_flags_z        : out   std_logic; 
          out_iar_r          : out   std_logic; 
          out_iar_w          : out   std_logic; 
          out_ir_w           : out   std_logic; 
          out_is_bus1_w      : out   std_logic; 
          out_ram_a_w        : out   std_logic; 
          out_ram_r          : out   std_logic; 
          out_ram_w          : out   std_logic; 
          out_r0_r           : out   std_logic; 
          out_r0_w           : out   std_logic; 
          out_r1_r           : out   std_logic; 
          out_r1_w           : out   std_logic; 
          out_r2_r           : out   std_logic; 
          out_r2_w           : out   std_logic; 
          out_r3_r           : out   std_logic; 
          out_r3_w           : out   std_logic; 
          out_sysbus         : out   std_logic_vector (7 downto 0); 
          out_s1             : out   std_logic; 
          out_s2             : out   std_logic; 
          out_s3             : out   std_logic; 
          out_s4             : out   std_logic; 
          out_s5             : out   std_logic; 
          out_s6             : out   std_logic; 
          out_temp_w         : out   std_logic; 
          out_usart1_tx      : out   std_logic);
end cpu_facade;

architecture BEHAVIORAL of cpu_facade is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal in_clk_manual_debounced     : std_logic;
   signal in_clk_manual_final         : std_logic;
   signal mem_address                 : std_logic_vector (7 downto 0);
   signal mem_o                       : std_logic_vector (7 downto 0);
   signal mem_select                  : std_logic_vector (3 downto 0);
   signal port_a_w                    : std_logic;
   signal port_one                    : std_logic;
   signal port_one_o                  : std_logic_vector (7 downto 0);
   signal port_one_w                  : std_logic;
   signal port_r                      : std_logic;
   signal port_selected               : std_logic;
   signal port_w                      : std_logic;
   signal ram_a_w                     : std_logic;
   signal ram_r                       : std_logic;
   signal ram_selected                : std_logic;
   signal ram_w                       : std_logic;
   signal rst                         : std_logic;
   signal XLXN_46                     : std_logic;
   signal XLXN_52                     : std_logic;
   signal XLXN_55                     : std_logic;
   signal XLXN_60                     : std_logic;
   signal XLXN_61                     : std_logic;
   signal XLXN_62                     : std_logic;
   signal XLXN_64                     : std_logic;
   signal XLXN_65                     : std_logic;
   signal XLXN_66                     : std_logic;
   signal XLXN_67                     : std_logic;
   signal XLXN_68                     : std_logic;
   signal XLXN_70                     : std_logic;
   signal XLXN_73                     : std_logic_vector (7 downto 0);
   signal XLXN_74                     : std_logic;
   signal XLXN_76                     : std_logic;
   signal XLXN_77                     : std_logic;
   signal XLXN_78                     : std_logic;
   signal XLXN_79                     : std_logic;
   signal XLXN_80                     : std_logic;
   signal XLXN_81                     : std_logic;
   signal XLXN_82                     : std_logic;
   signal XLXN_83                     : std_logic;
   signal XLXN_84                     : std_logic;
   signal XLXN_85                     : std_logic;
   signal XLXN_98                     : std_logic;
   signal XLXN_208                    : std_logic;
   signal XLXN_209                    : std_logic;
   signal XLXN_210                    : std_logic;
   signal XLXN_212                    : std_logic;
   signal XLXN_213                    : std_logic;
   signal XLXN_214                    : std_logic;
   signal XLXN_216                    : std_logic;
   signal XLXN_232                    : std_logic;
   signal XLXN_408                    : std_logic;
   signal XLXN_431                    : std_logic_vector (7 downto 0);
   signal XLXN_432                    : std_logic_vector (7 downto 0);
   signal out_ram_r_DUMMY             : std_logic;
   signal out_ram_w_DUMMY             : std_logic;
   signal out_sysbus_DUMMY            : std_logic_vector (7 downto 0);
   signal out_ram_a_w_DUMMY           : std_logic;
   signal XLXI_7_in_manr_d_openSignal : std_logic_vector (7 downto 0);
   signal XLXI_7_in_manr_r_openSignal : std_logic;
   signal XLXI_135_r_openSignal       : std_logic;
   signal XLXI_173_a_openSignal       : std_logic_vector (3 downto 0);
   signal XLXI_173_dev1_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_173_dev2_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_173_dev3_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_173_dev4_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_173_dev5_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_173_dev6_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_173_dev7_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_173_dev8_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_173_dev9_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_173_dev10_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_173_dev11_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_173_dev12_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_173_dev13_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_173_dev14_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_173_dev15_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_174_dev2_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_174_dev3_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_174_dev4_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_174_dev5_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_174_dev6_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_174_dev7_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_174_dev8_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_174_dev9_openSignal    : std_logic_vector (7 downto 0);
   signal XLXI_174_dev10_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_174_dev11_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_174_dev12_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_174_dev13_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_174_dev14_openSignal   : std_logic_vector (7 downto 0);
   signal XLXI_174_dev15_openSignal   : std_logic_vector (7 downto 0);
   component cpu_MUSER_cpu_facade
      port ( in_acc_r             : in    std_logic; 
             in_acc_w             : in    std_logic; 
             in_bus1              : in    std_logic; 
             in_clk               : in    std_logic; 
             in_clk_external      : in    std_logic; 
             in_clk_manual        : in    std_logic; 
             in_iar_r             : in    std_logic; 
             in_iar_w             : in    std_logic; 
             in_ir_r              : in    std_logic; 
             in_ir_w              : in    std_logic; 
             in_is_bus1_w         : in    std_logic; 
             in_is_clk_external   : in    std_logic; 
             in_is_clk_high       : in    std_logic; 
             in_is_clk_low        : in    std_logic; 
             in_is_clk_manual     : in    std_logic; 
             in_is_clk_veryhigh   : in    std_logic; 
             in_manr_d            : in    std_logic_vector (7 downto 0); 
             in_manr_r            : in    std_logic; 
             in_manr_w            : in    std_logic; 
             in_manual_input_o    : in    std_logic_vector (7 downto 0); 
             in_manual_input_r    : in    std_logic; 
             in_mem_o             : in    std_logic_vector (7 downto 0); 
             in_r0_r              : in    std_logic; 
             in_r0_w              : in    std_logic; 
             in_r1_r              : in    std_logic; 
             in_r1_w              : in    std_logic; 
             in_r2_r              : in    std_logic; 
             in_r2_w              : in    std_logic; 
             in_r3_r              : in    std_logic; 
             in_r3_w              : in    std_logic; 
             in_ram_a_w           : in    std_logic; 
             in_ram_r             : in    std_logic; 
             in_ram_w             : in    std_logic; 
             in_read_reg_en       : in    std_logic; 
             in_rst               : in    std_logic; 
             in_temp_w            : in    std_logic; 
             in_write_reg_en      : in    std_logic; 
             manr_o               : out   std_logic_vector (7 downto 0); 
             manr_r               : out   std_logic; 
             manr_w               : out   std_logic; 
             monitor              : out   std_logic_vector (7 downto 0); 
             out_acc_r            : out   std_logic; 
             out_acc_w            : out   std_logic; 
             out_alu_C_in         : out   std_logic; 
             out_alu_C_out        : out   std_logic; 
             out_alu_eq           : out   std_logic; 
             out_alu_gt           : out   std_logic; 
             out_alu_x            : out   std_logic_vector (7 downto 0); 
             out_alu_z            : out   std_logic; 
             out_bus1             : out   std_logic; 
             out_can_read         : out   std_logic; 
             out_can_write        : out   std_logic; 
             out_clkc             : out   std_logic; 
             out_clkr             : out   std_logic; 
             out_clkw             : out   std_logic; 
             out_clk_internal     : out   std_logic; 
             out_C_in_enabled     : out   std_logic; 
             out_C_out_flipflop_o : out   std_logic; 
             out_flags_clr        : out   std_logic; 
             out_flags_C_out      : out   std_logic; 
             out_flags_eq         : out   std_logic; 
             out_flags_gt         : out   std_logic; 
             out_flags_w          : out   std_logic; 
             out_flags_z          : out   std_logic; 
             out_iar_o            : out   std_logic_vector (7 downto 0); 
             out_iar_r            : out   std_logic; 
             out_iar_w            : out   std_logic; 
             out_ir_o             : out   std_logic_vector (7 downto 0); 
             out_ir_w             : out   std_logic; 
             out_is_bus1_w        : out   std_logic; 
             out_op_alt_nop       : out   std_logic; 
             out_op_alu           : out   std_logic; 
             out_op_alu_add       : out   std_logic; 
             out_op_alu_and       : out   std_logic; 
             out_op_alu_lshift    : out   std_logic; 
             out_op_alu_nop       : out   std_logic; 
             out_op_alu_not       : out   std_logic; 
             out_op_alu_or        : out   std_logic; 
             out_op_alu_rshift    : out   std_logic; 
             out_op_alu_xor       : out   std_logic; 
             out_op_flg_clf       : out   std_logic; 
             out_op_jmp_ifjmp     : out   std_logic; 
             out_op_jmp_jmp       : out   std_logic; 
             out_op_jmp_jmpr      : out   std_logic; 
             out_op_ls_ld         : out   std_logic; 
             out_op_ls_ldc        : out   std_logic; 
             out_op_ls_st         : out   std_logic; 
             out_r0_r             : out   std_logic; 
             out_r0_w             : out   std_logic; 
             out_r1_r             : out   std_logic; 
             out_r1_w             : out   std_logic; 
             out_r2_r             : out   std_logic; 
             out_r2_w             : out   std_logic; 
             out_r3_r             : out   std_logic; 
             out_r3_w             : out   std_logic; 
             out_ram_a_o          : out   std_logic_vector (7 downto 0); 
             out_ram_a_w          : out   std_logic; 
             out_ram_r            : out   std_logic; 
             out_ram_w            : out   std_logic; 
             out_s1               : out   std_logic; 
             out_s2               : out   std_logic; 
             out_s3               : out   std_logic; 
             out_s4               : out   std_logic; 
             out_s5               : out   std_logic; 
             out_s6               : out   std_logic; 
             out_sysbus           : out   std_logic_vector (7 downto 0); 
             out_sysbus_released  : out   std_logic; 
             out_temp_o           : out   std_logic_vector (7 downto 0); 
             out_temp_w           : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component INV8_MXILINX_cpu_facade
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component debouncer_MUSER_cpu_facade
      port ( in_clk     : in    std_logic; 
             in_signal  : in    std_logic; 
             out_signal : out   std_logic);
   end component;
   
   component FJKC_MXILINX_cpu_facade
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component USART_MUSER_cpu_facade
      port ( clk  : in    std_logic; 
             data : in    std_logic_vector (7 downto 0); 
             rst  : in    std_logic; 
             tx   : out   std_logic);
   end component;
   
   component ram_256bytes_MUSER_cpu_facade
      port ( a      : in    std_logic_vector (7 downto 0); 
             a_o    : out   std_logic_vector (7 downto 0); 
             a_w    : in    std_logic; 
             i      : in    std_logic_vector (7 downto 0); 
             i_r    : in    std_logic; 
             i_w    : in    std_logic; 
             i_wclk : in    std_logic; 
             o      : out   std_logic_vector (7 downto 0));
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component reg_8bit_MUSER_cpu_facade
      port ( clr : in    std_logic; 
             d   : in    std_logic_vector (7 downto 0); 
             o   : out   std_logic_vector (7 downto 0); 
             r   : in    std_logic; 
             w   : in    std_logic);
   end component;
   
   component D4_16E_MXILINX_cpu_facade
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             E   : in    std_logic; 
             D0  : out   std_logic; 
             D1  : out   std_logic; 
             D10 : out   std_logic; 
             D11 : out   std_logic; 
             D12 : out   std_logic; 
             D13 : out   std_logic; 
             D14 : out   std_logic; 
             D15 : out   std_logic; 
             D2  : out   std_logic; 
             D3  : out   std_logic; 
             D4  : out   std_logic; 
             D5  : out   std_logic; 
             D6  : out   std_logic; 
             D7  : out   std_logic; 
             D8  : out   std_logic; 
             D9  : out   std_logic);
   end component;
   
   component bus_muxer_MUSER_cpu_facade
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
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component LD8CE_MXILINX_cpu_facade
      port ( CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             G   : in    std_logic; 
             GE  : in    std_logic; 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_34 : label is "XLXI_34_99";
   attribute HU_SET of XLXI_53 : label is "XLXI_53_100";
   attribute HU_SET of XLXI_136 : label is "XLXI_136_101";
   attribute HU_SET of XLXI_186 : label is "XLXI_186_102";
begin
   out_ram_a_w <= out_ram_a_w_DUMMY;
   out_ram_r <= out_ram_r_DUMMY;
   out_ram_w <= out_ram_w_DUMMY;
   out_sysbus(7 downto 0) <= out_sysbus_DUMMY(7 downto 0);
   XLXI_7 : cpu_MUSER_cpu_facade
      port map (in_acc_r=>XLXN_66,
                in_acc_w=>XLXN_84,
                in_bus1=>XLXN_78,
                in_clk=>in_clk,
                in_clk_external=>XLXN_46,
                in_clk_manual=>in_clk_manual_final,
                in_iar_r=>XLXN_65,
                in_iar_w=>XLXN_83,
                in_ir_r=>XLXN_232,
                in_ir_w=>XLXN_216,
                in_is_bus1_w=>XLXN_98,
                in_is_clk_external=>XLXN_212,
                in_is_clk_high=>XLXN_210,
                in_is_clk_low=>XLXN_52,
                in_is_clk_manual=>XLXN_55,
                in_is_clk_veryhigh=>XLXN_214,
                in_manr_d(7 downto 0)=>XLXI_7_in_manr_d_openSignal(7 downto 0),
                in_manr_r=>XLXI_7_in_manr_r_openSignal,
                in_manr_w=>XLXN_76,
                in_manual_input_o(7 downto 0)=>XLXN_73(7 downto 0),
                in_manual_input_r=>XLXN_70,
                in_mem_o(7 downto 0)=>mem_o(7 downto 0),
                in_ram_a_w=>XLXN_77,
                in_ram_r=>XLXN_67,
                in_ram_w=>XLXN_85,
                in_read_reg_en=>XLXN_60,
                in_rst=>in_rst,
                in_r0_r=>XLXN_68,
                in_r0_w=>XLXN_79,
                in_r1_r=>XLXN_61,
                in_r1_w=>XLXN_80,
                in_r2_r=>XLXN_62,
                in_r2_w=>XLXN_81,
                in_r3_r=>XLXN_64,
                in_r3_w=>XLXN_82,
                in_temp_w=>XLXN_213,
                in_write_reg_en=>XLXN_74,
                manr_o=>open,
                manr_r=>open,
                manr_w=>open,
                monitor(7 downto 0)=>monitor(7 downto 0),
                out_acc_r=>out_acc_r,
                out_acc_w=>out_acc_w,
                out_alu_C_in=>open,
                out_alu_C_out=>open,
                out_alu_eq=>open,
                out_alu_gt=>open,
                out_alu_x=>open,
                out_alu_z=>open,
                out_bus1=>out_bus1,
                out_can_read=>out_can_read,
                out_can_write=>out_can_write,
                out_clkc=>out_clkc,
                out_clkr=>out_clkr,
                out_clkw=>out_clkw,
                out_clk_internal=>out_clk_internal,
                out_C_in_enabled=>open,
                out_C_out_flipflop_o=>open,
                out_flags_clr=>open,
                out_flags_C_out=>out_flags_C_out,
                out_flags_eq=>out_flags_eq,
                out_flags_gt=>out_flags_gt,
                out_flags_w=>out_flags_w,
                out_flags_z=>out_flags_z,
                out_iar_o=>open,
                out_iar_r=>out_iar_r,
                out_iar_w=>out_iar_w,
                out_ir_o=>open,
                out_ir_w=>out_ir_w,
                out_is_bus1_w=>out_is_bus1_w,
                out_op_alt_nop=>open,
                out_op_alu=>open,
                out_op_alu_add=>open,
                out_op_alu_and=>open,
                out_op_alu_lshift=>open,
                out_op_alu_nop=>open,
                out_op_alu_not=>open,
                out_op_alu_or=>open,
                out_op_alu_rshift=>open,
                out_op_alu_xor=>open,
                out_op_flg_clf=>open,
                out_op_jmp_ifjmp=>open,
                out_op_jmp_jmp=>open,
                out_op_jmp_jmpr=>open,
                out_op_ls_ld=>open,
                out_op_ls_ldc=>open,
                out_op_ls_st=>open,
                out_ram_a_o=>open,
                out_ram_a_w=>out_ram_a_w_DUMMY,
                out_ram_r=>out_ram_r_DUMMY,
                out_ram_w=>out_ram_w_DUMMY,
                out_r0_r=>out_r0_r,
                out_r0_w=>out_r0_w,
                out_r1_r=>out_r1_r,
                out_r1_w=>out_r1_w,
                out_r2_r=>out_r2_r,
                out_r2_w=>out_r2_w,
                out_r3_r=>out_r3_r,
                out_r3_w=>out_r3_w,
                out_sysbus(7 downto 0)=>out_sysbus_DUMMY(7 downto 0),
                out_sysbus_released=>open,
                out_s1=>out_s1,
                out_s2=>out_s2,
                out_s3=>out_s3,
                out_s4=>out_s4,
                out_s5=>out_s5,
                out_s6=>out_s6,
                out_temp_o=>open,
                out_temp_w=>out_temp_w);
   
   XLXI_8 : GND
      port map (G=>XLXN_46);
   
   XLXI_12 : INV
      port map (I=>in_is_clk_low,
                O=>XLXN_52);
   
   XLXI_14 : INV
      port map (I=>in_is_clk_manual,
                O=>XLXN_55);
   
   XLXI_16 : INV
      port map (I=>in_read_reg_en,
                O=>XLXN_60);
   
   XLXI_24 : INV
      port map (I=>in_r1_r,
                O=>XLXN_61);
   
   XLXI_26 : INV
      port map (I=>in_r2_r,
                O=>XLXN_62);
   
   XLXI_27 : INV
      port map (I=>in_r3_r,
                O=>XLXN_64);
   
   XLXI_28 : INV
      port map (I=>in_iar_r,
                O=>XLXN_65);
   
   XLXI_29 : INV
      port map (I=>in_acc_r,
                O=>XLXN_66);
   
   XLXI_30 : INV
      port map (I=>in_ram_r,
                O=>XLXN_67);
   
   XLXI_31 : INV
      port map (I=>in_r0_r,
                O=>XLXN_68);
   
   XLXI_32 : INV
      port map (I=>in_manual_input_r,
                O=>XLXN_70);
   
   XLXI_34 : INV8_MXILINX_cpu_facade
      port map (I(7 downto 0)=>in_manual_input_o(7 downto 0),
                O(7 downto 0)=>XLXN_73(7 downto 0));
   
   XLXI_35 : INV
      port map (I=>in_write_reg_en,
                O=>XLXN_74);
   
   XLXI_36 : INV
      port map (I=>in_ir_w,
                O=>XLXN_216);
   
   XLXI_37 : INV
      port map (I=>in_manr_w,
                O=>XLXN_76);
   
   XLXI_38 : INV
      port map (I=>in_ram_a_w,
                O=>XLXN_77);
   
   XLXI_39 : INV
      port map (I=>in_bus1,
                O=>XLXN_78);
   
   XLXI_41 : INV
      port map (I=>in_r1_w,
                O=>XLXN_80);
   
   XLXI_42 : INV
      port map (I=>in_r2_w,
                O=>XLXN_81);
   
   XLXI_43 : INV
      port map (I=>in_r3_w,
                O=>XLXN_82);
   
   XLXI_44 : INV
      port map (I=>in_iar_w,
                O=>XLXN_83);
   
   XLXI_45 : INV
      port map (I=>in_acc_w,
                O=>XLXN_84);
   
   XLXI_46 : INV
      port map (I=>in_ram_w,
                O=>XLXN_85);
   
   XLXI_47 : INV
      port map (I=>in_is_bus1_w,
                O=>XLXN_98);
   
   XLXI_48 : INV
      port map (I=>in_r0_w,
                O=>XLXN_79);
   
   XLXI_51 : debouncer_MUSER_cpu_facade
      port map (in_clk=>in_clk,
                in_signal=>in_clk_manual,
                out_signal=>in_clk_manual_debounced);
   
   XLXI_53 : FJKC_MXILINX_cpu_facade
      port map (C=>in_clk_manual_debounced,
                CLR=>XLXN_209,
                J=>XLXN_208,
                K=>XLXN_208,
                Q=>in_clk_manual_final);
   
   XLXI_87 : VCC
      port map (P=>XLXN_208);
   
   XLXI_88 : INV
      port map (I=>in_rst,
                O=>XLXN_209);
   
   XLXI_89 : INV
      port map (I=>in_is_clk_high,
                O=>XLXN_210);
   
   XLXI_90 : INV
      port map (I=>in_is_clk_external,
                O=>XLXN_212);
   
   XLXI_91 : INV
      port map (I=>in_temp_w,
                O=>XLXN_213);
   
   XLXI_92 : INV
      port map (I=>in_is_clk_veryhigh,
                O=>XLXN_214);
   
   XLXI_99 : INV
      port map (I=>in_ir_r,
                O=>XLXN_232);
   
   XLXI_105 : USART_MUSER_cpu_facade
      port map (clk=>in_clk,
                data(7 downto 0)=>port_one_o(7 downto 0),
                rst=>port_one_w,
                tx=>out_usart1_tx);
   
   XLXI_106 : ram_256bytes_MUSER_cpu_facade
      port map (a(7 downto 0)=>out_sysbus_DUMMY(7 downto 0),
                a_w=>ram_a_w,
                i(7 downto 0)=>out_sysbus_DUMMY(7 downto 0),
                i_r=>ram_r,
                i_w=>ram_w,
                i_wclk=>in_clk,
                a_o=>open,
                o(7 downto 0)=>XLXN_431(7 downto 0));
   
   XLXI_108 : INV
      port map (I=>port_selected,
                O=>ram_selected);
   
   XLXI_110 : AND2
      port map (I0=>out_ram_a_w_DUMMY,
                I1=>ram_selected,
                O=>ram_a_w);
   
   XLXI_112 : AND2
      port map (I0=>out_ram_r_DUMMY,
                I1=>ram_selected,
                O=>ram_r);
   
   XLXI_135 : reg_8bit_MUSER_cpu_facade
      port map (clr=>rst,
                d(7 downto 0)=>out_sysbus_DUMMY(7 downto 0),
                r=>XLXI_135_r_openSignal,
                w=>port_one_w,
                o(7 downto 0)=>port_one_o(7 downto 0));
   
   XLXI_136 : D4_16E_MXILINX_cpu_facade
      port map (A0=>mem_address(0),
                A1=>mem_address(1),
                A2=>mem_address(2),
                A3=>mem_address(3),
                E=>port_selected,
                D0=>port_one,
                D1=>open,
                D2=>open,
                D3=>open,
                D4=>open,
                D5=>open,
                D6=>open,
                D7=>open,
                D8=>open,
                D9=>open,
                D10=>open,
                D11=>open,
                D12=>open,
                D13=>open,
                D14=>open,
                D15=>open);
   
   XLXI_137 : AND2
      port map (I0=>out_ram_a_w_DUMMY,
                I1=>port_selected,
                O=>port_a_w);
   
   XLXI_138 : AND2
      port map (I0=>out_ram_w_DUMMY,
                I1=>port_selected,
                O=>port_w);
   
   XLXI_153 : AND2
      port map (I0=>out_ram_r_DUMMY,
                I1=>port_selected,
                O=>port_r);
   
   XLXI_165 : INV
      port map (I=>in_rst,
                O=>rst);
   
   XLXI_167 : VCC
      port map (P=>XLXN_408);
   
   XLXI_173 : bus_muxer_MUSER_cpu_facade
      port map (a(3 downto 0)=>XLXI_173_a_openSignal(3 downto 0),
                dev0(7 downto 0)=>port_one_o(7 downto 0),
                dev1(7 downto 0)=>XLXI_173_dev1_openSignal(7 downto 0),
                dev2(7 downto 0)=>XLXI_173_dev2_openSignal(7 downto 0),
                dev3(7 downto 0)=>XLXI_173_dev3_openSignal(7 downto 0),
                dev4(7 downto 0)=>XLXI_173_dev4_openSignal(7 downto 0),
                dev5(7 downto 0)=>XLXI_173_dev5_openSignal(7 downto 0),
                dev6(7 downto 0)=>XLXI_173_dev6_openSignal(7 downto 0),
                dev7(7 downto 0)=>XLXI_173_dev7_openSignal(7 downto 0),
                dev8(7 downto 0)=>XLXI_173_dev8_openSignal(7 downto 0),
                dev9(7 downto 0)=>XLXI_173_dev9_openSignal(7 downto 0),
                dev10(7 downto 0)=>XLXI_173_dev10_openSignal(7 downto 0),
                dev11(7 downto 0)=>XLXI_173_dev11_openSignal(7 downto 0),
                dev12(7 downto 0)=>XLXI_173_dev12_openSignal(7 downto 0),
                dev13(7 downto 0)=>XLXI_173_dev13_openSignal(7 downto 0),
                dev14(7 downto 0)=>XLXI_173_dev14_openSignal(7 downto 0),
                dev15(7 downto 0)=>XLXI_173_dev15_openSignal(7 downto 0),
                e=>port_r,
                o(7 downto 0)=>XLXN_432(7 downto 0));
   
   XLXI_174 : bus_muxer_MUSER_cpu_facade
      port map (a(3 downto 0)=>mem_select(3 downto 0),
                dev0(7 downto 0)=>XLXN_431(7 downto 0),
                dev1(7 downto 0)=>XLXN_432(7 downto 0),
                dev2(7 downto 0)=>XLXI_174_dev2_openSignal(7 downto 0),
                dev3(7 downto 0)=>XLXI_174_dev3_openSignal(7 downto 0),
                dev4(7 downto 0)=>XLXI_174_dev4_openSignal(7 downto 0),
                dev5(7 downto 0)=>XLXI_174_dev5_openSignal(7 downto 0),
                dev6(7 downto 0)=>XLXI_174_dev6_openSignal(7 downto 0),
                dev7(7 downto 0)=>XLXI_174_dev7_openSignal(7 downto 0),
                dev8(7 downto 0)=>XLXI_174_dev8_openSignal(7 downto 0),
                dev9(7 downto 0)=>XLXI_174_dev9_openSignal(7 downto 0),
                dev10(7 downto 0)=>XLXI_174_dev10_openSignal(7 downto 0),
                dev11(7 downto 0)=>XLXI_174_dev11_openSignal(7 downto 0),
                dev12(7 downto 0)=>XLXI_174_dev12_openSignal(7 downto 0),
                dev13(7 downto 0)=>XLXI_174_dev13_openSignal(7 downto 0),
                dev14(7 downto 0)=>XLXI_174_dev14_openSignal(7 downto 0),
                dev15(7 downto 0)=>XLXI_174_dev15_openSignal(7 downto 0),
                e=>out_ram_r_DUMMY,
                o(7 downto 0)=>mem_o(7 downto 0));
   
   XLXI_176 : GND
      port map (G=>mem_select(1));
   
   XLXI_177 : GND
      port map (G=>mem_select(2));
   
   XLXI_178 : GND
      port map (G=>mem_select(3));
   
   XLXI_179 : BUF
      port map (I=>port_selected,
                O=>mem_select(0));
   
   XLXI_180 : AND4
      port map (I0=>mem_address(4),
                I1=>mem_address(5),
                I2=>mem_address(6),
                I3=>mem_address(7),
                O=>port_selected);
   
   XLXI_185 : AND2
      port map (I0=>out_ram_w_DUMMY,
                I1=>ram_selected,
                O=>ram_w);
   
   XLXI_186 : LD8CE_MXILINX_cpu_facade
      port map (CLR=>rst,
                D(7 downto 0)=>out_sysbus_DUMMY(7 downto 0),
                G=>out_ram_a_w_DUMMY,
                GE=>XLXN_408,
                Q(7 downto 0)=>mem_address(7 downto 0));
   
   XLXI_188 : AND2
      port map (I0=>port_w,
                I1=>port_one,
                O=>port_one_w);
   
end BEHAVIORAL;


