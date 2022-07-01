library IEEE;
use IEEE.std_logic_1164.all;

entity encoder8_3 is
    port (
        i0, i1, i2, i3, i4, i5, i6, i7 : in bit;
        d0, d1, d2 : out bit
    );
end encoder8_3;

architecture algo of encoder8_3 is
begin
    p0: process(i0, i1, i2, i3, i4, i5, i6, i7)
    variable s: bit_vector(7 downto 0);
    begin
        s:=i7&i6&i5&i4&i3&i2&i1&i0;
        if s="00000001" then d2<='0'; d1<='0'; d0<='0'; 
        else if s="00000010" then d2<='0'; d1<='0'; d0<='1';
        else if s="00000100" then d2<='0'; d1<='1'; d0<='0';
        else if s="00001000" then d2<='0'; d1<='1'; d0<='1';
        else if s="00010000" then d2<='1'; d1<='0'; d0<='0';
        else if s="00100000" then d2<='1'; d1<='0'; d0<='1';
        else if s="01000000" then d2<='1'; d1<='1'; d0<='0';
        else if s="10000000" then d2<='1'; d1<='1'; d0<='1';
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