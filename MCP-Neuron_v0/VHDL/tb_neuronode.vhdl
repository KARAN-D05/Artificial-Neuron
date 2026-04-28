library ieee;
use ieee.std_logic_1164.all;

entity tb_neuronode is
end tb_neuronode;

architecture sim of tb_neuronode is
    signal x, y   : std_logic := '0';
    signal thresh : integer := 1;
    signal fire   : std_logic;
begin
    uut: entity work.neuronode
        port map (
            x      => x,
            y      => y,
            thresh => thresh,
            fire   => fire
        );

    process
    begin
        thresh <= 1;
        x <= '0'; y <= '0'; wait for 10 ns;
        x <= '0'; y <= '1'; wait for 10 ns;
        x <= '1'; y <= '0'; wait for 10 ns;
        x <= '1'; y <= '1'; wait for 10 ns;

        thresh <= 2;
        x <= '0'; y <= '0'; wait for 10 ns;
        x <= '0'; y <= '1'; wait for 10 ns;
        x <= '1'; y <= '0'; wait for 10 ns;
        x <= '1'; y <= '1'; wait for 10 ns;

        wait;
    end process;
end sim;