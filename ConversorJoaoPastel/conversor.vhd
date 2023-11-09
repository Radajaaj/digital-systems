library ieee;
use ieee.std_logic_1164.all;

entity tb_conversor is
    end tb_conversor;

    architecture arch of tb_conversor is
       
        component mux2x6 is
            port(
                c0 : in std_logic_vector(5 downto 0);
                c1 : in std_logic_vector(5 downto 0);
                sel: in std_logic;
                z : out std_logic_vector(5 downto 0)
            );
    end component;
    
    component demux2x6 is
        port(
            z0: out std_logic_vector(5 downto 0);
            z1: out std_logic_vector(5 downto 0);
            sel: in std_logic;
            c: in std_logic_vector(5 downto 0)
        );
    end component;

    component conversorC2_Ek is
        port(
            canal_Conv: in std_logic_vector(5 downto 0);
            saida_Conv: out std_logic_vector(5 downto 0)
        );
    end component;

    signal s_c0, s_c1, s_z : std_logic_vector(5 downto 0);
    signal s_sel : std_logic;
    signal se, sc0, sc1 : std_logic_vector(5 downto 0);
    signal s_se : std_logic;

begin
    
    u_mux2x6: mux2x6 port map(s_c0, s_c1, s_sel, s_z);
    u_demux2x6: demux2x6 port map(sc0, sc1, s_sel, s_z);
    u_conversor: conversorC2_Ek port map(s_c0, s_c1);

    s_se <= '1' when (sc0(5) or sc1(5)) = '1' else '0';
    
    
    u_teste: process

    begin
        s_c0 <= "000000";
        s_sel <= '0';

        wait for 20 ns;

        s_c0 <= "000000";
        s_sel <= '1';

        wait for 20 ns;

        s_c0 <= "000001";
        s_sel <= '0';

        wait for 20 ns;

        s_c0 <= "000001";
        s_sel <= '1';

        wait for 20 ns;

        s_c0 <= "000010";
        s_sel <= '0';

        wait for 20 ns;

        s_c0 <= "000010";
        s_sel <= '1';

        wait for 20 ns;

        s_c0 <= "010000";
        s_sel <= '0';

        wait for 20 ns;

        s_c0 <= "010000";
        s_sel <= '1';

        wait for 20 ns;

        s_c0 <= "011000";
        s_sel <= '0';

        wait for 20 ns;

        s_c0 <= "011000";
        s_sel <= '1';

        wait for 20 ns;

        s_c0 <= "010011";
        s_sel <= '0';

        wait for 20 ns;

        s_c0 <= "010011";
        s_sel <= '1';

        wait for 20 ns;
        wait;
        end process;

    end architecture;