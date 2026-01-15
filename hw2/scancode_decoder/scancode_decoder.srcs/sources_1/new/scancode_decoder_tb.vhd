----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/15/2026 07:56:22 AM
-- Design Name: 
-- Module Name: scancode_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: verifies scancode_decoder functionality for all 
-- scancodes associated with the keyboard keys for the digits 0-9
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity scancode_decoder_tb is
end scancode_decoder_tb;

architecture sim of scancode_decoder_tb is

    -- DUT signals
    signal scancode     : std_logic_vector(7 downto 0);
    signal decode_value : std_logic_vector(3 downto 0);

begin

    -- Instantiate the Device Under Test (DUT)
    uut: entity work.scancode_decoder
        port map (
            scancode     => scancode,
            decode_value => decode_value
        );

    --------------------------------------------------------------------
    -- Test process
    --------------------------------------------------------------------
    process
    begin
        -- 0
        scancode <= x"45";
        wait for 10 ns;
        assert decode_value = x"0"
            report "ERROR: 45h should decode to 0" severity error;

        -- 1
        scancode <= x"16";
        wait for 10 ns;
        assert decode_value = x"1"
            report "ERROR: 16h should decode to 1" severity error;

        -- 2
        scancode <= x"1E";
        wait for 10 ns;
        assert decode_value = x"2"
            report "ERROR: 1Eh should decode to 2" severity error;

        -- 3
        scancode <= x"26";
        wait for 10 ns;
        assert decode_value = x"3"
            report "ERROR: 26h should decode to 3" severity error;

        -- 4
        scancode <= x"25";
        wait for 10 ns;
        assert decode_value = x"4"
            report "ERROR: 25h should decode to 4" severity error;

        -- 5
        scancode <= x"2E";
        wait for 10 ns;
        assert decode_value = x"5"
            report "ERROR: 2Eh should decode to 5" severity error;

        -- 6
        scancode <= x"36";
        wait for 10 ns;
        assert decode_value = x"6"
            report "ERROR: 36h should decode to 6" severity error;

        -- 7
        scancode <= x"3D";
        wait for 10 ns;
        assert decode_value = x"7"
            report "ERROR: 3Dh should decode to 7" severity error;

        -- 8
        scancode <= x"3E";
        wait for 10 ns;
        assert decode_value = x"8"
            report "ERROR: 3Eh should decode to 8" severity error;

        -- 9
        scancode <= x"46";
        wait for 10 ns;
        assert decode_value = x"9"
            report "ERROR: 46h should decode to 9" severity error;

        -- Invalid scancode → should output 0
        scancode <= x"FF";
        wait for 10 ns;
        assert decode_value = x"0"
            report "ERROR: Invalid scancode should decode to 0" severity error;

        report "All test cases passed." severity note;
        wait;
    end process;

end sim;

