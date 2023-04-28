library ieee;
use ieee.std_logic_1164.all;

entity conversor is 
		port(
			c : in std_logic_vector (5 downto 0);
			Z : out std_logic_vector (5 downto 0)
		);
end entity;

architecture behavior of conversor is

begin 
		
		Z(5) <= '1' when (c(4) and not c(3) and not c(2) and not c(1) and not c(0)) = '1' else '0';
		Z(4) <= not c(4) and (c(3) or c(2) or c(1) or c(0));
		Z(3) <= (c(3) and (c(2) or c(1) or c(0))) or (not c(3) and not c(2) and not c(1) and not c(0));
		Z(2) <= (c(2) and c(1)) or (c(2) and c(0)) or (not c(2) and not c(1) and not c(0));
		Z(1) <= c(1) xnor c(0);
		Z(0) <= (not c(0));
end architecture;
