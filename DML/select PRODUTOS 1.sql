create table produtos (
	codigo SERIAL,
	nome varchar(50) not null,
	valor numeric(10,2) not null,
	quantidade numeric(10,2) not null,
	
	primary key (codigo)
	
);

insert into produtos (nome, valor, quantidade)
values ('borracha', 4.5, 2),
('caneta', 7.9, 3),
('caderno', 12.3, 4),
('sulfite', 24, 2),
('cola', 8.75, 1),
('régua', 6.0, 1);

-- selecione todos os produtos na tabela 
select * from produtos;

-- liste os produtos em ordem alfabetica
select * from produtos order by nome ASC;

-- mostre os produtos que tem valor maior que 10
select * from produtos where valor > 10;

-- quantos produtos tem uma quantidade superior a 2?
select * from produtos where quantidade > 2;

-- qual é o produto mais caro na tabela ?
select max(valor) as valor_maximo from produtos;

-- qual é o preço médio dos produtos?
select avg(valor) as media from produtos;