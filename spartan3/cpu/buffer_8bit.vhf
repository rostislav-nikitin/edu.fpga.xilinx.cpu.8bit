--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : buffer_8bit.vhf
-- /___/   /\     Timestamp : 04/07/2022 00:16:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/buffer_8bit.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/buffer_8bit.sch
--Design Name: buffer_8bit
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

entity buffer_8bit is
   port ( e : in    std_logic; 
          i : in    std_logic_vector (7 downto 0); 
          o : out   std_logic_vector (7 downto 0));
end buffer_8bit;

architecture BEHAVIORAL of buffer_8bit is
   attribute IOSTANDARD : string ;
   attribute SLEW       : string ;
   attribute DRIVE      : string ;
   attribute BOX_TYPE   : string ;
   signal t : std_logic;
   component OBUFT
      port ( I : in    std_logic; 
             T : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUFT : component is "DEFAULT";
   attribute SLEW of OBUFT : component is "SLOW";
   attribute DRIVE of OBUFT : component is "12";
   attribute BOX_TYPE of OBUFT : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_67 : OBUFT
      port map (I=>i(0),
                T=>t,
                O=>o(0));
   
   XLXI_68 : OBUFT
      port map (I=>i(1),
                T=>t,
                O=>o(1));
   
   XLXI_69 : OBUFT
      port map (I=>i(2),
                T=>t,
                O=>o(2));
   
   XLXI_70 : OBUFT
      port map (I=>i(3),
                T=>t,
                O=>o(3));
   
   XLXI_71 : OBUFT
      port map (I=>i(4),
                T=>t,
                O=>o(4));
   
   XLXI_72 : OBUFT
      port map (I=>i(5),
                T=>t,
                O=>o(5));
   
   XLXI_73 : OBUFT
      port map (I=>i(6),
                T=>t,
                O=>o(6));
   
   XLXI_74 : OBUFT
      port map (I=>i(7),
                T=>t,
                O=>o(7));
   
   XLXI_75 : INV
      port map (I=>e,
                O=>t);
   
end BEHAVIORAL;


