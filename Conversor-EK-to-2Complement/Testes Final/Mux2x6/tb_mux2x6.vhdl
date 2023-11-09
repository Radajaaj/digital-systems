library ieee;
use ieee.std_logic_1164.all;

entity tb_mux2x6 is

end entity;

architecture simux of tb_mux2x6 is
    component mux2x6 is
        port (
          C2_v  : in std_logic_vector (5 downto 0);
          EK_v  : in std_logic_vector (5 downto 0);
          sel   : in bit;
          MUX_v : out std_logic_vector (5 downto 0)
        );
    end component;

    signal sC2_v  : std_logic_vector (5 downto 0);
    signal sEK_v  : std_logic_vector (5 downto 0);
    signal sMUX_v : std_logic_vector (5 downto 0);
    signal ssel   : bit;

begin
    u_mux2x6 : mux2x6 port map (sC2_v, sEK_v, ssel, sMUX_v);

    u_tb : process
    begin
        sC2_v <= "001001";
        sEK_v <= "000000";
        ssel  <= '0';
        wait for 10 ns;

        sC2_v <= "010110";
        sEK_v <= "011100";
        ssel  <= '1';
        wait for 10 ns;

        sC2_v <= "011011";
        sEK_v <= "100010";
        ssel  <= '0';
        wait for 10 ns;
    
        sC2_v <= "011010";
        sEK_v <= "001111";
        ssel  <= '1';
        wait for 10 ns;

        sC2_v <= "111111";
        sEK_v <= "000000";
        ssel  <= '0';
        wait for 10 ns;
    
        sC2_v <= "111111";
        sEK_v <= "000000";
        ssel  <= '1';
        wait for 10 ns;
    
        sC2_v <= "010000";
        sEK_v <= "000011";
        ssel  <= '0';
        wait for 10 ns;

        sC2_v <= "111100";
        sEK_v <= "101100";
        ssel  <= '1';
        wait for 10 ns;
    
        sC2_v <= "111011";
        sEK_v <= "000110";
        ssel  <= '0';
        wait for 10 ns;
    
        sC2_v <= "011110";
        sEK_v <= "001110";
        ssel  <= '1';
        wait for 10 ns;
    
        sC2_v <= "011101";
        sEK_v <= "100010";
        ssel  <= '0';
        wait for 10 ns;

        sC2_v <= "101010";
        sEK_v <= "010101";
        ssel  <= '1';
        wait for 10 ns;

        wait;
    end process;
    
end architecture;
    
    
    
