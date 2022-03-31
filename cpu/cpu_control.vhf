--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : cpu_control.vhf
-- /___/   /\     Timestamp : 03/31/2022 23:51:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family aspartan6 -flat -suppress -vhdl /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_control.vhf -w /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_control.sch
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
----- CELL D2_4E_HXILINX_cpu_control -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_cpu_control is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_cpu_control;

architecture D2_4E_HXILINX_cpu_control_V of D2_4E_HXILINX_cpu_control is
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

end D2_4E_HXILINX_cpu_control_V;

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

entity cpu_control is
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
end cpu_control;

architecture BEHAVIORAL of cpu_control is
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
   component stepper_MUSER_cpu_control
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
   
   component D2_4E_HXILINX_cpu_control
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
   
   attribute HU_SET of XLXI_39 : label is "XLXI_39_4";
   attribute HU_SET of XLXI_47 : label is "XLXI_47_2";
   attribute HU_SET of XLXI_48 : label is "XLXI_48_3";
   attribute HU_SET of XLXI_252 : label is "XLXI_252_5";
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
   stp : stepper_MUSER_cpu_control
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
   
   XLXI_39 : D3_8E_HXILINX_cpu_control
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
   
   XLXI_47 : D2_4E_HXILINX_cpu_control
      port map (A0=>ir(2),
                A1=>ir(3),
                E=>XLXN_99,
                D0=>ra_0_DUMMY,
                D1=>ra_1_DUMMY,
                D2=>ra_2_DUMMY,
                D3=>ra_3_DUMMY);
   
   XLXI_48 : D2_4E_HXILINX_cpu_control
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
   
   XLXI_252 : D3_8E_HXILINX_cpu_control
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


