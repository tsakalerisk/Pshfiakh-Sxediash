library IEEE;
use IEEE.std_logic_1164.all;

entity subtractor is
    port (
        x, y : in bit_vector(3 downto 0);
        borrow : inout bit_vector(4 downto 0);
        d : out bit_vector(3 downto 0));
end subtractor;

architecture behave of subtractor is
    component subtractor_1bit port(
        x, y, bin : in bit;
        d, bout: out bit);
    end component;
begin
    u0: subtractor_1bit port map(x(0), y(0), borrow(0), d(0), borrow(1));
    u1: subtractor_1bit port map(x(1), y(1), borrow(1), d(1), borrow(2));
    u2: subtractor_1bit port map(x(2), y(2), borrow(2), d(2), borrow(3));
    u3: subtractor_1bit port map(x(3), y(3), borrow(3), d(3), borrow(4));
end behave;

entity subtractor_1bit is port(
    x, y, bin : in bit;
    d, bout: out bit);
end subtractor_1bit;

architecture behave of subtractor_1bit is
begin
    d <= x xor y xor bin;
    bout <=(not x and bin) or (not x and y) or (y and bin);
end behave;