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
    p0 : process(x, y, borrow)
    begin
        for i in 0 to 3 loop
            d(i) <= x(i) xor y(i) xor borrow(i);
            borrow(i+1) <= (not x(i) and y(i)) or (y(i) and borrow(i)) or (not x(i) and borrow(i));
        end loop;
    end process;
end behave;