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

-- mostrar tabela filmes
select * from filmes;

--mostrar algumas colunas 
select titulo, duracao from filmes;


-- DESAFIO: mostre os filmes dos tipos "animação" e "policial"
select * from filmes where tipo IN ('Animação','Policial');