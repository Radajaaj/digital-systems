library ieee;
use ieee.std_logic_1164.all;

entity tb_tudo is
end entity;

architecture test of tb_tudo is
    component conversor is
        port(
		c    : in std_logic_vector (5 downto 0);
		Z    : out std_logic_vector (5 downto 0)
		);
end component;


    component mux2x6 is
        port(
            c2 : in std_logic_vector (5 downto 0);
            ek : in std_logic_vector (5 downto 0);
            sel : in std_logic;
            h : out std_logic_vector (5 downto 0)
        );
end component;
    
    component demux2x6 is
    port(
        z0:   out std_logic_vector(4 downto 0);
        z1:   out std_logic_vector(4 downto 0);
        erro: out std_logic;
        sel:  in std_logic;
        x:    in std_logic_vector(5 downto 0)
    );
end component;

    signal ssc, ssZ : std_logic_vector(5 downto 0);
    signal sc2, sek, sh : std_logic_vector (5 downto 0);
    signal sz0,sz1 : std_logic_vector(4 downto 0);
    signal ssel, serro : std_logic;
    signal sx : std_logic_vector(5 downto 0);

begin
	u_conversor : conversor port map (sc2,sek);
	u_mux2x6    : mux2x6 port map (sc2,sek,ssel,sx);
	u_demux2x6  : demux2x6 port map (sz0,sz1,serro,ssel,sx);
	
	u_tb : process
    begin
      sc2 <= "000000";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "000000";
      ssel <= '1';
      wait for 20 ns;

      sc2 <= "000001";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "000001";
      ssel <= '1';
      wait for 20 ns;

      sc2 <= "000010";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "000010";
      ssel <= '1';
      wait for 20 ns;

      sc2 <= "000100";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "000100";
      ssel <= '1';
      wait for 20 ns;

      sc2 <= "001001";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "001001";
      ssel <= '1';
      wait for 20 ns;

      sc2 <= "010000";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "010000";
      ssel <= '1';
      wait for 20 ns;

      sc2 <= "010101";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "010101";
      ssel <= '1';
      wait for 20 ns;

      sc2 <= "011111";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "011111";
      ssel <= '1';
      wait for 20 ns;

      sc2 <= "010111";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "010111";
      ssel <= '1';
      wait for 20 ns;

      sc2 <= "001111";
      ssel <= '0';
      wait for 20 ns;

      sc2 <= "001111";
      ssel <= '1';
      wait for 20 ns;

    wait;
    end process;
end architecture;








