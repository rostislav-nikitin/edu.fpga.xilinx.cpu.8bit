--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:41:22 04/24/2022
-- Design Name:   
-- Module Name:   /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/tb_vga_test.vhd
-- Project Name:  led_control
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_test
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_vga_test IS
END tb_vga_test;
 
ARCHITECTURE behavior OF tb_vga_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_test
    PORT(
         clk : IN  std_logic;
         clk_passthrough : OUT  std_logic;
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         r : OUT  std_logic_vector(4 downto 0);
         g : OUT  std_logic_vector(5 downto 0);
         b : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal clk_passthrough : std_logic;
   signal hsync : std_logic;
   signal vsync : std_logic;
   signal r : std_logic_vector(4 downto 0);
   signal g : std_logic_vector(5 downto 0);
   signal b : std_logic_vector(4 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_test PORT MAP (
          clk => clk,
          clk_passthrough => clk_passthrough,
          hsync => hsync,
          vsync => vsync,
          r => r,
          g => g,
          b => b
        );

   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	--840000
		for i in 0 to 1680000 loop
			-- hold reset state for 100 ns.
			clk <= '0';
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
		end loop;
      -- insert stimulus here 
      wait;
   end process;

END;
