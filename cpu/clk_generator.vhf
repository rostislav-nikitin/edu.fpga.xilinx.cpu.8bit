--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : clk_generator.vhf
-- /___/   /\     Timestamp : 04/20/2022 01:33:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/clk_generator.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/clk_generator.sch
--Design Name: clk_generator
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FJKC_HXILINX_clk_generator -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_clk_generator is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    J   : in STD_LOGIC;
    K   : in STD_LOGIC
    );
end FJKC_HXILINX_clk_generator;

architecture Behavioral of FJKC_HXILINX_clk_generator is
signal q_tmp : std_logic := TO_X01(INIT);

begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(J='0') then
      if(K='1') then
      q_tmp <= '0';
    end if;
    else
      if(K='0') then
      q_tmp <= '1';
      else
      q_tmp <= not q_tmp;
      end if;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity clk_generator is
   port ( clk  : in    std_logic; 
          rst  : in    std_logic; 
          clkc : out   std_logic; 
          clkr : out   std_logic; 
          clkw : out   std_logic);
end clk_generator;

architecture BEHAVIORAL of clk_generator is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1     : std_logic;
   signal XLXN_9     : std_logic;
   signal clkc_DUMMY : std_logic;
   component FJKC_HXILINX_clk_generator
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_41";
begin
   clkc <= clkc_DUMMY;
   XLXI_4 : FJKC_HXILINX_clk_generator
      port map (C=>XLXN_9,
                CLR=>rst,
                J=>XLXN_1,
                K=>XLXN_1,
                Q=>clkc_DUMMY);
   
   XLXI_6 : PULLUP
      port map (O=>XLXN_1);
   
   XLXI_9 : OR2
      port map (I0=>clkc_DUMMY,
                I1=>clk,
                O=>clkr);
   
   XLXI_10 : AND2B1
      port map (I0=>clk,
                I1=>clkc_DUMMY,
                O=>clkw);
   
   XLXI_12 : INV
      port map (I=>clk,
                O=>XLXN_9);
   
end BEHAVIORAL;


