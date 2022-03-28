--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : alu.vhf
-- /___/   /\     Timestamp : 03/27/2022 22:30:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/alu.vhf -w /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/alu.sch
--Design Name: alu
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL ADD8_HXILINX_alu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD8_HXILINX_alu is
port(
    CO  : out std_logic;
    OFL : out std_logic;
    S   : out std_logic_vector(7 downto 0);
    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0);
    CI  : in std_logic
  );
end ADD8_HXILINX_alu;

architecture ADD8_HXILINX_alu_V of ADD8_HXILINX_alu is
  signal adder_tmp: std_logic_vector(8 downto 0);
begin
  adder_tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),9);
  S  <= adder_tmp(7 downto 0);
  CO <= adder_tmp(8);
  OFL <=  ( A(7) and B(7) and (not adder_tmp(7)) ) or ( (not A(7)) and (not B(7)) and adder_tmp(7) );  
end ADD8_HXILINX_alu_V;
----- CELL NOR8_HXILINX_alu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR8_HXILINX_alu is
  
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
end NOR8_HXILINX_alu;

architecture NOR8_HXILINX_alu_V of NOR8_HXILINX_alu is
begin
  O <= not (I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7);
end NOR8_HXILINX_alu_V;
----- CELL INV8_HXILINX_alu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity INV8_HXILINX_alu is
port(
    O  : out std_logic_vector(7 downto 0);

    I  : in std_logic_vector(7 downto 0)
  );
end INV8_HXILINX_alu;

architecture INV8_HXILINX_alu_V of INV8_HXILINX_alu is
begin
  O <= not I ;
end INV8_HXILINX_alu_V;
----- CELL D3_8E_HXILINX_alu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_alu is
  
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
end D3_8E_HXILINX_alu;

architecture D3_8E_HXILINX_alu_V of D3_8E_HXILINX_alu is
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

end D3_8E_HXILINX_alu_V;
----- CELL OBUFT8_HXILINX_alu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OBUFT8_HXILINX_alu is
port(
    O  : out std_logic_vector(7 downto 0);

    I  : in std_logic_vector(7 downto 0);
    T  : in std_logic
  );
end OBUFT8_HXILINX_alu;

architecture OBUFT8_HXILINX_alu_V of OBUFT8_HXILINX_alu is
begin
  process (I, T)
  begin
    if (T='0') then
      O  <= I;
    else
      O  <= (others => 'Z');
  end if;
 end process;

end OBUFT8_HXILINX_alu_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lzero_MUSER_alu is
   port ( a : in    std_logic_vector (7 downto 0); 
          x : out   std_logic);
end lzero_MUSER_alu;

architecture BEHAVIORAL of lzero_MUSER_alu is
   attribute HU_SET     : string ;
   component NOR8_HXILINX_alu
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
begin
   XLXI_1 : NOR8_HXILINX_alu
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

entity cmp_1bit_MUSER_alu is
   port ( a        : in    std_logic; 
          b        : in    std_logic; 
          eq_above : in    std_logic; 
          gt_above : in    std_logic; 
          eq       : out   std_logic; 
          gt       : out   std_logic; 
          x        : out   std_logic);
end cmp_1bit_MUSER_alu;

architecture BEHAVIORAL of cmp_1bit_MUSER_alu is
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

entity cmp_8bit_MUSER_alu is
   port ( a  : in    std_logic_vector (7 downto 0); 
          b  : in    std_logic_vector (7 downto 0); 
          eq : out   std_logic; 
          gt : out   std_logic; 
          x  : out   std_logic_vector (7 downto 0));
end cmp_8bit_MUSER_alu;

