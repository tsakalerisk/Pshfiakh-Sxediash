library IEEE;
use IEEE.std_logic_1164.all;

entity test_demux8_1 is
end test_demux8_1;

architecture testbench of test_demux8_1 is
    component demux8_1
        port (
            i : in bit;
            s0, s1, s2 : in bit;
            d0, d1, d2, d3, d4, d5, d6, d7 : out bit
        );
    end component;

    signal tb_i: bit;
    signal tb_s0: bit;
    signal tb_s1: bit;
    signal tb_s2: bit;
    signal tb_d0: bit;
    signal tb_d1: bit;
    signal tb_d2: bit;
    signal tb_d3: bit;
    signal tb_d4: bit;
    signal tb_d5: bit;
    signal tb_d6: bit;
    signal tb_d7: bit;
begin
    u0: demux8_1 port map(
        i => tb_i,
        s0 => tb_s0,
        s1 => tb_s1,
        s2 => tb_s2,
        d0 => tb_d0,
        d1 => tb_d1,
        d2 => tb_d2,
        d3 => tb_d3,
        d4 => tb_d4,
        d5 => tb_d5,
        d6 => tb_d6,
        d7 => tb_d7
    );
    process
    begin
        tb_i <= '0';
        tb_s0 <= '0';
        tb_s1 <= '0';
        tb_s2 <= '0';
        wait for 5 ns;

        tb_i <= '1';
        tb_s0 <= '0';
        tb_s1 <= '0';
        tb_s2 <= '0';
        wait for 5 ns;

        tb_i <= '0';
        tb_s0 <= '1';
        tb_s1 <= '0';
        tb_s2 <= '0';
        wait for 5 ns;

        tb_i <= '1';
        tb_s0 <= '1';
        tb_s1 <= '0';
        tb_s2 <= '0';
        wait for 5 ns;

        tb_i <= '0';
        tb_s0 <= '0';
        tb_s1 <= '1';
        tb_s2 <= '0';
        wait for 5 ns;

        tb_i <= '1';
        tb_s0 <= '0';
        tb_s1 <= '1';
        tb_s2 <= '0';
        wait for 5 ns;

        tb_i <= '0';
        tb_s0 <= '1';
        tb_s1 <= '1';
        tb_s2 <= '0';
        wait for 5 ns;

        tb_i <= '1';
        tb_s0 <= '1';
        tb_s1 <= '1';
        tb_s2 <= '0';
        wait for 5 ns;

        tb_i <= '0';
        tb_s0 <= '0';
        tb_s1 <= '0';
        tb_s2 <= '1';
        wait for 5 ns;

        tb_i <= '1';
        tb_s0 <= '0';
        tb_s1 <= '0';
        tb_s2 <= '1';
        wait for 5 ns;

        tb_i <= '0';
        tb_s0 <= '1';
        tb_s1 <= '0';
        tb_s2 <= '1';
        wait for 5 ns;

        tb_i <= '1';
        tb_s0 <= '1';
        tb_s1 <= '0';
        tb_s2 <= '1';
        wait for 5 ns;
        
        tb_i <= '0';
        tb_s0 <= '0';
        tb_s1 <= '1';
        tb_s2 <= '1';
        wait for 5 ns;

        tb_i <= '1';
        tb_s0 <= '0';
        tb_s1 <= '1';
        tb_s2 <= '1';
        wait for 5 ns;

        tb_i <= '0';
        tb_s0 <= '1';
        tb_s1 <= '1';
        tb_s2 <= '1';
        wait for 5 ns;

        tb_i <= '1';
        tb_s0 <= '1';
        tb_s1 <= '1';
        tb_s2 <= '1';
        wait for 5 ns;

    end process;
end testbench;