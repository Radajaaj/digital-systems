--  Demultiplexador de 2 canais com 6 bits por canal
library ieee;
use ieee.std_logic_1164.all;

entity demux2x6 is
    port(
        z0: out std_logic_vector(5 downto 0);
        z1: out std_logic_vector(5 downto 0);
        sel: in std_logic;
        c: in std_logic_vector(5 downto 0)
    );
end entity;

architecture descomutar of demux2x6 is
begin
    -- atribuição condicional
    z0 <= c when sel = '0' else "ZZZZZZ";
    z1 <= c when sel = '1' else "ZZZZZZ";
end architecture;