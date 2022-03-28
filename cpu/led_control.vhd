----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:17 03/08/2022 
-- Design Name: 
-- Module Name:    led_control - Behavioral 
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

entity led_control is
    Port ( clk : in  STD_LOGIC;
			  sw : in std_logic_vector(3 downto 0);
           led : out  STD_LOGIC);
end led_control;

architecture Behavioral of led_control is
	signal state: STD_LOGIC := '0';
begin

process(clk)
	variable c: INTEGER RANGE 0 TO 49999999;
begin
	if clk'event and clk='1' then
			c := c + 1;
			if c = 0 then
				if state = '1' then
					state <= '0';
				else
					state <= '1';
				end if;
			end if;
			
			if sw(0)='1' then
				led <= state;
			else
				led <= '0';
			end if;
	end if;
end process;


end Behavioral;

