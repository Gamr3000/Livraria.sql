-- Tabela de Livros
CREATE TABLE livros (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    preco DECIMAL(8,2),
    estoque INT
);

-- Tabela de Clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela de Pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Tabela de Itens do Pedido
CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_livro INT,
    quantidade INT,
    preco_unitario DECIMAL(8,2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);

-- Inserções de exemplo
INSERT INTO livros VALUES (1, 'Dom Casmurro', 'Machado de Assis', 29.90, 10);
INSERT INTO livros VALUES (2, '1984', 'George Orwell', 45.00, 7);
INSERT INTO livros VALUES (3, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 35.50, 5);

INSERT INTO clientes VALUES (1, 'Maria Souza', 'maria@gmail.com', '11988887777');
INSERT INTO clientes VALUES (2, 'João Lima', 'joao.lima@gmail.com', '11999998888');

INSERT INTO pedidos VALUES (1, 1, '2025-04-20');
INSERT INTO pedidos VALUES (2, 2, '2025-04-21');

INSERT INTO itens_pedido VALUES (1, 1, 1, 2, 29.90);
INSERT INTO itens_pedido VALUES (2, 1, 3, 1, 35.50);
INSERT INTO itens_pedido VALUES (3, 2, 2, 1, 45.00);
