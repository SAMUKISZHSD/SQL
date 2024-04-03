-- ATIVIDADE 2 ALTER TABLE (EXERCICIO COMPRAS)

CREATE TABLE compras (
    codigo SERIAL,
    valor NUMERIC(5,2),
    descricao VARCHAR(50),
    dt_compra DATE,
    recebido VARCHAR(50)
);

-- Adicione a chave primária a tabela, sabendo que o campo chave primária é código.
ALTER TABLE compras ADD PRIMARY KEY (codigo);

-- Altere o nome do campo recebido para status.
ALTER TABLE compras RENAME COLUMN recebido TO status;

-- Acrescente mais um campo chamado quantidade e este campo deve ser do tipo numérico inteiro.
ALTER TABLE compras RENAME ADD COLUMN quantidade INTEGER;

-- O campo valor e descrição não podem ficar nulos.
ALTER TABLE compras ALTER COLUMN valor SET NOT NULL;
ALTER TABLE compras ALTER COLUMN descricao SET NOT NULL;
