----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/15/2026 07:56:22 AM
-- Design Name: 
-- Module Name: scancode_decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: converets 8-bit scancode for the digits 0-9 into a 4-bit hexadecimal value
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

entity scancode_decoder is
    Port ( scancode : in STD_LOGIC_VECTOR (7 downto 0);
           decode_value : out STD_LOGIC_VECTOR (3 downto 0));
end scancode_decoder;

architecture Behavioral of scancode_decoder is

begin
    decode_value <=     x"0" when scancode = x"45" else
                        x"1" when scancode = x"16" else
                        x"2" when scancode = x"1E" else
                        x"3" when scancode = x"26" else
                        x"4" when scancode = x"25" else
                        x"5" when scancode = x"2E" else
                        x"6" when scancode = x"36" else
                        x"7" when scancode = x"3D" else
                        x"8" when scancode = x"3E" else
                        x"9" when scancode = x"46" else
                        x"0";
end Behavioral;
