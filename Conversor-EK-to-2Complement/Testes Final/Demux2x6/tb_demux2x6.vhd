library ieee;
use ieee.std_logic_1164.all;

entity tb_demux2x6 is

end entity;

architecture sidemux of tb_demux2x6 is
    component demux2x6 is
        port (
          C2_v2  : out std_logic_vector (5 downto 0);
          EK_v2  : out std_logic_vector (5 downto 0);
          sel    : in bit;
          MUX_v  : in std_logic_vector  (5 downto 0)
        );
      end component;

    signal sC2_v2  : std_logic_vector (5 downto 0);
    signal sEK_v2  : std_logic_vector (5 downto 0);
    signal sMUX_v  : std_logic_vector (5 downto 0);
    signal ssel    : bit;

begin
    u_demux2x6 : demux2x6 port map (sC2_v2, sEK_v2, ssel, sMUX_v);

    u_tb : process
    begin

        sMUX_v <= "101101";
        ssel  <= '0';
        wait for 10 ns;
        
        sMUX_v <= "101010";
        ssel  <= '1';
        wait for 10 ns;
        
        sMUX_v <= "101001";
        ssel  <= '0';
        wait for 10 ns;
        
        sMUX_v <= "110110";
        ssel  <= '1';
        wait for 10 ns;
        
        sMUX_v <= "110010";
        ssel  <= '0';
        wait for 10 ns;
        
        sMUX_v <= "101011";
        ssel  <= '1';
        wait for 10 ns;
        
        sMUX_v <= "111110";
        ssel  <= '0';
        wait for 10 ns;
        
        sMUX_v <= "001111";
        ssel  <= '1';
        wait for 10 ns;
        
        sMUX_v <= "011001";
        ssel  <= '0';
        wait for 10 ns;
        
        sMUX_v <= "101010";
        ssel  <= '1';
        wait for 10 ns;
        
        sMUX_v <= "111011";
        ssel  <= '0';
        wait for 10 ns;
        
        sMUX_v <= "001101";
        ssel  <= '1';
        wait for 10 ns;



        wait;
    end process;
    
end architecture;
    
    
    
