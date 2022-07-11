--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : freq_pass_through.vhf
-- /___/   /\     Timestamp : 04/27/2022 23:03:51
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/freq_pass_through.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/freq_pass_through.sch
--Design Name: freq_pass_through
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

entity freq_pass_through is
   port ( in_clk  : in    std_logic; 
          out_clk : out   std_logic);
end freq_pass_through;

architecture BEHAVIORAL of freq_pass_through is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>in_clk,
                O=>out_clk);
   
end BEHAVIORAL;


