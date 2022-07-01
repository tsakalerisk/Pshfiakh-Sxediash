library IEEE;
use IEEE.std_logic_1164.all;

entity encoder8_3 is
    port (
        i0, i1, i2, i3, i4, i5, i6, i7 : in bit;
        d0, d1, d2 : out bit
    );
end encoder8_3;

architecture behave of encoder8_3 is
begin
    d0 <= i1 or i3 or i5 or i7;
    d1 <= i2 or i3 or i6 or i7;
    d2 <= i4 or i5 or i6 or i7;
end behave;