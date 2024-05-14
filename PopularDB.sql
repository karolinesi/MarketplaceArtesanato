-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (ID, Nome, Email, Endereço, Tipo)
VALUES
    (1, 'Maria Silva', 'maria@example.com', 'Rua A, 123', 'Pessoa Física'),
    (2, 'João Pereira', 'joao@example.com', 'Av. B, 456', 'Pessoa Física'),
    (3, 'Empresa XYZ', 'contato@empresa.xyz', 'Rua C, 789', 'Pessoa Jurídica'),
	(4, 'Ana Oliveira', 'ana@example.com', 'Av. D, 789', 'Pessoa Física'),
    (5, 'Pedro Santos', 'pedro@example.com', 'Rua E, 456', 'Pessoa Física'),
    (6, 'Comércio ABC', 'comercio@abc.com', 'Av. F, 123', 'Pessoa Jurídica'),
    (7, 'Fernanda Lima', 'fernanda@example.com', 'Rua G, 789', 'Pessoa Física'),
    (8, 'Marcos Souza', 'marcos@example.com', 'Av. H, 456', 'Pessoa Física'),
    (9, 'Loja XYZ', 'vendas@lojaxyz.com', 'Rua I, 123', 'Pessoa Jurídica'),
    (10, 'Carla Martins', 'carla@example.com', 'Av. J, 789', 'Pessoa Física'),
    (11, 'Lucas Oliveira', 'lucas@example.com', 'Rua K, 456', 'Pessoa Física'),
    (12, 'Comércio DEF', 'contato@def.com', 'Av. L, 123', 'Pessoa Jurídica'),
    (13, 'Ana Carolina', 'ana.carolina@example.com', 'Rua M, 789', 'Pessoa Física');

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
    ('prod-123456788', 'Móvel Rústico', 'Mesa de madeira maciça.', 300.00, 'mesa.jpg', 'Móveis', 3),
	('prod-123456787', 'Colar de Pérolas', 'Colar elegante com pérolas naturais.', 80.00, 'colar.jpg', 'Jóias', 1),
    ('prod-123456786', 'Quadro Abstrato', 'Pintura abstrata em tela.', 200.00, 'quadro.jpg', 'Arte', 3),
    ('prod-123456785', 'Cadeira de Balanço', 'Cadeira de madeira para relaxar.', 150.00, 'cadeira.jpg', 'Móveis', 3),
    ('prod-123456784', 'Bolsa de Couro', 'Bolsa de couro legítimo com design elegante.', 100.00, 'bolsa.jpg', 'Acessórios', 2),
    ('prod-123456783', 'Escultura em Bronze', 'Escultura de bronze feita à mão.', 250.00, 'escultura.jpg', 'Decoração', 3),
    ('prod-123456782', 'Relógio de Madeira', 'Relógio de parede feito de madeira reciclada.', 70.00, 'relogio.jpg', 'Decoração', 3),
    ('prod-123456781', 'Vestido de Linho', 'Vestido elegante feito de linho.', 120.00, 'vestido.jpg', 'Moda', 2),
    ('prod-123456780', 'Chapéu Panamá', 'Chapéu clássico de palha.', 40.00, 'chapeu.jpg', 'Acessórios', 1),
    ('prod-123456779', 'Cachecol de Cashmere', 'Cachecol macio e quente de cashmere.', 60.00, 'cachecol.jpg', 'Acessórios', 3),
    ('prod-123456778', 'Tapete Oriental', 'Tapete feito à mão com padrões orientais.', 180.00, 'tapete.jpg', 'Decoração', 1);

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
    ('prod-123456788', 20),
	('prod-123456787', 70),
	('prod-123456786', 80),
	('prod-123456785', 20),
	('prod-123456784', 20),
	('prod-123456783', 170),
	('prod-123456782', 520),
	('prod-123456781', 40),
	('prod-123456780', 7580),
	('prod-123456779', 10),
	('prod-123456778', 850);

-- Inserindo dados na tabela Vendas
INSERT INTO Vendas (ID, Produto_ID, Cliente_ID, Loja_ID, Data, Quantidade, Valor_Total)
VALUES
    (1, 'prod-987654321', 1, 1, '2024-05-01', 2, 300.00),
    (2, 'prod-123456789', 2, 2, '2024-05-02', 1, 120.00),
    (3, 'prod-123456788', 3, 3, '2024-05-03', 1, 300.00),
	(4, 'prod-123456787', 3, 1, '2024-05-04', 5, 80.00),
    (5, 'prod-123456786', 4, 2, '2024-05-05', 1, 200.00),
    (6, 'prod-123456785', 5, 3, '2024-05-06', 70, 150.00),
    (7, 'prod-123456784', 6, 1, '2024-05-07', 2, 100.00),
    (8, 'prod-123456783', 7, 2, '2024-05-08', 1, 250.00),
    (9, 'prod-123456782', 8, 3, '2024-05-09', 252, 70.00),
    (10, 'prod-123456781', 9, 1, '2024-05-10', 10, 120.00),
    (11, 'prod-123456780', 10, 2, '2024-05-11', 15, 40.00),
    (12, 'prod-123456779', 1, 3, '2024-05-12', 19, 60.00),
    (13, 'prod-123456778', 2, 1, '2024-05-13', 185, 180.00);
