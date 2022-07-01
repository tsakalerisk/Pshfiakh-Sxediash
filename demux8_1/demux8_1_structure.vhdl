library IEEE;
use IEEE.std_logic_1164.all;

entity demux8_1 is
    port (
        i : in bit;
        s0, s1, s2 : in bit;
        d0, d1, d2, d3, d4, d5, d6, d7 : out bit
    );
end demux8_1;

architecture structure of demux8_1 is
    component and4
    port(
        x1, x2, x3, x4: in bit;
        o: out bit
    );
    end component;

    component inv
    port(
        x: in bit;
        o: out bit
    );
    end component;

    signal inv0, inv1, inv2: bit;
begin
    u0: inv port map(s0, inv0);
    u1: inv port map(s1, inv1);
    u2: inv port map(s2, inv2);
    u3: and4 port map(i, inv2, inv1, inv0, d0);
    u4: and4 port map(i, inv2, inv1, s0, d1);
    u5: and4 port map(i, inv2, s1, inv0, d2);
    u6: and4 port map(i, inv2, s1, s0, d3);
    u7: and4 port map(i, s2, inv1, inv0, d4);
    u8: and4 port map(i, s2, inv1, s0, d5);
    u9: and4 port map(i, s2, s1, inv0, d6);
    u10: and4 port map(i, s2, s1, s0, d7);
end structure;

entity and4 is 
port(
    x1, x2, x3, x4: in bit;
    o: out bit
);
end and4;

architecture behave of and4 is
begin
    o <= x1 and x2 and x3 and x4;
end behave;

entity inv is
    port(
        x: in bit;
        o: out bit
    );
end inv;

architecture behave of inv is
    begin
        o <= not x;
end behave;