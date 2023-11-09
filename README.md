# Digital-Systems
Repositório para a matéria de sistemas digitais. Usando VHDL para descrever, GHDL para simular e GTKWave para visualizar diferentes tipos de hardware e circuitos digitais.

## Compilação:
* Instale o compilador GHDL:
  * http://ghdl.free.fr/;
  * https://github.com/ghdl/ghdl/releases;
* Abra o terminal na mesma pasta aonde estão os arquivos .vhdl e .vhd;
* Execute os comandos:
* ghdl -a **.vhdl;
  * O terceiro argumento, "**.vhdl", serve para definir qual arquivo vai ser avaliado. Use "**" para automaticamente analisar todos os arquivos com a extensão ".vhdl"
  * Se ele puder ser compilado, o comando não terá nenhum retorno. Se o código possuir erros na sintaxe, o comando retornará uma lista com a localização de todos os erros.
  * Se ocorrer algum erro, delete o arquivo "work-obj93.cf", e execute o comando novamente. Um arquivo novo com o mesmo nome será criado;
* ghdl -r testbenchname --stop-time=999ns -- wave=testbenchname.ghw;
  * No lugar de "testbench", coloque o nome da primeira "entidade" que for declarada dentro do arquivo chamado "tb_FunçãoDoArquivo.vhdl";
   * A sintaxe será "entity NOME-DA-ENTIDADE is". Coloque NOME-DA-ENTIDADE no lugar de testbenchname;
  * A testbench serve para gerir os bits e sinais que vão entrar no circuito a ser simulado;

## Visualização do código:
* Instale o GTKWave (https://gtkwave.sourceforge.net/);
* Abra os arquivos .ghw ou .gtkw dentro do GTKWave;
* Alguns dos projetos possuem os arquivos ghw e gtkw já compilados;
