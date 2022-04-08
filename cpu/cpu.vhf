--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cpu.vhf
-- /___/   /\     Timestamp : 04/09/2022 02:26:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu.sch
--Design Name: cpu
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL LD8CE_HXILINX_cpu -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LD8CE_HXILINX_cpu is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    G   : in STD_LOGIC;
    GE  : in STD_LOGIC
    );
end LD8CE_HXILINX_cpu;

architecture Behavioral of LD8CE_HXILINX_cpu is

begin

process(CLR, D, G, GE)
begin
  if (CLR= '1') then
      Q <= (others => '0');
  elsif ( (GE= '1') and (G = '1') ) then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL CB4CE_HXILINX_cpu -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_cpu is
  
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
end CB4CE_HXILINX_cpu;

architecture Behavioral of CB4CE_HXILINX_cpu is

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

----- CELL LD8_HXILINX_cpu -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LD8_HXILINX_cpu is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    G   : in STD_LOGIC
    );
end LD8_HXILINX_cpu;

architecture Behavioral of LD8_HXILINX_cpu is

begin

process(D, G)
begin
  if (G = '1') then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL ADD8_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD8_HXILINX_cpu is
port(
    CO  : out std_logic;
    OFL : out std_logic;
    S   : out std_logic_vector(7 downto 0);
    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0);
    CI  : in std_logic
  );
end ADD8_HXILINX_cpu;

architecture ADD8_HXILINX_cpu_V of ADD8_HXILINX_cpu is
  signal adder_tmp: std_logic_vector(8 downto 0);
begin
  adder_tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),9);
  S  <= adder_tmp(7 downto 0);
  CO <= adder_tmp(8);
  OFL <=  ( A(7) and B(7) and (not adder_tmp(7)) ) or ( (not A(7)) and (not B(7)) and adder_tmp(7) );  
end ADD8_HXILINX_cpu_V;
----- CELL NOR8_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR8_HXILINX_cpu is
  
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
end NOR8_HXILINX_cpu;

architecture NOR8_HXILINX_cpu_V of NOR8_HXILINX_cpu is
begin
  O <= not (I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7);
end NOR8_HXILINX_cpu_V;
----- CELL INV8_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity INV8_HXILINX_cpu is
port(
    O  : out std_logic_vector(7 downto 0);

    I  : in std_logic_vector(7 downto 0)
  );
end INV8_HXILINX_cpu;

architecture INV8_HXILINX_cpu_V of INV8_HXILINX_cpu is
begin
  O <= not I ;
end INV8_HXILINX_cpu_V;
----- CELL OR6_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_cpu is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_cpu;

architecture OR6_HXILINX_cpu_V of OR6_HXILINX_cpu is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_cpu_V;
----- CELL LD4CE_HXILINX_cpu -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LD4CE_HXILINX_cpu is
port (
    Q0  : out STD_LOGIC;
    Q1  : out STD_LOGIC;
    Q2  : out STD_LOGIC;
    Q3  : out STD_LOGIC;
    CLR : in STD_LOGIC;
    D0  : in STD_LOGIC;
    D1  : in STD_LOGIC;
    D2  : in STD_LOGIC;
    D3  : in STD_LOGIC;
    G   : in STD_LOGIC;
    GE  : in STD_LOGIC
    );
end LD4CE_HXILINX_cpu;

architecture Behavioral of LD4CE_HXILINX_cpu is

begin

process(CLR, D0, D1, D2, D3, G, GE)
begin
  if (CLR = '1') then
      Q3 <= '0';
      Q2 <= '0';
      Q1 <= '0';
      Q0 <= '0';
  elsif ( (GE= '1') and (G = '1') )then
      Q3 <= D3;
      Q2 <= D2;
      Q1 <= D1;
      Q0 <= D0;
  end if;
end process;


end Behavioral;

----- CELL CB16CE_HXILINX_cpu -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_cpu is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_cpu;

architecture Behavioral of CB16CE_HXILINX_cpu is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');
  
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

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;

----- CELL D3_8E_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_cpu is
  
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
end D3_8E_HXILINX_cpu;

architecture D3_8E_HXILINX_cpu_V of D3_8E_HXILINX_cpu is
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

end D3_8E_HXILINX_cpu_V;
----- CELL M16_1E_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M16_1E_HXILINX_cpu is
  
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
end M16_1E_HXILINX_cpu;

architecture M16_1E_HXILINX_cpu_V of M16_1E_HXILINX_cpu is
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
end M16_1E_HXILINX_cpu_V;
----- CELL FJKC_HXILINX_cpu -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_cpu is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    J   : in STD_LOGIC;
    K   : in STD_LOGIC
    );
end FJKC_HXILINX_cpu;

architecture Behavioral of FJKC_HXILINX_cpu is
signal q_tmp : std_logic := TO_X01(INIT);

begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(J='0') then
      if(K='1') then
      q_tmp <= '0';
    end if;
    else
      if(K='0') then
      q_tmp <= '1';
      else
      q_tmp <= not q_tmp;
      end if;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;

----- CELL D2_4E_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_cpu is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_cpu;

architecture D2_4E_HXILINX_cpu_V of D2_4E_HXILINX_cpu is
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

end D2_4E_HXILINX_cpu_V;
----- CELL M2_1_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_cpu is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_cpu;

architecture M2_1_HXILINX_cpu_V of M2_1_HXILINX_cpu is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_cpu_V;
----- CELL AND8_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND8_HXILINX_cpu is
  
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
end AND8_HXILINX_cpu;

architecture AND8_HXILINX_cpu_V of AND8_HXILINX_cpu is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5 and I6 and I7;
end AND8_HXILINX_cpu_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bus_muxer_MUSER_cpu is
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
end bus_muxer_MUSER_cpu;

