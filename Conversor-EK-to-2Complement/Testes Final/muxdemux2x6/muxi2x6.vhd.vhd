library ieee;
use ieee.std_logic_1164.all;

entity mux2x6 is
  port (
    C2_v  : in std_logic_vector (5 downto 0);
    EK_v  : in std_logic_vector (5 downto 0);
    selm  : in bit;
    MUX_s : out std_logic_vector (5 downto 0)
  );
end entity;

architecture muxagem of mux2x6 is
begin

  MUX_s <= C2_v when selm = '0' else EK_v;

end architecture;