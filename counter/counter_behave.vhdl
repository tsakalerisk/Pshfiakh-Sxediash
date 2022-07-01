library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity counter is
    port (
        clk, clr : in bit;
        d : out std_logic_vector(3 downto 0)
        );
end counter;

architecture behave of counter is
begin
    p0: process(clr, clk) begin
        if clr='1' then
            d <= "0000";
        elsif clk='1' and clk'event then
        	d <= d + 1;
        end if;
    end process;
end behave;