-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (ID, Nome, Email, Endere�o, Tipo)
VALUES
    (1, 'Maria Silva', 'maria@example.com', 'Rua A, 123', 'Pessoa F�sica'),
    (2, 'Jo�o Pereira', 'joao@example.com', 'Av. B, 456', 'Pessoa F�sica'),
    (3, 'Empresa XYZ', 'contato@empresa.xyz', 'Rua C, 789', 'Pessoa Jur�dica');

-- Inserindo dados na tabela Vendedores
INSERT INTO Vendedores (ID, Nome, Email, Endere�o)
VALUES
    (1, 'Ana Souza', 'ana@example.com', 'Rua X, 321'),
    (2, 'Jos� Lima', 'jose@example.com', 'Av. Y, 654'),
    (3, 'Empresa ABC', 'contato@empresa.abc', 'Rua Z, 987');

-- Inserindo dados na tabela Produtos
INSERT INTO Produtos (ID, Nome, Descri��o, Pre�o, Imagem, Categoria, Vendedor_ID)
VALUES
    ('prod-987654321', 'Bracelete Artesanal', 'Bracelete de prata feito � m�o.', 150.00, 'bracelete.jpg', 'J�ias', 1),
    ('prod-123456789', 'Vaso Decorativo', 'Vaso de cer�mica pintado � m�o.', 120.00, 'vaso.jpg', 'Decora��o', 2),
    ('prod-123456788', 'M�vel R�stico', 'Mesa de madeira maci�a.', 300.00, 'mesa.jpg', 'M�veis', 3);

-- Inserindo dados na tabela Lojas
INSERT INTO Lojas (ID, Nome, Descri��o, Localiza��o, Vendedor_ID)
VALUES
    (1, 'Loja da Ana', 'Loja de j�ias artesanais', 'Rua X, 321', 1),
    (2, 'Loja do Jos�', 'Loja de decora��o', 'Av. Y, 654', 2),
    (3, 'Loja da Empresa ABC', 'Loja de m�veis r�sticos', 'Rua Z, 987', 3);

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
