library IEEE;
use IEEE.std_logic_1164.all;

entity even_parity_generator is
    port (
        i0, i1, i2 : in bit;
        parity_bit : out bit
    );
end even_parity_generator;

architecture behave of even_parity_generator is
begin
    parity_bit <= i0 xor i1 xor i2;
end behave;