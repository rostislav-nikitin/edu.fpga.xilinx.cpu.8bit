-- Vhdl test bench created from schematic /home/s0lid/Sources/edu.fpga.xilinx.cpu.8bit/cpu/alu_output_muxer.sch - Thu Apr  7 05:51:22 2022
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
ENTITY alu_output_muxer_alu_output_muxer_sch_tb IS
END alu_output_muxer_alu_output_muxer_sch_tb;
ARCHITECTURE behavioral OF alu_output_muxer_alu_output_muxer_sch_tb IS 

   COMPONENT alu_output_muxer
   PORT( op	:	IN	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          o	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          add_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          lsh_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          rsh_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          not_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          or_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          xor_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          and_o	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL op	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL add_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL lsh_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL rsh_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL not_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL or_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL xor_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL and_o	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: alu_output_muxer PORT MAP(
		op => op, 
		o => o, 
		add_o => add_o, 
		lsh_o => lsh_o, 
		rsh_o => rsh_o, 
		not_o => not_o, 
		or_o => or_o, 
		xor_o => xor_o, 
		and_o => and_o
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
          add_o <= "00000001";
          lsh_o <= "00000010";
          rsh_o <= "00000011";
          not_o <= "00000100";
			 and_o <= "00000101";
          or_o <= "00000110";
          xor_o <= "00000111";
			 
			 wait for 10 ns;
			 
			 for opcode in 0 to 7 loop
				op <= std_logic_vector(to_unsigned(opcode, op'length));
				wait for 10 ns;
			 end loop;
          
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
