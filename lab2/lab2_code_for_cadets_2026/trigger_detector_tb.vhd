library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity trigger_detector_tb is
end trigger_detector_tb;

architecture Behavioral of trigger_detector_tb is

    component trigger_detector
        port (
            clk              : in  std_logic;
            reset_n          : in  std_logic;
            threshold        : in  unsigned(10 downto 0);
            ready            : in  std_logic;
            monitored_signal : in  unsigned(8 downto 0);
            crossed_trigger  : out std_logic
        );
    end component;

    signal clk              : std_logic := '0';
    signal reset_n          : std_logic := '0';
    signal threshold        : unsigned(10 downto 0);
    signal ready            : std_logic := '0';
    signal monitored_signal : unsigned(8 downto 0) := (others => '0');
    signal crossed_trigger  : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin

    --------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------
    uut: trigger_detector
        port map (
            clk              => clk,
            reset_n          => reset_n,
            threshold        => threshold,
            ready            => ready,
            monitored_signal => monitored_signal,
            crossed_trigger  => crossed_trigger
        );

    --------------------------------------------------------------------
    -- Clock
    --------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    --------------------------------------------------------------------
    -- Sine Wave Generator (Audio Stimulus)
    --------------------------------------------------------------------
    sine_process : process
        variable theta      : real := 0.0;
        constant step       : real := 2.0 * math_pi / 64.0;  -- 64 samples per cycle
        constant amplitude  : real := 200.0;
        constant dc_offset  : real := 256.0;
        variable sample_val : integer;
    begin

        wait until reset_n = '1';
        ready <= '1';

        while true loop
            wait until rising_edge(clk);

            -- Generate sine sample
            sample_val := integer(dc_offset +
                                  amplitude * sin(theta));

            -- Limit bounds just in case
            if sample_val < 0 then
                sample_val := 0;
            elsif sample_val > 511 then
                sample_val := 511;
            end if;

            monitored_signal <= to_unsigned(sample_val, 9);

            -- Advance angle
            theta := theta + step;
            if theta > 2.0 * math_pi then
                theta := theta - 2.0 * math_pi;
            end if;
        end loop;
    end process;

    --------------------------------------------------------------------
    -- Reset + Threshold
    --------------------------------------------------------------------
    stim_proc : process
    begin
        threshold <= to_unsigned(220, 11);

        reset_n <= '0';
        wait for 50 ns;
        reset_n <= '1';

        wait for 5 us;

        report "Sine wave trigger simulation complete." severity note;
        wait;
    end process;

end Behavioral;
