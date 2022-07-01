library IEEE;
use IEEE.std_logic_1164.all;

entity even_parity_generator is
    port (
        i0, i1, i2 : in bit;
        parity_bit : out bit
    );
end even_parity_generator;

architecture algo of even_parity_generator is
begin
    p0 : process(i0, i1, i2)
    variable s: bit_vector(2 downto 0);
    begin
        s:=i0&i1&i2;
        if s="000" then parity_bit<='0';
        else if s="001"  then parity_bit<='1'; 
        else if s="010"  then parity_bit<='1';
        else if s="011"   then parity_bit<='0';
        else if s="100"   then parity_bit<='1';
        else if s="101"  then parity_bit<='0';
        else if s="110"  then parity_bit<='0';
        else if s="111"  then parity_bit<='1';
        end if; 
        end if; 
        end if; 
        end if; 
        end if; 
        end if; 
        end if; 
        end if; 
    end process;
end algo;