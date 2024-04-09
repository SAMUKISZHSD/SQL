-- Entidades: Cliente, Pedido, Prato, Ingrediente

-- create cliente
CREATE TABLE cliente (
id_cliente integer PRIMARY KEY,
nome varchar (50),
telefone int  (50)
);

-- create pedido
CREATE TABLE pedido (
id_pedido integer PRIMARY KEY
data data (50),
valor_total numeric (5,2),
id_cliente integer,

CONSTRAINT id_clienteFK FOREIGN KEY (id_cliente)
REFERENCES cliente (id_cliente)
 
);

-- create prato
CREATE TABLE prato (
id_prato integer PRIMARY KEY
nome varchar (50),
preco numeric (5,2)
);

-- create ingredientes
CREATE TABLE ingrediente (
nome varchar (50),
quantidade int (50) -- talvez seja interger enves de int
);


-- adicionar endereço na tabela cliente
ALTER TABLE cliente ADD COLUMN endereco varchar;

-- adicionar categoria na tabela prato
ALTER TABLE prato ADD COLUMN categoria varchar;

--atualizar o telefone do cliente pedro santos para '11998765432'
UPDATE cliente SET telefone = ‘11998765432r’ WHERE 1;

-- alterar o valor total do pedido 1 para 50.00
UPDATE pedido SET valor_total = ‘50.00’ WHERE 1;

-- atualizar o preço da pizza margherita para 32.00
UPDATE prato SET preco = ‘32.00’ WHERE 1;

-- deletar cliente rafael souza
DELETE FROM clientes WHERE id_cliente = 3;

-- deletar prato com salada caesar
DELETE FROM prato WHERE id_prato = 3;
