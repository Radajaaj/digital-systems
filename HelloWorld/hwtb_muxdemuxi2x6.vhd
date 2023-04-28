library ieee;
use ieee.std_logic_1164.all;

entity tb_muxdemuxi2x6 is

end entity;

architecture simedux of tb_muxdemuxi2x6 is

    component mux2x6 is
        port (
          C2_v  : in std_logic_vector (7 downto 0);
          EK_v  : in std_logic_vector (7 downto 0);
          selm  : in bit;
          MUX_s : out std_logic_vector (7 downto 0)
        );
      end component;

    component demux2x6 is
        port (
          C2_v2  : out std_logic_vector (7 downto 0);
          EK_v2  : out std_logic_vector (7 downto 0);
          seld   : in bit;
          MUX_e  : in std_logic_vector (7 downto 0)
        );
        end component;

    signal sC2_v  : std_logic_vector (7 downto 0);
    signal sEK_v  : std_logic_vector (7 downto 0);
    signal sC2_v2 : std_logic_vector (7 downto 0);
    signal sEK_v2 : std_logic_vector (7 downto 0);
    signal sMUX_v : std_logic_vector (7 downto 0);
    signal ssel   : bit;

begin
    u_mux2x6   : mux2x6   port map (sC2_v,  sEK_v,  ssel, sMUX_v);
    u_demux2x6 : demux2x6 port map (sC2_v2, sEK_v2, ssel, sMUX_v);

    u_tb : process
    begin
        sC2_v <= "01001000";
        sEK_v <= "00000010";
        ssel  <= '0';
        wait for 10 ns;
        wait for 10 ns;

        sC2_v <= "01011110";
        sEK_v <= "01100101";
        ssel  <= '1';
        wait for 10 ns;
        wait for 10 ns;

        sC2_v <= "01101100";
        sEK_v <= "10001010";
        ssel  <= '0';
        wait for 10 ns;
        wait for 10 ns;
    
        sC2_v <= "01111010";
        sEK_v <= "01101100";
        ssel  <= '1';
        wait for 10 ns;
        wait for 10 ns;

        sC2_v <= "01101111";
        sEK_v <= "00000110";
        ssel  <= '0';
        wait for 10 ns;
        wait for 10 ns;
    
        sC2_v <= "11111111";
        sEK_v <= "00100000";
        ssel  <= '1';
        wait for 10 ns;
        wait for 10 ns;
    
        sC2_v <= "01110111";
        sEK_v <= "01100011";
        ssel  <= '0';
        wait for 10 ns;
        wait for 10 ns;

        sC2_v <= "11101100";
        sEK_v <= "01101111";
        ssel  <= '1';
        wait for 10 ns;
        wait for 10 ns;
    
        sC2_v <= "01110010";
        sEK_v <= "00100110";
        ssel  <= '0';
        wait for 10 ns;
        wait for 10 ns;
    
        sC2_v <= "01010110";
        sEK_v <= "01101100";
        ssel  <= '1';
        wait for 10 ns;
        wait for 10 ns;
    
        sC2_v <= "01100100";
        sEK_v <= "10000010";
        ssel  <= '0';
        wait for 10 ns;
        wait for 10 ns;

        sC2_v <= "10111010";
        sEK_v <= "00100001";
        ssel  <= '1';
        wait for 10 ns;
        wait for 10 ns;

        wait;
    end process;
    
end architecture;
    
    
    
