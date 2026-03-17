-- Testbench for neuronode (VHDL)
-- Verifies neuron firing behavior across two threshold settings
library ieee;
use ieee.std_logic_1164.all;

entity tb_neuronode is
end tb_neuronode;

architecture sim of tb_neuronode is

    -- Signals driven by testbench
    signal x, y   : std_logic := '0';
    signal thresh : integer := 1;

    -- Output observed from the neuron
    signal fire   : std_logic;

begin

    -- Instantiate the neuron under test
    uut: entity work.neuronode
        port map (
            x      => x,
            y      => y,
            thresh => thresh,
            fire   => fire
        );

    process
    begin
        -- Test 1: Threshold = 1 (OR Logic, either input triggers fire)
        thresh <= 1;
        x <= '0'; y <= '0'; wait for 10 ns; -- sum = 0, no fire
        x <= '0'; y <= '1'; wait for 10 ns; -- sum = 1, fires
        x <= '1'; y <= '0'; wait for 10 ns; -- sum = 1, fires
        x <= '1'; y <= '1'; wait for 10 ns; -- sum = 2, fires

        -- Test 2: Threshold = 2 (AND Logic, both inputs must be 1)
        thresh <= 2;
        x <= '0'; y <= '0'; wait for 10 ns; -- sum = 0, no fire
        x <= '0'; y <= '1'; wait for 10 ns; -- sum = 1, no fire
        x <= '1'; y <= '0'; wait for 10 ns; -- sum = 1, no fire
        x <= '1'; y <= '1'; wait for 10 ns; -- sum = 2, fires

        wait; -- End simulation
    end process;

end sim;
