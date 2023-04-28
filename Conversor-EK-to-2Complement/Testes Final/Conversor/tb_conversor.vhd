library ieee;
use ieee.std_logic_1164.all;

entity tb_conversor is

end entity;

architecture simconversor of tb_conversor is
    component conversor is
        port(
            entrada : in  std_logic_vector(5 downto 0);
            C2_v0   : out std_logic_vector(5 downto 0);
            EK_v0   : out std_logic_vector(5 downto 0)
        );
    end component;

    signal sentrada : std_logic_vector(5 downto 0);
    signal sC2_v    : std_logic_vector(5 downto 0);
    signal sEK_v    : std_logic_vector(5 downto 0);

begin

    u_conversor : conversor port map(sentrada, sC2_v, sEK_v);

    u_tb : process
    begin
        sentrada <= "000000";
        wait for 20 ns;

        sentrada <= "000001";
        wait for 20 ns;

        sentrada <= "000010";
        wait for 20 ns;

        sentrada <= "000100";
        wait for 20 ns;

        sentrada <= "001001";
        wait for 20 ns;

        sentrada <= "010000";
        wait for 20 ns;

        sentrada <= "010101";
        wait for 20 ns;

        sentrada <= "011111";
        wait for 20 ns;

        sentrada <= "010111";
        wait for 20 ns;

        sentrada <= "001111";
        wait for 20 ns;


    wait;
    end process;

end architecture;