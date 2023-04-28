library ieee;
use ieee.std_logic_1164.all;
  
entity FFJK is
    port(
        clock : in  std_logic;
        pr, cl: in  std_logic;
        j,  k : in  std_logic;
        q,nq  : out std_logic
    );
end entity;
 
architecture ff o f FFJK is

    signal s_snj  , s_snk   : std_logic;
    signal s_sns  , s_snr   : std_logic;
    signal s_sns2 , s_snr2  : std_logic;
    signal s_eloS , s_eloR  : std_logic;
    signal s_eloQ , s_elonQ : std_logic;
    signal s_nClock         : std_logic;

begin
    s_nClock <=   not(clock);
    s_snj    <=  (not(j  and clock and s_elonQ));
    s_snk    <=  (not(k  and clock and s_eloQ));
    s_eloS   <=  (not(pr and s_snj and s_eloR));
    s_eloR   <=  (not(cl and s_snk and s_eloS));
    s_sns    <=   s_eloS;
    s_snr    <=   s_eloR;
    s_sns2   <= ((not(clock)) nand (s_sns));
    s_snr2   <=  (not(clock) nand s_snr);
    s_eloQ   <=   not(s_sns2 and pr and s_elonQ);
    s_elonQ  <=   not(s_snr2 and s_eloQ and cl);
    q        <=   s_eloQ;
    nq       <=   s_elonQ;
end architecture;