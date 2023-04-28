library ieee;
use ieee.std_logic_1164.all;

entity tb_muxdemuxi2x6 is

end entity;

architecture simedux of tb_muxdemuxi2x6 is

    component mux2x6 is
        port (
          C2_v  : in std_logic_vector (5 downto 0);
          EK_v  : in std_logic_vector (5 downto 0);
          selm  : in bit;
          MUX_s : out std_logic_vector (5 downto 0)
        );
      end component;

    component demux2x6 is
        port (
          C2_v2  : out std_logic_vector (5 downto 0);
          EK_v2  : out std_logic_vector (5 downto 0);
          seld   : in bit;
          MUX_e  : in std_logic_vector (5 downto 0)
        );
        end component;

    signal sC2_v  : std_logic_vector (5 downto 0);
    signal sEK_v  : std_logic_vector (5 downto 0);
    signal sC2_v2 : std_logic_vector (5 downto 0);
    signal sEK_v2 : std_logic_vector (5 downto 0);
    signal sMUX_v : std_logic_vector (5 downto 0);
    signal ssel   : bit;

begin
    u_mux2x6   : mux2x6   port map (sC2_v,  sEK_v,  ssel, sMUX_v);
    u_demux2x6 : demux2x6 port map (sC2_v2, sEK_v2, ssel, sMUX_v);

    u_tb : process
    begin
        sC2_v <= "010000";
        sEK_v <= "000010";
        ssel  <= '0';
        wait for 10 ns;
        
        sC2_v <= "010110";
        sEK_v <= "010101";
        ssel  <= '1';
        wait for 10 ns;

        sC2_v <= "011100";
        sEK_v <= "101010";
        ssel  <= '0';
        wait for 10 ns;
    
        sC2_v <= "011010";
        sEK_v <= "011100";
        ssel  <= '1';
        wait for 10 ns;

        sC2_v <= "011111";
        sEK_v <= "000110";
        ssel  <= '0';
        wait for 10 ns;
    
        sC2_v <= "111111";
        sEK_v <= "000000";
        ssel  <= '1';
        wait for 10 ns;
    
        sC2_v <= "010111";
        sEK_v <= "000011";
        ssel  <= '0';
        wait for 10 ns;

        sC2_v <= "101100";
        sEK_v <= "001111";
        ssel  <= '1';
        wait for 10 ns;
    
        sC2_v <= "011010";
        sEK_v <= "000110";
        ssel  <= '0';
        wait for 10 ns;
    
        sC2_v <= "010110";
        sEK_v <= "011100";
        ssel  <= '1';
        wait for 10 ns;
    
        sC2_v <= "010100";
        sEK_v <= "100010";
        ssel  <= '0';
        wait for 10 ns;

        sC2_v <= "101010";
        sEK_v <= "000001";
        ssel  <= '1';
        wait for 10 ns;

        wait;
    end process;
    
end architecture;
    
    
    