architecture BEHAVIORAL of bus_muxer_MUSER_cpu is
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
   component M16_1E_HXILINX_cpu
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_1";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_0";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_2";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_3";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_4";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_5";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_6";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_7";
begin
   XLXI_1 : M16_1E_HXILINX_cpu
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
   
   XLXI_2 : M16_1E_HXILINX_cpu
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
   
   XLXI_12 : M16_1E_HXILINX_cpu
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
   
   XLXI_13 : M16_1E_HXILINX_cpu
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
   
   XLXI_14 : M16_1E_HXILINX_cpu
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
   
   XLXI_15 : M16_1E_HXILINX_cpu
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
   
   XLXI_16 : M16_1E_HXILINX_cpu
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
   
   XLXI_17 : M16_1E_HXILINX_cpu
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

entity encoder8_3_MUSER_cpu is
   port ( i : in    std_logic_vector (7 downto 0); 
          g : out   std_logic; 
          o : out   std_logic_vector (2 downto 0));
end encoder8_3_MUSER_cpu;

architecture BEHAVIORAL of encoder8_3_MUSER_cpu is
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
   
   component AND8_HXILINX_cpu
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
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_8";
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
   
   XLXI_4 : AND8_HXILINX_cpu
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

entity cpu_output_muxer_MUSER_cpu is
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
end cpu_output_muxer_MUSER_cpu;

architecture BEHAVIORAL of cpu_output_muxer_MUSER_cpu is
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
   component bus_muxer_MUSER_cpu
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
   
   component encoder8_3_MUSER_cpu
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
   XLXI_1 : bus_muxer_MUSER_cpu
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
   
   XLXI_2 : encoder8_3_MUSER_cpu
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity reg_8bit_MUSER_cpu is
   port ( clr : in    std_logic; 
          d   : in    std_logic_vector (7 downto 0); 
          r   : in    std_logic; 
          w   : in    std_logic; 
          o   : out   std_logic_vector (7 downto 0));
end reg_8bit_MUSER_cpu;

architecture BEHAVIORAL of reg_8bit_MUSER_cpu is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_2 : std_logic;
   component LD8CE_HXILINX_cpu
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
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_9";
begin
   XLXI_5 : LD8CE_HXILINX_cpu
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

entity pass_through_or_one_MUSER_cpu is
   port ( i   : in    std_logic_vector (7 downto 0); 
          one : in    std_logic; 
          o   : out   std_logic_vector (7 downto 0));
end pass_through_or_one_MUSER_cpu;

architecture BEHAVIORAL of pass_through_or_one_MUSER_cpu is
   attribute HU_SET     : string ;
   signal const_one  : std_logic;
   signal const_zero : std_logic;
   component M2_1_HXILINX_cpu
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_10";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_11";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_12";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_13";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_14";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_15";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_16";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_17";
begin
   const_one <= '1';
   const_zero <= '0';
   XLXI_1 : M2_1_HXILINX_cpu
      port map (D0=>i(1),
                D1=>const_zero,
                S0=>one,
                O=>o(1));
   
   XLXI_3 : M2_1_HXILINX_cpu
      port map (D0=>i(2),
                D1=>const_zero,
                S0=>one,
                O=>o(2));
   
   XLXI_4 : M2_1_HXILINX_cpu
      port map (D0=>i(3),
                D1=>const_zero,
                S0=>one,
                O=>o(3));
   
   XLXI_5 : M2_1_HXILINX_cpu
      port map (D0=>i(4),
                D1=>const_zero,
                S0=>one,
                O=>o(4));
   
   XLXI_6 : M2_1_HXILINX_cpu
      port map (D0=>i(5),
                D1=>const_zero,
                S0=>one,
                O=>o(5));
   
   XLXI_7 : M2_1_HXILINX_cpu
      port map (D0=>i(6),
                D1=>const_zero,
                S0=>one,
                O=>o(6));
   
   XLXI_8 : M2_1_HXILINX_cpu
      port map (D0=>i(7),
                D1=>const_zero,
                S0=>one,
                O=>o(7));
   
   XLXI_13 : M2_1_HXILINX_cpu
      port map (D0=>i(0),
                D1=>const_one,
                S0=>one,
                O=>o(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity clk_generator_MUSER_cpu is
   port ( clk  : in    std_logic; 
          clkc : out   std_logic; 
          clkr : out   std_logic; 
          clkw : out   std_logic);
end clk_generator_MUSER_cpu;

architecture BEHAVIORAL of clk_generator_MUSER_cpu is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal clr        : std_logic;
   signal XLXN_1     : std_logic;
   signal XLXN_9     : std_logic;
   signal clkc_DUMMY : std_logic;
   component FJKC_HXILINX_cpu
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_18";
begin
   clkc <= clkc_DUMMY;
   XLXI_4 : FJKC_HXILINX_cpu
      port map (C=>XLXN_9,
                CLR=>clr,
                J=>XLXN_1,
                K=>XLXN_1,
                Q=>clkc_DUMMY);
   
   XLXI_6 : PULLUP
      port map (O=>XLXN_1);
   
   XLXI_9 : OR2
      port map (I0=>clkc_DUMMY,
                I1=>clk,
                O=>clkr);
   
   XLXI_10 : AND2B1
      port map (I0=>clk,
                I1=>clkc_DUMMY,
                O=>clkw);
   
   XLXI_11 : GND
      port map (G=>clr);
   
   XLXI_12 : INV
      port map (I=>clk,
                O=>XLXN_9);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ram_256bytes_MUSER_cpu is
   port ( a      : in    std_logic_vector (7 downto 0); 
          a_w    : in    std_logic; 
          i      : in    std_logic_vector (7 downto 0); 
          i_r    : in    std_logic; 
          i_w    : in    std_logic; 
          i_wclk : in    std_logic; 
          a_o    : out   std_logic_vector (7 downto 0); 
          o      : out   std_logic_vector (7 downto 0));
end ram_256bytes_MUSER_cpu;

architecture BEHAVIORAL of ram_256bytes_MUSER_cpu is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal a_o_DUMMY : std_logic_vector (7 downto 0);
   component RAM256X1S
      -- synopsys translate_off
      generic( INIT : bit_vector :=  
            
            x"0000000000000000000000000000000000000000000000000000000000000000");
      -- synopsys translate_on
      port ( WE   : in    std_logic; 
             WCLK : in    std_logic; 
             D    : in    std_logic; 
             O    : out   std_logic; 
             A    : in    std_logic_vector (7 downto 0));
   end component;
   attribute INIT of RAM256X1S : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute BOX_TYPE of RAM256X1S : component is "BLACK_BOX";
   
   component LD8_HXILINX_cpu
      port ( D : in    std_logic_vector (7 downto 0); 
             G : in    std_logic; 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute INIT of XLXI_1 : label is 
         "0000000000000000000000000000000000000000000000000000000000000072";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_19";
   attribute INIT of XLXI_18 : label is 
         "0000000000000000000000000000000000000000000000000000000000000901";
   attribute INIT of XLXI_19 : label is 
         "0000000000000000000000000000000000000000000000000000000000000040";
   attribute INIT of XLXI_20 : label is 
         "0000000000000000000000000000000000000000000000000000000000000020";
   attribute INIT of XLXI_21 : label is 
         "0000000000000000000000000000000000000000000000000000000000000205";
   attribute INIT of XLXI_22 : label is 
         "00000000000000000000000000000000000000000000000000000000000006A0";
   attribute INIT of XLXI_23 : label is 
         "0000000000000000000000000000000000000000000000000000000000000010";
begin
   a_o(7 downto 0) <= a_o_DUMMY(7 downto 0);
   XLXI_1 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"0000000000000000000000000000000000000000000000000000000000000072")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(0),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>o(0));
   
   XLXI_15 : LD8_HXILINX_cpu
      port map (D(7 downto 0)=>a(7 downto 0),
                G=>a_w,
                Q(7 downto 0)=>a_o_DUMMY(7 downto 0));
   
   XLXI_17 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"0000000000000000000000000000000000000000000000000000000000000000")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(1),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>o(1));
   
   XLXI_18 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"0000000000000000000000000000000000000000000000000000000000000901")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(2),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>o(2));
   
   XLXI_19 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"0000000000000000000000000000000000000000000000000000000000000040")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(3),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>o(3));
   
   XLXI_20 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"0000000000000000000000000000000000000000000000000000000000000020")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(4),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>o(4));
   
   XLXI_21 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"0000000000000000000000000000000000000000000000000000000000000205")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(5),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>o(5));
   
   XLXI_22 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"00000000000000000000000000000000000000000000000000000000000006A0")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(6),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>o(6));
   
   XLXI_23 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"0000000000000000000000000000000000000000000000000000000000000010")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(7),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>o(7));
   
   XLXI_42 : INV
      port map (I=>i_r,
                O=>open);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity stepper_MUSER_cpu is
   port ( clk : in    std_logic; 
          s1  : out   std_logic; 
          s2  : out   std_logic; 
          s3  : out   std_logic; 
          s4  : out   std_logic; 
          s5  : out   std_logic; 
          s6  : out   std_logic);
