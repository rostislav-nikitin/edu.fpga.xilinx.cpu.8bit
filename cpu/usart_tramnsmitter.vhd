----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:19:52 06/19/2022 
-- Design Name: 
-- Module Name:    usart_tramnsmitter - Behavioral 
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

entity usart_tramnsmitter is
    Port ( clk : in  STD_LOGIC;
			  rst : in STD_LOGIC;
			  data : in STD_LOGIC_VECTOR (7 downto 0) := "00000000";
           tx : out  STD_LOGIC;
			  done: out std_logic := '0');
end usart_tramnsmitter;

architecture Behavioral of usart_tramnsmitter is
	constant freq : integer range 0 to 163:= 163; --50000000 / (9600 * 16);
	signal usart_clk : std_logic := '0';
	--type str is array (1 to 6) of std_logic_vector(7 downto 0);
	--constant text : str := (x"68", x"65", x"6C", x"6C", x"6F", x"0A");
	type states is (ready, began, started, finished);
	signal state : states := ready;
	signal s_done : std_logic := '0';
begin

	
	usart_clock: process (clk)
		variable periods : integer range 0 to freq := 0;			
		variable half : integer range 0 to 1 := 0;
	begin
		if clk'event and clk = '1' then
			if (periods = freq) then
				if half = 0 then
					half := 1;
				else
					half := 0;
				end if;
				periods := 0;
			else
				periods := periods + 1;
			end if;
			
			if half = 0 then
				usart_clk <= '0';
			else
				usart_clk <= '1';
			end if;
			
			
		end if;
	end process;
	
	transmit_data: process(usart_clk, rst)
		variable sample_idx : integer range 0 to 15 := 0;
		variable bit_idx : integer range 0 to 7;
	begin
		if rst = '1' then
			state <= ready;
			done <= '0';
			s_done <= '0';
		elsif usart_clk'event and usart_clk = '1' then
		
			--if tx_state = transmitting_and_ready or tx_state = transmitting then
			--if tx_running = '1' then
			--if running = '1' then
		
				-- tx <= '0';
				--tx <= tx_buffer[
				if state = ready and s_done = '0' then
					state <= began;
				elsif state = began then
					if sample_idx < 8 then
						tx <= '1';
						sample_idx := sample_idx + 1;
					elsif sample_idx = 15 then
						state <= started;
						sample_idx := 0;
					else
						tx <= '0';
						sample_idx := sample_idx + 1;
					end if;
				elsif state = started then
					if sample_idx = 0 then
						tx <= data(7 downto 0)(bit_idx);
						sample_idx := sample_idx + 1;
					elsif sample_idx = 15 then
						if bit_idx = 7 then
							state <= finished;
							bit_idx := 0;
							sample_idx := 0;
						else
							bit_idx := bit_idx + 1;
							sample_idx := 0;
						end if;
					else
						sample_idx := sample_idx + 1;
					end if;
				elsif state = finished then
					if sample_idx = 0 then
						tx <= '1';
						sample_idx := sample_idx + 1;
					elsif sample_idx = 15 then
						sample_idx := 0;
						state <= ready;
						done <= '1';
						s_done <= '1';
					else
						sample_idx := sample_idx + 1;
					end if;
				end if;
			--end if;
		end if;
	end process;

end Behavioral;

