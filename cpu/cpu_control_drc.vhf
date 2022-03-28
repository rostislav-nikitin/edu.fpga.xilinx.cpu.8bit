--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cpu_control_drc.vhf
-- /___/   /\     Timestamp : 03/25/2022 21:30:23
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.3/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl cpu_control_drc.vhf -w /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/cpu_control.sch
--Design Name: cpu_control
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_cpu_control -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_cpu_control is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB4CE_HXILINX_cpu_control;

architecture Behavioral of CB4CE_HXILINX_cpu_control is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  
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

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;

----- CELL D3_8E_HXILINX_cpu_control -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_cpu_control is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;
    D4  : out std_logic;
    D5  : out std_logic;
    D6  : out std_logic;
    D7  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    E   : in std_logic
  );
end D3_8E_HXILINX_cpu_control;

architecture D3_8E_HXILINX_cpu_control_V of D3_8E_HXILINX_cpu_control is
  signal d_tmp : std_logic_vector(7 downto 0);
begin
  process (A0, A1, A2, E)
  variable sel   : std_logic_vector(2 downto 0);
  begin
    sel := A2&A1&A0;
    if( E = '0') then
    d_tmp <= "00000000";
    else
      case sel is
      when "000" => d_tmp <= "00000001";
      when "001" => d_tmp <= "00000010";
      when "010" => d_tmp <= "00000100";
      when "011" => d_tmp <= "00001000";
      when "100" => d_tmp <= "00010000";
      when "101" => d_tmp <= "00100000";
      when "110" => d_tmp <= "01000000";
      when "111" => d_tmp <= "10000000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D7 <= d_tmp(7);
    D6 <= d_tmp(6);
    D5 <= d_tmp(5);
    D4 <= d_tmp(4);
    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D3_8E_HXILINX_cpu_control_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity stepper_MUSER_cpu_control is
   port ( clk : in    std_logic; 
          s1  : out   std_logic; 
          s2  : out   std_logic; 
          s3  : out   std_logic; 
          s4  : out   std_logic; 
          s5  : out   std_logic; 
          s6  : out   std_logic);
end stepper_MUSER_cpu_control;

architecture BEHAVIORAL of stepper_MUSER_cpu_control is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_14 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CB4CE_HXILINX_cpu_control
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component D3_8E_HXILINX_cpu_control
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_24 : label is "XLXI_24_0";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_1";
begin
   XLXI_21 : VCC
      port map (P=>XLXN_14);
   
   XLXI_24 : CB4CE_HXILINX_cpu_control
      port map (C=>XLXN_23,
                CE=>XLXN_14,
                CLR=>XLXN_22,
                CEO=>open,
                Q0=>XLXN_18,
                Q1=>XLXN_19,
                Q2=>XLXN_20,
                Q3=>open,
                TC=>open);
   
   XLXI_25 : D3_8E_HXILINX_cpu_control
      port map (A0=>XLXN_18,
                A1=>XLXN_19,
                A2=>XLXN_20,
                E=>XLXN_14,
                D0=>s1,
                D1=>s2,
                D2=>s3,
                D3=>s4,
                D4=>s5,
                D5=>s6,
                D6=>XLXN_22,
                D7=>open);
   
   XLXI_26 : INV
      port map (I=>clk,
                O=>XLXN_23);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu_control is
   port ( clk   : in    std_logic; 
          clkr  : in    std_logic; 
          clkw  : in    std_logic; 
          ir    : in    std_logic_vector (7 downto 0); 
          bus1  : out   std_logic; 
          iar_r : out   std_logic; 
          iar_w : out   std_logic; 
          ir_s  : out   std_logic; 
          mar_s : out   std_logic; 
          ram_r : out   std_logic);
end cpu_control;

architecture BEHAVIORAL of cpu_control is
   attribute BOX_TYPE   : string ;
   signal XLXN_41 : std_logic;
   signal XLXN_42 : std_logic;
   signal XLXN_43 : std_logic;
   signal XLXN_44 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_46 : std_logic;
   component stepper_MUSER_cpu_control
      port ( clk : in    std_logic; 
             s1  : out   std_logic; 
             s2  : out   std_logic; 
             s3  : out   std_logic; 
             s4  : out   std_logic; 
             s5  : out   std_logic; 
             s6  : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : stepper_MUSER_cpu_control
      port map (clk=>clk,
                s1=>XLXN_41,
                s2=>XLXN_42,
                s3=>XLXN_43,
                s4=>XLXN_44,
                s5=>XLXN_45,
                s6=>XLXN_46);
   
   XLXI_2 : AND2
      port map (I0=>clkr,
                I1=>XLXN_41,
                O=>iar_r);
   
   XLXI_3 : AND2
      port map (I0=>clkr,
                I1=>XLXN_42,
                O=>bus1);
   
   XLXI_4 : AND2
      port map (I0=>clkr,
                I1=>XLXN_43,
                O=>ram_r);
   
   XLXI_5 : AND2
      port map (I0=>XLXN_44,
                I1=>clkw,
                O=>iar_w);
   
   XLXI_6 : AND2
      port map (I0=>XLXN_45,
                I1=>clkw,
                O=>ir_s);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_46,
                I1=>clkw,
                O=>mar_s);
   
   XLXI_8 : GND
      port map (G=>open);
   
   XLXI_9 : GND
      port map (G=>open);
   
end BEHAVIORAL;


