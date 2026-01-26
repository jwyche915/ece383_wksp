----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2026 07:30:21 PM
-- Design Name: 
-- Module Name: hw3_tb - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hw3_tb is
--  Port ( );
end hw3_tb;

architecture Behavioral of hw3_tb is

    -- Testbench signals
    signal d_tb : UNSIGNED(7 downto 0) := (others => '0');
    signal h_tb : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.hw3
        port map (
            d => d_tb,
            h => h_tb
        );

    -- Stimulus process
    stim_proc: process
    begin

        -- Required test values
        d_tb <= to_unsigned(17, 8);   wait for 10 ns;
        d_tb <= to_unsigned(34, 8);   wait for 10 ns;
        d_tb <= to_unsigned(51, 8);   wait for 10 ns;
        d_tb <= to_unsigned(102, 8);  wait for 10 ns;
        d_tb <= to_unsigned(204, 8);  wait for 10 ns;
        d_tb <= to_unsigned(255, 8);  wait for 10 ns;

        -- Additional random values
        d_tb <= to_unsigned(9, 8);    wait for 10 ns;
        d_tb <= to_unsigned(60, 8);   wait for 10 ns;
        d_tb <= to_unsigned(73, 8);   wait for 10 ns;
        d_tb <= to_unsigned(128, 8);  wait for 10 ns;
        d_tb <= to_unsigned(171, 8);  wait for 10 ns;
        d_tb <= to_unsigned(200, 8);  wait for 10 ns;

        -- End simulation
        wait;
    end process;


end Behavioral;
