-- vga_signal_generator Generates the hsync, vsync, blank, and row, col for the VGA signal

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.ece383_pkg.ALL;

entity vga_signal_generator is
    Port ( clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           position: out coordinate_t;
           vga : out vga_t);
end vga_signal_generator;

architecture vga_signal_generator_arch of vga_signal_generator is

    signal horizontal_roll, vertical_roll: std_logic := '0';		
    signal h_counter_ctrl, v_counter_ctrl: std_logic := '1'; -- Default to counting up
    signal h_sync_is_low, v_sync_is_low, h_blank_is_low, v_blank_is_low : boolean := false;
    signal current_pos : coordinate_t;
    
    -- set counter size
    constant k_counter_num_bits     : natural   := 10;
    constant k_hcounter_max_value   : natural   := 799;
    constant k_vcounter_max_value   : natural   := 524;
    
    -- max pixel values for h_sync, v_sync, and blank signals
    constant k_h_active_video_max   : natural   := 639;
    constant k_h_front_porch_max    : natural   := 655;
    constant k_h_sync_max           : natural   := 751;
    constant k_h_back_porch_max     : natural   := 799;
    constant k_v_active_video_max   : natural   := 479;
    constant k_v_front_porch_max    : natural   := 489;
    constant k_v_sync_max           : natural   := 491;
    constant k_v_back_porch_max     : natural   := 524;
    
begin

-- horizontal counter
    h_counter: entity work.counter
        generic map (
            num_bits => k_counter_num_bits,
            max_value => k_hcounter_max_value
        )
        PORT MAP (
          clk => clk,
          reset_n => reset_n,
		  ctrl => h_counter_ctrl,
          roll => horizontal_roll,
          Q => current_pos.col
        );

-- Glue code to connect the horizontal and vertical counters
     -- Can connect horizontal_roll and vertical_roll signals together here if you'd like...I chose to connect 
     -- horizontal_roll directly to the ctrl input of the vertical counter
			
-- vertical counter
    v_counter: entity work.counter
        generic map (
            num_bits => k_counter_num_bits,
            max_value => k_vcounter_max_value
        )
        PORT MAP (
          clk => clk,
          reset_n => reset_n,
		  ctrl => horizontal_roll,
          roll => vertical_roll,
          Q => current_pos.row
        );

-- Assign VGA outputs in a gated manner
process (clk)
begin
   if (rising_edge(clk)) then
        h_blank_is_low  <= 
            (current_pos.col < k_h_active_video_max) or 
            (current_pos.col = k_h_back_porch_max);
        h_sync_is_low   <= 
            (current_pos.col >= k_h_front_porch_max) and 
            (current_pos.col < k_h_sync_max);
        if horizontal_roll = '1' then
            v_blank_is_low  <= 
                (current_pos.row < k_v_active_video_max) or 
                (current_pos.row = k_v_back_porch_max);
            v_sync_is_low   <= 
                (current_pos.row >= (k_v_front_porch_max)) and 
                (current_pos.row < (k_v_sync_max));
       end if;     
   end if;
end process;

-- Assign output ports
position <=     current_pos;
vga.hsync <=    '0' when (h_sync_is_low) else
                '1';
vga.vsync <=    '0' when (v_sync_is_low) else
                '1';
vga.blank <=    '0' when ((h_blank_is_low) and (v_blank_is_low)) else
                '1';  


end vga_signal_generator_arch;
