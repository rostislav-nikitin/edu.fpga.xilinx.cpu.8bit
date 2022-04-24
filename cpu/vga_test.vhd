----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:59:41 04/23/2022 
-- Design Name: 
-- Module Name:    vga_test - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_test is
    Port ( clk : in  STD_LOGIC;
			  clk_passthrough : out  STD_LOGIC;
           hsync : out  STD_LOGIC;
           vsync : out  STD_LOGIC;
           r : out  STD_LOGIC_VECTOR(4 DOWNTO 0);
           g : out  STD_LOGIC_VECTOR(5 DOWNTO 0);
           b : out  STD_LOGIC_VECTOR(4 DOWNTO 0));
end vga_test;

architecture Behavioral of vga_test is
	constant H_A : integer := 640;
	constant H_FP : integer := 16;
	constant H_SP : integer := 96;
	constant H_BP : integer := 48;
	constant H_SIZE : integer := 800;
	
	constant V_A : integer := 480;
	constant V_FP : integer := 10;
	constant V_SP : integer := 2;
	constant V_BP : integer := 33;
	constant V_SIZE : integer := 525;
	
	--signal rs : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01010";
	--signal gs : STD_LOGIC_VECTOR(5 DOWNTO 0);
	--signal bs : STD_LOGIC_VECTOR(4 DOWNTO 0);
begin
	process(clk)
		variable v: INTEGER RANGE 0 TO 525 := 0;
		variable h: INTEGER RANGE 0 TO 800 := 0;
		variable divider: INTEGER RANGE 0 TO 2 := 0;
	begin
	
		clk_passthrough <= clk;
		
		if clk'event and clk = '1' then
		
			if divider = 0 then
				vsync <= '1';
				hsync <= '1';	
				r <= "00000";
				g <= "000000";
				b <= "00000";
				
				-- CODE
				if( v < V_A) then
					vsync <= '1';
					if (h < H_A) then
						hsync <= '1';
						 --<= std_logic_vector( unsigned(value) + 1 );
						--r <= "11111";
						r <= "11111";
						g <= "000000";
						b <= "00000";
					end if;
				end if;

				if(v >= V_A) then
					if (v >= (V_A + V_FP)) and (v < (V_A + V_FP + V_SP)) then
						vsync <= '0';
					else
						vsync <= '1';
					end if;
				end if;
				
				if(h >= H_A) then
					if (h >= (H_A + H_FP)) and (h < (H_A + H_FP + H_SP)) then
						hsync <= '0';
					else
						hsync <= '1';
					end if;
				end if;
				
				
				-- !CODE

				h := h + 1;
				
				if h = H_SIZE then
					h := 0;
					v := v + 1;
					
					if v = V_SIZE then
						v := 0;
					end if;
				end if;
			end if;
			
			divider := divider + 1;
			
			if divider = 2 then
				divider := 0;
			end if;
			
		end if;
	end process;


end Behavioral;

