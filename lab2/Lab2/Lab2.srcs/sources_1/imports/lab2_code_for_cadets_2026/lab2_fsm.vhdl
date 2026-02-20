----------------------------------------------------------------------------------
-- Name:	Template by George York (modified from Jeff Falkinburg)
-- Date:	Spring 2023
-- File:    lab2_fsm.vhd
-- HW:	    Lab 2 
-- Pupr:	Lab 2 Finite State Machine for the write circuitry. 
--
-- Modified By: Jason M Wyche (14 Feb 2026)
--      completed FSM for Lab2_datapath 
--
-- Doc:	Adapted from Dr Coulston's Lab exercise
-- 	
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity lab2_fsm is
    Port ( clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           sw : in  STD_LOGIC_VECTOR (2 downto 0);
           cw : out  STD_LOGIC_VECTOR (2 downto 0));
end lab2_fsm;

architecture Behavioral of lab2_fsm is

type state_type is (wait_for_trigger, wait_for_ready, store_samples);
signal state: state_type;

signal is_ready : boolean := false;
signal at_last_address : boolean := false;
signal triggered : boolean := false;

begin

	-------------------------------------------------------------------------------
	--     SW		meaning
	--     sw(0) --> sw_ready (sample from audio codec ready to be processed/stored)
	--     sw(1) --> sw_last_address (address counter has reached the last address and rolled over to starting adress)
	--     sw(2) --> sw_trigger (trigger threshold met by signal)    
	-------------------------------------------------------------------------------
	is_ready <= (sw(0) = '1');
    at_last_address <= (sw(1) = '1');
    triggered <= (sw(2) = '1');
    
	state_proces: process(clk)  
	begin
		if (rising_edge(clk)) then
			if (reset_n = '0') then 
				state <= wait_for_trigger;
			else 
				case state is
					when wait_for_trigger =>
					   if (triggered) then state <= wait_for_ready; end if;  --state <= wait_for_ready; 
					when wait_for_ready =>
					   if (is_ready) then state <= store_samples; end if;
					when store_samples =>
					   if (at_last_address) then 
					       state <= wait_for_trigger;
					   elsif (not at_last_address) then
					       state <= wait_for_ready; 
					   end if;   
				end case;
			end if;
		end if;
	end process;

	-------------------------------------------------------------------------------
	--  CW output table
	--		CW		   meaning
	--		cw(1:0) --> address counter controll
	--         00      reset
	--         01      reset
	--         10      hold
	--         11      count up
	--         note: cw(1) is connected to reset_n of counter in lab2_datapath. cw(0) is connected to counter control input
	--     cw(2) --> write enable for BRAM in lab2_datapath
	--         0       write NOT enabled
	--         1       write enabled
	-------------------------------------------------------------------------------
	cw <=  "000"   when state = wait_for_trigger else
	       "010"   when state = wait_for_ready else
	       "111"   when state = store_samples  else
	       "000";

end Behavioral;

