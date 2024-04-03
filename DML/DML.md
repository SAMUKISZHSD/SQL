# Comandos DML
A linguagem de manipulação de dados, mais conhecida como DML é um grupo de comandos dentro da linguagem SQL que é utilizada para inclusão, remoção e modificar o conteúdo das tabelas em um banco de dados, seus principais comandos são: INSERT, UPDATE, SELECT e DELETE.

**SELECT**
<br> Comando utilizado para recuperar as informações armazenadas em um banco de dados </br>
*SELECT * FROM Clientes;*

**INSERT**
<br> É o comando utilizado para inserir registros em uma tabela já existente no seu banco de dados. </br>
*'INSERT INTO nome_tabela VALUES (valores que serão inseridos)' = 'INSERT INTO funcionarios (código, nome, salario) VALUES (1, 'Joao', 2500)'*


**UPDATE**
<br> Comando utilizado para modificar as informações existentes em uma tabela, sejam dados individuais ou grupos de dados, portanto você pode atualizar um único registro ou vários dentro de uma tabela em seu banco de dados. </br>
*'UPDATE nome_tabela SET campo = ‘novo valor’ WHERE condição' = 'UPDATE departamento SET salario = 1000 WHERE codigodep = 1'*


**DELETE**
<br> Comando utilizado para exclusão de dados de uma tabela em seu banco de dados. </br>
*'DELETE FROM nome_tabela WHERE condição' = 'DELETE FROM funcionários WHERE código = 130'*
