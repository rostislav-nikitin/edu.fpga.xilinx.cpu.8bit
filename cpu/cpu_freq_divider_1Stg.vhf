--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cpu_freq_divider_1Stg.vhf
-- /___/   /\     Timestamp : 06/09/2022 00:44:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_freq_divider_1Stg.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_freq_divider_1Stg.sch
--Design Name: cpu_freq_divider_1Stg
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB16CE_HXILINX_cpu_freq_divider_1Stg -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_cpu_freq_divider_1Stg is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_cpu_freq_divider_1Stg;

architecture Behavioral of CB16CE_HXILINX_cpu_freq_divider_1Stg is

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

----- CELL FJKC_HXILINX_cpu_freq_divider_1Stg -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_cpu_freq_divider_1Stg is
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
end FJKC_HXILINX_cpu_freq_divider_1Stg;

architecture Behavioral of FJKC_HXILINX_cpu_freq_divider_1Stg is
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

----- CELL AND6_HXILINX_cpu_freq_divider_1Stg -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND6_HXILINX_cpu_freq_divider_1Stg is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end AND6_HXILINX_cpu_freq_divider_1Stg;

architecture AND6_HXILINX_cpu_freq_divider_1Stg_V of AND6_HXILINX_cpu_freq_divider_1Stg is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5;
end AND6_HXILINX_cpu_freq_divider_1Stg_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_freq_divider_base_MUSER_cpu_freq_divider_1Stg is
   port ( in_clk       : in    std_logic; 
          in_clr       : in    std_logic; 
          out_clk_high : out   std_logic_vector (15 downto 0); 
          out_clk_low  : out   std_logic_vector (15 downto 0));
end cpu_freq_divider_base_MUSER_cpu_freq_divider_1Stg;

architecture BEHAVIORAL of cpu_freq_divider_base_MUSER_cpu_freq_divider_1Stg is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_3       : std_logic;
   signal XLXN_4       : std_logic;
   component CB16CE_HXILINX_cpu_freq_divider_1Stg
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_116";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_117";
begin
   XLXI_1 : CB16CE_HXILINX_cpu_freq_divider_1Stg
      port map (C=>in_clk,
                CE=>XLXN_4,
                CLR=>in_clr,
                CEO=>XLXN_3,
                Q(15 downto 0)=>out_clk_low(15 downto 0),
                TC=>open);
   
   XLXI_2 : CB16CE_HXILINX_cpu_freq_divider_1Stg
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

entity cpu_freq_divider_1Stg is
   port ( in_clk  : in    std_logic; 
          in_clr  : in    std_logic; 
          out_clk : out   std_logic);
end cpu_freq_divider_1Stg;

architecture BEHAVIORAL of cpu_freq_divider_1Stg is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal half_period_tick : std_logic;
   signal high             : std_logic_vector (15 downto 0);
   signal low              : std_logic_vector (15 downto 0);
   signal XLXN_3           : std_logic;
   signal XLXN_4           : std_logic;
   signal XLXN_5           : std_logic;
   signal XLXN_6           : std_logic;
   signal XLXN_7           : std_logic;
   signal XLXN_10          : std_logic;
   signal XLXN_26          : std_logic;
   signal XLXN_27          : std_logic;
   signal XLXN_29          : std_logic;
   signal XLXN_30          : std_logic;
   signal XLXN_31          : std_logic;
   signal XLXN_34          : std_logic;
   signal XLXN_35          : std_logic;
   signal XLXN_37          : std_logic;
   signal XLXN_38          : std_logic;
   signal XLXN_43          : std_logic;
   component cpu_freq_divider_base_MUSER_cpu_freq_divider_1Stg
      port ( in_clk       : in    std_logic; 
             in_clr       : in    std_logic; 
             out_clk_high : out   std_logic_vector (15 downto 0); 
             out_clk_low  : out   std_logic_vector (15 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FJKC_HXILINX_cpu_freq_divider_1Stg
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
   
   component AND6_HXILINX_cpu_freq_divider_1Stg
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_18 : label is "XLXI_18_118";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_119";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_120";
begin
   XLXI_1 : cpu_freq_divider_base_MUSER_cpu_freq_divider_1Stg
      port map (in_clk=>in_clk,
                in_clr=>XLXN_37,
                out_clk_high(15 downto 0)=>high(15 downto 0),
                out_clk_low(15 downto 0)=>low(15 downto 0));
   
   XLXI_2 : BUF
      port map (I=>low(11),
                O=>XLXN_3);
   
   XLXI_3 : BUF
      port map (I=>low(10),
                O=>XLXN_4);
   
   XLXI_4 : BUF
      port map (I=>low(9),
                O=>XLXN_5);
   
   XLXI_5 : BUF
      port map (I=>low(8),
                O=>XLXN_6);
   
   XLXI_6 : BUF
      port map (I=>low(3),
                O=>XLXN_7);
   
   XLXI_8 : BUF
      port map (I=>high(1),
                O=>XLXN_10);
   
   XLXI_9 : BUF
      port map (I=>high(2),
                O=>XLXN_26);
   
   XLXI_10 : BUF
      port map (I=>high(3),
                O=>XLXN_27);
   
   XLXI_11 : BUF
      port map (I=>high(4),
                O=>XLXN_29);
   
   XLXI_12 : BUF
      port map (I=>high(5),
                O=>XLXN_30);
   
   XLXI_13 : BUF
      port map (I=>high(7),
                O=>XLXN_31);
   
   XLXI_16 : AND2
      port map (I0=>XLXN_35,
                I1=>XLXN_34,
                O=>half_period_tick);
   
   XLXI_17 : OR2
      port map (I0=>half_period_tick,
                I1=>in_clr,
                O=>XLXN_37);
   
   XLXI_18 : FJKC_HXILINX_cpu_freq_divider_1Stg
      port map (C=>half_period_tick,
                CLR=>in_clr,
                J=>XLXN_38,
                K=>XLXN_38,
                Q=>out_clk);
   
   XLXI_19 : VCC
      port map (P=>XLXN_38);
   
   XLXI_20 : BUF
      port map (I=>low(15),
                O=>XLXN_43);
   
   XLXI_21 : AND6_HXILINX_cpu_freq_divider_1Stg
      port map (I0=>XLXN_7,
                I1=>XLXN_6,
                I2=>XLXN_5,
                I3=>XLXN_4,
                I4=>XLXN_3,
                I5=>XLXN_43,
                O=>XLXN_34);
   
   XLXI_22 : AND6_HXILINX_cpu_freq_divider_1Stg
      port map (I0=>XLXN_31,
                I1=>XLXN_30,
                I2=>XLXN_29,
                I3=>XLXN_27,
                I4=>XLXN_26,
                I5=>XLXN_10,
                O=>XLXN_35);
   
end BEHAVIORAL;


