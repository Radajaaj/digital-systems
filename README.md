# Digital-Systems
Repositório para a matéria de sistemas digitais. Usando VHDL para descrever, GHDL para simular e GTKWave para visualizar diferentes tipos de hardware e circuitos digitais.
## Visualização do código:
** Instale o GTKWave (https://gtkwave.sourceforge.net/)
## Compilação:
* ghdl -a *.vhdl
* ghdl -r testbenchname --stop-time=40ns -- wave=testbenchname.ghw
