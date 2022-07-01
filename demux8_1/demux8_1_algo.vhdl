library IEEE;
use IEEE.std_logic_1164.all;

entity demux8_1 is
    port (
        i : in bit;
        s0, s1, s2 : in bit;
        d0, d1, d2, d3, d4, d5, d6, d7 : out bit
    );
end demux8_1;

architecture algo of demux8_1 is
begin
    p0: process(i, s0, s1, s2)
    variable s: bit_vector(2 downto 0);
    begin
        s:=s2&s1&s0;
        if s="000" then d0<=i; d1<='0'; d2<='0'; d3<='0'; d4<='0'; d5<='0'; d6<='0'; d7 <='0';
        else if s="001"  then d0<='0'; d1<=i; d2<='0'; d3<='0'; d4<='0'; d5<='0'; d6<='0'; d7 <='0'; 
        else if s="010"  then d0<='0'; d1<='0'; d2<=i; d3<='0'; d4<='0'; d5<='0'; d6<='0'; d7 <='0';
        else if s="011"  then d0<='0'; d1<='0'; d2<='0'; d3<=i; d4<='0'; d5<='0'; d6<='0'; d7 <='0';
        else if s="100"  then d0<='0'; d1<='0'; d2<='0'; d3<='0'; d4<=i; d5<='0'; d6<='0'; d7 <='0';
        else if s="101"  then d0<='0'; d1<='0'; d2<='0'; d3<='0'; d4<='0'; d5<=i; d6<='0'; d7 <='0';
        else if s="110"  then d0<='0'; d1<='0'; d2<='0'; d3<='0'; d4<='0'; d5<='0'; d6<=i; d7 <='0';
        else if s="111"  then d0<='0'; d1<='0'; d2<='0'; d3<='0'; d4<='0'; d5<='0'; d6<='0'; d7 <=i;
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