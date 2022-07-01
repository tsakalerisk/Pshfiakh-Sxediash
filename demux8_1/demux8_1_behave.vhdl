library IEEE;
use IEEE.std_logic_1164.all;

entity demux8_1 is
    port (
        i : in bit;
        s0, s1, s2 : in bit;
        d0, d1, d2, d3, d4, d5, d6, d7 : out bit
    );
end demux8_1;

architecture behave of demux8_1 is
begin
    d0 <= i and not s0 and not s1 and not s2;
    d1 <= i and s0 and not s1 and not s2;
    d2 <= i and not s0 and s1 and not s2;
    d3 <= i and s0 and s1 and not s2;
    d4 <= i and not s0 and not s1 and s2;
    d5 <= i and s0 and not s1 and s2;
    d6 <= i and not s0 and s1 and s2;
    d7 <= i and s0 and s1 and s2;
end behave;