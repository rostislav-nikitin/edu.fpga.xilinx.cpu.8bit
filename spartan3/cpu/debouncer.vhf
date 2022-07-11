--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : debouncer.vhf
-- /___/   /\     Timestamp : 06/28/2022 04:13:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/debouncer.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/spartan3/cpu/debouncer.sch
--Design Name: debouncer
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB16CE_HXILINX_debouncer -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_debouncer is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_debouncer;

architecture Behavioral of CB16CE_HXILINX_debouncer is

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


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity debouncer is
   port ( in_clk     : in    std_logic; 
          in_signal  : in    std_logic; 
          out_signal : out   std_logic);
end debouncer;

architecture BEHAVIORAL of debouncer is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal db2        : std_logic_vector (15 downto 0);
   signal XLXN_3     : std_logic;
   signal XLXN_4     : std_logic;
   component CB16CE_HXILINX_debouncer
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
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_207";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_208";
begin
   XLXI_1 : CB16CE_HXILINX_debouncer
      port map (C=>in_clk,
                CE=>XLXN_4,
                CLR=>in_signal,
                CEO=>XLXN_3,
                Q=>open,
                TC=>open);
   
   XLXI_2 : CB16CE_HXILINX_debouncer
      port map (C=>in_clk,
                CE=>XLXN_3,
                CLR=>in_signal,
                CEO=>open,
                Q(15 downto 0)=>db2(15 downto 0),
                TC=>open);
   
   XLXI_4 : VCC
      port map (P=>XLXN_4);
   
   XLXI_5 : BUF
      port map (I=>db2(7),
                O=>out_signal);
   
end BEHAVIORAL;


