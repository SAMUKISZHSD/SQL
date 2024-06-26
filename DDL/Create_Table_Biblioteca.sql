--ATIVIDADE 1 CREATE TABLE (EXERCICIO BIBLIOTECA)
 
CREATE TABLE livro (
  ID_LIVRO INTEGER PRIMARY KEY,
  TITULO VARCHAR(50),
  AUTOR VARCHAR(50),
  NUM_COPIAS INTEGER
	
);


CREATE TABLE emprestimo (
  ID_EMPRESTIMO INTEGER PRIMARY KEY,
  DATA_RETIRADA DATE,
  DATA_ENTREGA DATE,
  ID_LIVRO INTEGER,
	
  CONSTRAINT id_livro_fk FOREIGN KEY (ID_LIVRO)
  REFERENCES livro (ID_LIVRO)
	
);


CREATE TABLE professor (
  ID_PROFESSOR INTEGER PRIMARY KEY,
  NOME VARCHAR(50)
 
);

CREATE TABLE turma (
  ID_TURMA INTEGER PRIMARY KEY,
  NIVEL INTEGER,
  NUMERO INT,
  ID_PROFESSOR INTEGER,
	
  CONSTRAINT id_professor_fk FOREIGN KEY (ID_TURMA)
  REFERENCES turma (ID_TURMA)
	
);


CREATE TABLE aluno (
  ID_ALUNO INTEGER PRIMARY KEY,
  NUMERO INT,
  DATA_NASCIMENTO DATE,
  ID_TURMA INTEGER,
	
  CONSTRAINT id_aluno_fk FOREIGN KEY (ID_ALUNO)
  REFERENCES aluno (ID_ALUNO)
	
);