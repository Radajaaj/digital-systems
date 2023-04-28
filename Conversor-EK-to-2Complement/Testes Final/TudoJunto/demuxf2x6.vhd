library ieee; 
use ieee.std_logic_1164.all;

entity demuxf2x6 is
  port (
    C2_v2  : out std_logic_vector (4 downto 0);
    EK_v2  : out std_logic_vector (4 downto 0);
    MUX_e  : in  std_logic_vector (5 downto 0);
    seld   : in  bit;
    ERRO   : out std_logic
    
  );
end entity;

architecture demuxagem of demuxf2x6 is
begin

  C2_v2 <= MUX_e(4 downto 0) when seld = '0' else "00000";
  EK_v2 <= MUX_e(4 downto 0) when seld = '1' else "00000";
  ERRO  <= '1' when MUX_e(5) = '1' else '0';

end architecture;