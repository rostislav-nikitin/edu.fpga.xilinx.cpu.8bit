--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : stepper_drc.vhf
-- /___/   /\     Timestamp : 03/25/2022 05:54:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.3/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl stepper_drc.vhf -w /home/s0lid/Sources/edu.fpga.xilinx/led_control/led_control/stepper.sch
--Design Name: stepper
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL D3_8E_HXILINX_stepper -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_stepper is
  
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
end D3_8E_HXILINX_stepper;

architecture D3_8E_HXILINX_stepper_V of D3_8E_HXILINX_stepper is
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

end D3_8E_HXILINX_stepper_V;
----- CELL CB8CE_HXILINX_stepper -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB8CE_HXILINX_stepper is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB8CE_HXILINX_stepper;

architecture Behavioral of CB8CE_HXILINX_stepper is

  signal COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '1');
  
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


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity stepper is
   port ( clk : in    std_logic; 
          s1  : out   std_logic; 
          s2  : out   std_logic; 
          s3  : out   std_logic; 
          s4  : out   std_logic; 
          s5  : out   std_logic; 
          s6  : out   std_logic);
end stepper;

architecture BEHAVIORAL of stepper is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal q      : std_logic_vector (7 downto 0);
   signal XLXN_5 : std_logic;
   signal XLXN_7 : std_logic;
   component CB8CE_HXILINX_stepper
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (7 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component D3_8E_HXILINX_stepper
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
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_9 : label is "XLXI_9_0";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_1";
begin
   XLXI_9 : CB8CE_HXILINX_stepper
      port map (C=>clk,
                CE=>XLXN_7,
                CLR=>XLXN_5,
                CEO=>open,
                Q(7 downto 0)=>q(7 downto 0),
                TC=>open);
   
   XLXI_12 : D3_8E_HXILINX_stepper
      port map (A0=>q(0),
                A1=>q(1),
                A2=>q(2),
                E=>XLXN_7,
                D0=>s1,
                D1=>s2,
                D2=>s3,
                D3=>s4,
                D4=>s5,
                D5=>s6,
                D6=>XLXN_5,
                D7=>open);
   
   XLXI_13 : PULLUP
      port map (O=>XLXN_7);
   
end BEHAVIORAL;


