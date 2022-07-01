library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity counter is
    port (
        clk, clr : in bit;
        d : out bit_vector(3 downto 0)
        );
end counter;

architecture structure of counter is
begin
    p0: process(clk, clr) begin
        if clr='1' then
            d<="0000";
        elsif clk='1' and clk'event then
            if d="0000" then d <="0001";
            elsif d="0001" then d <= "0010";
            elsif d="0010" then d <= "0011";
            elsif d="0011" then d <= "0100";
            elsif d="0100" then d <= "0101";
            elsif d="0101" then d <= "0110";
            elsif d="0110" then d <= "0111";
            elsif d="0111" then d <= "1000";
            elsif d="1000" then d <= "1001";
            elsif d="1001" then d <= "1010";
            elsif d="1010" then d <= "1011";
            elsif d="1011" then d <= "1100";
            elsif d="1100" then d <= "1101";
            elsif d="1101" then d <= "1110";
            elsif d="1110" then d <= "1111";
            elsif d="1111" then d <= "0000";
            end if;
        end if;
    end process;
end structure;
