--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cpu.vhf
-- /___/   /\     Timestamp : 04/01/2022 00:03:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu.sch
--Design Name: cpu
--Device: aspartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_cpu -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_cpu is
  
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
end CB4CE_HXILINX_cpu;

architecture Behavioral of CB4CE_HXILINX_cpu is

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

----- CELL LD8_HXILINX_cpu -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LD8_HXILINX_cpu is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    G   : in STD_LOGIC
    );
end LD8_HXILINX_cpu;

architecture Behavioral of LD8_HXILINX_cpu is

begin

process(D, G)
begin
  if (G = '1') then
      Q <= D;
  end if;
end process;


end Behavioral;

----- CELL ADD8_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD8_HXILINX_cpu is
port(
    CO  : out std_logic;
    OFL : out std_logic;
    S   : out std_logic_vector(7 downto 0);
    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0);
    CI  : in std_logic
  );
end ADD8_HXILINX_cpu;

architecture ADD8_HXILINX_cpu_V of ADD8_HXILINX_cpu is
  signal adder_tmp: std_logic_vector(8 downto 0);
begin
  adder_tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),9);
  S  <= adder_tmp(7 downto 0);
  CO <= adder_tmp(8);
  OFL <=  ( A(7) and B(7) and (not adder_tmp(7)) ) or ( (not A(7)) and (not B(7)) and adder_tmp(7) );  
end ADD8_HXILINX_cpu_V;
----- CELL NOR8_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR8_HXILINX_cpu is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic;
    I7  : in std_logic
  );
end NOR8_HXILINX_cpu;

architecture NOR8_HXILINX_cpu_V of NOR8_HXILINX_cpu is
begin
  O <= not (I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7);
end NOR8_HXILINX_cpu_V;
----- CELL INV8_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity INV8_HXILINX_cpu is
port(
    O  : out std_logic_vector(7 downto 0);

    I  : in std_logic_vector(7 downto 0)
  );
end INV8_HXILINX_cpu;

architecture INV8_HXILINX_cpu_V of INV8_HXILINX_cpu is
begin
  O <= not I ;
end INV8_HXILINX_cpu_V;
----- CELL D3_8E_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_cpu is
  
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
end D3_8E_HXILINX_cpu;

architecture D3_8E_HXILINX_cpu_V of D3_8E_HXILINX_cpu is
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

end D3_8E_HXILINX_cpu_V;
----- CELL FJKC_HXILINX_cpu -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_cpu is
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
end FJKC_HXILINX_cpu;

architecture Behavioral of FJKC_HXILINX_cpu is
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

----- CELL D2_4E_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_cpu is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_cpu;

architecture D2_4E_HXILINX_cpu_V of D2_4E_HXILINX_cpu is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_cpu_V;
----- CELL OBUFT8_HXILINX_cpu -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OBUFT8_HXILINX_cpu is
port(
    O  : out std_logic_vector(7 downto 0);

    I  : in std_logic_vector(7 downto 0);
    T  : in std_logic
  );
end OBUFT8_HXILINX_cpu;

architecture OBUFT8_HXILINX_cpu_V of OBUFT8_HXILINX_cpu is
begin
  process (I, T)
  begin
    if (T='0') then
      O  <= I;
    else
      O  <= (others => 'Z');
  end if;
 end process;

end OBUFT8_HXILINX_cpu_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity buffer_8bit_MUSER_cpu is
   port ( e : in    std_logic; 
          i : in    std_logic_vector (7 downto 0); 
          o : out   std_logic_vector (7 downto 0));
end buffer_8bit_MUSER_cpu;

