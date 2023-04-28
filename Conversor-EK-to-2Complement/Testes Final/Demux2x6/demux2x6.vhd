library ieee;
use ieee.std_logic_1164.all;

entity demux2x6 is
  port (
    C2_v2  : out std_logic_vector (5 downto 0);
    EK_v2  : out std_logic_vector (5 downto 0);
    sel    : in bit;
    MUX_v  : in std_logic_vector (5 downto 0)
  );
end entity;

architecture demuxagem of demux2x6 is
begin

  C2_v2 <= MUX_v when sel = '0' else "000000";
  EK_v2 <= MUX_v when sel = '1' else "000000";

end architecture;