CREATE TABLE funcionarios(
	id_func SERIAL,
	nome VARCHAR(50),
	cargo VARCHAR(50),
	salario NUMERIC(10,2),
	dt_inicio DATE,
	
	PRIMARY KEY (id_func)
);

insert into funcionarios(nome, cargo, salario, dt_inicio)
VALUES ('Ana', 'vendedor', 1200, '2021-01-02'),
('Bruna', 'vendedor', 1500, '2021-04-12'),
('Claudia', 'caixa', 3200, '2021-02-10'),
('Fernanda', 'vendedor', 2000, '2021-01-07'),
('Carlos', 'vendedor', 1200, '2021-01-02'),
('Mateus', 'gerente', 4500, '2020-09-10'),
('Daniel', 'vendedor', 1200, '2021-03-14'),
('Julia', 'estoquista', 1350, '2021-05-20'),
('Maria', 'vendedor', 1300, '2021-02-02'),
('Caio', 'estoquista', 1300, '2021-09-09'),
('Luis', 'limpeza', 1100, '2021-01-24');

select * from funcionarios;

-- qual o total de salários pagos para todos os funcionários?
select sum(salario) as total_salario from funcionarios;

-- qual o total de salários pagos para cada tipo de cargo?
-- 1 passo função
SELECT cargo, SUM(salario) FROM funcionarios GROUP BY cargo ORDER BY cargo;

-- 2 passo agrupar
select cargo, sum(salario) from funcionarios group by cargo;

select cargo, sum(salario) from funcionarios group by cargo order by cargo;

--qual o total de salários pagos para os tipos de cargos que 
--ganham um total acima de 3000 ordenados pelo cargo?
select cargo, SUM(salario) from funcionarios group by cargo having SUM(salario) > 3000 order by cargo;
	
-- QUAL O TOTAL DE SALÁRIOS PAGOS PARA OS TIPOS DE CARGOS QUE POSSUEM DATA DE ADMISSÃO DE MARÇO A JUNHO ORDENADOS PELO CARGO?
	
SELECT cargo, sum(salario) FROM funcionarios WHERE dt_inicio BETWEEN '2021-03-01' AND '2021-06-30' GROUP BY CARGO ORDER BY CARGO;
		
SELECT CARGO, SALARIO, DT_INICIO from funcionarios where dt_inicio BETWEEN '2021-03-01' AND '2021-06-30' order by cargo;
		
