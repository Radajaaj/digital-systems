library ieee;
use ieee.std_logic_1164.all;

entity demux2x6 is
    port(
        z0:   out std_logic_vector(4 downto 0);
        z1:   out std_logic_vector(4 downto 0);
        erro: out std_logic;
        sel:  in std_logic;
        x:    in std_logic_vector(5 downto 0)


    );
end entity;

architecture descomutar of demux2x6 is
begin
    erro <= x(5);
    z0 <= x(4 downto 0) when sel = '0' else "ZZZZZ";
    z1 <= x(4 downto 0) when sel = '1' else "ZZZZZ";
end architecture;
