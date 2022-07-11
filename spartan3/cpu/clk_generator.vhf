--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : clk_generator.vhf
-- /___/   /\     Timestamp : 06/23/2022 00:13:04
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

----- CELL CB2CE_HXILINX_clk_generator -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_clk_generator is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_clk_generator;

architecture Behavioral of CB2CE_HXILINX_clk_generator is

  signal COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q1 <= COUNT(1);
Q0 <= COUNT(0);

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
   signal clkc_old   : std_logic;
   signal clkr_old   : std_logic;
   signal clkw_old   : std_logic;
   signal XLXN_1     : std_logic;
   signal XLXN_9     : std_logic;
   signal XLXN_10    : std_logic;
   signal XLXN_13    : std_logic;
   signal clkc_DUMMY : std_logic;
   component FJKC_HXILINX_clk_generator
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
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
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CB2CE_HXILINX_clk_generator
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_58";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_59";
begin
   clkc <= clkc_DUMMY;
   XLXI_4 : FJKC_HXILINX_clk_generator
      port map (C=>XLXN_9,
                CLR=>rst,
                J=>XLXN_1,
                K=>XLXN_1,
                Q=>clkc_old);
   
   XLXI_9 : OR2
      port map (I0=>clkc_old,
                I1=>clk,
                O=>clkr_old);
   
   XLXI_10 : AND2B1
      port map (I0=>clk,
                I1=>clkc_old,
                O=>clkw_old);
   
   XLXI_12 : INV
      port map (I=>clk,
                O=>XLXN_9);
   
   XLXI_13 : VCC
      port map (P=>XLXN_1);
   
   XLXI_14 : CB2CE_HXILINX_clk_generator
      port map (C=>clk,
                CE=>XLXN_10,
                CLR=>rst,
                CEO=>open,
                Q0=>XLXN_13,
                Q1=>clkc_DUMMY,
                TC=>open);
   
   XLXI_15 : VCC
      port map (P=>XLXN_10);
   
   XLXI_16 : OR2
      port map (I0=>clkc_DUMMY,
                I1=>XLXN_13,
                O=>clkr);
   
   XLXI_17 : AND2B1
      port map (I0=>XLXN_13,
                I1=>clkc_DUMMY,
                O=>clkw);
   
end BEHAVIORAL;


