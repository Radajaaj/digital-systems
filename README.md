# Digital-Systems
Repositório para a matéria de sistemas digitais. Usando VHDL para descrever, GHDL para simular e GTKWave para visualizar diferentes tipos de hardware e circuitos digitais.

## Compilação:
* ghdl -a *.vhdl;
* ghdl -r testbenchname --stop-time=40ns -- wave=testbenchname.ghw;

## Visualização do código:
* Instale o GTKWave (https://gtkwave.sourceforge.net/);
* Abra os arquivos .ghw ou .gtkw dentro do GTKWave;
* Alguns dos projetos possuem os arquivos ghw e gtkw já compilados;
