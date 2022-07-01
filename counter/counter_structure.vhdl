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
    component jk_flip_flop
        port (
            j, k, clk, clr:in bit;
            q, q_bar:inout bit);
    end component;
    component and2
        port (
            i0, i1 : in bit;
            o : out bit
        );
    end component;
signal m0, m1, m2 : bit;
begin
    jk0: jk_flip_flop port map('1', '1', clk, clr, d(0));
    jk1: jk_flip_flop port map(d(0), d(0), clk, clr, d(1));
    and_0: and2 port map(d(0), d(1), m0);
    jk2: jk_flip_flop port map(m0, m0, clk, clr, d(2));
    and_1: and2 port map(m0, d(2), m1);
    jk3: jk_flip_flop port map(m1, m1, clk, clr, d(3));
    and_2: and2 port map(m1, d(3), m2);
end structure;

entity jk_flip_flop is
    port (
        j, k, clk, clr:in bit;
        q, q_bar:inout bit);
end jk_flip_flop;

architecture behave of jk_flip_flop is
begin
    p0:process (clr, clk)
    begin
        if clr='1' then
            q <= '0';
            q_bar <= '1';
        elsif clk = '1' and clk'event then
            if j='0' and k='0' then null ;
            elsif j='0' and k='1' then
                q<='0';
                q_bar<='1';
            elsif j='1' and k='0' then
                q<='1';
                q_bar<='0';
            elsif j='1' and k='1' then
                q<=not q;
                q_bar<=not q_bar;
            end if;
        end if;
    end process;
end behave;

entity and2 is
    port(
        i0, i1: in bit;
        o: out bit
    );
end and2;

architecture behave of and2 is
begin
    o <= i0 and i1;
end behave;