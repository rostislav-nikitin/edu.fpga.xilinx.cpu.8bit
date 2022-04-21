--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : buf_8bit.vhf
-- /___/   /\     Timestamp : 04/22/2022 02:06:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/buf_8bit.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/buf_8bit.sch
--Design Name: buf_8bit
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

entity buf_8bit is
   port ( i : in    std_logic_vector (7 downto 0); 
          o : out   std_logic_vector (7 downto 0));
end buf_8bit;

architecture BEHAVIORAL of buf_8bit is
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


