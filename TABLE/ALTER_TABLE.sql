-- ALTER TABLE EXEMPLO

-- tabela base:
CREATE TABLE alunos (
  rgm_alu INTEGER PRIMARY KEY,
  nome_alu VARCHAR (50),
  endereco_alu VARCHAR (50),
  celular VARCHAR (50)
		
);

-- Altere a tabela adicionando uma nova coluna chamada dt_nascimento 
ALTER TABLE alunos ADD COLUMN dt_nascimento DATE;

-- Alterar o tipo da tabela celular
ALTER TABLE alunos ALTER COLUMN celular TYPE INT;

-- Renomeie a coluna celular para telefone_alu
ALTER TABLE alunos RENAME COLUMN  celular TO telefone_alu;

--  Delete a coluna dt_nascimento
ALTER TABLE alunos DROP COLUMN dt_nascimento RESTRICT;

--  Altere a restrição da coluna celular para que não possa tervalores nulos
ALTER TABLE alunos ALTER COLUMN dt_nascimento SET NOT NULL;

--  Altere o nome da tabela para cad_alunos.
ALTER TABLE alunos RENAME TO cad_alunos;

--  Deletar a tabela cad_aluno
DROP TABLE  cad_alunos CASCADE;



