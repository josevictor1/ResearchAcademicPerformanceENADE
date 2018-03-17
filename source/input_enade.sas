/************************************************************************* 
MEC/INEP/DAES (Diretoria de Avalia��o da Educa��o Superior) 
Coordena��o Geral de Controle de Qualidade da Educa��o Superior
-------------------------------------------------------------------------- 
Programa: 
	sas_input_enade_2015.sas (Pasta "INPUTS") 
-------------------------------------------------------------------------- 
Descri��o: 
	Programa para Leitura dos Microdados do enade 2015

************************************************************************** 
Obs: Para executar este programa � necess�rio salvar o arquivo 
"microdados_enade_2015.csv" (Pasta "DADOS") no diret�rio "C:\" do computador.
 
*************************************************************************/

proc import datafile="data\microdados_enade_2015.csv" 
	out=enade_2015 
	dbms=dlm 
	replace; 
	delimiter=";"; 
run;