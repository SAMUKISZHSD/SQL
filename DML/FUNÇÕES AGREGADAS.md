# Funções Agregadas
<br>Estas funções processam conjunto de valores armazenados em um 
única coluna da tabela e retorna um único valor como resultado.  </br>

- COUNT( )
<br> Retrona o número de linhas de uma tabela</br>

```
  SELECT * FROM Clientes;
```

- SUM( )
<br>Devolve a soma</br>

```
  SELECT * FROM Clientes;
```


- MAX( )
<br>Retorna o maior valor</br>

```
  SELECT * FROM Clientes;
```


- MIN( )
<br>Retorna o menor valor</br>

```
  SELECT * FROM Clientes;
```

- AVG( )
<br>Retorna o valor médio</br>

```
  SELECT * FROM Clientes;
```


- GROUP BY
<br> O uso da cláusula GROUP BY faz com que os registros sejam
retornados na ordem crescente do(s) campo(s) usado(s) para agrupar o resultado da
função agregada. Mais um detalhe, todos os campos na cláusula SELECT devem
aparecer após a cláusula GROUP BY separados por vírgula, ou você terá um erro
de sintaxe na consulta. </br>

```
  SELECT * FROM Clientes;
```

- HAVING
<br> A cláusula HAVING vem a complementar a cláusula GROUP BY.
Quando usamos GROUP BY, os registros retornados serão todos os que
satisfizerem ao critério informado após a palavra WHERE. Porém, podemos querer
fazer uma segunda filtragem após termos os resultados dos cálculos das funções
agregadas. Neste caso, usamos a cláusula HAVING para fazer esta filtragem
posterior </br>

```
  SELECT * FROM Clientes;
```