end stepper_MUSER_cpu;

architecture BEHAVIORAL of stepper_MUSER_cpu is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_14 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CB4CE_HXILINX_cpu
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
   
   component D3_8E_HXILINX_cpu
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
   
   attribute HU_SET of XLXI_24 : label is "XLXI_24_20";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_21";
begin
   XLXI_21 : VCC
      port map (P=>XLXN_14);
   
   XLXI_24 : CB4CE_HXILINX_cpu
      port map (C=>XLXN_23,
                CE=>XLXN_14,
                CLR=>XLXN_22,
                CEO=>open,
                Q0=>XLXN_18,
                Q1=>XLXN_19,
                Q2=>XLXN_20,
                Q3=>open,
                TC=>open);
   
   XLXI_25 : D3_8E_HXILINX_cpu
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
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_control_MUSER_cpu is
   port ( clk              : in    std_logic; 
          clkr             : in    std_logic; 
          clkw             : in    std_logic; 
          flags            : in    std_logic_vector (3 downto 0); 
          ir               : in    std_logic_vector (7 downto 0); 
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
          ground           : out   std_logic; 
          iar_r            : out   std_logic; 
          iar_w            : out   std_logic; 
          ir_w             : out   std_logic; 
          ram_a_w          : out   std_logic; 
          ram_r            : out   std_logic; 
          ram_w            : out   std_logic; 
          ra_0             : out   std_logic; 
          ra_1             : out   std_logic; 
          ra_2             : out   std_logic; 
          ra_3             : out   std_logic; 
          rb_0             : out   std_logic; 
          rb_1             : out   std_logic; 
          rb_2             : out   std_logic; 
          rb_3             : out   std_logic; 
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
end cpu_control_MUSER_cpu;

architecture BEHAVIORAL of cpu_control_MUSER_cpu is
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
   signal flg_clf                         : std_logic;
   signal flg_clf_s4                      : std_logic;
   signal jmp_ifjmp                       : std_logic;
   signal jmp_ifjmp_flag_equals_op        : std_logic;
   signal jmp_ifjmp_flag_equals_op_s4     : std_logic;
   signal jmp_ifjmp_flag_equals_op_s5     : std_logic;
   signal jmp_ifjmp_flag_not_equals_op    : std_logic;
   signal jmp_ifjmp_flag_not_equals_op_s4 : std_logic;
   signal jmp_ifjmp_flag_not_equals_op_s5 : std_logic;
   signal jmp_jmp                         : std_logic;
   signal jmp_jmpr                        : std_logic;
   signal jmp_jmpr_s4                     : std_logic;
   signal jmp_jmp_s4                      : std_logic;
   signal jmp_jmp_s5                      : std_logic;
   signal ls_jmp_flg                      : std_logic;
   signal ls_ld                           : std_logic;
   signal ls_ldc                          : std_logic;
   signal ls_ldc_s4                       : std_logic;
   signal ls_ldc_s5                       : std_logic;
   signal ls_ldc_s6                       : std_logic;
   signal ls_ldst_s4                      : std_logic;
   signal ls_ld_s5                        : std_logic;
   signal ls_st                           : std_logic;
   signal ls_st_s5                        : std_logic;
   signal op_c                            : std_logic;
   signal op_eq                           : std_logic;
   signal op_gt                           : std_logic;
   signal op_z                            : std_logic;
   signal raw_int                         : std_logic;
   signal ra_int                          : std_logic;
   signal ra0_r                           : std_logic;
   signal ra0_w                           : std_logic;
   signal ra1_r                           : std_logic;
   signal ra1_w                           : std_logic;
   signal ra2_r                           : std_logic;
   signal ra2_w                           : std_logic;
   signal ra3_r                           : std_logic;
   signal ra3_w                           : std_logic;
   signal rb_int                          : std_logic;
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
   signal XLXN_75                         : std_logic;
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
   signal alu_sum_DUMMY                   : std_logic;
   signal alu_rshift_DUMMY                : std_logic;
   signal s1_DUMMY                        : std_logic;
   signal s2_DUMMY                        : std_logic;
   signal s3_DUMMY                        : std_logic;
   signal s4_DUMMY                        : std_logic;
   signal s5_DUMMY                        : std_logic;
   signal s6_DUMMY                        : std_logic;
   signal alu_and_DUMMY                   : std_logic;
   signal alu_xor_DUMMY                   : std_logic;
   signal alu_or_DUMMY                    : std_logic;
   signal rb_0_DUMMY                      : std_logic;
   signal rb_1_DUMMY                      : std_logic;
   signal rb_2_DUMMY                      : std_logic;
   signal rb_3_DUMMY                      : std_logic;
   signal alu_lshift_DUMMY                : std_logic;
   signal alu_DUMMY                       : std_logic;
   signal ground_DUMMY                    : std_logic;
   signal alu_not_DUMMY                   : std_logic;
   signal ra_0_DUMMY                      : std_logic;
   signal ra_1_DUMMY                      : std_logic;
   signal ra_2_DUMMY                      : std_logic;
   signal ra_3_DUMMY                      : std_logic;
   signal XLXI_556_I0_openSignal          : std_logic;
   signal XLXI_556_I1_openSignal          : std_logic;
   signal XLXI_556_I2_openSignal          : std_logic;
   component stepper_MUSER_cpu
      port ( clk : in    std_logic; 
             s6  : out   std_logic; 
             s1  : out   std_logic; 
             s2  : out   std_logic; 
             s3  : out   std_logic; 
             s4  : out   std_logic; 
             s5  : out   std_logic);
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
   
   component D3_8E_HXILINX_cpu
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
   
   component D2_4E_HXILINX_cpu
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
   
   component OR6_HXILINX_cpu
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_39 : label is "XLXI_39_24";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_22";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_23";
   attribute HU_SET of XLXI_252 : label is "XLXI_252_25";
   attribute HU_SET of XLXI_577 : label is "XLXI_577_26";
begin
   alu <= alu_DUMMY;
   alu_and <= alu_and_DUMMY;
   alu_lshift <= alu_lshift_DUMMY;
   alu_not <= alu_not_DUMMY;
   alu_or <= alu_or_DUMMY;
   alu_rshift <= alu_rshift_DUMMY;
   alu_sum <= alu_sum_DUMMY;
   alu_xor <= alu_xor_DUMMY;
   ground <= ground_DUMMY;
   ra_0 <= ra_0_DUMMY;
   ra_1 <= ra_1_DUMMY;
   ra_2 <= ra_2_DUMMY;
   ra_3 <= ra_3_DUMMY;
   rb_0 <= rb_0_DUMMY;
   rb_1 <= rb_1_DUMMY;
   rb_2 <= rb_2_DUMMY;
   rb_3 <= rb_3_DUMMY;
   s1 <= s1_DUMMY;
   s2 <= s2_DUMMY;
   s3 <= s3_DUMMY;
   s4 <= s4_DUMMY;
   s5 <= s5_DUMMY;
   s6 <= s6_DUMMY;
   stp : stepper_MUSER_cpu
      port map (clk=>clk,
                s1=>s1_DUMMY,
                s2=>s2_DUMMY,
                s3=>s3_DUMMY,
                s4=>s4_DUMMY,
                s5=>s5_DUMMY,
                s6=>s6_DUMMY);
   
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
   
   XLXI_39 : D3_8E_HXILINX_cpu
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
                D7=>XLXN_75);
   
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
   
   XLXI_47 : D2_4E_HXILINX_cpu
      port map (A0=>ir(2),
                A1=>ir(3),
                E=>XLXN_99,
                D0=>ra_0_DUMMY,
                D1=>ra_1_DUMMY,
                D2=>ra_2_DUMMY,
                D3=>ra_3_DUMMY);
   
   XLXI_48 : D2_4E_HXILINX_cpu
      port map (A0=>ir(0),
                A1=>ir(1),
                E=>XLXN_99,
                D0=>rb_0_DUMMY,
                D1=>rb_1_DUMMY,
                D2=>rb_2_DUMMY,
                D3=>rb_3_DUMMY);
   
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
   
   XLXI_252 : D3_8E_HXILINX_cpu
      port map (A0=>ir(4),
                A1=>ir(5),
                A2=>ir(6),
                E=>ls_jmp_flg,
                D0=>ls_ld,
                D1=>ls_st,
                D2=>ls_ldc,
                D3=>jmp_jmpr,
                D4=>jmp_jmp,
                D5=>jmp_ifjmp,
                D6=>flg_clf,
                D7=>open);
   
   XLXI_255 : AND2
      port map (I0=>XLXN_462,
                I1=>s4_DUMMY,
                O=>ls_ldst_s4);
   
   XLXI_260 : OR2
      port map (I0=>ls_st,
                I1=>ls_ld,
                O=>XLXN_462);
   
   XLXI_272 : AND2
      port map (I0=>ra_0_DUMMY,
                I1=>ra_int,
                O=>ra0_r);
   
   XLXI_273 : AND2
      port map (I0=>ra_1_DUMMY,
                I1=>ra_int,
                O=>ra1_r);
   
   XLXI_274 : AND2
      port map (I0=>ra_2_DUMMY,
                I1=>ra_int,
                O=>ra2_r);
   
   XLXI_275 : AND2
      port map (I0=>ra_3_DUMMY,
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
      port map (I0=>rb_0_DUMMY,
                I1=>rb_int,
                O=>rb0_r);
   
   XLXI_401 : AND2
      port map (I0=>rb_1_DUMMY,
                I1=>rb_int,
                O=>rb1_r);
   
   XLXI_402 : AND2
      port map (I0=>rb_2_DUMMY,
                I1=>rb_int,
                O=>rb2_r);
   
   XLXI_403 : AND2
      port map (I0=>rb_3_DUMMY,
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
      port map (I0=>ra_0_DUMMY,
                I1=>raw_int,
                O=>ra0_w);
   
   XLXI_459 : AND2
      port map (I0=>ra_1_DUMMY,
                I1=>raw_int,
                O=>ra1_w);
   
   XLXI_460 : AND2
      port map (I0=>ra_2_DUMMY,
                I1=>raw_int,
                O=>ra2_w);
   
   XLXI_461 : AND2
      port map (I0=>ra_3_DUMMY,
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
      port map (I0=>ls_ld,
                I1=>s5_DUMMY,
                O=>ls_ld_s5);
   
   XLXI_491 : AND2
      port map (I0=>ls_st,
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
      port map (I0=>ls_ldc,
                I1=>s4_DUMMY,
                O=>ls_ldc_s4);
   
   XLXI_498 : AND2
      port map (I0=>ls_ldc,
                I1=>s5_DUMMY,
                O=>ls_ldc_s5);
   
   XLXI_499 : AND2
      port map (I0=>ls_ldc,
                I1=>s6_DUMMY,
                O=>ls_ldc_s6);
   
   XLXI_500 : AND2
      port map (I0=>jmp_jmpr,
                I1=>s4_DUMMY,
                O=>jmp_jmpr_s4);
   
   XLXI_501 : AND2
      port map (I0=>jmp_jmp,
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
                I1=>jmp_ifjmp,
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
      port map (I0=>flg_clf,
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
   
   XLXI_556 : AND3B1
      port map (I0=>XLXI_556_I0_openSignal,
                I1=>XLXI_556_I1_openSignal,
                I2=>XLXI_556_I2_openSignal,
                O=>open);
   
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
      port map (I0=>jmp_jmp,
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
                I1=>jmp_ifjmp,
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
   
   XLXI_577 : OR6_HXILINX_cpu
      port map (I0=>jmp_ifjmp_flag_not_equals_op_s5,
                I1=>jmp_ifjmp_flag_equals_op_s5,
                I2=>jmp_jmp_s5,
                I3=>jmp_jmpr_s4,
                I4=>ls_ldc_s6,
                I5=>s3_DUMMY,
                O=>XLXN_11);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity alu_output_muxer_MUSER_cpu is
   port ( add_o : in    std_logic_vector (7 downto 0); 
          and_o : in    std_logic_vector (7 downto 0); 
          lsh_o : in    std_logic_vector (7 downto 0); 
          not_o : in    std_logic_vector (7 downto 0); 
          op    : in    std_logic_vector (2 downto 0); 
          or_o  : in    std_logic_vector (7 downto 0); 
          rsh_o : in    std_logic_vector (7 downto 0); 
          xor_o : in    std_logic_vector (7 downto 0); 
          o     : out   std_logic_vector (7 downto 0));
end alu_output_muxer_MUSER_cpu;

architecture BEHAVIORAL of alu_output_muxer_MUSER_cpu is
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
   
   component bus_muxer_MUSER_cpu
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
   
   XLXI_14 : bus_muxer_MUSER_cpu
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

entity lzero_MUSER_cpu is
   port ( a : in    std_logic_vector (7 downto 0); 
          x : out   std_logic);
end lzero_MUSER_cpu;

architecture BEHAVIORAL of lzero_MUSER_cpu is
   attribute HU_SET     : string ;
   component NOR8_HXILINX_cpu
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_27";
begin
   XLXI_1 : NOR8_HXILINX_cpu
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

entity cmp_1bit_MUSER_cpu is
   port ( a        : in    std_logic; 
          b        : in    std_logic; 
          eq_above : in    std_logic; 
          gt_above : in    std_logic; 
          eq       : out   std_logic; 
          gt       : out   std_logic; 
          x        : out   std_logic);
end cmp_1bit_MUSER_cpu;

architecture BEHAVIORAL of cmp_1bit_MUSER_cpu is
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

entity cmp_8bit_MUSER_cpu is
   port ( a  : in    std_logic_vector (7 downto 0); 
          b  : in    std_logic_vector (7 downto 0); 
          eq : out   std_logic; 
          gt : out   std_logic; 
          x  : out   std_logic_vector (7 downto 0));
end cmp_8bit_MUSER_cpu;

architecture BEHAVIORAL of cmp_8bit_MUSER_cpu is
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
   component cmp_1bit_MUSER_cpu
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
   XLXI_2 : cmp_1bit_MUSER_cpu
      port map (a=>a(7),
                b=>b(7),
                eq_above=>XLXN_42,
                gt_above=>XLXN_43,
                eq=>eq,
                gt=>gt,
                x=>x(7));
   
   XLXI_3 : cmp_1bit_MUSER_cpu
      port map (a=>a(6),
                b=>b(6),
                eq_above=>XLXN_44,
                gt_above=>XLXN_45,
                eq=>XLXN_42,
                gt=>XLXN_43,
                x=>x(6));
   
   XLXI_4 : cmp_1bit_MUSER_cpu
      port map (a=>a(5),
                b=>b(5),
                eq_above=>XLXN_46,
                gt_above=>XLXN_47,
                eq=>XLXN_44,
                gt=>XLXN_45,
                x=>x(5));
   
   XLXI_5 : cmp_1bit_MUSER_cpu
      port map (a=>a(4),
                b=>b(4),
                eq_above=>XLXN_52,
                gt_above=>XLXN_53,
                eq=>XLXN_46,
                gt=>XLXN_47,
                x=>x(4));
   
   XLXI_6 : cmp_1bit_MUSER_cpu
      port map (a=>a(3),
                b=>b(3),
                eq_above=>XLXN_48,
                gt_above=>XLXN_51,
                eq=>XLXN_52,
                gt=>XLXN_53,
                x=>x(3));
   
   XLXI_7 : cmp_1bit_MUSER_cpu
      port map (a=>a(2),
                b=>b(2),
                eq_above=>XLXN_54,
                gt_above=>XLXN_55,
                eq=>XLXN_48,
                gt=>XLXN_51,
                x=>x(2));
   
   XLXI_8 : cmp_1bit_MUSER_cpu
      port map (a=>a(1),
                b=>b(1),
                eq_above=>XLXN_56,
                gt_above=>XLXN_57,
                eq=>XLXN_54,
                gt=>XLXN_55,
                x=>x(1));
   
   XLXI_9 : cmp_1bit_MUSER_cpu
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

entity alu_MUSER_cpu is
   port ( a     : in    std_logic_vector (7 downto 0); 
          b     : in    std_logic_vector (7 downto 0); 
          C_in  : in    std_logic; 
          op    : in    std_logic_vector (2 downto 0); 
          C_out : out   std_logic; 
          eq    : out   std_logic; 
          gt    : out   std_logic; 
          x     : out   std_logic_vector (7 downto 0); 
          z     : out   std_logic);
end alu_MUSER_cpu;

architecture BEHAVIORAL of alu_MUSER_cpu is
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
   component D3_8E_HXILINX_cpu
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
   
   component ADD8_HXILINX_cpu
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
   
   component INV8_HXILINX_cpu
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component cmp_8bit_MUSER_cpu
      port ( a  : in    std_logic_vector (7 downto 0); 
             b  : in    std_logic_vector (7 downto 0); 
             eq : out   std_logic; 
             gt : out   std_logic; 
             x  : out   std_logic_vector (7 downto 0));
   end component;
   
   component lzero_MUSER_cpu
      port ( a : in    std_logic_vector (7 downto 0); 
             x : out   std_logic);
   end component;
   
   component alu_output_muxer_MUSER_cpu
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_28";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_29";
   attribute HU_SET of XLXI_102 : label is "XLXI_102_30";
begin
   XLXI_1 : D3_8E_HXILINX_cpu
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
   
   XLXI_2 : ADD8_HXILINX_cpu
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
   
   XLXI_102 : INV8_HXILINX_cpu
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
   
   XLXI_135 : cmp_8bit_MUSER_cpu
      port map (a(7 downto 0)=>a(7 downto 0),
                b(7 downto 0)=>b(7 downto 0),
                eq=>eq,
                gt=>gt,
                x(7 downto 0)=>xor_o(7 downto 0));
   
   XLXI_137 : lzero_MUSER_cpu
      port map (a(7 downto 0)=>a(7 downto 0),
                x=>z);
   
   XLXI_138 : alu_output_muxer_MUSER_cpu
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

entity cpu is
   port ( clk     : in    std_logic; 
          rst_in  : in    std_logic; 
          iar_w   : out   std_logic; 
          monitor : out   std_logic_vector (7 downto 0); 
          sysbus  : out   std_logic_vector (7 downto 0));
end cpu;

architecture BEHAVIORAL of cpu is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal acc_o            : std_logic_vector (7 downto 0);
   signal acc_r            : std_logic;
   signal acc_w            : std_logic;
   signal alu_C_in         : std_logic;
   signal alu_C_in_enabled : std_logic;
   signal alu_C_out        : std_logic;
   signal alu_eq           : std_logic;
   signal alu_gt           : std_logic;
   signal alu_op           : std_logic_vector (2 downto 0);
   signal alu_x            : std_logic_vector (7 downto 0);
   signal alu_z            : std_logic;
   signal bus1             : std_logic;
   signal clkc             : std_logic;
   signal clkr             : std_logic;
   signal clkw             : std_logic;
   signal clk_cnt          : std_logic_vector (15 downto 0);
   signal ctl_iar_w        : std_logic;
   signal ctl_r0_w         : std_logic;
   signal ctl_r1_w         : std_logic;
   signal flags_clr        : std_logic;
   signal flags_o          : std_logic_vector (3 downto 0);
   signal flags_w          : std_logic;
   signal iar_o            : std_logic_vector (7 downto 0);
   signal iar_r            : std_logic;
   signal ir_o             : std_logic_vector (7 downto 0);
   signal ir_w             : std_logic;
   signal manual_iar_w     : std_logic;
   signal manual_r0_w      : std_logic;
   signal manual_r1_w      : std_logic;
   signal pto              : std_logic_vector (7 downto 0);
   signal ram_a_o          : std_logic_vector (7 downto 0);
   signal ram_a_w          : std_logic;
   signal ram_o            : std_logic_vector (7 downto 0);
   signal ram_r            : std_logic;
   signal ram_w            : std_logic;
   signal rind             : std_logic_vector (7 downto 0);
   signal rinr             : std_logic;
   signal rinw             : std_logic;
   signal rst              : std_logic;
   signal r0_o             : std_logic_vector (7 downto 0);
   signal r0_r             : std_logic;
   signal r1_o             : std_logic_vector (7 downto 0);
   signal r1_r             : std_logic;
   signal r2_o             : std_logic_vector (7 downto 0);
   signal r2_r             : std_logic;
   signal r2_w             : std_logic;
   signal r3_o             : std_logic_vector (7 downto 0);
   signal r3_r             : std_logic;
   signal r3_w             : std_logic;
   signal temp_o           : std_logic_vector (7 downto 0);
   signal temp_r           : std_logic;
   signal temp_w           : std_logic;
   signal XLXN_23          : std_logic;
   signal XLXN_194         : std_logic;
   signal XLXN_216         : std_logic;
   signal XLXN_217         : std_logic;
   signal XLXN_233         : std_logic;
   signal XLXN_235         : std_logic;
   signal XLXN_237         : std_logic;
   signal XLXN_240         : std_logic;
   signal sysbus_DUMMY     : std_logic_vector (7 downto 0);
   signal iar_w_DUMMY      : std_logic;
   component alu_MUSER_cpu
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
   
   component clk_generator_MUSER_cpu
      port ( clk  : in    std_logic; 
             clkc : out   std_logic; 
             clkr : out   std_logic; 
             clkw : out   std_logic);
   end component;
   
   component cpu_control_MUSER_cpu
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
             ground           : out   std_logic; 
             iar_r            : out   std_logic; 
             iar_w            : out   std_logic; 
             ir               : in    std_logic_vector (7 downto 0); 
             ir_w             : out   std_logic; 
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
             ra_0             : out   std_logic; 
             ra_1             : out   std_logic; 
             ra_2             : out   std_logic; 
             ra_3             : out   std_logic; 
             rb_0             : out   std_logic; 
             rb_1             : out   std_logic; 
             rb_2             : out   std_logic; 
             rb_3             : out   std_logic; 
             s1               : out   std_logic; 
             s2               : out   std_logic; 
             s3               : out   std_logic; 
             s4               : out   std_logic; 
             s5               : out   std_logic; 
             s6               : out   std_logic; 
             temp_w           : out   std_logic);
   end component;
   
   component pass_through_or_one_MUSER_cpu
      port ( i   : in    std_logic_vector (7 downto 0); 
             o   : out   std_logic_vector (7 downto 0); 
             one : in    std_logic);
   end component;
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
   component ram_256bytes_MUSER_cpu
      port ( a      : in    std_logic_vector (7 downto 0); 
             a_o    : out   std_logic_vector (7 downto 0); 
             a_w    : in    std_logic; 
             i      : in    std_logic_vector (7 downto 0); 
             i_r    : in    std_logic; 
             i_w    : in    std_logic; 
             i_wclk : in    std_logic; 
             o      : out   std_logic_vector (7 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component LD4CE_HXILINX_cpu
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
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC_1 : component is "BLACK_BOX";
   
   component LD8_HXILINX_cpu
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component reg_8bit_MUSER_cpu
      port ( clr : in    std_logic; 
             d   : in    std_logic_vector (7 downto 0); 
             o   : out   std_logic_vector (7 downto 0); 
             r   : in    std_logic; 
             w   : in    std_logic);
   end component;
   
   component cpu_output_muxer_MUSER_cpu
      port ( acc_o : in    std_logic_vector (7 downto 0); 
             acc_r : in    std_logic; 
             iar_o : in    std_logic_vector (7 downto 0); 
             iar_r : in    std_logic; 
             mem_o : in    std_logic_vector (7 downto 0); 
             mem_r : in    std_logic; 
             o     : out   std_logic_vector (7 downto 0); 
             r0_o  : in    std_logic_vector (7 downto 0); 
             r0_r  : in    std_logic; 
             r1_o  : in    std_logic_vector (7 downto 0); 
             r1_r  : in    std_logic; 
             r2_o  : in    std_logic_vector (7 downto 0); 
             r2_r  : in    std_logic; 
             r3_o  : in    std_logic_vector (7 downto 0); 
             r3_r  : in    std_logic);
   end component;
   
   component CB16CE_HXILINX_cpu
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_87 : label is "XLXI_87_31";
   attribute HU_SET of XLXI_104 : label is "XLXI_104_32";
   attribute HU_SET of XLXI_131 : label is "XLXI_131_33";
   attribute HU_SET of XLXI_132 : label is "XLXI_132_34";
begin
   iar_w <= iar_w_DUMMY;
   sysbus(7 downto 0) <= sysbus_DUMMY(7 downto 0);
   alu_inst : alu_MUSER_cpu
      port map (a(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                b(7 downto 0)=>pto(7 downto 0),
                C_in=>alu_C_in,
                op(2 downto 0)=>alu_op(2 downto 0),
                C_out=>alu_C_out,
                eq=>alu_eq,
                gt=>alu_gt,
                x(7 downto 0)=>alu_x(7 downto 0),
                z=>alu_z);
   
   clck_gen : clk_generator_MUSER_cpu
      port map (clk=>clk_cnt(5),
                clkc=>clkc,
                clkr=>clkr,
                clkw=>clkw);
   
   cpu_ctl : cpu_control_MUSER_cpu
      port map (clk=>clkc,
                clkr=>clkr,
                clkw=>clkw,
                flags(3 downto 0)=>flags_o(3 downto 0),
                ir(7 downto 0)=>ir_o(7 downto 0),
                acc_r=>acc_r,
                acc_w=>acc_w,
                alu=>open,
                alu_and=>open,
                alu_C_in_enabled=>alu_C_in_enabled,
                alu_lshift=>open,
                alu_not=>open,
                alu_op0=>alu_op(0),
                alu_op1=>alu_op(1),
                alu_op2=>alu_op(2),
                alu_or=>open,
                alu_rshift=>open,
                alu_sum=>open,
                alu_xor=>open,
                bus1=>bus1,
                flags_clr=>flags_clr,
                flags_w=>flags_w,
                ground=>open,
                iar_r=>iar_r,
                iar_w=>ctl_iar_w,
                ir_w=>ir_w,
                ram_a_w=>ram_a_w,
                ram_r=>ram_r,
                ram_w=>ram_w,
                ra_0=>open,
                ra_1=>open,
                ra_2=>open,
                ra_3=>open,
                rb_0=>open,
                rb_1=>open,
                rb_2=>open,
                rb_3=>open,
                r0_r=>r0_r,
                r0_w=>ctl_r0_w,
                r1_r=>r1_r,
                r1_w=>ctl_r1_w,
                r2_r=>r2_r,
                r2_w=>r2_w,
                r3_r=>r3_r,
                r3_w=>r3_w,
                s1=>open,
                s2=>open,
                s3=>open,
                s4=>open,
                s5=>open,
                s6=>open,
                temp_w=>temp_w);
   
   pass_th : pass_through_or_one_MUSER_cpu
      port map (i(7 downto 0)=>temp_o(7 downto 0),
                one=>bus1,
                o(7 downto 0)=>pto(7 downto 0));
   
   XLXI_7 : PULLUP
      port map (O=>XLXN_23);
   
   XLXI_8 : PULLUP
      port map (O=>temp_r);
   
   XLXI_9 : ram_256bytes_MUSER_cpu
      port map (a(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                a_w=>ram_a_w,
                i(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                i_r=>ram_r,
                i_w=>ram_w,
                i_wclk=>clkw,
                a_o(7 downto 0)=>ram_a_o(7 downto 0),
                o(7 downto 0)=>ram_o(7 downto 0));
   
   XLXI_10 : OR2
      port map (I0=>manual_iar_w,
                I1=>ctl_iar_w,
                O=>iar_w_DUMMY);
   
   XLXI_87 : LD4CE_HXILINX_cpu
      port map (CLR=>XLXN_217,
                D0=>alu_C_out,
                D1=>alu_gt,
                D2=>alu_eq,
                D3=>alu_z,
                G=>flags_w,
                GE=>XLXN_194,
                Q0=>flags_o(0),
                Q1=>flags_o(1),
                Q2=>flags_o(2),
                Q3=>flags_o(3));
   
   XLXI_88 : VCC
      port map (P=>XLXN_194);
   
   XLXI_89 : AND2
      port map (I0=>XLXN_216,
                I1=>alu_C_in_enabled,
                O=>alu_C_in);
   
   XLXI_102 : FDC_1
      port map (C=>clkr,
                CLR=>rst,
                D=>flags_o(0),
                Q=>XLXN_216);
   
   XLXI_103 : OR2
      port map (I0=>rst,
                I1=>flags_clr,
                O=>XLXN_217);
   
   XLXI_104 : LD8_HXILINX_cpu
      port map (D(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                G=>ctl_r0_w,
                Q(7 downto 0)=>monitor(7 downto 0));
   
   XLXI_116 : BUF
      port map (I=>rst_in,
                O=>XLXN_233);
   
   XLXI_117 : INV
      port map (I=>XLXN_233,
                O=>rst);
   
   XLXI_118 : GND
      port map (G=>manual_r1_w);
   
   XLXI_119 : GND
      port map (G=>manual_r0_w);
   
   XLXI_120 : GND
      port map (G=>manual_iar_w);
   
   XLXI_121 : reg_8bit_MUSER_cpu
      port map (clr=>rst,
                d(7 downto 0)=>rind(7 downto 0),
                r=>rinr,
                w=>rinw,
                o=>open);
   
   XLXI_122 : reg_8bit_MUSER_cpu
      port map (clr=>rst,
                d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>iar_r,
                w=>iar_w_DUMMY,
                o(7 downto 0)=>iar_o(7 downto 0));
   
   XLXI_123 : reg_8bit_MUSER_cpu
      port map (clr=>rst,
                d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>XLXN_23,
                w=>ir_w,
                o(7 downto 0)=>ir_o(7 downto 0));
   
   XLXI_124 : reg_8bit_MUSER_cpu
      port map (clr=>rst,
                d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>temp_r,
                w=>temp_w,
                o(7 downto 0)=>temp_o(7 downto 0));
   
   XLXI_125 : reg_8bit_MUSER_cpu
      port map (clr=>rst,
                d(7 downto 0)=>alu_x(7 downto 0),
                r=>acc_r,
                w=>acc_w,
                o(7 downto 0)=>acc_o(7 downto 0));
   
   XLXI_126 : reg_8bit_MUSER_cpu
      port map (clr=>rst,
                d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>r0_r,
                w=>ctl_r0_w,
                o(7 downto 0)=>r0_o(7 downto 0));
   
   XLXI_127 : reg_8bit_MUSER_cpu
      port map (clr=>rst,
                d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>r1_r,
                w=>ctl_r1_w,
                o(7 downto 0)=>r1_o(7 downto 0));
   
   XLXI_128 : reg_8bit_MUSER_cpu
      port map (clr=>rst,
                d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>r2_r,
                w=>r2_w,
                o(7 downto 0)=>r2_o(7 downto 0));
   
   XLXI_129 : reg_8bit_MUSER_cpu
      port map (clr=>rst,
                d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>r3_r,
                w=>r3_w,
                o(7 downto 0)=>r3_o(7 downto 0));
   
   XLXI_130 : cpu_output_muxer_MUSER_cpu
      port map (acc_o(7 downto 0)=>acc_o(7 downto 0),
                acc_r=>acc_r,
                iar_o(7 downto 0)=>iar_o(7 downto 0),
                iar_r=>iar_r,
                mem_o(7 downto 0)=>ram_o(7 downto 0),
                mem_r=>ram_r,
                r0_o(7 downto 0)=>r0_o(7 downto 0),
                r0_r=>r0_r,
                r1_o(7 downto 0)=>r1_o(7 downto 0),
                r1_r=>r1_r,
                r2_o(7 downto 0)=>r2_o(7 downto 0),
                r2_r=>r2_r,
                r3_o(7 downto 0)=>r3_o(7 downto 0),
                r3_r=>r3_r,
                o(7 downto 0)=>sysbus_DUMMY(7 downto 0));
   
   XLXI_131 : CB16CE_HXILINX_cpu
      port map (C=>clk,
                CE=>XLXN_237,
                CLR=>XLXN_240,
                CEO=>XLXN_235,
                Q=>open,
                TC=>open);
   
   XLXI_132 : CB16CE_HXILINX_cpu
      port map (C=>clk,
                CE=>XLXN_235,
                CLR=>XLXN_240,
                CEO=>open,
                Q(15 downto 0)=>clk_cnt(15 downto 0),
                TC=>open);
   
   XLXI_134 : VCC
      port map (P=>XLXN_237);
   
   XLXI_135 : GND
      port map (G=>XLXN_240);
   
   XLXI_136 : GND
      port map (G=>open);
   
end BEHAVIORAL;


