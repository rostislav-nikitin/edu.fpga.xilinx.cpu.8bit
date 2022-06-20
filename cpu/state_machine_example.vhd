----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:16 06/20/2022 
-- Design Name: 
-- Module Name:    state_machine_example - Behavioral 
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

entity state_machine_example is
    Port ( clk : in  STD_LOGIC;
			  s: in STD_LOGIC;
           tx : out  STD_LOGIC;
			  dummy : out  STD_LOGIC);
end state_machine_example;

architecture Behavioral of state_machine_example is
	signal s_current: std_logic := '1';
	signal s_next: std_logic := '0';
	signal t_current: std_logic := '0';
	signal t_next: std_logic := '0';
	signal run: std_logic := '0';
	shared variable cnt : integer range 0 to 255 := 0;
begin

s_changed: process(s)
begin
	s_next <= not s_next;
end process;

change_state: process(clk)
begin
	if clk'event and clk='0' then
		if not (s_current = s_next) then
			s_current <= s_next;
			run <= '1';
		end if;
		if not (t_current = t_next) then
			t_current <= t_next;
			run <= '0';
		end if;
		
		dummy <= s_current;
	end if;
end process;

execute: process(clk)
begin
	if clk'event and clk='1' then
		if run = '1' then
			if cnt = 255 then
				tx <= '1';
				t_next <= not t_next;
			else
				tx <= '0';
			end if;
			cnt := cnt + 1;
		end if;
	end if;
end process;



end Behavioral;

