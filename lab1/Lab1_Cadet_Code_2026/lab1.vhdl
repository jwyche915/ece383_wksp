----------------------------------------------------------------------------------
--	Title
--  Name
--  Description
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.ece383_pkg.ALL;

entity lab1 is
    Port ( clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
		   btn: in	STD_LOGIC_VECTOR(4 downto 0);
		   led: out STD_LOGIC_VECTOR(4 downto 0);
		   sw: in STD_LOGIC_VECTOR(1 downto 0);
           tmds : out  STD_LOGIC_VECTOR (3 downto 0);
           tmdsb : out  STD_LOGIC_VECTOR (3 downto 0));
end lab1;

architecture structure of lab1 is

    constant CENTER : integer := 0;
    constant DOWN : integer := 1;
    constant LEFT : integer := 2;
    constant RIGHT : integer := 3;
    constant UP : integer := 4;
    constant TIME_TRIG_START : integer := 320;
    constant VOLT_TRIG_START : integer := 220;
    
    constant NUM_ROWS : integer := 440;

    signal trigger: trigger_t;
	signal pixel: pixel_t;
	signal ch1, ch2: channel_t;
	signal time_trigger_value : signed(10 downto 0) := to_signed(TIME_TRIG_START,11);
	signal volt_trigger_value : signed(10 downto 0) := to_signed(VOLT_TRIG_START,11);
begin
   
-- Add numeric steppers for time and voltage trigger
    trigv_stepper : entity work.numeric_stepper
    generic map (
        num_bits => 11,
        max_value => 420,
        min_value => 20,
        start_value => 220,
        delta => 10
    )
    port map (
        clk => clk,
        reset_n => reset_n,
        en => reset_n,
        up => btn(DOWN),       --up in step equates to going down on screen, so use the down button
        down => btn(UP),       --down in step equated to going up on screen, so use the up button
        q => volt_trigger_value
    );
    
    trigt_stepper : entity work.numeric_stepper
    generic map (
        num_bits => 11,
        max_value => 620,
        min_value => 20,
        start_value => 320,
        delta => 10
    )
    port map (
        clk => clk,
        reset_n => reset_n,
        en => reset_n,
        up => btn(RIGHT),       --up in step equates to moving right on screen, so use right button
        down => btn(LEFT),      --down in step equated to moving left on screen, so use left button
        q => time_trigger_value
    );

-- Assign trigger.t and trigger.v
    trigger.t <= unsigned(time_trigger_value);
    trigger.v <= unsigned(volt_trigger_value);
       	
-- Instantiate video
    inst_video : entity work.video
    port map (
        clk => clk,
        reset_n => reset_n,
        tmds => tmds,
        tmdsb => tmdsb,
        trigger => trigger,
        position => pixel.coordinate,
        ch1 => ch1,
        ch2 => ch2
    );
 
-- Determine if ch1 and or ch2 are active
    ch1.active <=   '1' when (pixel.coordinate.row = pixel.coordinate.col) else
                    '0';
    ch2.active <=   '1' when (pixel.coordinate.row = (NUM_ROWS - pixel.coordinate.col)) else 
                    '0';                

-- Connect board hardware to signals
    ch1.en <= sw(0);
    ch2.en <= sw(1);
	
end structure;
