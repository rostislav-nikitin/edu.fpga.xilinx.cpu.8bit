--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : one_8bit.vhf
-- /___/   /\     Timestamp : 03/20/2022 18:15:44
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/one_8bit.vhf -w /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/one_8bit.sch
--Design Name: one_8bit
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

entity one_8bit is
   port ( one : out   std_logic_vector (7 downto 0));
end one_8bit;

architecture BEHAVIORAL of one_8bit is
   attribute BOX_TYPE   : string ;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component PULLDOWN
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLDOWN : component is "BLACK_BOX";
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
begin
   XLXI_2 : BUF
      port map (I=>XLXN_10,
                O=>one(7));
   
   XLXI_3 : BUF
      port map (I=>XLXN_10,
                O=>one(6));
   
   XLXI_4 : BUF
      port map (I=>XLXN_10,
                O=>one(5));
   
   XLXI_5 : BUF
      port map (I=>XLXN_10,
                O=>one(4));
   
   XLXI_6 : BUF
      port map (I=>XLXN_10,
                O=>one(3));
   
   XLXI_7 : BUF
      port map (I=>XLXN_10,
                O=>one(2));
   
   XLXI_9 : BUF
      port map (I=>XLXN_10,
                O=>one(1));
   
   XLXI_10 : BUF
      port map (I=>XLXN_11,
                O=>one(0));
   
   XLXI_11 : PULLDOWN
      port map (O=>XLXN_10);
   
   XLXI_12 : PULLUP
      port map (O=>XLXN_11);
   
end BEHAVIORAL;


