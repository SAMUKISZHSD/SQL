-- Dominio 2
--Entidades: Aluno, Curso, Professor, Disciplina

-- create aluno
CREATE TABLE Aluno (
id_aluno integer PRIMARY KEY,
nome varchar(50),
email varchar(50)

);

-- create curso
CREATE TABLE Curso (
id_curso integer PRIMARY KEY,
nome varchar(50),
carga_horaria int

);

-- create professor
CREATE TABLE Professor (
id_professor integer PRIMARY KEY,
nome varchar(50),
departamento varchar(50)

);

-- create disciplina
CREATE TABLE Disciplina (
id_disciplina integer PRIMARY KEY,
nome varchar(50),
ementa varchar(50)

);


-- Dominio 2

-- adicionar data_nascimento na tabela aluno
ALTER TABLE Aluno ADD COLUMN data_nascimento date;

-- adicionar creditos na tabela disciplina
ALTER TABLE Disciplina ADD COLUMN creditos int;

-- Dominio 2

-- Alunos
INSERT INTO Aluno (id_aluno, nome, email, data_nascimento) VALUES (1, 'Maria Fernandes', 'maria@gmail.com', '1992-08-12');
INSERT INTO Aluno (id_aluno, nome, email, data_nascimento) VALUES (2, 'João Pedro', 'joaopedro@gmail.com', '1993-05-19');
INSERT INTO Aluno (id_aluno, nome, email, data_nascimento) VALUES (3, 'Ana Carolina', 'anacarolina@gmail.com', '1991-12-07');

-- Cursos
INSERT INTO Curso (id_curso, nome, carga_horaria) VALUES (1, 'Ciências da Computação', 3600);
INSERT INTO Curso (id_curso, nome, carga_horaria) VALUES (2, 'Engenharia Elétrica', 3800);
INSERT INTO Curso (id_curso, nome, carga_horaria) VALUES (3, 'Administração', 3400);


-- Professor
INSERT INTO Professor (id_professor, nome, departamento) VALUES (1, 'Carlos Andrade', 'Informática');
INSERT INTO Professor (id_professor, nome, departamento) VALUES (2, 'Maria Oliveira', 'Elétrica');
INSERT INTO Professor (id_professor, nome, departamento) VALUES (3, 'Roberto Almeida', 'Administração');

-- Disciplina
INSERT INTO Disciplina (id_disciplina, nome, ementa, creditos) VALUES (1, 'Banco de Dados', 'Introdução a SGDB', 4);
INSERT INTO Disciplina (id_disciplina, nome, ementa, creditos) VALUES (2, 'Circuitos Elétricos', 'Fundamentos', 5);
INSERT INTO Disciplina (id_disciplina, nome, ementa, creditos) VALUES (3, 'Gestão Financeira', 'Conceitos Básicos', 3);


-- Alterações de Dados
UPDATE Aluno SET email = 'mariafernandes@gmail.com' WHERE id_aluno = 1;

UPDATE Curso SET carga_horaria = 3800 WHERE id_curso = 1;

UPDATE Disciplina SET nome = 'Sistema de Banco de Dados' WHERE id_disciplina = 1;


-- Deletar
DELETE FROM Aluno WHERE id_aluno = 2;

DELETE FROM Curso WHERE id_curso = 3;
