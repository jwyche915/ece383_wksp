----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jason M. Wyche
-- 
-- Create Date: 02/06/2026 07:54:07 PM
-- Design Name: 
-- Module Name: lec11_cu - Behavioral
-- Project Name:  Scancode_Converter
-- Target Devices: 
-- Tool Versions: 
-- Description: Control unit for a keyboard scancode converter
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

entity lec11_cu is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           kbClk : in STD_LOGIC;
           cw : out STD_LOGIC_VECTOR (3 downto 0);
           sw : in STD_LOGIC;
           busy : out STD_LOGIC);
end lec11_cu;

architecture Behavioral of lec11_cu is
    type state_type is (busy0, busy1,
                        wait_to_start, wait_falling_kbclk, wait_rising_kbclk,
                        start_keypress, is_keypress_complete, get_next_kbdata,
                        shift_scancode_in, output_scancode);
    
    signal state: state_type;
    signal keypress_complete : boolean := false;

begin
-----------------------------------------------------------------------
--      INPUT
--      sw (status word) is input from data path indicating when we have 
--      a complete key press and release
--          '0'     key press and release not complete
--          '1'     key press and release complete
-----------------------------------------------------------------------
    keypress_complete <= (sw = '1');

-----------------------------------------------------------------------
--    NEXT STATE LOGIC
-----------------------------------------------------------------------        
    state_process : process(clk)
    begin
        if (rising_edge(clk)) then
            if (reset = '0') then
                state <= busy0;
            end if;
        else
            case state is
                when busy0 =>
                    state <= wait_to_start;
                when wait_to_start =>
                    if (kbClk = '0') then state <= busy1; end if;
                when busy1 =>
                    state <= start_keypress;
                when start_keypress =>
                    state <= is_keypress_complete;
                when is_keypress_complete =>
                    if (keypress_complete) then
                        state <= output_scancode;
                    else
                        state <= wait_falling_kbclk;
                    end if;
                when wait_falling_kbclk =>
                    if (kbClk = '0') then state <= shift_scancode_in; end if;
                when shift_scancode_in =>
                    state <= wait_rising_kbClk;
                when wait_rising_kbclk =>
                    if (kbClk = '1') then state <= get_next_kbdata; end if;
                when get_next_kbdata =>
                    state <= is_keypress_complete;
                when output_scancode =>
                    state <= busy0;            
            end case;
         end if;
    end process;
    
 -----------------------------------------------------------------------------
 --     OUTPUTS
 --     cw (control word) is output to data path
	--  cw(1), cw(0) are inputs to the data path counter telling us which bit we are processing
	   --		00			hold
	   --		01			count up
	   --		10			unused
	   --		11			synch reset
    --    cw(2) is input to data path shift register
	   --		0			hold
	   --		1			shift right (data comes in at the MSB) 
	--    cw(3) is input to load value in shift register to scan register (8 scan bits for output)
	   --		0			hold
	   --		1			load
--
--
--     busy is output indicating current status of scancode converter	
------------------------------------------------------------------------------
    cw(1 downto 0) <=       "11" when state = start_keypress else
                            "01" when state = get_next_kbdata else
                            "00";
    cw(2) <=                '1' when state = shift_scancode_in else
                            '0';
    cw(3) <=                '1' when state = output_scancode else
                            '0';
                      
    busy <=                 '0' when state = busy0 else
                            '0' when state = wait_to_start else
                            '1';         

end Behavioral;
