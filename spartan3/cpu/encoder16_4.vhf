--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : encoder16_4.vhf
-- /___/   /\     Timestamp : 06/28/2022 04:13:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/encoder16_4.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/encoder16_4.sch
--Design Name: encoder16_4
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL AND16_HXILINX_encoder16_4 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND16_HXILINX_encoder16_4 is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic;
    I7  : in std_logic;
    I8  : in std_logic;
    I9  : in std_logic;
    I10  : in std_logic;
    I11  : in std_logic;
    I12  : in std_logic;
    I13  : in std_logic;
    I14  : in std_logic;
    I15  : in std_logic
  );
end AND16_HXILINX_encoder16_4;

architecture AND16_HXILINX_encoder16_4_V of AND16_HXILINX_encoder16_4 is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5 and I6 and I7 and I8 and I9 and I10 and I11 and I12 and I13 and I14 and I15;
end AND16_HXILINX_encoder16_4_V;
----- CELL OR8_HXILINX_encoder16_4 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR8_HXILINX_encoder16_4 is
  
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
end OR8_HXILINX_encoder16_4;

architecture OR8_HXILINX_encoder16_4_V of OR8_HXILINX_encoder16_4 is
begin
  O <= (I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7);
end OR8_HXILINX_encoder16_4_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity encoder16_4 is
   port ( i : in    std_logic_vector (15 downto 0); 
          g : out   std_logic; 
          o : out   std_logic_vector (3 downto 0));
end encoder16_4;

architecture BEHAVIORAL of encoder16_4 is
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
   
   component AND16_HXILINX_encoder16_4
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
   
   component OR8_HXILINX_encoder16_4
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
   
   attribute HU_SET of XLXI_25 : label is "XLXI_25_116";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_117";
   attribute HU_SET of XLXI_49 : label is "XLXI_49_118";
   attribute HU_SET of XLXI_50 : label is "XLXI_50_119";
   attribute HU_SET of XLXI_59 : label is "XLXI_59_120";
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
   
   XLXI_25 : AND16_HXILINX_encoder16_4
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
   
   XLXI_48 : OR8_HXILINX_encoder16_4
      port map (I0=>i(15),
                I1=>i(13),
                I2=>i(11),
                I3=>i(9),
                I4=>i(7),
                I5=>i(5),
                I6=>i(3),
                I7=>i(1),
                O=>o(0));
   
   XLXI_49 : OR8_HXILINX_encoder16_4
      port map (I0=>i(15),
                I1=>i(14),
                I2=>i(11),
                I3=>i(10),
                I4=>i(7),
                I5=>i(6),
                I6=>i(3),
                I7=>i(2),
                O=>o(1));
   
   XLXI_50 : OR8_HXILINX_encoder16_4
      port map (I0=>i(15),
                I1=>i(14),
                I2=>i(13),
                I3=>i(12),
                I4=>i(7),
                I5=>i(6),
                I6=>i(5),
                I7=>i(4),
                O=>o(2));
   
   XLXI_59 : OR8_HXILINX_encoder16_4
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


