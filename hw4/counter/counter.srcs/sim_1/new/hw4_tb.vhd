----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/20/2026 05:15:12 PM
-- Design Name: 
-- Module Name: hw4_tb - Behavioral
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

entity hw4_tb is
--  Port ( );
end hw4_tb;

architecture Behavioral of hw4_tb is
    --Inputs
    signal clk : std_logic := '0';
    signal reset_n : std_logic := '0';
	signal ctrl : std_logic := '0';

    --Outputs
    signal roll_lsb : std_logic;
    signal roll_msb : std_logic;
    signal Q_lsb : unsigned(3 downto 0);
    signal Q_msb : unsigned(3 downto 0);

    -- Clock period definitions
    constant clk_period : time := 500 ns;
begin
	-- Instantiate the Unit Under Test (UUT)
    uut1: entity work.counter
        PORT MAP (
          clk => clk,
          reset_n => reset_n,
		  ctrl => ctrl,
          roll => roll_lsb,
          Q => Q_lsb
        );
        
    uut2: entity work.counter
        Port Map (
            clk => clk,
            reset_n => reset_n,
            ctrl => roll_lsb,
            roll => roll_msb,
            Q => Q_msb
        );
            

    -- Clock process definitions
    clk_process :process
    begin
	   clk <= '0'; 
	   wait for clk_period/2;
	   clk <= '1';
	   wait for clk_period/2;
   end process;
 
 	-----------------------------------------------------------------------------
	--		ctrl
	--		0			hold
	--		1			count up mod 10
	-----------------------------------------------------------------------------
	ctrl <= '0' after 15us, '1' after 16us, '0' after 17us, '1' after 18us;
	reset_n <= '1' after 1us;
	
end Behavioral;
