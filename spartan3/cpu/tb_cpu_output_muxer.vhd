-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/cpu_output_muxer.sch - Thu Apr  7 04:41:33 2022
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY cpu_output_muxer_cpu_output_muxer_sch_tb IS
END cpu_output_muxer_cpu_output_muxer_sch_tb;
ARCHITECTURE behavioral OF cpu_output_muxer_cpu_output_muxer_sch_tb IS 

   COMPONENT cpu_output_muxer
   PORT( acc_r	:	IN	STD_LOGIC; 
          mem_r	:	IN	STD_LOGIC; 
          r0_r	:	IN	STD_LOGIC; 
          r2_r	:	IN	STD_LOGIC; 
          r3_r	:	IN	STD_LOGIC; 
          iar_r	:	IN	STD_LOGIC; 
          r1_r	:	IN	STD_LOGIC; 
          o	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          iar_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          mem_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          r0_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          acc_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          r3_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          r1_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          r2_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL acc_r	:	STD_LOGIC;
   SIGNAL mem_r	:	STD_LOGIC;
   SIGNAL r0_r	:	STD_LOGIC;
   SIGNAL r2_r	:	STD_LOGIC;
   SIGNAL r3_r	:	STD_LOGIC;
   SIGNAL iar_r	:	STD_LOGIC;
   SIGNAL r1_r	:	STD_LOGIC;
   SIGNAL o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL iar_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL mem_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL r0_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL acc_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL r3_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL r1_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL r2_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: cpu_output_muxer PORT MAP(
		acc_r => acc_r, 
		mem_r => mem_r, 
		r0_r => r0_r, 
		r2_r => r2_r, 
		r3_r => r3_r, 
		iar_r => iar_r, 
		r1_r => r1_r, 
		o => o, 
		iar_o => iar_o, 
		mem_o => mem_o, 
		r0_o => r0_o, 
		acc_o => acc_o, 
		r3_o => r3_o, 
		r1_o => r1_o, 
		r2_o => r2_o
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		iar_o <= "00000001";
		mem_o <= "00000010";
		r0_o <= "00000011";
		acc_o <= "00000100";
		r3_o <= "00000101";
		r1_o <= "00000110";
		r2_o <= "00000111";
		acc_r <= '0';
		mem_r <= '0';
		r0_r <= '0';
		r1_r <= '0';
		r2_r <= '0';
		r3_r <= '0';
		iar_r <= '0';
		wait for 10 ns;
		acc_r <= '1';
		wait for 10 ns;
		acc_r <= '0';
		mem_r <= '1';
		wait for 10 ns;
		mem_r <= '0';
		r0_r <= '1';
		wait for 10 ns;
		r0_r <= '0';
		r2_r <= '1'; 
		wait for 10 ns;
		r2_r <= '0'; 
		r3_r <= '1';
		wait for 10 ns;
		r3_r <= '0';
		iar_r <= '1';
		wait for 10 ns;
		iar_r <= '0';
		r1_r <= '1';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
