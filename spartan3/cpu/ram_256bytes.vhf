--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : ram_256bytes.vhf
-- /___/   /\     Timestamp : 06/28/2022 04:26:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/ram_256bytes.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/ram_256bytes.sch
--Design Name: ram_256bytes
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LD8_MXILINX_ram_256bytes is
   port ( D : in    std_logic_vector (7 downto 0); 
          G : in    std_logic; 
          Q : out   std_logic_vector (7 downto 0));
end LD8_MXILINX_ram_256bytes;

architecture BEHAVIORAL of LD8_MXILINX_ram_256bytes is
   attribute BOX_TYPE   : string ;
   component LD
      generic( INIT : bit :=  '0');
      port ( D : in    std_logic; 
             G : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of LD : component is "BLACK_BOX";
   
begin
   I_Q0 : LD
      port map (D=>D(0),
                G=>G,
                Q=>Q(0));
   
   I_Q1 : LD
      port map (D=>D(1),
                G=>G,
                Q=>Q(1));
   
   I_Q2 : LD
      port map (D=>D(2),
                G=>G,
                Q=>Q(2));
   
   I_Q3 : LD
      port map (D=>D(3),
                G=>G,
                Q=>Q(3));
   
   I_Q4 : LD
      port map (D=>D(4),
                G=>G,
                Q=>Q(4));
   
   I_Q5 : LD
      port map (D=>D(5),
                G=>G,
                Q=>Q(5));
   
   I_Q6 : LD
      port map (D=>D(6),
                G=>G,
                Q=>Q(6));
   
   I_Q7 : LD
      port map (D=>D(7),
                G=>G,
                Q=>Q(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ram_256bytes is
   port ( a      : in    std_logic_vector (7 downto 0); 
          a_w    : in    std_logic; 
          i      : in    std_logic_vector (7 downto 0); 
          i_r    : in    std_logic; 
          i_w    : in    std_logic; 
          i_wclk : in    std_logic; 
          a_o    : out   std_logic_vector (7 downto 0); 
          o      : out   std_logic_vector (7 downto 0));
end ram_256bytes;

architecture BEHAVIORAL of ram_256bytes is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   component LD8_MXILINX_ram_256bytes
      port ( D : in    std_logic_vector (7 downto 0); 
             G : in    std_logic; 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_15 : label is "XLXI_15_103";
begin
   XLXI_15 : LD8_MXILINX_ram_256bytes
      port map (D(7 downto 0)=>a(7 downto 0),
                G=>a_w,
                Q(7 downto 0)=>a_o(7 downto 0));
   
   XLXI_42 : INV
      port map (I=>i_r,
                O=>open);
   
end BEHAVIORAL;


