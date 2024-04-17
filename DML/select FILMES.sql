-- Select: Comando utilizado para recuperar as informações armazenadas em um banco de dados.

-- create tabela 
CREATE TABLE filmes (
codigo SERIAL,
titulo VARCHAR(100),
duracao INTEGER,
tipo VARCHAR(100),

CONSTRAINT codpk PRIMARY KEY (codigo)

);

-- infos
INSERT INTO filmes (titulo, duracao, tipo) VALUES
('O poderoso Chefão', 153, 'Policial'),
('A lista de Schindler',189,'Histórico'),
('O Rei Leão',78,'Animação'),
('Vingadores: Ultimato',180,'Fantasia'),
('De Volta para o Futuro',94,'Ficção Científica');


-- CONSULTA TODAS AS INFORMAÇÕES DA TABELA E RETORNA DADOS DE TODAS AS COLUNAS
select * from filmes;

-- RETORNAR APENAS O TÍTULO E DURAÇÃO
select titulo, duracao from filmes;

-- UTILIZAR A CLÁUSULA WHERE
select * from filmes where duracao < 100; 
select * from filmes where duracao > 100;

-- seleciona códigos específicos 2 até 4
select * from filmes where codigo >=2 and codigo <= 4;
select * from filmes where codigo between 2 and 4;

-- selecionar por título
select * from filmes where titulo = 'De Volta para o futuro';

-- fazer consultas de strings com LIKE
select * from filmes where titulo LIKE 'De Volta%';

-- o comando LIKE é case sensitive 
select * from filmes where titulo LIKE '%Futuro';

-- o comando ILIKE não é case sensitive
select * from filmes where titulo ILIKE '%Futuro';

-- PARA ORDENAR O RESULTADO UTILIZA-SE ORDER BY

-- ORDER CRESCENTE 
select * from filmes order by titulo ASC;
-- ORDER DECRECENTE
select * from filmes order by titulo DESC;

select titulo, duracao from filmes where duracao < 100 order by titulo asc;

-- MOSTRE OS FILMES DOS TIPOS ANIMAÇÃO E POLICIAL?
select * from filmes where tipo = 'Animação' or tipo = 'Policial';

select * from filmes where tipo IN ('Animação', 'Policial');

-- SELECIONA REGISTROS DISTINTOS 
SELECT DISTINCT tipo FROM filmes;


-- DESAFIO: mostre os filmes dos tipos "animação" e "policial"
select * from filmes where tipo IN ('Animação','Policial');
