--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cpu_control.vhf
-- /___/   /\     Timestamp : 06/24/2022 23:52:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_control.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_control.sch
--Design Name: cpu_control
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_cpu_control -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_cpu_control is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB4CE_HXILINX_cpu_control;

architecture Behavioral of CB4CE_HXILINX_cpu_control is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;

----- CELL OR6_HXILINX_cpu_control -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_cpu_control is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_cpu_control;

architecture OR6_HXILINX_cpu_control_V of OR6_HXILINX_cpu_control is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_cpu_control_V;
----- CELL D3_8E_HXILINX_cpu_control -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_cpu_control is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;
    D4  : out std_logic;
    D5  : out std_logic;
    D6  : out std_logic;
    D7  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    E   : in std_logic
  );
end D3_8E_HXILINX_cpu_control;

architecture D3_8E_HXILINX_cpu_control_V of D3_8E_HXILINX_cpu_control is
  signal d_tmp : std_logic_vector(7 downto 0);
begin
  process (A0, A1, A2, E)
  variable sel   : std_logic_vector(2 downto 0);
  begin
    sel := A2&A1&A0;
    if( E = '0') then
    d_tmp <= "00000000";
    else
      case sel is
      when "000" => d_tmp <= "00000001";
      when "001" => d_tmp <= "00000010";
      when "010" => d_tmp <= "00000100";
      when "011" => d_tmp <= "00001000";
      when "100" => d_tmp <= "00010000";
      when "101" => d_tmp <= "00100000";
      when "110" => d_tmp <= "01000000";
      when "111" => d_tmp <= "10000000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D7 <= d_tmp(7);
    D6 <= d_tmp(6);
    D5 <= d_tmp(5);
    D4 <= d_tmp(4);
    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D3_8E_HXILINX_cpu_control_V;
----- CELL M16_1E_HXILINX_cpu_control -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M16_1E_HXILINX_cpu_control is
  
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
end M16_1E_HXILINX_cpu_control;

architecture M16_1E_HXILINX_cpu_control_V of M16_1E_HXILINX_cpu_control is
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
end M16_1E_HXILINX_cpu_control_V;
----- CELL D2_4E_HXILINX_cpu_control -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_cpu_control is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_cpu_control;

architecture D2_4E_HXILINX_cpu_control_V of D2_4E_HXILINX_cpu_control is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_cpu_control_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bus_muxer_MUSER_cpu_control is
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
end bus_muxer_MUSER_cpu_control;

architecture BEHAVIORAL of bus_muxer_MUSER_cpu_control is
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
   component M16_1E_HXILINX_cpu_control
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_67";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_66";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_68";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_69";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_70";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_71";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_72";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_73";
begin
   XLXI_1 : M16_1E_HXILINX_cpu_control
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
   
   XLXI_2 : M16_1E_HXILINX_cpu_control
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
   
   XLXI_12 : M16_1E_HXILINX_cpu_control
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
   
   XLXI_13 : M16_1E_HXILINX_cpu_control
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
   
   XLXI_14 : M16_1E_HXILINX_cpu_control
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
   
   XLXI_15 : M16_1E_HXILINX_cpu_control
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
   
   XLXI_16 : M16_1E_HXILINX_cpu_control
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
   
   XLXI_17 : M16_1E_HXILINX_cpu_control
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

entity stepper_MUSER_cpu_control is
   port ( clk : in    std_logic; 
          rst : in    std_logic; 
          s1  : out   std_logic; 
          s2  : out   std_logic; 
          s3  : out   std_logic; 
          s4  : out   std_logic; 
          s5  : out   std_logic; 
          s6  : out   std_logic);
end stepper_MUSER_cpu_control;

architecture BEHAVIORAL of stepper_MUSER_cpu_control is
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
   
   component CB4CE_HXILINX_cpu_control
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
   
   component D3_8E_HXILINX_cpu_control
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
   
   attribute HU_SET of XLXI_24 : label is "XLXI_24_74";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_75";
begin
   XLXI_21 : VCC
      port map (P=>XLXN_14);
   
   XLXI_24 : CB4CE_HXILINX_cpu_control
      port map (C=>XLXN_23,
                CE=>XLXN_14,
                CLR=>XLXN_24,
                CEO=>open,
                Q0=>XLXN_18,
                Q1=>XLXN_19,
                Q2=>XLXN_20,
                Q3=>open,
                TC=>open);
   
   XLXI_25 : D3_8E_HXILINX_cpu_control
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

