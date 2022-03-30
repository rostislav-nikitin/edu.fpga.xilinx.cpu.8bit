--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : ram_256bytes.vhf
-- /___/   /\     Timestamp : 03/30/2022 23:59:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/ram_256bytes.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/ram_256bytes.sch
--Design Name: ram_256bytes
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL LD8_HXILINX_ram_256bytes -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LD8_HXILINX_ram_256bytes is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    G   : in STD_LOGIC
    );
end LD8_HXILINX_ram_256bytes;

architecture Behavioral of LD8_HXILINX_ram_256bytes is

begin

process(D, G)
begin
  if (G = '1') then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL OBUFT8_HXILINX_ram_256bytes -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OBUFT8_HXILINX_ram_256bytes is
port(
    O  : out std_logic_vector(7 downto 0);

    I  : in std_logic_vector(7 downto 0);
    T  : in std_logic
  );
end OBUFT8_HXILINX_ram_256bytes;

architecture OBUFT8_HXILINX_ram_256bytes_V of OBUFT8_HXILINX_ram_256bytes is
begin
  process (I, T)
  begin
    if (T='0') then
      O  <= I;
    else
      O  <= (others => 'Z');
  end if;
 end process;

end OBUFT8_HXILINX_ram_256bytes_V;

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
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal ro        : std_logic_vector (7 downto 0);
   signal XLXN_71   : std_logic;
   signal a_o_DUMMY : std_logic_vector (7 downto 0);
   component RAM256X1S
      -- synopsys translate_off
      generic( INIT : bit_vector :=  
            
            x"0000000000000000000000000000000000000000000000000000000000000000");
      -- synopsys translate_on
      port ( WE   : in    std_logic; 
             WCLK : in    std_logic; 
             D    : in    std_logic; 
             O    : out   std_logic; 
             A    : in    std_logic_vector (7 downto 0));
   end component;
   attribute INIT of RAM256X1S : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute BOX_TYPE of RAM256X1S : component is "BLACK_BOX";
   
   component LD8_HXILINX_ram_256bytes
      port ( D : in    std_logic_vector (7 downto 0); 
             G : in    std_logic; 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component OBUFT8_HXILINX_ram_256bytes
      port ( I : in    std_logic_vector (7 downto 0); 
             T : in    std_logic; 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute INIT of XLXI_1 : label is 
         "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_39";
   attribute INIT of XLXI_20 : label is 
         "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
   attribute INIT of XLXI_21 : label is 
         "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC";
   attribute INIT of XLXI_22 : label is 
         "F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0";
   attribute INIT of XLXI_23 : label is 
         "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF";
   attribute HU_SET of XLXI_41 : label is "XLXI_41_40";
begin
   a_o(7 downto 0) <= a_o_DUMMY(7 downto 0);
   XLXI_1 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(0),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>ro(0));
   
   XLXI_15 : LD8_HXILINX_ram_256bytes
      port map (D(7 downto 0)=>a(7 downto 0),
                G=>a_w,
                Q(7 downto 0)=>a_o_DUMMY(7 downto 0));
   
   XLXI_17 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"0000000000000000000000000000000000000000000000000000000000000000")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(1),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>ro(1));
   
   XLXI_18 : RAM256X1S
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(2),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>ro(2));
   
   XLXI_19 : RAM256X1S
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(3),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>ro(3));
   
   XLXI_20 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(4),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>ro(4));
   
   XLXI_21 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(5),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>ro(5));
   
   XLXI_22 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(6),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>ro(6));
   
   XLXI_23 : RAM256X1S
   -- synopsys translate_off
   generic map( INIT => 
         x"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(7),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>ro(7));
   
   XLXI_41 : OBUFT8_HXILINX_ram_256bytes
      port map (I(7 downto 0)=>ro(7 downto 0),
                T=>XLXN_71,
                O(7 downto 0)=>o(7 downto 0));
   
   XLXI_42 : INV
      port map (I=>i_r,
                O=>XLXN_71);
   
end BEHAVIORAL;


