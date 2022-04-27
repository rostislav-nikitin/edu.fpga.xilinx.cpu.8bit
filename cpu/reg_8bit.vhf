--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : reg_8bit.vhf
-- /___/   /\     Timestamp : 04/27/2022 09:35:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/reg_8bit.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/reg_8bit.sch
--Design Name: reg_8bit
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL LD8CE_HXILINX_reg_8bit -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LD8CE_HXILINX_reg_8bit is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    G   : in STD_LOGIC;
    GE  : in STD_LOGIC
    );
end LD8CE_HXILINX_reg_8bit;

architecture Behavioral of LD8CE_HXILINX_reg_8bit is

begin

process(CLR, D, G, GE)
begin
  if (CLR= '1') then
      Q <= (others => '0');
  elsif ( (GE= '1') and (G = '1') ) then
      Q <= D;
  end if;
end process;


end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity reg_8bit is
   port ( clr : in    std_logic; 
          d   : in    std_logic_vector (7 downto 0); 
          r   : in    std_logic; 
          w   : in    std_logic; 
          o   : out   std_logic_vector (7 downto 0));
end reg_8bit;

architecture BEHAVIORAL of reg_8bit is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_2 : std_logic;
   component LD8CE_HXILINX_reg_8bit
      port ( CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             G   : in    std_logic; 
             GE  : in    std_logic; 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_0";
begin
   XLXI_5 : LD8CE_HXILINX_reg_8bit
      port map (CLR=>clr,
                D(7 downto 0)=>d(7 downto 0),
                G=>w,
                GE=>XLXN_2,
                Q(7 downto 0)=>o(7 downto 0));
   
   XLXI_6 : VCC
      port map (P=>XLXN_2);
   
end BEHAVIORAL;


