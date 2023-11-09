library ieee;
use ieee.std_logic_1164.all;
 
entity tbctrl is
end entity;
  
architecture control of tbctrl is
    component ctrl is
        port(
            q : in std_logic_vector(2 downto 0);
            j : out std_logic_vector(2 downto 0);
            k : out std_logic_vector(2 downto 0)
            );
        end component;
signal s_q, s_j, s_k : std_logic_vector(2 downto 0);

    begin
        u_ctrl0:ctrl port map(
            s_q,s_j,s_k
        );
    u_ctrl_a0 : process
    begin
        s_q <= "101";
        wait for 20 ns;
        s_q <= "111";
        wait for 20 ns;
        s_q <= "011";
        wait for 20 ns;
    end process;
end architecture;