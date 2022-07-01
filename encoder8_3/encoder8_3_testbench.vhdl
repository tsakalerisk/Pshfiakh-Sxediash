library IEEE;
use IEEE.std_logic_1164.all;

entity test_encoder8_3 is
end test_encoder8_3;

architecture testbench of test_encoder8_3 is
    component encoder8_3
        port (
            i0, i1, i2, i3, i4, i5, i6, i7 : in bit;
            d0, d1, d2 : out bit
        );
    end component;

    signal tb_i0: bit;
    signal tb_i1: bit;
    signal tb_i2: bit;
    signal tb_i3: bit;
    signal tb_i4: bit;
    signal tb_i5: bit;
    signal tb_i6: bit;
    signal tb_i7: bit;
    signal tb_d0: bit;
    signal tb_d1: bit;
    signal tb_d2: bit;
begin
    u0: encoder8_3 port map(
        i0 => tb_i0,
        i1 => tb_i1,
        i2 => tb_i2,
        i3 => tb_i3,
        i4 => tb_i4,
        i5 => tb_i5,
        i6 => tb_i6,
        i7 => tb_i7,
        d0 => tb_d0,
        d1 => tb_d1,
        d2 => tb_d2
    );
    process
    begin
        tb_i0 <= '1';
        tb_i1 <= '0';
        tb_i2 <= '0';
        tb_i3 <= '0';
        tb_i4 <= '0';
        tb_i5 <= '0';
        tb_i6 <= '0';
        tb_i7 <= '0';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '1';
        tb_i2 <= '0';
        tb_i3 <= '0';
        tb_i4 <= '0';
        tb_i5 <= '0';
        tb_i6 <= '0';
        tb_i7 <= '0';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '0';
        tb_i2 <= '1';
        tb_i3 <= '0';
        tb_i4 <= '0';
        tb_i5 <= '0';
        tb_i6 <= '0';
        tb_i7 <= '0';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '0';
        tb_i2 <= '0';
        tb_i3 <= '1';
        tb_i4 <= '0';
        tb_i5 <= '0';
        tb_i6 <= '0';
        tb_i7 <= '0';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '0';
        tb_i2 <= '0';
        tb_i3 <= '0';
        tb_i4 <= '1';
        tb_i5 <= '0';
        tb_i6 <= '0';
        tb_i7 <= '0';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '0';
        tb_i2 <= '0';
        tb_i3 <= '0';
        tb_i4 <= '0';
        tb_i5 <= '1';
        tb_i6 <= '0';
        tb_i7 <= '0';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '0';
        tb_i2 <= '0';
        tb_i3 <= '0';
        tb_i4 <= '0';
        tb_i5 <= '0';
        tb_i6 <= '1';
        tb_i7 <= '0';
        wait for 10 ns;

        tb_i0 <= '0';
        tb_i1 <= '0';
        tb_i2 <= '0';
        tb_i3 <= '0';
        tb_i4 <= '0';
        tb_i5 <= '0';
        tb_i6 <= '0';
        tb_i7 <= '1';
        wait for 10 ns;
    end process;
end testbench;