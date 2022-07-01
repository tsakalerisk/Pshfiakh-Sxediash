library IEEE;
use IEEE.std_logic_1164.all;

entity subtractor is
    port (
        x, y : in bit_vector(3 downto 0);
        borrow : inout bit_vector(4 downto 0);
        d : out bit_vector(3 downto 0));
end subtractor;

architecture behave of subtractor is
begin
    d(0) <= x(0) xor y(0) xor borrow(0);
    borrow(1) <= (not x(0) and y(0)) or (y(0) and borrow(0)) or (not x(0) and borrow(0));

    d(1) <= x(1) xor y(1) xor borrow(1);
    borrow(2) <= (not x(1) and y(1)) or (y(1) and borrow(1)) or (not x(1) and borrow(1));

    d(2) <= x(2) xor y(2) xor borrow(2);
    borrow(3) <= (not x(2) and y(2)) or (y(2) and borrow(2)) or (not x(2) and borrow(2));

    d(3) <= x(3) xor y(3) xor borrow(3);
    borrow(4) <= (not x(3) and y(3)) or (y(3) and borrow(3)) or (not x(3) and borrow(3));

end behave;