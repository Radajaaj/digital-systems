library ieee; 
use ieee.std_logic_1164.all;

entity conversorf is
    port(
        entrada : in  std_logic_vector(5 downto 0);
        C2_v0   : out std_logic_vector(5 downto 0);
        EK_v0   : out std_logic_vector(5 downto 0)
    );
end entity;

architecture convertidor of conversorf is
begin
    C2_v0(5 downto 0) <= entrada(5 downto 0);

    EK_v0(5) <= (entrada(4) and not(entrada(3)) and not(entrada(2)) and not(entrada(1)) and not(entrada(0)));
    EK_v0(4) <= (not(entrada(4)) and (entrada(0) or entrada(1) or entrada(2) or entrada(3))) or (entrada(4) and not(entrada(3)) and not(entrada(2)) and not(entrada(1)) and not(entrada(0)));
    EK_v0(3) <= (entrada(3) and (entrada(2) or entrada(1) or entrada(0))) or (not(entrada(3)) and not(entrada(2)) and not(entrada(1)) and not(entrada(0)));
    EK_v0(2) <= (entrada(2) and (entrada(0) or entrada(1))) or (not(entrada(0)) and not(entrada(1)) and not(entrada(2)));
    EK_v0(1) <= entrada(1) xnor entrada(0);
    EK_v0(0) <= not(entrada(0));

end architecture;
