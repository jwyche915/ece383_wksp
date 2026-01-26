----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/22/2026 01:25:26 PM
-- Design Name: 
-- Module Name: vga_signal_generator_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;
use work.ece383_pkg.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_signal_generator_tb is
--  Port ( );
end vga_signal_generator_tb;

architecture Behavioral of vga_signal_generator_tb is

    ----------------------------------------------------------------
    -- Constants
    ----------------------------------------------------------------
    constant CLK_PERIOD : time := 10 ns;

    constant H_MAX : natural := 799;
    constant V_MAX : natural := 524;

    ----------------------------------------------------------------
    -- Signals
    ----------------------------------------------------------------
    signal clk      : std_logic := '0';
    signal reset_n  : std_logic := '0';
    signal position : coordinate_t;
    signal vga      : vga_t;

begin

    ----------------------------------------------------------------
    -- Clock generation
    ----------------------------------------------------------------
    clk <= not clk after CLK_PERIOD / 2;

    ----------------------------------------------------------------
    -- DUT
    ----------------------------------------------------------------
    dut : entity work.vga_signal_generator
        port map (
            clk       => clk,
            reset_n   => reset_n,
            position  => position,
            vga       => vga
        );

    ----------------------------------------------------------------
    -- Stimulus + Checking
    ----------------------------------------------------------------
    stim_proc : process
        variable prev_col : integer := 0;
        variable prev_row : integer := 0;
    begin

        ------------------------------------------------------------
        -- Apply reset
        ------------------------------------------------------------
        reset_n <= '0';
        wait for 5 * CLK_PERIOD;
        reset_n <= '1';

        wait until rising_edge(clk);

        ------------------------------------------------------------
        -- Verify reset behavior
        ------------------------------------------------------------
        assert position.col = 0 and position.row = 0
            report "ERROR: Counters did not reset to 0"
            severity failure;

        ------------------------------------------------------------
        -- Main verification loop
        ------------------------------------------------------------
        -- Enough cycles for multiple full frames
        ------------------------------------------------------------
        for i in 0 to (H_MAX + 1) * (V_MAX + 1) loop
            wait until rising_edge(clk);

            --------------------------------------------------------
            -- Horizontal counter checks
            --------------------------------------------------------
            if prev_col = H_MAX then
                assert position.col = 0
                    report "ERROR: Horizontal counter failed to roll over"
                    severity failure;
            else
                assert position.col = prev_col + 1
                    report "ERROR: Horizontal counter skipped or stalled"
                    severity failure;
            end if;

            --------------------------------------------------------
            -- Vertical counter checks
            --------------------------------------------------------
            if prev_col = H_MAX then
                -- vertical should advance
                if prev_row = V_MAX then
                    assert position.row = 0
                        report "ERROR: Vertical counter failed to roll over"
                        severity failure;
                else
                    assert position.row = prev_row + 1
                        report "ERROR: Vertical counter failed to increment on horizontal roll"
                        severity failure;
                end if;
            else
                -- vertical must remain constant
                assert position.row = prev_row
                    report "ERROR: Vertical counter changed without horizontal roll"
                    severity failure;
            end if;

            prev_col := to_integer(position.col);
            prev_row := to_integer(position.row);
        end loop;

        ------------------------------------------------------------
        -- Success
        ------------------------------------------------------------
        report "SIMULATION PASSED: VGA counters counted and rolled correctly"
            severity note;

        wait;
    end process;

end Behavioral;
