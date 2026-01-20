library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity neuronode is
    port (
        x      : in  std_logic;  -- input 1 (0 or 1)
        y      : in  std_logic;  -- input 2 (0 or 1)
        thresh : in  integer;    -- threshold
        fire   : out std_logic   -- neuron output
    );
end neuronode;

architecture rtl of neuronode is
begin
    process(x, y, thresh)
        variable sum : integer;
    begin
        sum := 0;

        if x = '1' then
            sum := sum + 1;
        end if;

        if y = '1' then
            sum := sum + 1;
        end if;

        if sum >= thresh then
            fire <= '1';
        else
            fire <= '0';
        end if;
    end process;
end rtl;