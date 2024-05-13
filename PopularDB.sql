-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (ID, Nome, Email, Endereço, Tipo)
VALUES
    (1, 'Maria Silva', 'maria@example.com', 'Rua A, 123', 'Pessoa Física'),
    (2, 'João Pereira', 'joao@example.com', 'Av. B, 456', 'Pessoa Física'),
    (3, 'Empresa XYZ', 'contato@empresa.xyz', 'Rua C, 789', 'Pessoa Jurídica');

-- Inserindo dados na tabela Vendedores
INSERT INTO Vendedores (ID, Nome, Email, Endereço)
VALUES
    (1, 'Ana Souza', 'ana@example.com', 'Rua X, 321'),
    (2, 'José Lima', 'jose@example.com', 'Av. Y, 654'),
    (3, 'Empresa ABC', 'contato@empresa.abc', 'Rua Z, 987');

-- Inserindo dados na tabela Produtos
INSERT INTO Produtos (ID, Nome, Descrição, Preço, Imagem, Categoria, Vendedor_ID)
VALUES
    ('prod-987654321', 'Bracelete Artesanal', 'Bracelete de prata feito à mão.', 150.00, 'bracelete.jpg', 'Jóias', 1),
    ('prod-123456789', 'Vaso Decorativo', 'Vaso de cerâmica pintado à mão.', 120.00, 'vaso.jpg', 'Decoração', 2),
    ('prod-123456788', 'Móvel Rústico', 'Mesa de madeira maciça.', 300.00, 'mesa.jpg', 'Móveis', 3);

-- Inserindo dados na tabela Lojas
INSERT INTO Lojas (ID, Nome, Descrição, Localização, Vendedor_ID)
VALUES
    (1, 'Loja da Ana', 'Loja de jóias artesanais', 'Rua X, 321', 1),
    (2, 'Loja do José', 'Loja de decoração', 'Av. Y, 654', 2),
    (3, 'Loja da Empresa ABC', 'Loja de móveis rústicos', 'Rua Z, 987', 3);

-- Inserindo dados na tabela Estoque
INSERT INTO Estoque (Produto_ID, Quantidade)
VALUES
    ('prod-987654321', 50),
    ('prod-123456789', 100),
    ('prod-123456788', 20);

-- Inserindo dados na tabela Vendas
INSERT INTO Vendas (ID, Produto_ID, Cliente_ID, Loja_ID, Data, Quantidade, Valor_Total)
VALUES
    (1, 'prod-987654321', 1, 1, '2024-05-01', 2, 300.00),
    (2, 'prod-123456789', 2, 2, '2024-05-02', 1, 120.00),
    (3, 'prod-123456788', 3, 3, '2024-05-03', 1, 300.00);
