--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : pass_through_or_one.vhf
-- /___/   /\     Timestamp : 04/08/2022 22:04:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/pass_through_or_one.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/pass_through_or_one.sch
--Design Name: pass_through_or_one
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_pass_through_or_one -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_pass_through_or_one is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_pass_through_or_one;

architecture M2_1_HXILINX_pass_through_or_one_V of M2_1_HXILINX_pass_through_or_one is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_pass_through_or_one_V;

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
   attribute HU_SET     : string ;
   signal const_one  : std_logic;
   signal const_zero : std_logic;
   component M2_1_HXILINX_pass_through_or_one
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_33";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_34";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_35";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_36";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_37";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_38";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_39";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_40";
begin
   const_one <= '1';
   const_zero <= '0';
   XLXI_1 : M2_1_HXILINX_pass_through_or_one
      port map (D0=>i(1),
                D1=>const_zero,
                S0=>one,
                O=>o(1));
   
   XLXI_3 : M2_1_HXILINX_pass_through_or_one
      port map (D0=>i(2),
                D1=>const_zero,
                S0=>one,
                O=>o(2));
   
   XLXI_4 : M2_1_HXILINX_pass_through_or_one
      port map (D0=>i(3),
                D1=>const_zero,
                S0=>one,
                O=>o(3));
   
   XLXI_5 : M2_1_HXILINX_pass_through_or_one
      port map (D0=>i(4),
                D1=>const_zero,
                S0=>one,
                O=>o(4));
   
   XLXI_6 : M2_1_HXILINX_pass_through_or_one
      port map (D0=>i(5),
                D1=>const_zero,
                S0=>one,
                O=>o(5));
   
   XLXI_7 : M2_1_HXILINX_pass_through_or_one
      port map (D0=>i(6),
                D1=>const_zero,
                S0=>one,
                O=>o(6));
   
   XLXI_8 : M2_1_HXILINX_pass_through_or_one
      port map (D0=>i(7),
                D1=>const_zero,
                S0=>one,
                O=>o(7));
   
   XLXI_13 : M2_1_HXILINX_pass_through_or_one
      port map (D0=>i(0),
                D1=>const_one,
                S0=>one,
                O=>o(0));
   
end BEHAVIORAL;


