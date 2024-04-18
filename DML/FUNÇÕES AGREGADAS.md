# Funções Agregadas
<br>Estas funções processam conjunto de valores armazenados em um 
única coluna da tabela e retorna um único valor como resultado.  </br>

- COUNT( )
<br> Retrona o número de linhas de uma tabela</br>

```
select count(*) from produtos;
select count (nome) from produtos;
```

- SUM( )
<br>Devolve a soma</br>

```
-- qual o valor total de produtos cadastrados?
select sum(valor) as valor_total from produtos;
```


- MAX( )
<br>Retorna o maior valor</br>

```
-- qual é o produto mais caro na tabela ?
select max(valor) as valor_maximo from produtos;
```


- MIN( )
<br>Retorna o menor valor</br>

```
-- qual o produto de menor valor
select min(valor) as valor_minimo from produtos;
```

- AVG( )
<br>Retorna o valor médio</br>

```
-- qual é o preço médio dos produtos?
select avg(valor) as media from produtos;
```


- GROUP BY
<br> O uso da cláusula GROUP BY faz com que os registros sejam
retornados na ordem crescente do(s) campo(s) usado(s) para agrupar o resultado da
função agregada. Mais um detalhe, todos os campos na cláusula SELECT devem
aparecer após a cláusula GROUP BY separados por vírgula, ou você terá um erro
de sintaxe na consulta. </br>

```
-- queremos saber quantas pessoas visitaram o museu em cada dia
SELECT date, COUNT(*) AS num_visits FROM visita GROUP BY date;
```

- HAVING
<br> A cláusula HAVING vem a complementar a cláusula GROUP BY.
Quando usamos GROUP BY, os registros retornados serão todos os que
satisfizerem ao critério informado após a palavra WHERE. Porém, podemos querer
fazer uma segunda filtragem após termos os resultados dos cálculos das funções
agregadas. Neste caso, usamos a cláusula HAVING para fazer esta filtragem
posterior </br>

```
-- Vamos encontrar os dias em que o preço médio do ingresso foi superior a $5
SELECT date, AVG(price) AS media_preco FROM visita GROUP BY date HAVING media_preco > 5;
```