architecture BEHAVIORAL of buffer_8bit_MUSER_cpu is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_2 : std_logic;
   component OBUFT8_HXILINX_cpu
      port ( I : in    std_logic_vector (7 downto 0); 
             T : in    std_logic; 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_54 : label is "XLXI_54_0";
begin
   XLXI_54 : OBUFT8_HXILINX_cpu
      port map (I(7 downto 0)=>i(7 downto 0),
                T=>XLXN_2,
                O(7 downto 0)=>o(7 downto 0));
   
   XLXI_55 : INV
      port map (I=>e,
                O=>XLXN_2);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity reg_8bit_MUSER_cpu is
   port ( d : in    std_logic_vector (7 downto 0); 
          r : in    std_logic; 
          w : in    std_logic; 
          o : out   std_logic_vector (7 downto 0));
end reg_8bit_MUSER_cpu;

architecture BEHAVIORAL of reg_8bit_MUSER_cpu is
   attribute HU_SET     : string ;
   attribute INIT       : string ;
   signal XLXN_1 : std_logic_vector (7 downto 0);
   component LD8_HXILINX_cpu
      port ( D : in    std_logic_vector (7 downto 0); 
             G : in    std_logic; 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component buffer_8bit_MUSER_cpu
      port ( e : in    std_logic; 
             i : in    std_logic_vector (7 downto 0); 
             o : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute INIT of XLXI_2 : label is "00";
begin
   XLXI_2 : LD8_HXILINX_cpu
      port map (D(7 downto 0)=>d(7 downto 0),
                G=>w,
                Q(7 downto 0)=>XLXN_1(7 downto 0));
   
   XLXI_4 : buffer_8bit_MUSER_cpu
      port map (e=>r,
                i(7 downto 0)=>XLXN_1(7 downto 0),
                o(7 downto 0)=>o(7 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ram_256bytes_MUSER_cpu is
   port ( a      : in    std_logic_vector (7 downto 0); 
          a_w    : in    std_logic; 
          i      : in    std_logic_vector (7 downto 0); 
          i_r    : in    std_logic; 
          i_w    : in    std_logic; 
          i_wclk : in    std_logic; 
          a_o    : out   std_logic_vector (7 downto 0); 
          o      : out   std_logic_vector (7 downto 0));
end ram_256bytes_MUSER_cpu;

architecture BEHAVIORAL of ram_256bytes_MUSER_cpu is
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
   
   component LD8_HXILINX_cpu
      port ( D : in    std_logic_vector (7 downto 0); 
             G : in    std_logic; 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component OBUFT8_HXILINX_cpu
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
   attribute HU_SET of XLXI_15 : label is "XLXI_15_2";
   attribute INIT of XLXI_20 : label is 
         "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
   attribute INIT of XLXI_21 : label is 
         "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC";
   attribute INIT of XLXI_22 : label is 
         "F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0";
   attribute INIT of XLXI_23 : label is 
         "00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF";
   attribute HU_SET of XLXI_41 : label is "XLXI_41_3";
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
   
   XLXI_15 : LD8_HXILINX_cpu
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
         x"00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF")
   -- synopsys translate_on
      port map (A(7 downto 0)=>a_o_DUMMY(7 downto 0),
                D=>i(7),
                WCLK=>i_wclk,
                WE=>i_w,
                O=>ro(7));
   
   XLXI_41 : OBUFT8_HXILINX_cpu
      port map (I(7 downto 0)=>ro(7 downto 0),
                T=>XLXN_71,
                O(7 downto 0)=>o(7 downto 0));
   
   XLXI_42 : INV
      port map (I=>i_r,
                O=>XLXN_71);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity stepper_MUSER_cpu is
   port ( clk : in    std_logic; 
          s1  : out   std_logic; 
          s2  : out   std_logic; 
          s3  : out   std_logic; 
          s4  : out   std_logic; 
          s5  : out   std_logic; 
          s6  : out   std_logic);
end stepper_MUSER_cpu;

architecture BEHAVIORAL of stepper_MUSER_cpu is
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
   
   component CB4CE_HXILINX_cpu
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
   
   component D3_8E_HXILINX_cpu
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
   
   attribute HU_SET of XLXI_24 : label is "XLXI_24_4";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_5";
begin
   XLXI_21 : VCC
      port map (P=>XLXN_14);
   
   XLXI_24 : CB4CE_HXILINX_cpu
      port map (C=>XLXN_23,
                CE=>XLXN_14,
                CLR=>XLXN_22,
                CEO=>open,
                Q0=>XLXN_18,
                Q1=>XLXN_19,
                Q2=>XLXN_20,
                Q3=>open,
                TC=>open);
   
   XLXI_25 : D3_8E_HXILINX_cpu
      port map (A0=>XLXN_18,
                A1=>XLXN_19,
                A2=>XLXN_20,
                E=>XLXN_14,
                D0=>s6,
                D1=>s1,
                D2=>s2,
                D3=>s3,
                D4=>s4,
                D5=>s5,
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

entity cpu_control_MUSER_cpu is
   port ( clk        : in    std_logic; 
          clkr       : in    std_logic; 
          clkw       : in    std_logic; 
          ir         : in    std_logic_vector (7 downto 0); 
          acc_r      : out   std_logic; 
          acc_w      : out   std_logic; 
          alu        : out   std_logic; 
          alu_and    : out   std_logic; 
          alu_lshift : out   std_logic; 
          alu_not    : out   std_logic; 
          alu_op0    : out   std_logic; 
          alu_op1    : out   std_logic; 
          alu_op2    : out   std_logic; 
          alu_or     : out   std_logic; 
          alu_rshift : out   std_logic; 
          alu_sum    : out   std_logic; 
          alu_xor    : out   std_logic; 
          bus1       : out   std_logic; 
          ground     : out   std_logic; 
          iar_r      : out   std_logic; 
          iar_w      : out   std_logic; 
          ir_w       : out   std_logic; 
          ram_a_w    : out   std_logic; 
          ram_r      : out   std_logic; 
          ram_w      : out   std_logic; 
          ra_0       : out   std_logic; 
          ra_1       : out   std_logic; 
          ra_2       : out   std_logic; 
          ra_3       : out   std_logic; 
          rb_0       : out   std_logic; 
          rb_1       : out   std_logic; 
          rb_2       : out   std_logic; 
          rb_3       : out   std_logic; 
          r0_r       : out   std_logic; 
          r0_w       : out   std_logic; 
          r1_r       : out   std_logic; 
          r1_w       : out   std_logic; 
          r2_r       : out   std_logic; 
          r2_w       : out   std_logic; 
          r3_r       : out   std_logic; 
          r3_w       : out   std_logic; 
          s1         : out   std_logic; 
          s2         : out   std_logic; 
          s3         : out   std_logic; 
          s4         : out   std_logic; 
          s5         : out   std_logic; 
          s6         : out   std_logic; 
          temp_w     : out   std_logic);
end cpu_control_MUSER_cpu;

architecture BEHAVIORAL of cpu_control_MUSER_cpu is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal alu_binary       : std_logic;
   signal alu_binary_s4    : std_logic;
   signal alu_binary_s5    : std_logic;
   signal alu_s4           : std_logic;
   signal alu_s6           : std_logic;
   signal alu_unari        : std_logic;
   signal alu_unari_s4     : std_logic;
   signal flg_clf          : std_logic;
   signal jmp_ifjmp        : std_logic;
   signal jmp_jmp          : std_logic;
   signal jmp_jmpr         : std_logic;
   signal ls_jmp_flg       : std_logic;
   signal ls_ld            : std_logic;
   signal ls_ldc           : std_logic;
   signal ls_ldc_s4        : std_logic;
   signal ls_ldc_s5        : std_logic;
   signal ls_ldc_s6        : std_logic;
   signal ls_ldst_s4       : std_logic;
   signal ls_ld_s5         : std_logic;
   signal ls_st            : std_logic;
   signal ls_st_s5         : std_logic;
   signal raw_int          : std_logic;
   signal ra_int           : std_logic;
   signal ra0_r            : std_logic;
   signal ra0_w            : std_logic;
   signal ra1_r            : std_logic;
   signal ra1_w            : std_logic;
   signal ra2_r            : std_logic;
   signal ra2_w            : std_logic;
   signal ra3_r            : std_logic;
   signal ra3_w            : std_logic;
   signal rb_int           : std_logic;
   signal rb0_r            : std_logic;
   signal rb1_r            : std_logic;
   signal rb2_r            : std_logic;
   signal rb3_r            : std_logic;
   signal XLXN_4           : std_logic;
   signal XLXN_5           : std_logic;
   signal XLXN_7           : std_logic;
   signal XLXN_11          : std_logic;
   signal XLXN_12          : std_logic;
   signal XLXN_16          : std_logic;
   signal XLXN_22          : std_logic;
   signal XLXN_23          : std_logic;
   signal XLXN_30          : std_logic;
   signal XLXN_31          : std_logic;
   signal XLXN_32          : std_logic;
   signal XLXN_75          : std_logic;
   signal XLXN_83          : std_logic;
   signal XLXN_84          : std_logic;
   signal XLXN_99          : std_logic;
   signal XLXN_155         : std_logic;
   signal XLXN_156         : std_logic;
   signal XLXN_157         : std_logic;
   signal XLXN_158         : std_logic;
   signal XLXN_173         : std_logic;
   signal XLXN_435         : std_logic;
   signal XLXN_462         : std_logic;
   signal XLXN_811         : std_logic;
   signal XLXN_812         : std_logic;
   signal XLXN_813         : std_logic;
   signal XLXN_814         : std_logic;
   signal XLXN_981         : std_logic;
   signal alu_sum_DUMMY    : std_logic;
   signal alu_rshift_DUMMY : std_logic;
   signal s1_DUMMY         : std_logic;
   signal s2_DUMMY         : std_logic;
   signal s3_DUMMY         : std_logic;
   signal s4_DUMMY         : std_logic;
   signal s5_DUMMY         : std_logic;
   signal s6_DUMMY         : std_logic;
   signal alu_and_DUMMY    : std_logic;
   signal alu_xor_DUMMY    : std_logic;
   signal alu_or_DUMMY     : std_logic;
   signal rb_0_DUMMY       : std_logic;
   signal rb_1_DUMMY       : std_logic;
   signal rb_2_DUMMY       : std_logic;
   signal rb_3_DUMMY       : std_logic;
   signal alu_lshift_DUMMY : std_logic;
   signal alu_DUMMY        : std_logic;
   signal ground_DUMMY     : std_logic;
   signal alu_not_DUMMY    : std_logic;
   signal ra_0_DUMMY       : std_logic;
   signal ra_1_DUMMY       : std_logic;
   signal ra_2_DUMMY       : std_logic;
   signal ra_3_DUMMY       : std_logic;
   component stepper_MUSER_cpu
      port ( clk : in    std_logic; 
             s6  : out   std_logic; 
             s1  : out   std_logic; 
             s2  : out   std_logic; 
             s3  : out   std_logic; 
             s4  : out   std_logic; 
             s5  : out   std_logic);
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
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
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
   
   component D3_8E_HXILINX_cpu
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
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component D2_4E_HXILINX_cpu
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_39 : label is "XLXI_39_8";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_6";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_7";
   attribute HU_SET of XLXI_252 : label is "XLXI_252_9";
begin
   alu <= alu_DUMMY;
   alu_and <= alu_and_DUMMY;
   alu_lshift <= alu_lshift_DUMMY;
   alu_not <= alu_not_DUMMY;
   alu_or <= alu_or_DUMMY;
   alu_rshift <= alu_rshift_DUMMY;
   alu_sum <= alu_sum_DUMMY;
   alu_xor <= alu_xor_DUMMY;
   ground <= ground_DUMMY;
   ra_0 <= ra_0_DUMMY;
   ra_1 <= ra_1_DUMMY;
   ra_2 <= ra_2_DUMMY;
   ra_3 <= ra_3_DUMMY;
   rb_0 <= rb_0_DUMMY;
   rb_1 <= rb_1_DUMMY;
   rb_2 <= rb_2_DUMMY;
   rb_3 <= rb_3_DUMMY;
   s1 <= s1_DUMMY;
   s2 <= s2_DUMMY;
   s3 <= s3_DUMMY;
   s4 <= s4_DUMMY;
   s5 <= s5_DUMMY;
   s6 <= s6_DUMMY;
   stp : stepper_MUSER_cpu
      port map (clk=>clk,
                s1=>s1_DUMMY,
                s2=>s2_DUMMY,
                s3=>s3_DUMMY,
                s4=>s4_DUMMY,
                s5=>s5_DUMMY,
                s6=>s6_DUMMY);
   
   XLXI_2 : AND2
      port map (I0=>clkr,
                I1=>XLXN_4,
                O=>iar_r);
   
   XLXI_3 : AND2
      port map (I0=>clkr,
                I1=>XLXN_5,
                O=>bus1);
   
   XLXI_4 : AND2
      port map (I0=>clkr,
                I1=>XLXN_7,
                O=>ram_r);
   
   XLXI_5 : AND2
      port map (I0=>XLXN_11,
                I1=>clkw,
                O=>iar_w);
   
   XLXI_6 : AND2
      port map (I0=>XLXN_12,
                I1=>clkw,
                O=>ir_w);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_16,
                I1=>clkw,
                O=>ram_a_w);
   
   XLXI_9 : GND
      port map (G=>ground_DUMMY);
   
   XLXI_10 : OR4
      port map (I0=>s1_DUMMY,
                I1=>ls_ldc_s4,
                I2=>ground_DUMMY,
                I3=>ground_DUMMY,
                O=>XLXN_4);
   
   XLXI_11 : OR4
      port map (I0=>s1_DUMMY,
                I1=>ls_ldc_s4,
                I2=>ground_DUMMY,
                I3=>ground_DUMMY,
                O=>XLXN_5);
   
   XLXI_12 : OR4
      port map (I0=>s2_DUMMY,
                I1=>ls_ld_s5,
                I2=>ls_ldc_s5,
                I3=>ground_DUMMY,
                O=>XLXN_7);
   
   XLXI_13 : OR4
      port map (I0=>ground_DUMMY,
                I1=>ground_DUMMY,
                I2=>ls_ldc_s6,
                I3=>s3_DUMMY,
                O=>XLXN_11);
   
   XLXI_14 : OR4
      port map (I0=>ground_DUMMY,
                I1=>ground_DUMMY,
                I2=>ground_DUMMY,
                I3=>s2_DUMMY,
                O=>XLXN_12);
   
   XLXI_15 : OR4
      port map (I0=>ground_DUMMY,
                I1=>ls_ldc_s4,
                I2=>ls_ldst_s4,
                I3=>s1_DUMMY,
                O=>XLXN_16);
   
   XLXI_16 : AND2
      port map (I0=>clkr,
                I1=>XLXN_22,
                O=>acc_r);
   
   XLXI_17 : AND2
      port map (I0=>XLXN_23,
                I1=>clkw,
                O=>acc_w);
   
   XLXI_19 : OR4
      port map (I0=>s3_DUMMY,
                I1=>alu_s6,
                I2=>ls_ldc_s6,
                I3=>ground_DUMMY,
                O=>XLXN_22);
   
   XLXI_20 : OR4
      port map (I0=>ls_ldc_s4,
                I1=>alu_binary_s5,
                I2=>alu_unari_s4,
                I3=>s1_DUMMY,
                O=>XLXN_23);
   
   XLXI_21 : OR2
      port map (I0=>XLXN_30,
                I1=>XLXN_173,
                O=>alu_op0);
   
   XLXI_22 : OR2
      port map (I0=>XLXN_31,
                I1=>XLXN_173,
                O=>alu_op1);
   
   XLXI_23 : OR2
      port map (I0=>XLXN_32,
                I1=>XLXN_173,
                O=>alu_op2);
   
   XLXI_27 : AND2B1
      port map (I0=>s1_DUMMY,
                I1=>ir(4),
                O=>XLXN_30);
   
   XLXI_28 : AND2B1
      port map (I0=>s1_DUMMY,
                I1=>ir(5),
                O=>XLXN_31);
   
   XLXI_29 : AND2B1
      port map (I0=>s1_DUMMY,
                I1=>ir(6),
                O=>XLXN_32);
   
   XLXI_39 : D3_8E_HXILINX_cpu
      port map (A0=>ir(4),
                A1=>ir(5),
                A2=>ir(6),
                E=>alu_DUMMY,
                D0=>alu_sum_DUMMY,
                D1=>alu_lshift_DUMMY,
                D2=>alu_rshift_DUMMY,
                D3=>alu_not_DUMMY,
                D4=>alu_and_DUMMY,
                D5=>alu_or_DUMMY,
                D6=>alu_xor_DUMMY,
                D7=>XLXN_75);
   
   XLXI_40 : BUF
      port map (I=>ir(7),
                O=>alu_DUMMY);
   
   XLXI_41 : OR3
      port map (I0=>alu_not_DUMMY,
                I1=>alu_rshift_DUMMY,
                I2=>alu_lshift_DUMMY,
                O=>XLXN_83);
   
   XLXI_42 : OR4
      port map (I0=>alu_xor_DUMMY,
                I1=>alu_and_DUMMY,
                I2=>alu_or_DUMMY,
                I3=>alu_sum_DUMMY,
                O=>XLXN_84);
   
   XLXI_45 : AND2
      port map (I0=>alu_DUMMY,
                I1=>XLXN_83,
                O=>alu_unari);
   
   XLXI_46 : AND2
      port map (I0=>alu_DUMMY,
                I1=>XLXN_84,
                O=>alu_binary);
   
   XLXI_47 : D2_4E_HXILINX_cpu
      port map (A0=>ir(2),
                A1=>ir(3),
                E=>XLXN_99,
                D0=>ra_0_DUMMY,
                D1=>ra_1_DUMMY,
                D2=>ra_2_DUMMY,
                D3=>ra_3_DUMMY);
   
   XLXI_48 : D2_4E_HXILINX_cpu
      port map (A0=>ir(0),
                A1=>ir(1),
                E=>XLXN_99,
                D0=>rb_0_DUMMY,
                D1=>rb_1_DUMMY,
                D2=>rb_2_DUMMY,
                D3=>rb_3_DUMMY);
   
   XLXI_52 : VCC
      port map (P=>XLXN_99);
   
   XLXI_80 : AND2
      port map (I0=>XLXN_158,
                I1=>clkw,
                O=>r0_w);
   
   XLXI_81 : AND2
      port map (I0=>XLXN_157,
                I1=>clkw,
                O=>r1_w);
   
   XLXI_82 : AND2
      port map (I0=>XLXN_156,
                I1=>clkw,
                O=>r2_w);
   
   XLXI_83 : AND2
      port map (I0=>XLXN_155,
                I1=>clkw,
                O=>r3_w);
   
   XLXI_105 : AND2
      port map (I0=>s4_DUMMY,
                I1=>alu_unari,
                O=>alu_unari_s4);
   
   XLXI_137 : AND2
      port map (I0=>s6_DUMMY,
                I1=>alu_DUMMY,
                O=>alu_s6);
   
   XLXI_138 : AND2
      port map (I0=>clkr,
                I1=>XLXN_811,
                O=>r0_r);
   
   XLXI_139 : AND2
      port map (I0=>clkr,
                I1=>XLXN_812,
                O=>r1_r);
   
   XLXI_140 : AND2
      port map (I0=>clkr,
                I1=>XLXN_813,
                O=>r2_r);
   
   XLXI_141 : AND2
      port map (I0=>clkr,
                I1=>XLXN_814,
                O=>r3_r);
   
   XLXI_143 : GND
      port map (G=>XLXN_173);
   
   XLXI_228 : AND2
      port map (I0=>s4_DUMMY,
                I1=>alu_binary,
                O=>alu_binary_s4);
   
   XLXI_229 : AND2
      port map (I0=>XLXN_435,
                I1=>clkw,
                O=>temp_w);
   
   XLXI_230 : OR4
      port map (I0=>ground_DUMMY,
                I1=>ground_DUMMY,
                I2=>ground_DUMMY,
                I3=>alu_binary_s4,
                O=>XLXN_435);
   
   XLXI_250 : AND2
      port map (I0=>s5_DUMMY,
                I1=>alu_binary,
                O=>alu_binary_s5);
   
   XLXI_251 : INV
      port map (I=>alu_DUMMY,
                O=>ls_jmp_flg);
   
   XLXI_252 : D3_8E_HXILINX_cpu
      port map (A0=>ir(4),
                A1=>ir(5),
                A2=>ir(6),
                E=>ls_jmp_flg,
                D0=>ls_ld,
                D1=>ls_st,
                D2=>ls_ldc,
                D3=>jmp_jmpr,
                D4=>jmp_jmp,
                D5=>jmp_ifjmp,
                D6=>flg_clf,
                D7=>open);
   
   XLXI_255 : AND2
      port map (I0=>XLXN_462,
                I1=>s4_DUMMY,
                O=>ls_ldst_s4);
   
   XLXI_260 : OR2
      port map (I0=>ls_st,
                I1=>ls_ld,
                O=>XLXN_462);
   
   XLXI_272 : AND2
      port map (I0=>ra_0_DUMMY,
                I1=>ra_int,
                O=>ra0_r);
   
   XLXI_273 : AND2
      port map (I0=>ra_1_DUMMY,
                I1=>ra_int,
                O=>ra1_r);
   
   XLXI_274 : AND2
      port map (I0=>ra_2_DUMMY,
                I1=>ra_int,
                O=>ra2_r);
   
   XLXI_275 : AND2
      port map (I0=>ra_3_DUMMY,
                I1=>ra_int,
                O=>ra3_r);
   
   XLXI_298 : AND2
      port map (I0=>s4_DUMMY,
                I1=>alu_DUMMY,
                O=>alu_s4);
   
   XLXI_315 : OR3
      port map (I0=>ground_DUMMY,
                I1=>ls_st_s5,
                I2=>alu_s4,
                O=>ra_int);
   
   XLXI_399 : OR3
      port map (I0=>ground_DUMMY,
                I1=>ls_ldst_s4,
                I2=>alu_binary_s5,
                O=>rb_int);
   
   XLXI_400 : AND2
      port map (I0=>rb_0_DUMMY,
                I1=>rb_int,
                O=>rb0_r);
   
   XLXI_401 : AND2
      port map (I0=>rb_1_DUMMY,
                I1=>rb_int,
                O=>rb1_r);
   
   XLXI_402 : AND2
      port map (I0=>rb_2_DUMMY,
                I1=>rb_int,
                O=>rb2_r);
   
   XLXI_403 : AND2
      port map (I0=>rb_3_DUMMY,
                I1=>rb_int,
                O=>rb3_r);
   
   XLXI_407 : OR2
      port map (I0=>ra0_r,
                I1=>rb0_r,
                O=>XLXN_811);
   
   XLXI_408 : OR2
      port map (I0=>ra1_r,
                I1=>rb1_r,
                O=>XLXN_812);
   
   XLXI_409 : OR2
      port map (I0=>ra2_r,
                I1=>rb2_r,
                O=>XLXN_813);
   
   XLXI_410 : OR2
      port map (I0=>ra3_r,
                I1=>rb3_r,
                O=>XLXN_814);
   
   XLXI_458 : AND2
      port map (I0=>ra_0_DUMMY,
                I1=>raw_int,
                O=>ra0_w);
   
   XLXI_459 : AND2
      port map (I0=>ra_1_DUMMY,
                I1=>raw_int,
                O=>ra1_w);
   
   XLXI_460 : AND2
      port map (I0=>ra_2_DUMMY,
                I1=>raw_int,
                O=>ra2_w);
   
   XLXI_461 : AND2
      port map (I0=>ra_3_DUMMY,
                I1=>raw_int,
                O=>ra3_w);
   
   XLXI_465 : OR4
      port map (I0=>ground_DUMMY,
                I1=>ls_ldc_s5,
                I2=>ls_ld_s5,
                I3=>alu_s6,
                O=>raw_int);
   
   XLXI_475 : OR2
      port map (I0=>ground_DUMMY,
                I1=>ra0_w,
                O=>XLXN_158);
   
   XLXI_476 : OR2
      port map (I0=>ground_DUMMY,
                I1=>ra1_w,
                O=>XLXN_157);
   
   XLXI_477 : OR2
      port map (I0=>ground_DUMMY,
                I1=>ra2_w,
                O=>XLXN_156);
   
   XLXI_478 : OR2
      port map (I0=>ground_DUMMY,
                I1=>ra3_w,
                O=>XLXN_155);
   
   XLXI_487 : AND2
      port map (I0=>ls_ld,
                I1=>s5_DUMMY,
                O=>ls_ld_s5);
   
   XLXI_491 : AND2
      port map (I0=>ls_st,
                I1=>s5_DUMMY,
                O=>ls_st_s5);
   
   XLXI_492 : AND2
      port map (I0=>XLXN_981,
                I1=>clkw,
                O=>ram_w);
   
   XLXI_493 : OR4
      port map (I0=>ground_DUMMY,
                I1=>ground_DUMMY,
                I2=>ground_DUMMY,
                I3=>ls_st_s5,
                O=>XLXN_981);
   
   XLXI_494 : AND2
      port map (I0=>ls_ldc,
                I1=>s4_DUMMY,
                O=>ls_ldc_s4);
   
   XLXI_498 : AND2
      port map (I0=>ls_ldc,
                I1=>s5_DUMMY,
                O=>ls_ldc_s5);
   
   XLXI_499 : AND2
      port map (I0=>ls_ldc,
                I1=>s6_DUMMY,
                O=>ls_ldc_s6);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity clk_generator_MUSER_cpu is
   port ( clk  : in    std_logic; 
          clkc : out   std_logic; 
          clkr : out   std_logic; 
          clkw : out   std_logic);
end clk_generator_MUSER_cpu;

architecture BEHAVIORAL of clk_generator_MUSER_cpu is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal clr        : std_logic;
   signal XLXN_1     : std_logic;
   signal XLXN_9     : std_logic;
   signal clkc_DUMMY : std_logic;
   component FJKC_HXILINX_cpu
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_4 : label is "XLXI_4_10";
begin
   clkc <= clkc_DUMMY;
   XLXI_4 : FJKC_HXILINX_cpu
      port map (C=>XLXN_9,
                CLR=>clr,
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
   
   XLXI_11 : GND
      port map (G=>clr);
   
   XLXI_12 : INV
      port map (I=>clk,
                O=>XLXN_9);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity one_8bit_MUSER_cpu is
   port ( one : out   std_logic_vector (7 downto 0));
end one_8bit_MUSER_cpu;

architecture BEHAVIORAL of one_8bit_MUSER_cpu is
   attribute BOX_TYPE   : string ;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component PULLDOWN
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLDOWN : component is "BLACK_BOX";
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
begin
   XLXI_2 : BUF
      port map (I=>XLXN_10,
                O=>one(7));
   
   XLXI_3 : BUF
      port map (I=>XLXN_10,
                O=>one(6));
   
   XLXI_4 : BUF
      port map (I=>XLXN_10,
                O=>one(5));
   
   XLXI_5 : BUF
      port map (I=>XLXN_10,
                O=>one(4));
   
   XLXI_6 : BUF
      port map (I=>XLXN_10,
                O=>one(3));
   
   XLXI_7 : BUF
      port map (I=>XLXN_10,
                O=>one(2));
   
   XLXI_9 : BUF
      port map (I=>XLXN_10,
                O=>one(1));
   
   XLXI_10 : BUF
      port map (I=>XLXN_11,
                O=>one(0));
   
   XLXI_11 : PULLDOWN
      port map (O=>XLXN_10);
   
   XLXI_12 : PULLUP
      port map (O=>XLXN_11);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity pass_through_or_one_MUSER_cpu is
   port ( i   : in    std_logic_vector (7 downto 0); 
          one : in    std_logic; 
          o   : out   std_logic_vector (7 downto 0));
end pass_through_or_one_MUSER_cpu;

architecture BEHAVIORAL of pass_through_or_one_MUSER_cpu is
   attribute BOX_TYPE   : string ;
   signal one_out : std_logic_vector (7 downto 0);
   signal XLXN_32 : std_logic;
   signal o_DUMMY : std_logic_vector (7 downto 0);
   component buffer_8bit_MUSER_cpu
      port ( e : in    std_logic; 
             i : in    std_logic_vector (7 downto 0); 
             o : out   std_logic_vector (7 downto 0));
   end component;
   
   component one_8bit_MUSER_cpu
      port ( one : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   o(7 downto 0) <= o_DUMMY(7 downto 0);
   buff_const_one : buffer_8bit_MUSER_cpu
      port map (e=>one,
                i(7 downto 0)=>one_out(7 downto 0),
                o(7 downto 0)=>o_DUMMY(7 downto 0));
   
   buff_origin : buffer_8bit_MUSER_cpu
      port map (e=>XLXN_32,
                i(7 downto 0)=>i(7 downto 0),
                o(7 downto 0)=>o_DUMMY(7 downto 0));
   
   const_one : one_8bit_MUSER_cpu
      port map (one(7 downto 0)=>one_out(7 downto 0));
   
   inv_one : INV
      port map (I=>one,
                O=>XLXN_32);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lzero_MUSER_cpu is
   port ( a : in    std_logic_vector (7 downto 0); 
          x : out   std_logic);
end lzero_MUSER_cpu;

architecture BEHAVIORAL of lzero_MUSER_cpu is
   attribute HU_SET     : string ;
   component NOR8_HXILINX_cpu
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_11";
begin
   XLXI_1 : NOR8_HXILINX_cpu
      port map (I0=>a(7),
                I1=>a(6),
                I2=>a(5),
                I3=>a(4),
                I4=>a(3),
                I5=>a(2),
                I6=>a(1),
                I7=>a(0),
                O=>x);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cmp_1bit_MUSER_cpu is
   port ( a        : in    std_logic; 
          b        : in    std_logic; 
          eq_above : in    std_logic; 
          gt_above : in    std_logic; 
          eq       : out   std_logic; 
          gt       : out   std_logic; 
          x        : out   std_logic);
end cmp_1bit_MUSER_cpu;

architecture BEHAVIORAL of cmp_1bit_MUSER_cpu is
   attribute BOX_TYPE   : string ;
   signal XLXN_3   : std_logic;
   signal XLXN_8   : std_logic;
   signal XLXN_9   : std_logic;
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
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
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : XNOR2
      port map (I0=>b,
                I1=>a,
                O=>XLXN_3);
   
   XLXI_2 : AND2
      port map (I0=>XLXN_3,
                I1=>eq_above,
                O=>eq);
   
   XLXI_3 : OR2
      port map (I0=>XLXN_8,
                I1=>gt_above,
                O=>gt);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_9,
                I1=>a,
                O=>XLXN_8);
   
   XLXI_5 : INV
      port map (I=>b,
                O=>XLXN_9);
   
   XLXI_6 : INV
      port map (I=>XLXN_3,
                O=>x);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cmp_8bit_MUSER_cpu is
   port ( a  : in    std_logic_vector (7 downto 0); 
          b  : in    std_logic_vector (7 downto 0); 
          eq : out   std_logic; 
          gt : out   std_logic; 
          x  : out   std_logic_vector (7 downto 0));
end cmp_8bit_MUSER_cpu;

architecture BEHAVIORAL of cmp_8bit_MUSER_cpu is
   attribute BOX_TYPE   : string ;
   signal XLXN_42 : std_logic;
   signal XLXN_43 : std_logic;
   signal XLXN_44 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_46 : std_logic;
   signal XLXN_47 : std_logic;
   signal XLXN_48 : std_logic;
   signal XLXN_51 : std_logic;
   signal XLXN_52 : std_logic;
   signal XLXN_53 : std_logic;
   signal XLXN_54 : std_logic;
   signal XLXN_55 : std_logic;
   signal XLXN_56 : std_logic;
   signal XLXN_57 : std_logic;
   signal XLXN_58 : std_logic;
   signal XLXN_59 : std_logic;
   component cmp_1bit_MUSER_cpu
      port ( a        : in    std_logic; 
             b        : in    std_logic; 
             eq       : out   std_logic; 
             eq_above : in    std_logic; 
             gt       : out   std_logic; 
             gt_above : in    std_logic; 
             x        : out   std_logic);
   end component;
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
   component PULLDOWN
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLDOWN : component is "BLACK_BOX";
   
begin
   XLXI_2 : cmp_1bit_MUSER_cpu
      port map (a=>a(7),
                b=>b(7),
                eq_above=>XLXN_42,
                gt_above=>XLXN_43,
                eq=>eq,
                gt=>gt,
                x=>x(7));
   
   XLXI_3 : cmp_1bit_MUSER_cpu
      port map (a=>a(6),
                b=>b(6),
                eq_above=>XLXN_44,
                gt_above=>XLXN_45,
                eq=>XLXN_42,
                gt=>XLXN_43,
                x=>x(6));
   
   XLXI_4 : cmp_1bit_MUSER_cpu
      port map (a=>a(5),
                b=>b(5),
                eq_above=>XLXN_46,
                gt_above=>XLXN_47,
                eq=>XLXN_44,
                gt=>XLXN_45,
                x=>x(5));
   
   XLXI_5 : cmp_1bit_MUSER_cpu
      port map (a=>a(4),
                b=>b(4),
                eq_above=>XLXN_52,
                gt_above=>XLXN_53,
                eq=>XLXN_46,
                gt=>XLXN_47,
                x=>x(4));
   
   XLXI_6 : cmp_1bit_MUSER_cpu
      port map (a=>a(3),
                b=>b(3),
                eq_above=>XLXN_48,
                gt_above=>XLXN_51,
                eq=>XLXN_52,
                gt=>XLXN_53,
                x=>x(3));
   
   XLXI_7 : cmp_1bit_MUSER_cpu
      port map (a=>a(2),
                b=>b(2),
                eq_above=>XLXN_54,
                gt_above=>XLXN_55,
                eq=>XLXN_48,
                gt=>XLXN_51,
                x=>x(2));
   
   XLXI_8 : cmp_1bit_MUSER_cpu
      port map (a=>a(1),
                b=>b(1),
                eq_above=>XLXN_56,
                gt_above=>XLXN_57,
                eq=>XLXN_54,
                gt=>XLXN_55,
                x=>x(1));
   
   XLXI_9 : cmp_1bit_MUSER_cpu
      port map (a=>a(0),
                b=>b(0),
                eq_above=>XLXN_58,
                gt_above=>XLXN_59,
                eq=>XLXN_56,
                gt=>XLXN_57,
                x=>x(0));
   
   XLXI_11 : PULLUP
      port map (O=>XLXN_58);
   
   XLXI_12 : PULLDOWN
      port map (O=>XLXN_59);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity alu_MUSER_cpu is
   port ( a     : in    std_logic_vector (7 downto 0); 
          b     : in    std_logic_vector (7 downto 0); 
          C_in  : in    std_logic; 
          op    : in    std_logic_vector (2 downto 0); 
          C_out : out   std_logic; 
          eq    : out   std_logic; 
          gt    : out   std_logic; 
          x     : out   std_logic_vector (7 downto 0); 
          z     : out   std_logic);
end alu_MUSER_cpu;

architecture BEHAVIORAL of alu_MUSER_cpu is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal land     : std_logic_vector (7 downto 0);
   signal lor      : std_logic_vector (7 downto 0);
   signal ls       : std_logic_vector (7 downto 0);
   signal t        : std_logic_vector (7 downto 0);
   signal XLXN_7   : std_logic_vector (7 downto 0);
   signal XLXN_8   : std_logic;
   signal XLXN_89  : std_logic;
   signal XLXN_91  : std_logic;
   signal XLXN_93  : std_logic;
   signal XLXN_98  : std_logic;
   signal XLXN_99  : std_logic;
   signal XLXN_105 : std_logic;
   signal XLXN_179 : std_logic;
   signal XLXN_191 : std_logic;
   signal XLXN_192 : std_logic;
   signal XLXN_193 : std_logic;
   signal XLXN_199 : std_logic;
   signal XLXN_201 : std_logic;
   signal XLXN_202 : std_logic;
   signal XLXN_204 : std_logic_vector (7 downto 0);
   signal XLXN_223 : std_logic;
   signal XLXN_224 : std_logic;
   signal XLXN_225 : std_logic;
   signal XLXN_226 : std_logic;
   signal XLXN_227 : std_logic;
   signal XLXN_228 : std_logic;
   signal XLXN_239 : std_logic;
   signal XLXN_269 : std_logic;
   signal XLXN_270 : std_logic_vector (7 downto 0);
   signal XLXN_272 : std_logic;
   signal x_DUMMY  : std_logic_vector (7 downto 0);
   component D3_8E_HXILINX_cpu
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
   
   component ADD8_HXILINX_cpu
      port ( A   : in    std_logic_vector (7 downto 0); 
             B   : in    std_logic_vector (7 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (7 downto 0));
   end component;
   
   component OBUFT8_HXILINX_cpu
      port ( I : in    std_logic_vector (7 downto 0); 
             T : in    std_logic; 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component INV8_HXILINX_cpu
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component cmp_8bit_MUSER_cpu
      port ( a  : in    std_logic_vector (7 downto 0); 
             b  : in    std_logic_vector (7 downto 0); 
             eq : out   std_logic; 
             gt : out   std_logic; 
             x  : out   std_logic_vector (7 downto 0));
   end component;
   
   component lzero_MUSER_cpu
      port ( a : in    std_logic_vector (7 downto 0); 
             x : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_12";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_13";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_14";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_15";
   attribute HU_SET of XLXI_97 : label is "XLXI_97_16";
   attribute HU_SET of XLXI_102 : label is "XLXI_102_17";
   attribute HU_SET of XLXI_111 : label is "XLXI_111_18";
   attribute HU_SET of XLXI_112 : label is "XLXI_112_19";
   attribute HU_SET of XLXI_113 : label is "XLXI_113_20";
   attribute HU_SET of XLXI_136 : label is "XLXI_136_21";
begin
   x(7 downto 0) <= x_DUMMY(7 downto 0);
   XLXI_1 : D3_8E_HXILINX_cpu
      port map (A0=>op(0),
                A1=>op(1),
                A2=>op(2),
                E=>XLXN_89,
                D0=>XLXN_8,
                D1=>XLXN_105,
                D2=>XLXN_192,
                D3=>XLXN_223,
                D4=>XLXN_224,
                D5=>XLXN_225,
                D6=>XLXN_226,
                D7=>XLXN_227);
   
   XLXI_2 : ADD8_HXILINX_cpu
      port map (A(7 downto 0)=>a(7 downto 0),
                B(7 downto 0)=>b(7 downto 0),
                CI=>C_in,
                CO=>XLXN_91,
                OFL=>open,
                S(7 downto 0)=>XLXN_7(7 downto 0));
   
   XLXI_4 : OBUFT8_HXILINX_cpu
      port map (I(7 downto 0)=>XLXN_7(7 downto 0),
                T=>XLXN_98,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_5 : INV
      port map (I=>XLXN_8,
                O=>XLXN_98);
   
   XLXI_7 : OBUFT8_HXILINX_cpu
      port map (I(7 downto 0)=>t(7 downto 0),
                T=>XLXN_99,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_12 : BUF
      port map (I=>XLXN_179,
                O=>t(0));
   
   XLXI_13 : BUF
      port map (I=>a(0),
                O=>t(1));
   
   XLXI_14 : BUF
      port map (I=>a(1),
                O=>t(2));
   
   XLXI_15 : BUF
      port map (I=>a(2),
                O=>t(3));
   
   XLXI_16 : BUF
      port map (I=>a(3),
                O=>t(4));
   
   XLXI_17 : BUF
      port map (I=>a(4),
                O=>t(5));
   
   XLXI_18 : BUF
      port map (I=>a(5),
                O=>t(6));
   
   XLXI_19 : BUF
      port map (I=>a(6),
                O=>t(7));
   
   XLXI_40 : GND
      port map (G=>XLXN_179);
   
   XLXI_42 : INV
      port map (I=>XLXN_105,
                O=>XLXN_99);
   
   XLXI_43 : VCC
      port map (P=>XLXN_89);
   
   XLXI_44 : AND2
      port map (I0=>XLXN_91,
                I1=>XLXN_8,
                O=>XLXN_199);
   
   XLXI_45 : AND2
      port map (I0=>XLXN_93,
                I1=>XLXN_105,
                O=>XLXN_202);
   
   XLXI_47 : BUF
      port map (I=>a(7),
                O=>XLXN_93);
   
   XLXI_89 : BUF
      port map (I=>a(0),
                O=>XLXN_191);
   
   XLXI_90 : BUF
      port map (I=>a(1),
                O=>ls(0));
   
   XLXI_91 : BUF
      port map (I=>a(2),
                O=>ls(1));
   
   XLXI_92 : BUF
      port map (I=>a(3),
                O=>ls(2));
   
   XLXI_93 : BUF
      port map (I=>a(4),
                O=>ls(3));
   
   XLXI_94 : BUF
      port map (I=>a(5),
                O=>ls(4));
   
   XLXI_95 : BUF
      port map (I=>a(6),
                O=>ls(5));
   
   XLXI_96 : BUF
      port map (I=>a(7),
                O=>ls(6));
   
   XLXI_97 : OBUFT8_HXILINX_cpu
      port map (I(7 downto 0)=>ls(7 downto 0),
                T=>XLXN_193,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_98 : BUF
      port map (I=>XLXN_179,
                O=>ls(7));
   
   XLXI_99 : AND2
      port map (I0=>XLXN_191,
                I1=>XLXN_192,
                O=>XLXN_201);
   
   XLXI_100 : INV
      port map (I=>XLXN_192,
                O=>XLXN_193);
   
   XLXI_101 : OR3
      port map (I0=>XLXN_201,
                I1=>XLXN_202,
                I2=>XLXN_199,
                O=>C_out);
   
   XLXI_102 : INV8_HXILINX_cpu
      port map (I(7 downto 0)=>a(7 downto 0),
                O(7 downto 0)=>XLXN_204(7 downto 0));
   
   XLXI_111 : OBUFT8_HXILINX_cpu
      port map (I(7 downto 0)=>XLXN_204(7 downto 0),
                T=>XLXN_228,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_112 : OBUFT8_HXILINX_cpu
      port map (I(7 downto 0)=>land(7 downto 0),
                T=>XLXN_239,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_113 : OBUFT8_HXILINX_cpu
      port map (I(7 downto 0)=>lor(7 downto 0),
                T=>XLXN_269,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_114 : AND2
      port map (I0=>a(7),
                I1=>b(7),
                O=>land(7));
   
   XLXI_115 : AND2
      port map (I0=>a(6),
                I1=>b(6),
                O=>land(6));
   
   XLXI_116 : AND2
      port map (I0=>a(5),
                I1=>b(5),
                O=>land(5));
   
   XLXI_117 : AND2
      port map (I0=>a(4),
                I1=>b(4),
                O=>land(4));
   
   XLXI_118 : AND2
      port map (I0=>a(3),
                I1=>b(3),
                O=>land(3));
   
   XLXI_119 : AND2
      port map (I0=>a(2),
                I1=>b(2),
                O=>land(2));
   
   XLXI_120 : AND2
      port map (I0=>a(1),
                I1=>b(1),
                O=>land(1));
   
   XLXI_121 : AND2
      port map (I0=>a(0),
                I1=>b(0),
                O=>land(0));
   
   XLXI_122 : INV
      port map (I=>XLXN_223,
                O=>XLXN_228);
   
   XLXI_123 : INV
      port map (I=>XLXN_224,
                O=>XLXN_239);
   
   XLXI_124 : INV
      port map (I=>XLXN_225,
                O=>XLXN_269);
   
   XLXI_125 : INV
      port map (I=>XLXN_226,
                O=>XLXN_272);
   
   XLXI_126 : INV
      port map (I=>XLXN_227,
                O=>open);
   
   XLXI_127 : OR2
      port map (I0=>a(7),
                I1=>b(7),
                O=>lor(7));
   
   XLXI_128 : OR2
      port map (I0=>a(6),
                I1=>b(6),
                O=>lor(6));
   
   XLXI_129 : OR2
      port map (I0=>a(5),
                I1=>b(5),
                O=>lor(5));
   
   XLXI_130 : OR2
      port map (I0=>a(4),
                I1=>b(4),
                O=>lor(4));
   
   XLXI_131 : OR2
      port map (I0=>a(3),
                I1=>b(3),
                O=>lor(3));
   
   XLXI_132 : OR2
      port map (I0=>a(2),
                I1=>b(2),
                O=>lor(2));
   
   XLXI_133 : OR2
      port map (I0=>a(1),
                I1=>b(1),
                O=>lor(1));
   
   XLXI_134 : OR2
      port map (I0=>a(0),
                I1=>b(0),
                O=>lor(0));
   
   XLXI_135 : cmp_8bit_MUSER_cpu
      port map (a(7 downto 0)=>a(7 downto 0),
                b(7 downto 0)=>b(7 downto 0),
                eq=>eq,
                gt=>gt,
                x(7 downto 0)=>XLXN_270(7 downto 0));
   
   XLXI_136 : OBUFT8_HXILINX_cpu
      port map (I(7 downto 0)=>XLXN_270(7 downto 0),
                T=>XLXN_272,
                O(7 downto 0)=>x_DUMMY(7 downto 0));
   
   XLXI_137 : lzero_MUSER_cpu
      port map (a(7 downto 0)=>x_DUMMY(7 downto 0),
                x=>z);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity cpu is
   port ( alu_C_in     : in    std_logic; 
          clk          : in    std_logic; 
          manual_iar_w : in    std_logic; 
          manual_r0_w  : in    std_logic; 
          manual_r1_w  : in    std_logic; 
          rind         : in    std_logic_vector (7 downto 0); 
          rinr         : in    std_logic; 
          rinw         : in    std_logic; 
          acc_r        : out   std_logic; 
          acc_w        : out   std_logic; 
          alu_C_out    : out   std_logic; 
          alu_eq       : out   std_logic; 
          alu_gt       : out   std_logic; 
          alu_op       : out   std_logic_vector (2 downto 0); 
          alu_z        : out   std_logic; 
          bus1         : out   std_logic; 
          clkc         : out   std_logic; 
          clkr         : out   std_logic; 
          clkw         : out   std_logic; 
          ctl_iar_w    : out   std_logic; 
          ctl_r0_w     : out   std_logic; 
          ctl_r1_w     : out   std_logic; 
          iar_r        : out   std_logic; 
          iar_w        : out   std_logic; 
          ir_o         : out   std_logic_vector (7 downto 0); 
          ir_w         : out   std_logic; 
          ram_a_o      : out   std_logic_vector (7 downto 0); 
          ram_a_w      : out   std_logic; 
          ram_r        : out   std_logic; 
          ram_w        : out   std_logic; 
          r0_r         : out   std_logic; 
          r0_w         : out   std_logic; 
          r1_r         : out   std_logic; 
          r1_w         : out   std_logic; 
          r2_r         : out   std_logic; 
          r2_w         : out   std_logic; 
          r3_r         : out   std_logic; 
          r3_w         : out   std_logic; 
          sysbus       : out   std_logic_vector (7 downto 0); 
          temp_w       : out   std_logic);
end cpu;

architecture BEHAVIORAL of cpu is
   attribute BOX_TYPE   : string ;
   signal alu_x           : std_logic_vector (7 downto 0);
   signal pto             : std_logic_vector (7 downto 0);
   signal temp_o          : std_logic_vector (7 downto 0);
   signal temp_r          : std_logic;
   signal XLXN_23         : std_logic;
   signal sysbus_DUMMY    : std_logic_vector (7 downto 0);
   signal r2_r_DUMMY      : std_logic;
   signal r2_w_DUMMY      : std_logic;
   signal iar_r_DUMMY     : std_logic;
   signal iar_w_DUMMY     : std_logic;
   signal ctl_r0_w_DUMMY  : std_logic;
   signal clkc_DUMMY      : std_logic;
   signal alu_op_DUMMY    : std_logic_vector (2 downto 0);
   signal clkr_DUMMY      : std_logic;
   signal ir_o_DUMMY      : std_logic_vector (7 downto 0);
   signal clkw_DUMMY      : std_logic;
   signal ir_w_DUMMY      : std_logic;
   signal r1_r_DUMMY      : std_logic;
   signal r1_w_DUMMY      : std_logic;
   signal acc_r_DUMMY     : std_logic;
   signal acc_w_DUMMY     : std_logic;
   signal ctl_iar_w_DUMMY : std_logic;
   signal r3_r_DUMMY      : std_logic;
   signal r3_w_DUMMY      : std_logic;
   signal temp_w_DUMMY    : std_logic;
   signal r0_r_DUMMY      : std_logic;
   signal r0_w_DUMMY      : std_logic;
   signal ctl_r1_w_DUMMY  : std_logic;
   signal ram_r_DUMMY     : std_logic;
   signal bus1_DUMMY      : std_logic;
   signal ram_w_DUMMY     : std_logic;
   signal ram_a_w_DUMMY   : std_logic;
   component reg_8bit_MUSER_cpu
      port ( d : in    std_logic_vector (7 downto 0); 
             o : out   std_logic_vector (7 downto 0); 
             r : in    std_logic; 
             w : in    std_logic);
   end component;
   
   component alu_MUSER_cpu
      port ( a     : in    std_logic_vector (7 downto 0); 
             b     : in    std_logic_vector (7 downto 0); 
             C_in  : in    std_logic; 
             C_out : out   std_logic; 
             eq    : out   std_logic; 
             gt    : out   std_logic; 
             op    : in    std_logic_vector (2 downto 0); 
             x     : out   std_logic_vector (7 downto 0); 
             z     : out   std_logic);
   end component;
   
   component clk_generator_MUSER_cpu
      port ( clk  : in    std_logic; 
             clkc : out   std_logic; 
             clkr : out   std_logic; 
             clkw : out   std_logic);
   end component;
   
   component cpu_control_MUSER_cpu
      port ( acc_r      : out   std_logic; 
             acc_w      : out   std_logic; 
             alu        : out   std_logic; 
             alu_and    : out   std_logic; 
             alu_lshift : out   std_logic; 
             alu_not    : out   std_logic; 
             alu_op0    : out   std_logic; 
             alu_op1    : out   std_logic; 
             alu_op2    : out   std_logic; 
             alu_or     : out   std_logic; 
             alu_rshift : out   std_logic; 
             alu_sum    : out   std_logic; 
             alu_xor    : out   std_logic; 
             bus1       : out   std_logic; 
             clk        : in    std_logic; 
             clkr       : in    std_logic; 
             clkw       : in    std_logic; 
             ground     : out   std_logic; 
             iar_r      : out   std_logic; 
             iar_w      : out   std_logic; 
             ir         : in    std_logic_vector (7 downto 0); 
             ir_w       : out   std_logic; 
             r0_r       : out   std_logic; 
             r0_w       : out   std_logic; 
             r1_r       : out   std_logic; 
             r1_w       : out   std_logic; 
             r2_r       : out   std_logic; 
             r2_w       : out   std_logic; 
             r3_r       : out   std_logic; 
             r3_w       : out   std_logic; 
             ram_a_w    : out   std_logic; 
             ram_r      : out   std_logic; 
             ram_w      : out   std_logic; 
             ra_0       : out   std_logic; 
             ra_1       : out   std_logic; 
             ra_2       : out   std_logic; 
             ra_3       : out   std_logic; 
             rb_0       : out   std_logic; 
             rb_1       : out   std_logic; 
             rb_2       : out   std_logic; 
             rb_3       : out   std_logic; 
             s1         : out   std_logic; 
             s2         : out   std_logic; 
             s3         : out   std_logic; 
             s4         : out   std_logic; 
             s5         : out   std_logic; 
             s6         : out   std_logic; 
             temp_w     : out   std_logic);
   end component;
   
   component pass_through_or_one_MUSER_cpu
      port ( i   : in    std_logic_vector (7 downto 0); 
             o   : out   std_logic_vector (7 downto 0); 
             one : in    std_logic);
   end component;
   
   component PULLUP
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLUP : component is "BLACK_BOX";
   
   component ram_256bytes_MUSER_cpu
      port ( a      : in    std_logic_vector (7 downto 0); 
             a_o    : out   std_logic_vector (7 downto 0); 
             a_w    : in    std_logic; 
             i      : in    std_logic_vector (7 downto 0); 
             i_r    : in    std_logic; 
             i_w    : in    std_logic; 
             i_wclk : in    std_logic; 
             o      : out   std_logic_vector (7 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   acc_r <= acc_r_DUMMY;
   acc_w <= acc_w_DUMMY;
   alu_op(2 downto 0) <= alu_op_DUMMY(2 downto 0);
   bus1 <= bus1_DUMMY;
   clkc <= clkc_DUMMY;
   clkr <= clkr_DUMMY;
   clkw <= clkw_DUMMY;
   ctl_iar_w <= ctl_iar_w_DUMMY;
   ctl_r0_w <= ctl_r0_w_DUMMY;
   ctl_r1_w <= ctl_r1_w_DUMMY;
   iar_r <= iar_r_DUMMY;
   iar_w <= iar_w_DUMMY;
   ir_o(7 downto 0) <= ir_o_DUMMY(7 downto 0);
   ir_w <= ir_w_DUMMY;
   ram_a_w <= ram_a_w_DUMMY;
   ram_r <= ram_r_DUMMY;
   ram_w <= ram_w_DUMMY;
   r0_r <= r0_r_DUMMY;
   r0_w <= r0_w_DUMMY;
   r1_r <= r1_r_DUMMY;
   r1_w <= r1_w_DUMMY;
   r2_r <= r2_r_DUMMY;
   r2_w <= r2_w_DUMMY;
   r3_r <= r3_r_DUMMY;
   r3_w <= r3_w_DUMMY;
   sysbus(7 downto 0) <= sysbus_DUMMY(7 downto 0);
   temp_w <= temp_w_DUMMY;
   acc : reg_8bit_MUSER_cpu
      port map (d(7 downto 0)=>alu_x(7 downto 0),
                r=>acc_r_DUMMY,
                w=>acc_w_DUMMY,
                o(7 downto 0)=>sysbus_DUMMY(7 downto 0));
   
   alu_inst : alu_MUSER_cpu
      port map (a(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                b(7 downto 0)=>pto(7 downto 0),
                C_in=>alu_C_in,
                op(2 downto 0)=>alu_op_DUMMY(2 downto 0),
                C_out=>alu_C_out,
                eq=>alu_eq,
                gt=>alu_gt,
                x(7 downto 0)=>alu_x(7 downto 0),
                z=>alu_z);
   
   clck_gen : clk_generator_MUSER_cpu
      port map (clk=>clk,
                clkc=>clkc_DUMMY,
                clkr=>clkr_DUMMY,
                clkw=>clkw_DUMMY);
   
   cpu_ctl : cpu_control_MUSER_cpu
      port map (clk=>clkc_DUMMY,
                clkr=>clkr_DUMMY,
                clkw=>clkw_DUMMY,
                ir(7 downto 0)=>ir_o_DUMMY(7 downto 0),
                acc_r=>acc_r_DUMMY,
                acc_w=>acc_w_DUMMY,
                alu=>open,
                alu_and=>open,
                alu_lshift=>open,
                alu_not=>open,
                alu_op0=>alu_op_DUMMY(0),
                alu_op1=>alu_op_DUMMY(1),
                alu_op2=>alu_op_DUMMY(2),
                alu_or=>open,
                alu_rshift=>open,
                alu_sum=>open,
                alu_xor=>open,
                bus1=>bus1_DUMMY,
                ground=>open,
                iar_r=>iar_r_DUMMY,
                iar_w=>ctl_iar_w_DUMMY,
                ir_w=>ir_w_DUMMY,
                ram_a_w=>ram_a_w_DUMMY,
                ram_r=>ram_r_DUMMY,
                ram_w=>ram_w_DUMMY,
                ra_0=>open,
                ra_1=>open,
                ra_2=>open,
                ra_3=>open,
                rb_0=>open,
                rb_1=>open,
                rb_2=>open,
                rb_3=>open,
                r0_r=>r0_r_DUMMY,
                r0_w=>ctl_r0_w_DUMMY,
                r1_r=>r1_r_DUMMY,
                r1_w=>ctl_r1_w_DUMMY,
                r2_r=>r2_r_DUMMY,
                r2_w=>r2_w_DUMMY,
                r3_r=>r3_r_DUMMY,
                r3_w=>r3_w_DUMMY,
                s1=>open,
                s2=>open,
                s3=>open,
                s4=>open,
                s5=>open,
                s6=>open,
                temp_w=>temp_w_DUMMY);
   
   iar : reg_8bit_MUSER_cpu
      port map (d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>iar_r_DUMMY,
                w=>iar_w_DUMMY,
                o(7 downto 0)=>sysbus_DUMMY(7 downto 0));
   
   ir : reg_8bit_MUSER_cpu
      port map (d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>XLXN_23,
                w=>ir_w_DUMMY,
                o(7 downto 0)=>ir_o_DUMMY(7 downto 0));
   
   pass_th : pass_through_or_one_MUSER_cpu
      port map (i(7 downto 0)=>temp_o(7 downto 0),
                one=>bus1_DUMMY,
                o(7 downto 0)=>pto(7 downto 0));
   
   rin : reg_8bit_MUSER_cpu
      port map (d(7 downto 0)=>rind(7 downto 0),
                r=>rinr,
                w=>rinw,
                o(7 downto 0)=>sysbus_DUMMY(7 downto 0));
   
   r0 : reg_8bit_MUSER_cpu
      port map (d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>r0_r_DUMMY,
                w=>r0_w_DUMMY,
                o(7 downto 0)=>sysbus_DUMMY(7 downto 0));
   
   r1 : reg_8bit_MUSER_cpu
      port map (d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>r1_r_DUMMY,
                w=>r1_w_DUMMY,
                o(7 downto 0)=>sysbus_DUMMY(7 downto 0));
   
   r2 : reg_8bit_MUSER_cpu
      port map (d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>r2_r_DUMMY,
                w=>r2_w_DUMMY,
                o(7 downto 0)=>sysbus_DUMMY(7 downto 0));
   
   r3 : reg_8bit_MUSER_cpu
      port map (d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>r3_r_DUMMY,
                w=>r3_w_DUMMY,
                o(7 downto 0)=>sysbus_DUMMY(7 downto 0));
   
   temp : reg_8bit_MUSER_cpu
      port map (d(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                r=>temp_r,
                w=>temp_w_DUMMY,
                o(7 downto 0)=>temp_o(7 downto 0));
   
   XLXI_7 : PULLUP
      port map (O=>XLXN_23);
   
   XLXI_8 : PULLUP
      port map (O=>temp_r);
   
   XLXI_9 : ram_256bytes_MUSER_cpu
      port map (a(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                a_w=>ram_a_w_DUMMY,
                i(7 downto 0)=>sysbus_DUMMY(7 downto 0),
                i_r=>ram_r_DUMMY,
                i_w=>ram_w_DUMMY,
                i_wclk=>clkw_DUMMY,
                a_o(7 downto 0)=>ram_a_o(7 downto 0),
                o(7 downto 0)=>sysbus_DUMMY(7 downto 0));
   
   XLXI_10 : OR2
      port map (I0=>manual_iar_w,
                I1=>ctl_iar_w_DUMMY,
                O=>iar_w_DUMMY);
   
   XLXI_11 : OR2
      port map (I0=>manual_r0_w,
                I1=>ctl_r0_w_DUMMY,
                O=>r0_w_DUMMY);
   
   XLXI_12 : OR2
      port map (I0=>manual_r1_w,
                I1=>ctl_r1_w_DUMMY,
                O=>r1_w_DUMMY);
   
end BEHAVIORAL;


