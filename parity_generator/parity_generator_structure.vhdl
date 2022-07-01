library IEEE;
use IEEE.std_logic_1164.all;

entity even_parity_generator is
    port (
        i0, i1, i2 : in bit;
        parity_bit : out bit
    );
end even_parity_generator;

architecture structure of even_parity_generator is
    component xor2
        port(
            x0, x1: in bit;
            o: out bit
        );
    end component;
    signal s0: bit;
begin
    u0: xor2 port map(i0, i1, s0);
    u1: xor2 port map(s0, i2, parity_bit);
end structure;

entity xor2 is
    port(
        x0,x1: in bit;
        o : out bit
    );
end xor2;

architecture behave of xor2 is
begin
    o <=x0 xor x1;
end behave;