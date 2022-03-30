--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : buffer_8bit.vhf
-- /___/   /\     Timestamp : 03/30/2022 23:59:50
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
----- CELL OBUFT8_HXILINX_buffer_8bit -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OBUFT8_HXILINX_buffer_8bit is
port(
    O  : out std_logic_vector(7 downto 0);

    I  : in std_logic_vector(7 downto 0);
    T  : in std_logic
  );
end OBUFT8_HXILINX_buffer_8bit;

architecture OBUFT8_HXILINX_buffer_8bit_V of OBUFT8_HXILINX_buffer_8bit is
begin
  process (I, T)
  begin
    if (T='0') then
      O  <= I;
    else
      O  <= (others => 'Z');
  end if;
 end process;

end OBUFT8_HXILINX_buffer_8bit_V;

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
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_2 : std_logic;
   component OBUFT8_HXILINX_buffer_8bit
      port ( I : in    std_logic_vector (7 downto 0); 
             T : in    std_logic; 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_54 : label is "XLXI_54_36";
begin
   XLXI_54 : OBUFT8_HXILINX_buffer_8bit
      port map (I(7 downto 0)=>i(7 downto 0),
                T=>XLXN_2,
                O(7 downto 0)=>o(7 downto 0));
   
   XLXI_55 : INV
      port map (I=>e,
                O=>XLXN_2);
   
end BEHAVIORAL;


