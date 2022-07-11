--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : test_buf.vhf
-- /___/   /\     Timestamp : 04/07/2022 01:00:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/test_buf.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/test_buf.sch
--Design Name: test_buf
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_test_buf -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_test_buf is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_test_buf;

architecture M2_1_HXILINX_test_buf_V of M2_1_HXILINX_test_buf is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_test_buf_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity test_buf is
   port ( in1 : in    std_logic; 
          in2 : in    std_logic; 
          sel : in    std_logic; 
          o1  : out   std_logic; 
          o2  : out   std_logic);
end test_buf;

architecture BEHAVIORAL of test_buf is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_15 : std_logic;
   signal XLXN_26 : std_logic;
   component M2_1_HXILINX_test_buf
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component LD
      generic( INIT : bit :=  '0');
      port ( D : in    std_logic; 
             G : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of LD : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_21 : label is "XLXI_21_0";
begin
   XLXI_21 : M2_1_HXILINX_test_buf
      port map (D0=>in1,
                D1=>in2,
                S0=>sel,
                O=>XLXN_15);
   
   XLXI_23 : LD
      port map (D=>XLXN_15,
                G=>XLXN_26,
                Q=>o2);
   
   XLXI_24 : LD
      port map (D=>XLXN_15,
                G=>XLXN_26,
                Q=>o1);
   
   XLXI_25 : VCC
      port map (P=>XLXN_26);
   
end BEHAVIORAL;


