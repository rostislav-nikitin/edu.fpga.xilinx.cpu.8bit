--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : freq_divider.vhf
-- /___/   /\     Timestamp : 06/28/2022 04:13:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/freq_divider.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/freq_divider.sch
--Design Name: freq_divider
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB16CE_HXILINX_freq_divider -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_freq_divider is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_freq_divider;

architecture Behavioral of CB16CE_HXILINX_freq_divider is

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

----- CELL FJKC_HXILINX_freq_divider -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_freq_divider is
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
end FJKC_HXILINX_freq_divider;

architecture Behavioral of FJKC_HXILINX_freq_divider is
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

----- CELL AND8_HXILINX_freq_divider -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND8_HXILINX_freq_divider is
  
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
end AND8_HXILINX_freq_divider;

architecture AND8_HXILINX_freq_divider_V of AND8_HXILINX_freq_divider is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5 and I6 and I7;
end AND8_HXILINX_freq_divider_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity freq_divider is
   port ( clk_in  : in    std_logic; 
          divider : in    std_logic_vector (31 downto 0); 
          rst     : in    std_logic; 
          clk_out : out   std_logic);
end freq_divider;

architecture BEHAVIORAL of freq_divider is
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
   component CB16CE_HXILINX_freq_divider
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
   
   component AND8_HXILINX_freq_divider
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
   
   component FJKC_HXILINX_freq_divider
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_82";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_81";
   attribute HU_SET of XLXI_123 : label is "XLXI_123_83";
   attribute HU_SET of XLXI_124 : label is "XLXI_124_84";
   attribute HU_SET of XLXI_128 : label is "XLXI_128_87";
   attribute HU_SET of XLXI_149 : label is "XLXI_149_85";
   attribute HU_SET of XLXI_150 : label is "XLXI_150_86";
begin
   XLXI_1 : CB16CE_HXILINX_freq_divider
      port map (C=>clk_in,
                CE=>XLXN_4,
                CLR=>clr,
                CEO=>XLXN_2,
                Q(15 downto 0)=>cnt_1(15 downto 0),
                TC=>open);
   
   XLXI_2 : CB16CE_HXILINX_freq_divider
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
   
   XLXI_123 : AND8_HXILINX_freq_divider
      port map (I0=>XLXN_60,
                I1=>XLXN_65,
                I2=>XLXN_59,
                I3=>XLXN_58,
                I4=>XLXN_57,
                I5=>XLXN_55,
                I6=>XLXN_56,
                I7=>XLXN_70,
                O=>XLXN_82);
   
   XLXI_124 : AND8_HXILINX_freq_divider
      port map (I0=>XLXN_64,
                I1=>XLXN_69,
                I2=>XLXN_63,
                I3=>XLXN_68,
                I4=>XLXN_62,
                I5=>XLXN_67,
                I6=>XLXN_61,
                I7=>XLXN_66,
                O=>XLXN_83);
   
   XLXI_128 : FJKC_HXILINX_freq_divider
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
   
   XLXI_149 : AND8_HXILINX_freq_divider
      port map (I0=>XLXN_128,
                I1=>XLXN_136,
                I2=>XLXN_126,
                I3=>XLXN_125,
                I4=>XLXN_124,
                I5=>XLXN_122,
                I6=>XLXN_123,
                I7=>XLXN_142,
                O=>XLXN_160);
   
   XLXI_150 : AND8_HXILINX_freq_divider
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