entity cpu_control is
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
          alu_nop          : out   std_logic; 
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
end cpu_control;

architecture BEHAVIORAL of cpu_control is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal alu_binary                      : std_logic;
   signal alu_binary_s4                   : std_logic;
   signal alu_binary_s5                   : std_logic;
   signal alu_calc                        : std_logic;
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
   signal out_to_port_s4                  : std_logic;
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
   signal XLXN_7                          : std_logic;
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
   signal XLXN_173                        : std_logic;
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
   component stepper_MUSER_cpu_control
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
   
   component D3_8E_HXILINX_cpu_control
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
   
   component D2_4E_HXILINX_cpu_control
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
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component OR6_HXILINX_cpu_control
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component bus_muxer_MUSER_cpu_control
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
   
   attribute HU_SET of XLXI_39 : label is "XLXI_39_78";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_76";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_77";
   attribute HU_SET of XLXI_252 : label is "XLXI_252_79";
   attribute HU_SET of XLXI_577 : label is "XLXI_577_80";
begin
   XLXN_1076(7 downto 0) <= x"01";
   XLXN_1077(7 downto 0) <= x"F0";
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
   stp : stepper_MUSER_cpu_control
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
                I1=>XLXN_7,
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
                I3=>ground_DUMMY,
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
   
   XLXI_19 : OR4
      port map (I0=>s3_DUMMY,
                I1=>alu_s6,
                I2=>ls_ldc_s6,
                I3=>jmp_ifjmp_flag_not_equals_op_s5,
                O=>XLXN_22);
   
   XLXI_21 : OR2
      port map (I0=>XLXN_30,
                I1=>XLXN_173,
                O=>alu_op0);
   
   XLXI_22 : OR2
      port map (I0=>XLXN_31,
                I1=>XLXN_173,
                O=>alu_op1);
   
   XLXI_23 : OR2
      port map (I0=>XLXN_32,
                I1=>XLXN_173,
                O=>alu_op2);
   
   XLXI_39 : D3_8E_HXILINX_cpu_control
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
                D7=>alu_nop);
   
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
   
   XLXI_47 : D2_4E_HXILINX_cpu_control
      port map (A0=>ir(2),
                A1=>ir(3),
                E=>XLXN_99,
                D0=>ra_0,
                D1=>ra_1,
                D2=>ra_2,
                D3=>ra_3);
   
   XLXI_48 : D2_4E_HXILINX_cpu_control
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
   
   XLXI_137 : AND2
      port map (I0=>s6_DUMMY,
                I1=>alu_DUMMY,
                O=>alu_s6);
   
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
   
   XLXI_143 : GND
      port map (G=>XLXN_173);
   
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
   
   XLXI_252 : D3_8E_HXILINX_cpu_control
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
   
   XLXI_298 : AND2
      port map (I0=>s4_DUMMY,
                I1=>alu_DUMMY,
                O=>alu_s4);
   
   XLXI_315 : OR3
      port map (I0=>jmp_jmpr_s4,
                I1=>ls_st_s5,
                I2=>alu_s4,
                O=>ra_int);
   
   XLXI_399 : OR3
      port map (I0=>ground_DUMMY,
                I1=>ls_ldst_s4,
                I2=>alu_binary_s5,
                O=>rb_int);
   
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
      port map (I0=>ground_DUMMY,
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
                I2=>ground_DUMMY,
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
   
   XLXI_549 : OR5
      port map (I0=>s2_DUMMY,
                I1=>ls_ld_s5,
                I2=>ls_ldc_s5,
                I3=>jmp_jmp_s5,
                I4=>jmp_ifjmp_flag_equals_op_s5,
                O=>XLXN_7);
   
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
   
   XLXI_562 : OR5
      port map (I0=>jmp_jmp_s4,
                I1=>jmp_ifjmp_flag_equals_op_s4,
                I2=>ls_ldc_s4,
                I3=>ls_ldst_s4,
                I4=>s1_DUMMY,
                O=>XLXN_16);
   
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
   
   XLXI_576 : OR5
      port map (I0=>jmp_ifjmp_flag_not_equals_op_s4,
                I1=>ls_ldc_s4,
                I2=>alu_binary_s5,
                I3=>alu_unari_s4,
                I4=>s1_DUMMY,
                O=>XLXN_23);
   
   XLXI_577 : OR6_HXILINX_cpu_control
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
   
   XLXI_579 : bus_muxer_MUSER_cpu_control
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
      port map (I=>out_to_port_s4,
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
   
end BEHAVIORAL;


