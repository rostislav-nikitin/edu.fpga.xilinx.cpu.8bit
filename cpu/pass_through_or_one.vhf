--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : pass_through_or_one.vhf
-- /___/   /\     Timestamp : 03/20/2022 18:41:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/pass_through_or_one.vhf -w /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/pass_through_or_one.sch
--Design Name: pass_through_or_one
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

entity one_8bit_MUSER_pass_through_or_one is
   port ( one : out   std_logic_vector (7 downto 0));
end one_8bit_MUSER_pass_through_or_one;

architecture BEHAVIORAL of one_8bit_MUSER_pass_through_or_one is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity buffer_8bit_MUSER_pass_through_or_one is
   port ( e : in    std_logic; 
          i : in    std_logic_vector (7 downto 0); 
          o : out   std_logic_vector (7 downto 0));
end buffer_8bit_MUSER_pass_through_or_one;

architecture BEHAVIORAL of buffer_8bit_MUSER_pass_through_or_one is
   attribute BOX_TYPE   : string ;
   component BUFGCE
      port ( CE : in    std_logic; 
             I  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFGCE : component is "BLACK_BOX";
   
begin
   XLXI_20 : BUFGCE
      port map (CE=>e,
                I=>i(0),
                O=>o(0));
   
   XLXI_21 : BUFGCE
      port map (CE=>e,
                I=>i(1),
                O=>o(1));
   
   XLXI_22 : BUFGCE
      port map (CE=>e,
                I=>i(2),
                O=>o(2));
   
   XLXI_23 : BUFGCE
      port map (CE=>e,
                I=>i(3),
                O=>o(3));
   
   XLXI_24 : BUFGCE
      port map (CE=>e,
                I=>i(4),
                O=>o(4));
   
   XLXI_25 : BUFGCE
      port map (CE=>e,
                I=>i(5),
                O=>o(5));
   
   XLXI_26 : BUFGCE
      port map (CE=>e,
                I=>i(6),
                O=>o(6));
   
   XLXI_27 : BUFGCE
      port map (CE=>e,
                I=>i(7),
                O=>o(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity pass_through_or_one is
   port ( i   : in    std_logic_vector (7 downto 0); 
          one : in    std_logic; 
          o   : out   std_logic_vector (7 downto 0));
end pass_through_or_one;

architecture BEHAVIORAL of pass_through_or_one is
   attribute BOX_TYPE   : string ;
   signal one_out : std_logic_vector (7 downto 0);
   signal XLXN_32 : std_logic;
   signal o_DUMMY : std_logic_vector (7 downto 0);
   component buffer_8bit_MUSER_pass_through_or_one
      port ( e : in    std_logic; 
             i : in    std_logic_vector (7 downto 0); 
             o : out   std_logic_vector (7 downto 0));
   end component;
   
   component one_8bit_MUSER_pass_through_or_one
      port ( one : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   o(7 downto 0) <= o_DUMMY(7 downto 0);
   buff_const_one : buffer_8bit_MUSER_pass_through_or_one
      port map (e=>one,
                i(7 downto 0)=>one_out(7 downto 0),
                o(7 downto 0)=>o_DUMMY(7 downto 0));
   
   buff_origin : buffer_8bit_MUSER_pass_through_or_one
      port map (e=>XLXN_32,
                i(7 downto 0)=>i(7 downto 0),
                o(7 downto 0)=>o_DUMMY(7 downto 0));
   
   const_one : one_8bit_MUSER_pass_through_or_one
      port map (one(7 downto 0)=>one_out(7 downto 0));
   
   inv_one : INV
      port map (I=>one,
                O=>XLXN_32);
   
end BEHAVIORAL;


