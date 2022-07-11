--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : encoder8_3.vhf
-- /___/   /\     Timestamp : 06/28/2022 04:13:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/encoder8_3.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/encoder8_3.sch
--Design Name: encoder8_3
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL AND8_HXILINX_encoder8_3 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND8_HXILINX_encoder8_3 is
  
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
end AND8_HXILINX_encoder8_3;

architecture AND8_HXILINX_encoder8_3_V of AND8_HXILINX_encoder8_3 is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5 and I6 and I7;
end AND8_HXILINX_encoder8_3_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity encoder8_3 is
   port ( i : in    std_logic_vector (7 downto 0); 
          g : out   std_logic; 
          o : out   std_logic_vector (2 downto 0));
end encoder8_3;

architecture BEHAVIORAL of encoder8_3 is
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
   
   component AND8_HXILINX_encoder8_3
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
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_141";
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
   
   XLXI_4 : AND8_HXILINX_encoder8_3
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


