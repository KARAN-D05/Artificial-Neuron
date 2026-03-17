-- Artificial Neuron Node (VHDL)
-- Sums two binary inputs and fires if the result meets or exceeds the threshold
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity neuronode is
    port (
        x      : in  std_logic;  -- Input 1 (0 or 1)
        y      : in  std_logic;  -- Input 2 (0 or 1)
        thresh : in  integer;    -- Activation threshold
        fire   : out std_logic   -- Neuron output: 1 if fired, 0 if silent
    );
end neuronode;

architecture rtl of neuronode is
begin
    -- Re-evaluate whenever any input changes
    process(x, y, thresh)
        variable sum : integer; -- Accumulates active input count
    begin
        sum := 0;

        -- Count active inputs
        if x = '1' then
            sum := sum + 1; -- Input 1 is active
        end if;
        if y = '1' then
            sum := sum + 1; -- Input 2 is active
        end if;

        -- Fire if activation sum meets or exceeds threshold
        if sum >= thresh then
            fire <= '1'; -- Threshold met, neuron fires
        else
            fire <= '0'; -- Below threshold, neuron stays silent
        end if;

    end process;
end rtl;