architecture BEHAVIORAL of cmp_8bit_MUSER_alu is
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
   component cmp_1bit_MUSER_alu
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
   XLXI_2 : cmp_1bit_MUSER_alu
      port map (a=>a(7),
                b=>b(7),
                eq_above=>XLXN_42,
                gt_above=>XLXN_43,
                eq=>eq,
                gt=>gt,
                x=>x(7));
   
   XLXI_3 : cmp_1bit_MUSER_alu
      port map (a=>a(6),
                b=>b(6),
                eq_above=>XLXN_44,
                gt_above=>XLXN_45,
                eq=>XLXN_42,
                gt=>XLXN_43,
                x=>x(6));
   
   XLXI_4 : cmp_1bit_MUSER_alu
      port map (a=>a(5),
                b=>b(5),
                eq_above=>XLXN_46,
                gt_above=>XLXN_47,
                eq=>XLXN_44,
                gt=>XLXN_45,
                x=>x(5));
   
   XLXI_5 : cmp_1bit_MUSER_alu
      port map (a=>a(4),
                b=>b(4),
                eq_above=>XLXN_52,
                gt_above=>XLXN_53,
                eq=>XLXN_46,
                gt=>XLXN_47,
                x=>x(4));
   
   XLXI_6 : cmp_1bit_MUSER_alu
      port map (a=>a(3),
                b=>b(3),
                eq_above=>XLXN_48,
                gt_above=>XLXN_51,
                eq=>XLXN_52,
                gt=>XLXN_53,
                x=>x(3));
   
   XLXI_7 : cmp_1bit_MUSER_alu
      port map (a=>a(2),
                b=>b(2),
                eq_above=>XLXN_54,
                gt_above=>XLXN_55,
                eq=>XLXN_48,
                gt=>XLXN_51,
                x=>x(2));
   
   XLXI_8 : cmp_1bit_MUSER_alu
      port map (a=>a(1),
                b=>b(1),
                eq_above=>XLXN_56,
                gt_above=>XLXN_57,
                eq=>XLXN_54,
                gt=>XLXN_55,
                x=>x(1));
   
   XLXI_9 : cmp_1bit_MUSER_alu
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

entity alu is
   port ( a     : in    std_logic_vector (7 downto 0); 
          b     : in    std_logic_vector (7 downto 0); 
          C_in  : in    std_logic; 
          op    : in    std_logic_vector (2 downto 0); 
          C_out : out   std_logic; 
          eq    : out   std_logic; 
          gt    : out   std_logic; 
          x     : out   std_logic_vector (7 downto 0); 
          z     : out   std_logic);
end alu;

