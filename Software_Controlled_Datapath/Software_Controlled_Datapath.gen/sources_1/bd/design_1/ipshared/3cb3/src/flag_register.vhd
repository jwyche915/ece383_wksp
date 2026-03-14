----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 08:27:20 AM
-- Design Name: 
-- Module Name: flag_register - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flag_register is
    Port (  clk : in STD_LOGIC;
            reset_n : in STD_LOGIC;
            set : in STD_LOGIC;
            clear : in STD_LOGIC;
            Q : out STD_LOGIC);
end flag_register;

architecture Behavioral of flag_register is
    
    signal is_hold : boolean := false;
    signal is_set : boolean := false;
    signal is_clear : boolean := false;
    
    signal process_Q : std_logic;

begin
    
    is_hold <= (set = '0') and (clear = '0');
    is_set <= (set = '1') and (clear = '0');
    is_clear <= (set = '0') and (clear = '1');
    
    process(clk)
    begin
        if (rising_edge(clk)) then
            if reset_n = '0' then
                process_Q <= '0';
            elsif(is_hold) then
                process_Q <= process_Q;
            elsif(is_set) then
                process_Q <= '1';
            elsif(is_clear) then
                process_Q <= '0';
            else
                process_Q <= process_Q;
            end if;
        end if;
	end process;
	
	Q <= process_Q;


end Behavioral;
