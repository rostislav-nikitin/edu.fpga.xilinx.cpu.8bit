--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cmp_8bit.vhf
-- /___/   /\     Timestamp : 03/30/2022 23:59:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cmp_8bit.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cmp_8bit.sch
--Design Name: cmp_8bit
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cmp_1bit_MUSER_cmp_8bit is
   port ( a        : in    std_logic; 
          b        : in    std_logic; 
          eq_above : in    std_logic; 
          gt_above : in    std_logic; 
          eq       : out   std_logic; 
          gt       : out   std_logic; 
          x        : out   std_logic);
end cmp_1bit_MUSER_cmp_8bit;

architecture BEHAVIORAL of cmp_1bit_MUSER_cmp_8bit is
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

entity cmp_8bit is
   port ( a  : in    std_logic_vector (7 downto 0); 
          b  : in    std_logic_vector (7 downto 0); 
          eq : out   std_logic; 
          gt : out   std_logic; 
          x  : out   std_logic_vector (7 downto 0));
end cmp_8bit;

architecture BEHAVIORAL of cmp_8bit is
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
   component cmp_1bit_MUSER_cmp_8bit
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
   XLXI_2 : cmp_1bit_MUSER_cmp_8bit
      port map (a=>a(7),
                b=>b(7),
                eq_above=>XLXN_42,
                gt_above=>XLXN_43,
                eq=>eq,
                gt=>gt,
                x=>x(7));
   
   XLXI_3 : cmp_1bit_MUSER_cmp_8bit
      port map (a=>a(6),
                b=>b(6),
                eq_above=>XLXN_44,
                gt_above=>XLXN_45,
                eq=>XLXN_42,
                gt=>XLXN_43,
                x=>x(6));
   
   XLXI_4 : cmp_1bit_MUSER_cmp_8bit
      port map (a=>a(5),
                b=>b(5),
                eq_above=>XLXN_46,
                gt_above=>XLXN_47,
                eq=>XLXN_44,
                gt=>XLXN_45,
                x=>x(5));
   
   XLXI_5 : cmp_1bit_MUSER_cmp_8bit
      port map (a=>a(4),
                b=>b(4),
                eq_above=>XLXN_52,
                gt_above=>XLXN_53,
                eq=>XLXN_46,
                gt=>XLXN_47,
                x=>x(4));
   
   XLXI_6 : cmp_1bit_MUSER_cmp_8bit
      port map (a=>a(3),
                b=>b(3),
                eq_above=>XLXN_48,
                gt_above=>XLXN_51,
                eq=>XLXN_52,
                gt=>XLXN_53,
                x=>x(3));
   
   XLXI_7 : cmp_1bit_MUSER_cmp_8bit
      port map (a=>a(2),
                b=>b(2),
                eq_above=>XLXN_54,
                gt_above=>XLXN_55,
                eq=>XLXN_48,
                gt=>XLXN_51,
                x=>x(2));
   
   XLXI_8 : cmp_1bit_MUSER_cmp_8bit
      port map (a=>a(1),
                b=>b(1),
                eq_above=>XLXN_56,
                gt_above=>XLXN_57,
                eq=>XLXN_54,
                gt=>XLXN_55,
                x=>x(1));
   
   XLXI_9 : cmp_1bit_MUSER_cmp_8bit
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