architecture BEHAVIORAL of alu is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal land     : std_logic_vector (7 downto 0);
   signal lor      : std_logic_vector (7 downto 0);
   signal ls       : std_logic_vector (7 downto 0);
   signal t        : std_logic_vector (7 downto 0);
   signal XLXN_7   : std_logic_vector (7 downto 0);
   signal XLXN_8   : std_logic;
   signal XLXN_89  : std_logic;
   signal XLXN_91  : std_logic;
   signal XLXN_93  : std_logic;
   signal XLXN_98  : std_logic;
   signal XLXN_99  : std_logic;
   signal XLXN_105 : std_logic;
   signal XLXN_179 : std_logic;
   signal XLXN_191 : std_logic;
   signal XLXN_192 : std_logic;
   signal XLXN_193 : std_logic;
   signal XLXN_199 : std_logic;
   signal XLXN_201 : std_logic;
   signal XLXN_202 : std_logic;
   signal XLXN_204 : std_logic_vector (7 downto 0);
   signal XLXN_223 : std_logic;
   signal XLXN_224 : std_logic;
   signal XLXN_225 : std_logic;
   signal XLXN_226 : std_logic;
   signal XLXN_227 : std_logic;
   signal XLXN_228 : std_logic;
   signal XLXN_239 : std_logic;
   signal XLXN_269 : std_logic;
   signal XLXN_270 : std_logic_vector (7 downto 0);
   signal XLXN_272 : std_logic;
   signal x_DUMMY  : std_logic_vector (7 downto 0);
   component D3_8E_HXILINX_alu
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
   
   component ADD8_HXILINX_alu
      port ( A   : in    std_logic_vector (7 downto 0); 
             B   : in    std_logic_vector (7 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (7 downto 0));
   end component;
   
   component OBUFT8_HXILINX_alu
      port ( I : in    std_logic_vector (7 downto 0); 
             T : in    std_logic; 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
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
   
   component INV8_HXILINX_alu
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component cmp_8bit_MUSER_alu
      port ( a  : in    std_logic_vector (7 downto 0); 
             b  : in    std_logic_vector (7 downto 0); 
             eq : out   std_logic; 
             gt : out   std_logic; 
             x  : out   std_logic_vector (7 downto 0));
   end component;
   
   component lzero_MUSER_alu
      port ( a : in    std_logic_vector (7 downto 0); 
             x : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_1";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_2";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_3";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_4";
   attribute HU_SET of XLXI_97 : label is "XLXI_97_5";
   attribute HU_SET of XLXI_102 : label is "XLXI_102_6";
   attribute HU_SET of XLXI_111 : label is "XLXI_111_7";
   attribute HU_SET of XLXI_112 : label is "XLXI_112_8";
   attribute HU_SET of XLXI_113 : label is "XLXI_113_9";
   attribute HU_SET of XLXI_136 : label is "XLXI_136_10";
begin
   x(7 downto 0) <= x_DUMMY(7 downto 0);
   XLXI_1 : D3_8E_HXILINX_alu
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
   
   XLXI_2 : ADD8_HXILINX_alu
      port map (A(7 downto 0)=>a(7 downto 0),
                B(7 downto 0)=>b(7 downto 0),
                CI=>C_in,
                CO=>XLXN_91,
                OFL=>open,
                S(7 downto 0)=>XLXN_7(7 downto 0));
   
   XLXI_4 : OBUFT8_HXILINX_alu
      port map (I(7 downto 0)=>XLXN_7(7 downto 0),
                T=>XLXN_98,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_5 : INV
      port map (I=>XLXN_8,
                O=>XLXN_98);
   
   XLXI_7 : OBUFT8_HXILINX_alu
      port map (I(7 downto 0)=>t(7 downto 0),
                T=>XLXN_99,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_12 : BUF
      port map (I=>XLXN_179,
                O=>t(0));
   
   XLXI_13 : BUF
      port map (I=>a(0),
                O=>t(1));
   
   XLXI_14 : BUF
      port map (I=>a(1),
                O=>t(2));
   
   XLXI_15 : BUF
      port map (I=>a(2),
                O=>t(3));
   
   XLXI_16 : BUF
      port map (I=>a(3),
                O=>t(4));
   
   XLXI_17 : BUF
      port map (I=>a(4),
                O=>t(5));
   
   XLXI_18 : BUF
      port map (I=>a(5),
                O=>t(6));
   
   XLXI_19 : BUF
      port map (I=>a(6),
                O=>t(7));
   
   XLXI_40 : GND
      port map (G=>XLXN_179);
   
   XLXI_42 : INV
      port map (I=>XLXN_105,
                O=>XLXN_99);
   
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
                O=>ls(0));
   
   XLXI_91 : BUF
      port map (I=>a(2),
                O=>ls(1));
   
   XLXI_92 : BUF
      port map (I=>a(3),
                O=>ls(2));
   
   XLXI_93 : BUF
      port map (I=>a(4),
                O=>ls(3));
   
   XLXI_94 : BUF
      port map (I=>a(5),
                O=>ls(4));
   
   XLXI_95 : BUF
      port map (I=>a(6),
                O=>ls(5));
   
   XLXI_96 : BUF
      port map (I=>a(7),
                O=>ls(6));
   
   XLXI_97 : OBUFT8_HXILINX_alu
      port map (I(7 downto 0)=>ls(7 downto 0),
                T=>XLXN_193,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_98 : BUF
      port map (I=>XLXN_179,
                O=>ls(7));
   
   XLXI_99 : AND2
      port map (I0=>XLXN_191,
                I1=>XLXN_192,
                O=>XLXN_201);
   
   XLXI_100 : INV
      port map (I=>XLXN_192,
                O=>XLXN_193);
   
   XLXI_101 : OR3
      port map (I0=>XLXN_201,
                I1=>XLXN_202,
                I2=>XLXN_199,
                O=>C_out);
   
   XLXI_102 : INV8_HXILINX_alu
      port map (I(7 downto 0)=>a(7 downto 0),
                O(7 downto 0)=>XLXN_204(7 downto 0));
   
   XLXI_111 : OBUFT8_HXILINX_alu
      port map (I(7 downto 0)=>XLXN_204(7 downto 0),
                T=>XLXN_228,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_112 : OBUFT8_HXILINX_alu
      port map (I(7 downto 0)=>land(7 downto 0),
                T=>XLXN_239,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_113 : OBUFT8_HXILINX_alu
      port map (I(7 downto 0)=>lor(7 downto 0),
                T=>XLXN_269,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_114 : AND2
      port map (I0=>a(7),
                I1=>b(7),
                O=>land(7));
   
   XLXI_115 : AND2
      port map (I0=>a(6),
                I1=>b(6),
                O=>land(6));
   
   XLXI_116 : AND2
      port map (I0=>a(5),
                I1=>b(5),
                O=>land(5));
   
   XLXI_117 : AND2
      port map (I0=>a(4),
                I1=>b(4),
                O=>land(4));
   
   XLXI_118 : AND2
      port map (I0=>a(3),
                I1=>b(3),
                O=>land(3));
   
   XLXI_119 : AND2
      port map (I0=>a(2),
                I1=>b(2),
                O=>land(2));
   
   XLXI_120 : AND2
      port map (I0=>a(1),
                I1=>b(1),
                O=>land(1));
   
   XLXI_121 : AND2
      port map (I0=>a(0),
                I1=>b(0),
                O=>land(0));
   
   XLXI_122 : INV
      port map (I=>XLXN_223,
                O=>XLXN_228);
   
   XLXI_123 : INV
      port map (I=>XLXN_224,
                O=>XLXN_239);
   
   XLXI_124 : INV
      port map (I=>XLXN_225,
                O=>XLXN_269);
   
   XLXI_125 : INV
      port map (I=>XLXN_226,
                O=>XLXN_272);
   
   XLXI_126 : INV
      port map (I=>XLXN_227,
                O=>open);
   
   XLXI_127 : OR2
      port map (I0=>a(7),
                I1=>b(7),
                O=>lor(7));
   
   XLXI_128 : OR2
      port map (I0=>a(6),
                I1=>b(6),
                O=>lor(6));
   
   XLXI_129 : OR2
      port map (I0=>a(5),
                I1=>b(5),
                O=>lor(5));
   
   XLXI_130 : OR2
      port map (I0=>a(4),
                I1=>b(4),
                O=>lor(4));
   
   XLXI_131 : OR2
      port map (I0=>a(3),
                I1=>b(3),
                O=>lor(3));
   
   XLXI_132 : OR2
      port map (I0=>a(2),
                I1=>b(2),
                O=>lor(2));
   
   XLXI_133 : OR2
      port map (I0=>a(1),
                I1=>b(1),
                O=>lor(1));
   
   XLXI_134 : OR2
      port map (I0=>a(0),
                I1=>b(0),
                O=>lor(0));
   
   XLXI_135 : cmp_8bit_MUSER_alu
      port map (a(7 downto 0)=>a(7 downto 0),
                b(7 downto 0)=>b(7 downto 0),
                eq=>eq,
                gt=>gt,
                x(7 downto 0)=>XLXN_270(7 downto 0));
   
   XLXI_136 : OBUFT8_HXILINX_alu
      port map (I(7 downto 0)=>XLXN_270(7 downto 0),
                T=>XLXN_272,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_137 : lzero_MUSER_alu
      port map (a(7 downto 0)=>x_DUMMY(7 downto 0),
                x=>z);
   
end BEHAVIORAL;


