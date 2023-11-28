library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Main is
    port (clkIn, resetIn, enable: in std_logic;
    Y: out std_logic);
end Main;

architecture estructura1 of Main is
    component clk1Hz
        port (clk, reset: in std_logic; clk_out: out std_logic);
    end component;
    signal signalclk1Hz: std_logic;
begin
    mod_clk1Hz: clk1Hz port map (clkIn, resetIn, signalclk1Hz);
    Y <= signalclk1Hz and enable;

end estructura1;
