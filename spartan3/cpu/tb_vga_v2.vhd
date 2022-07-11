--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:49:23 04/24/2022
-- Design Name:   
-- Module Name:   /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/tb_vga_v2.vhd
-- Project Name:  led_control
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_v2
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
 
ENTITY tb_vga_v2 IS
END tb_vga_v2;
 
ARCHITECTURE behavior OF tb_vga_v2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_v2
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
			hsync : OUT  std_logic;
			vsync : OUT  std_logic;
         r : OUT  std_logic_vector(4 downto 0);
         g : OUT  std_logic_vector(5 downto 0);
         b : OUT  std_logic_vector(4 downto 0);
			clk_div_2 : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
	signal hsync : std_logic := '0';
	signal vsync : std_logic := '0';

 	--Outputs
   signal r : std_logic_vector(4 downto 0);
   signal g : std_logic_vector(5 downto 0);
   signal b : std_logic_vector(4 downto 0);
	signal clk_div_2 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_v2 PORT MAP (
          clk => clk,
          rst => rst,
			 hsync => hsync,
			 vsync => vsync,
          r => r,
          g => g,
          b => b,
			 clk_div_2 => clk_div_2
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '0';
      wait for 10 ns;
		rst <= '1';
      wait for 10 ns;
		
		for i in 0 to (2 * 840000) loop
			clk <= '0';
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
		end loop;
      -- insert stimulus here 

      wait;
   end process;

END;
