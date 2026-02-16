----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2026 08:35:37 PM
-- Design Name: 
-- Module Name: lab2_datapath_tb - Behavioral
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

entity lab2_datapath_tb is
end lab2_datapath_tb;

architecture Behavioral of lab2_datapath_tb is

    --------------------------------------------------------------------
    -- Component Declaration
    --------------------------------------------------------------------
    component lab2_datapath
        Port ( clk : in  STD_LOGIC;
               reset_n : in  STD_LOGIC;
               ac_mclk : out STD_LOGIC;
               ac_adc_sdata : in STD_LOGIC;
               ac_dac_sdata : out STD_LOGIC;
               ac_bclk : out STD_LOGIC;
               ac_lrclk : out STD_LOGIC;
               scl : inout STD_LOGIC;
               sda : inout STD_LOGIC;    
               tmds : out  STD_LOGIC_VECTOR (3 downto 0);
               tmdsb : out  STD_LOGIC_VECTOR (3 downto 0);
               sw: out std_logic_vector(2 downto 0);
               cw: in std_logic_vector (2 downto 0);
               btn: in STD_LOGIC_VECTOR(4 downto 0);
               switch: in STD_LOGIC_VECTOR(3 downto 0);
               exWrAddr: in std_logic_vector(9 downto 0);
               exWen, exSel: in std_logic;
               Lbus_out, Rbus_out: out std_logic_vector(15 downto 0);
               exLbus, exRbus: in std_logic_vector(15 downto 0);
               flagQ: out std_logic;   
               flagClear: in std_logic);
    end component;

    --------------------------------------------------------------------
    -- Signals
    --------------------------------------------------------------------
    signal clk       : STD_LOGIC := '0';
    signal reset_n   : STD_LOGIC := '0';

    signal ac_mclk      : STD_LOGIC;
    signal ac_adc_sdata : STD_LOGIC := '0';
    signal ac_dac_sdata : STD_LOGIC;
    signal ac_bclk      : STD_LOGIC;
    signal ac_lrclk     : STD_LOGIC;

    signal scl : STD_LOGIC := 'Z';
    signal sda : STD_LOGIC := 'Z';

    signal tmds  : STD_LOGIC_VECTOR(3 downto 0);
    signal tmdsb : STD_LOGIC_VECTOR(3 downto 0);

    signal sw : STD_LOGIC_VECTOR(2 downto 0);
    signal cw : STD_LOGIC_VECTOR(2 downto 0) := "000";

    signal btn    : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');

    -- Switch vector with switch(3) forced to '0'
    signal switch : STD_LOGIC_VECTOR(3 downto 0) := "0000";

    signal exWrAddr : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
    signal exWen    : STD_LOGIC := '0';
    signal exSel    : STD_LOGIC := '0';

    signal Lbus_out, Rbus_out : STD_LOGIC_VECTOR(15 downto 0);
    signal exLbus, exRbus     : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

    signal flagQ     : STD_LOGIC;
    signal flagClear : STD_LOGIC := '0';

    constant CLK_PERIOD : time := 10 ns;

begin

    --------------------------------------------------------------------
    -- DUT Instantiation
    --------------------------------------------------------------------
    uut: lab2_datapath
        port map (
            clk => clk,
            reset_n => reset_n,
            ac_mclk => ac_mclk,
            ac_adc_sdata => ac_adc_sdata,
            ac_dac_sdata => ac_dac_sdata,
            ac_bclk => ac_bclk,
            ac_lrclk => ac_lrclk,
            scl => scl,
            sda => sda,
            tmds => tmds,
            tmdsb => tmdsb,
            sw => sw,
            cw => cw,
            btn => btn,
            switch => switch,
            exWrAddr => exWrAddr,
            exWen => exWen,
            exSel => exSel,
            Lbus_out => Lbus_out,
            Rbus_out => Rbus_out,
            exLbus => exLbus,
            exRbus => exRbus,
            flagQ => flagQ,
            flagClear => flagClear
        );

    --------------------------------------------------------------------
    -- Clock Generation
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
    -- Stimulus Process
    --------------------------------------------------------------------
    stim_proc: process
    begin

        ----------------------------------------------------------------
        -- Apply Reset
        ----------------------------------------------------------------
        reset_n <= '0';
        wait for 100 ns;
        reset_n <= '1';

        ----------------------------------------------------------------
        -- Keep switch(3) = '0' (simulation mode)
        ----------------------------------------------------------------
        switch(3) <= '0';

        ----------------------------------------------------------------
        -- Enable channels
        ----------------------------------------------------------------
        switch(0) <= '1';  -- Enable ch1
        switch(1) <= '1';  -- Enable ch2

        ----------------------------------------------------------------
        -- Simulate button presses
        ----------------------------------------------------------------
        wait for 200 ns;
        btn(0) <= '1';
        wait for 20 ns;
        btn(0) <= '0';

        wait for 200 ns;

        ----------------------------------------------------------------
        -- Drive CW from FSM (optional manual testing)
        ----------------------------------------------------------------
        cw <= "111";   -- simulate store state
        wait for 200 ns;

        cw <= "010";   -- simulate hold
        wait for 200 ns;

        cw <= "000";   -- simulate reset
        wait for 200 ns;

        ----------------------------------------------------------------
        -- End Simulation
        ----------------------------------------------------------------
        report "Datapath simulation complete." severity note;
        wait;

    end process;

end Behavioral;

