library IEEE;
use IEEE.std_logic_1164.all;

entity test_subtractor is
end test_subtractor;

architecture testbench of test_subtractor is
    component subtractor
        port (
            x, y : in bit_vector(3 downto 0);
            borrow : inout bit_vector(4 downto 0);
            d : out bit_vector(3 downto 0)
        );
    end component;

    signal tb_x, tb_y, tb_d: bit_vector(3 downto 0);
    signal tb_borrow: bit_vector(4 downto 0);
begin
    u0: subtractor port map(
        x => tb_x,
        y => tb_y,
        borrow => tb_borrow,
        d => tb_d
    );
    process
    begin
    	--To borrow einai "00000" by default.
        
        -- 10-1
        tb_x <= "1010";
        tb_y <= "0001";
        wait for 10 ns;

        -- 6-4
        tb_x <= "0110";
        tb_y <= "0100";
        wait for 10 ns;

        -- 2-9
        tb_x <= "0010";
        tb_y <= "1001";
        wait for 10 ns;

        -- 3-15
        tb_x <= "0011";
        tb_y <= "1111";
        wait for 10 ns;

        -- 0-1
        tb_x <= "0000";
        tb_y <= "0001";
        wait for 10 ns;

        -- 11-4
        tb_x <= "1011";
        tb_y <= "0100";
        wait for 10 ns;

    end process;
end testbench;