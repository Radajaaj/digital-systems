library ieee; 
use ieee.std_logic_1164.all;

entity tb_final is

end entity;

architecture conversivel of tb_final is

    component muxf2x6 is
        port (
          C2_v  : in std_logic_vector (5 downto 0);
          EK_v  : in std_logic_vector (5 downto 0);
          selm  : in bit;
          MUX_s : out std_logic_vector (5 downto 0)
        );
      end component;

    component demuxf2x6 is
        port (
          C2_v2  : out std_logic_vector (4 downto 0);
          EK_v2  : out std_logic_vector (4 downto 0);
          MUX_e  : in std_logic_vector  (5 downto 0);
          seld   : in bit;
          ERRO   : out std_logic
        );
        end component;
      
    component conversorf is
        port(
          entrada : in  std_logic_vector(5 downto 0);
          C2_v0   : out std_logic_vector(5 downto 0);
          EK_v0   : out std_logic_vector(5 downto 0)
        );
      end component;

    signal sentrada: std_logic_vector (5 downto 0);
    signal sC2_v   : std_logic_vector (5 downto 0);
    signal sEK_v   : std_logic_vector (5 downto 0);
    signal sC2_v2  : std_logic_vector (4 downto 0);
    signal sEK_v2  : std_logic_vector (4 downto 0);
    signal sMUX_v  : std_logic_vector (5 downto 0);
    signal sERRO   : std_logic;
    signal ssel    : bit;

begin
    u_conversor : conversorf port map (sentrada, sC2_v, sEK_v);
    u_mux2x6    : muxf2x6    port map (sC2_v,  sEK_v,  ssel, sMUX_v);
    u_demux2x6  : demuxf2x6  port map (sC2_v2, sEK_v2, sMUX_v, ssel, sERRO);

    u_tb : process
    begin
      sentrada <= "000000";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "000000";
      ssel <= '1';
      wait for 20 ns;

      sentrada <= "000001";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "000001";
      ssel <= '1';
      wait for 20 ns;

      sentrada <= "000010";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "000010";
      ssel <= '1';
      wait for 20 ns;

      sentrada <= "000100";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "000100";
      ssel <= '1';
      wait for 20 ns;

      sentrada <= "001001";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "001001";
      ssel <= '1';
      wait for 20 ns;

      sentrada <= "010000";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "010000";
      ssel <= '1';
      wait for 20 ns;

      sentrada <= "010101";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "010101";
      ssel <= '1';
      wait for 20 ns;

      sentrada <= "011111";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "011111";
      ssel <= '1';
      wait for 20 ns;

      sentrada <= "010111";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "010111";
      ssel <= '1';
      wait for 20 ns;

      sentrada <= "001111";
      ssel <= '0';
      wait for 20 ns;

      sentrada <= "001111";
      ssel <= '1';
      wait for 20 ns;

    wait;
    end process;
    
end architecture;
    
    
    
