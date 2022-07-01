library IEEE;
use IEEE.std_logic_1164.all;

entity test_even_parity_generator is
end test_even_parity_generator;

architecture testbench of test_even_parity_generator is
    component even_parity_generator
        port (
            i0, i1, i2 : in bit;
            parity_bit : out bit
        );
    end component;

    signal tb_i0: bit;
    signal tb_i1: bit;
    signal tb_i2: bit;
    signal tb_parity_bit: bit;
begin
    u0: even_parity_generator port map(
        i0 => tb_i0, i1 => tb_i1, i2 => tb_i2,
        parity_bit => tb_parity_bit
    );
    process
    begin
        tb_i0 <= '0';
        tb_i1 <= '0';
        tb_i2 <= '0';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '0';
        tb_i2 <= '1';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '1';
        tb_i2 <= '0';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '1';
        tb_i2 <= '1';
        wait for 10 ns;

        tb_i0 <= '1';
        tb_i1 <= '0';
        tb_i2 <= '0';
        wait for 10 ns;

        tb_i0 <= '1';
        tb_i1 <= '0';
        tb_i2 <= '1';
        wait for 10 ns;

        tb_i0 <= '1';
        tb_i1 <= '1';
        tb_i2 <= '0';
        wait for 10 ns;

        tb_i0 <= '1';
        tb_i1 <= '1';
        tb_i2 <= '1';
        wait for 10 ns;
    end process;
end testbench;