----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:38:46 04/24/2022 
-- Design Name: 
-- Module Name:    vga_v2 - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_v2 is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  hsync : out std_logic;
			  vsync : out std_logic;
           r : out  STD_LOGIC_VECTOR (4 downto 0);
           g : out  STD_LOGIC_VECTOR (5 downto 0);
           b : out  STD_LOGIC_VECTOR (4 downto 0);
			  clk_div_2: out std_logic);
end vga_v2;

architecture Behavioral of vga_v2 is
	-- Horizontal contants
	constant SZ_HVA : integer := 640;
	constant SZ_HFP : integer := 16;
	constant SZ_HSP : integer := 96;
	constant SZ_HBP : integer := 48;
	constant SZ_HFA : integer := SZ_HVA + SZ_HFP + SZ_HSP + SZ_HBP;
	-- Vertical contants
	constant SZ_VVA : integer := 480;
	constant SZ_VFP : integer := 10;
	constant SZ_VSP : integer := 2;
	constant SZ_VBP : integer := 33;
	constant SZ_VFA : integer := SZ_VVA + SZ_VFP + SZ_VSP + SZ_VBP;
	
	-- Variables & signals
	signal sig_clk_div_2 : std_logic := '0';
	signal hpos : integer range 0 to SZ_HFA - 1 := 0;
	signal vpos : integer range 0 to SZ_VFA - 1 := 0;
	signal rs : std_logic_vector(4 downto 0) := "00000";
begin

-- freq divider
freq_divider: process(clk, rst)
begin
	if(rst = '0') then
		clk_div_2 <= '0';
	elsif clk'event and clk = '1' then
		sig_clk_div_2 <= not sig_clk_div_2;
		clk_div_2 <= not sig_clk_div_2;
	end if;
end process;

scan: process(sig_clk_div_2, rst)
begin
		if(rst = '0') then
			hpos <= 0;
		elsif (sig_clk_div_2'event and sig_clk_div_2 = '0') then
			if(hpos = SZ_HFA - 1) then
				hpos <= 0;
				if(vpos = SZ_VFA - 1) then
					vpos <= 0;
				else
					vpos <= vpos + 1;
				end if;
			else
				hpos <= hpos + 1;
			end if;
		end if;
end process;

hsync_update: process(rst, hpos)
begin
	if(rst = '0') then
		hsync <= '1';
	else
		if (hpos > (SZ_HVA + SZ_HFP - 1)) and (hpos < (SZ_HVA + SZ_HFP + SZ_HSP - 1)) then
			hsync <= '0';
		else
			hsync <= '1';
		end if;
	end if;
end process;

vsync_update: process(rst, vpos)
begin
	if(rst = '0') then
		vsync <= '1';
	else
		if (vpos > (SZ_VVA + SZ_VFP - 1)) and (vpos < (SZ_VVA + SZ_VFP + SZ_VSP - 1)) then
			vsync <= '0';
		else
			vsync <= '1';
		end if;
	end if;
end process;

pixel_draw: process(rst, sig_clk_div_2, hpos, vpos)
	constant SZ_SIDE : integer := 80;
	variable h_thold : boolean := false;
	variable v_thold : boolean := false;
	
begin
	if rst = '0' then
		r <= "00000";
		g <= "000000";
		b <= "00000";
	else
		if sig_clk_div_2'event and sig_clk_div_2 = '1' then
			if ((hpos < SZ_HVA) and (vpos < SZ_VVA)) then
				--if (((hpos - (hpos mod SZ_SIDE)) / SZ_SIDE) mod 2) = (((vpos - (vpos mod SZ_SIDE)) / SZ_SIDE) mod 2) then
				--h_thold := (hpos rem SZ_SIDE) = 0;
				--v_thold := (vpos rem SZ_SIDE) = 0;
				
				if (hpos = 0 and vpos = 0) then
						rs <= "00000";
				elsif ((hpos rem SZ_SIDE) = 0) then
					if(hpos = 0) and ((vpos rem SZ_SIDE) = 0) then
						r <= rs;
					else
						r <= not rs;
						rs <= not rs;
					end if;
				else
					r <= rs;
				end if;
				
				
				g <= "000000";
				b <= "00000";
			else
				r <= "00000";
				g <= "000000";
				b <= "00000";
			end if;
		end if;
	end if;
end process;



end Behavioral;

