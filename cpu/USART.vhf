--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : USART.vhf
-- /___/   /\     Timestamp : 06/21/2022 02:07:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/USART.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/USART.sch
--Design Name: USART
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity USART is
   port ( clk  : in    std_logic; 
          data : in    std_logic_vector (7 downto 0); 
          rst  : in    std_logic; 
          tx   : out   std_logic);
end USART;

architecture BEHAVIORAL of USART is
   component usart_tramnsmitter
      port ( clk  : in    std_logic; 
             rst  : in    std_logic; 
             data : in    std_logic_vector (7 downto 0); 
             tx   : out   std_logic; 
             done : out   std_logic);
   end component;
   
begin
   XLXI_2 : usart_tramnsmitter
      port map (clk=>clk,
                data(7 downto 0)=>data(7 downto 0),
                rst=>rst,
                done=>open,
                tx=>tx);
   
end BEHAVIORAL;


