library ieee;
use ieee.std_logic_1164.all;


entity conversorC2_Ek is
    port(
        canal_Conv: in std_logic_vector(5 downto 0);
        saida_Conv: out std_logic_vector(5 downto 0)
    );
end entity;

architecture conversor of conversorC2_Ek is
begin
    saida_Conv(0) <= (not(canal_Conv(1)));
    
    saida_Conv(1) <= ((not(canal_Conv(2)) and not(canal_Conv(1))) or (canal_conv(2) and canal_Conv(1)));
    
    saida_Conv(2) <= ((not(canal_Conv(2)) and not(canal_Conv(1)) and not(canal_Conv(0))) or ((canal_Conv(1) and canal_Conv(0))) or ((canal_Conv(2) and not(canal_Conv(1)) and canal_Conv(0))));
    
    saida_Conv(3) <= ((not(canal_Conv(3)) and not(canal_Conv(2)) and not(canal_Conv(1)) and not(canal_Conv(0))) or ((canal_Conv(3) and canal_Conv(0))) or ((canal_Conv(3) and canal_Conv(1) and not(canal_Conv(0)))) or ((canal_Conv(3) and canal_Conv(2) and not(canal_Conv(1)) and canal_Conv(0))));
    
    saida_Conv(4) <= (not(canal_Conv(4)) and canal_Conv(0)) or (not(canal_Conv(4)) and canal_Conv(3)) or (not(canal_Conv(4)) and canal_Conv(1)) or (not(canal_Conv(4)) and canal_Conv(2));
    
    saida_Conv(5) <= ((canal_Conv(4) and not(canal_Conv(3)) and not(canal_Conv(2)) and not(canal_Conv(1)) and not(canal_Conv(0))));
end architecture;

--S0 = (~C1)
--S1 = (~C2 . ~C1) + (C2 . C1)	
--S2 = (~C2 . ~C1 . ~C0) + (C1 . C0) + (C2 . ~C1 . C0)
--S3 = (~C3 . ~C2 . ~C1 . ~C0) + (C3 . C0) + (C3 . C1 . ~C0) + (C3 . C2 . ~C1 . ~C0)				
--S4 = (~C4 . C0) + (~C4 . C3) + (~C4 . C1) + (~C4 . C2) /////////////////// SIMPLIFICADO = ~C4 . (C0 + C1 + C2 + C3)	