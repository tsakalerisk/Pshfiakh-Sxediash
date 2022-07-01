library IEEE;
use IEEE.std_logic_1164.all;

entity test_counter is
end test_counter;

architecture testbench of test_counter is
    component counter
        port (
            clk, clr : in bit;
            d : out bit_vector(3 downto 0)
        );
    end component;

    signal tb_clk: bit;
    signal tb_clr: bit;
    signal tb_d : bit_vector(3 downto 0);
begin
    u0: counter port map(
        clk => tb_clk,
        clr => tb_clr,
        d => tb_d
    );
    process
    begin
        for i in 0 to 15 loop
        	if i = 0 then
            	tb_clr <= '1';
            else
        		tb_clr <= '0';
            end if;
            tb_clk <= '1';
            wait for 2 ns;

            tb_clk <= '0';
            wait for 2 ns;
        end loop;
    end process;
end testbench;