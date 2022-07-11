--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cpu_freq_divider_1Inst.vhf
-- /___/   /\     Timestamp : 06/28/2022 04:13:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/cpu_freq_divider_1Inst.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/cpu_freq_divider_1Inst.sch
--Design Name: cpu_freq_divider_1Inst
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB16CE_HXILINX_cpu_freq_divider_1Inst -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_cpu_freq_divider_1Inst is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_cpu_freq_divider_1Inst;

architecture Behavioral of CB16CE_HXILINX_cpu_freq_divider_1Inst is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');
  
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

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;

----- CELL FJKC_HXILINX_cpu_freq_divider_1Inst -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_cpu_freq_divider_1Inst is
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
end FJKC_HXILINX_cpu_freq_divider_1Inst;

architecture Behavioral of FJKC_HXILINX_cpu_freq_divider_1Inst is
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

entity cpu_freq_divider_base_MUSER_cpu_freq_divider_1Inst is
   port ( in_clk       : in    std_logic; 
          in_clr       : in    std_logic; 
          out_clk_high : out   std_logic_vector (15 downto 0); 
          out_clk_low  : out   std_logic_vector (15 downto 0));
end cpu_freq_divider_base_MUSER_cpu_freq_divider_1Inst;

architecture BEHAVIORAL of cpu_freq_divider_base_MUSER_cpu_freq_divider_1Inst is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_3       : std_logic;
   signal XLXN_4       : std_logic;
   component CB16CE_HXILINX_cpu_freq_divider_1Inst
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_204";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_205";
begin
   XLXI_1 : CB16CE_HXILINX_cpu_freq_divider_1Inst
      port map (C=>in_clk,
                CE=>XLXN_4,
                CLR=>in_clr,
                CEO=>XLXN_3,
                Q(15 downto 0)=>out_clk_low(15 downto 0),
                TC=>open);
   
   XLXI_2 : CB16CE_HXILINX_cpu_freq_divider_1Inst
      port map (C=>in_clk,
                CE=>XLXN_3,
                CLR=>in_clr,
                CEO=>open,
                Q(15 downto 0)=>out_clk_high(15 downto 0),
                TC=>open);
   
   XLXI_3 : VCC
      port map (P=>XLXN_4);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_freq_divider_1Inst is
   port ( in_clk  : in    std_logic; 
          in_clr  : in    std_logic; 
          out_clk : out   std_logic);
end cpu_freq_divider_1Inst;

architecture BEHAVIORAL of cpu_freq_divider_1Inst is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal half_period_tick : std_logic;
   signal high             : std_logic_vector (15 downto 0);
   signal XLXN_37          : std_logic;
   signal XLXN_38          : std_logic;
   component cpu_freq_divider_base_MUSER_cpu_freq_divider_1Inst
      port ( in_clk       : in    std_logic; 
             in_clr       : in    std_logic; 
             out_clk_high : out   std_logic_vector (15 downto 0); 
             out_clk_low  : out   std_logic_vector (15 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FJKC_HXILINX_cpu_freq_divider_1Inst
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_15 : label is "XLXI_15_206";
begin
   XLXI_1 : cpu_freq_divider_base_MUSER_cpu_freq_divider_1Inst
      port map (in_clk=>in_clk,
                in_clr=>XLXN_37,
                out_clk_high(15 downto 0)=>high(15 downto 0),
                out_clk_low=>open);
   
   XLXI_14 : OR2
      port map (I0=>half_period_tick,
                I1=>in_clr,
                O=>XLXN_37);
   
   XLXI_15 : FJKC_HXILINX_cpu_freq_divider_1Inst
      port map (C=>half_period_tick,
                CLR=>in_clr,
                J=>XLXN_38,
                K=>XLXN_38,
                Q=>out_clk);
   
   XLXI_16 : VCC
      port map (P=>XLXN_38);
   
   XLXI_23 : BUF
      port map (I=>high(3),
                O=>half_period_tick);
   
end BEHAVIORAL;


