-- Multiplexador de 2 canais com 6 bits por canal
library ieee;
use ieee.std_logic_1164.all;

entity mux2x6 is
    port(
        c0 : in std_logic_vector(5 downto 0);
        c1 : in std_logic_vector(5 downto 0);
        sel: in std_logic;
        z : out std_logic_vector(5 downto 0)
    );
end entity;

architecture comutar of mux2x6 is 

begin
    --atribuicao condicional
    z <= c0 when sel = '0' else 
         c1 when sel = '1' else "ZZZZZZ";
end architecture;

