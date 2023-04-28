library ieee;
use ieee.std_logic_1164.all;

entity mux2x6 is
    port(
            c2  : in std_logic_vector (5 downto 0);
            ek  : in std_logic_vector (5 downto 0);
            sel : in std_logic;
            h   : out std_logic_vector (5 downto 0)
);
end entity;

architecture behavior of mux2x6 is

begin
        
        h <= c2 when sel = '0' else ek;

end architecture;
