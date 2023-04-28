library ieee;
use ieee.std_logic_1164.all;

entity tb_FFJK_Orig is
end entity;

architecture tb_teste_o of tb_FFJK_Orig is

    constant CLK_PERIOD : time := 20 ns;

    component FFJK_orig is
    port(

        j, k   : in std_logic;
        clock  : in std_logic;
        pr, cl : in std_logic;
        q, nq  : out std_logic

    );
    end component;

    signal sj, sk, spr, scl, sq, snq : std_logic;
    signal sclk : std_logic := '1';

begin

    u_FFJK_o : FFJK_orig port map(sj, sk, sclk, spr, scl, sq, snq);

    tbp_o : process
    begin
        spr <= '1';
        scl <= '0';
        sj  <= '0';
        sk  <= '0';

        wait for CLK_PERIOD;

        scl <= '1';

        wait for CLK_PERIOD;

        sj  <= '1';
        sk  <= '0';
        
        wait for CLK_PERIOD;

        sj  <= '1';
        sk  <= '1';
        
        wait for CLK_PERIOD;

        sj  <= '1';
        sk  <= '1';
        
        wait for CLK_PERIOD;

        sj  <= '0';
        sk  <= '1';
        
        wait for CLK_PERIOD;

        sj  <= '0';
        sk  <= '1';
        
        wait for CLK_PERIOD;
    
    end process;

    p_clock_o : process
    begin

        sclk <= not(sclk);
        wait for CLK_PERIOD/2;

    end process;


end architecture;