library IEEE;
use IEEE.std_logic_1164.all;

entity encoder8_3 is
    port (
        i0, i1, i2, i3, i4, i5, i6, i7 : in bit;
        d0, d1, d2 : out bit
    );
end encoder8_3;

architecture structure of encoder8_3 is
    component or4
        port(
            x1,x2,x3,x4: in bit;
            o: out bit
        );
    end component;

begin
    u0: or4 port map(i1, i3, i5, i7, d0);
    u1: or4 port map(i2, i3, i6, i7, d1);
    u2: or4 port map(i4, i5, i6, i7, d2);
end structure;

entity or4 is
    port(
        x1,x2,x3,x4: in bit;
        o: out bit
    );
end or4;

architecture behave of or4 is
begin
    o <= x1 or x2 or x3 or x4;
end behave;