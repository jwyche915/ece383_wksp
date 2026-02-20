----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2026 04:36:26 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity counter is
    generic (
            num_bits :  integer := 4;
            max_value : integer := 9;
            initial_value : integer := 0
    );     
    Port ( clk : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           ctrl : in STD_LOGIC;
           roll : out STD_LOGIC;
           Q : out unsigned (num_bits-1 downto 0)
    );
end counter;

architecture Behavioral of counter is
    signal processQ : unsigned (num_bits-1 downto 0) := to_unsigned(initial_value,num_bits);

begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (reset_n = '0') then
                processQ <= to_unsigned(initial_value,num_bits);
                roll <= '0';
            elsif (ctrl = '1') then
                if (processQ = max_value) then
                    processQ <= (others => '0');
                else
                    processQ <= (processQ + 1);
                end if;
                
                if (processQ = (max_value-1)) then
                    roll <= '1';
                else
                    roll <= '0';
                end if;
            end if;
        end if;
    end process;

Q <= processQ;

end Behavioral;
