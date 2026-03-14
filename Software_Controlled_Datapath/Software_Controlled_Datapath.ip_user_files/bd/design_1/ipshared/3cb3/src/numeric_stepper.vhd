-- Numeric Stepper: Holds a value and increments or decrements it based on button presses
-- James Trimble, 20 Jan 2026 (template)
-- Modified by Jason Wyche, 13 Feb 2026
--  - completed stepper architecture and added debounce functionality
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity numeric_stepper is
  generic (
    num_bits  : integer := 8;
    max_value : integer := 127;
    min_value : integer := -128;
    start_value : integer := 0;
    delta     : integer := 1
  );
  port (
    clk     : in  std_logic;
    reset_n : in  std_logic;                    -- active-low synchronous reset
    en      : in  std_logic;                    -- enable
    up      : in  std_logic;                    -- increment on rising edge
    down    : in  std_logic;                    -- decrement on rising edge
    q       : out signed(num_bits-1 downto 0)   -- signed output
  );
end numeric_stepper;

architecture numeric_stepper_arch of numeric_stepper is

    signal process_q : signed(num_bits-1 downto 0) := to_signed(start_value,num_bits);
    signal prev_up, prev_down : std_logic := '0';
    signal is_increment, is_decrement : boolean := false;
    signal debounced_up : std_logic;
    signal debounced_down: std_logic;

begin
    up_button_debounce_inst : entity work.button_debounce
	   port map(
	       clk => clk,
	       reset => reset_n,
	       button => up,
	       action => debounced_up);
			
    down_button_debounce_inst : entity work.button_debounce
        port map (
            clk => clk,
            reset => reset_n,
            button => down,
            action => debounced_down);

    is_increment <= ((debounced_up = '1') and (debounced_down = '0') and (en = '1') and (prev_up = '0') and (process_q < max_value));
    is_decrement <= ((debounced_up = '0') and (debounced_down = '1') and (en = '1') and (prev_down = '0') and (process_q > min_value));

    process(clk)
    begin
        if rising_edge(clk) then
            if (reset_n = '0') then
                process_q <= to_signed((max_value - min_value)/2,num_bits);
            elsif is_increment then
                process_q <= process_q + to_signed(delta,num_bits);
                prev_up <= up;
            elsif is_decrement then            
                process_q <= process_q - to_signed(delta,num_bits);
                prev_down <= down;
            else
                process_q <= process_q;
                prev_up <= up;
                prev_down <= down;
            end if;    
        end if;          
    end process;
    
    q <= process_q;
    
    
end numeric_stepper_arch;
