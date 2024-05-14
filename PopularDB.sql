-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (ID, Nome, Email, Endere�o, Tipo)
VALUES
    (1, 'Maria Silva', 'maria@example.com', 'Rua A, 123', 'Pessoa F�sica'),
    (2, 'Jo�o Pereira', 'joao@example.com', 'Av. B, 456', 'Pessoa F�sica'),
    (3, 'Empresa XYZ', 'contato@empresa.xyz', 'Rua C, 789', 'Pessoa Jur�dica'),
	(4, 'Ana Oliveira', 'ana@example.com', 'Av. D, 789', 'Pessoa F�sica'),
    (5, 'Pedro Santos', 'pedro@example.com', 'Rua E, 456', 'Pessoa F�sica'),
    (6, 'Com�rcio ABC', 'comercio@abc.com', 'Av. F, 123', 'Pessoa Jur�dica'),
    (7, 'Fernanda Lima', 'fernanda@example.com', 'Rua G, 789', 'Pessoa F�sica'),
    (8, 'Marcos Souza', 'marcos@example.com', 'Av. H, 456', 'Pessoa F�sica'),
    (9, 'Loja XYZ', 'vendas@lojaxyz.com', 'Rua I, 123', 'Pessoa Jur�dica'),
    (10, 'Carla Martins', 'carla@example.com', 'Av. J, 789', 'Pessoa F�sica'),
    (11, 'Lucas Oliveira', 'lucas@example.com', 'Rua K, 456', 'Pessoa F�sica'),
    (12, 'Com�rcio DEF', 'contato@def.com', 'Av. L, 123', 'Pessoa Jur�dica'),
    (13, 'Ana Carolina', 'ana.carolina@example.com', 'Rua M, 789', 'Pessoa F�sica');

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
    ('prod-123456788', 'M�vel R�stico', 'Mesa de madeira maci�a.', 300.00, 'mesa.jpg', 'M�veis', 3),
	('prod-123456787', 'Colar de P�rolas', 'Colar elegante com p�rolas naturais.', 80.00, 'colar.jpg', 'J�ias', 1),
    ('prod-123456786', 'Quadro Abstrato', 'Pintura abstrata em tela.', 200.00, 'quadro.jpg', 'Arte', 3),
    ('prod-123456785', 'Cadeira de Balan�o', 'Cadeira de madeira para relaxar.', 150.00, 'cadeira.jpg', 'M�veis', 3),
    ('prod-123456784', 'Bolsa de Couro', 'Bolsa de couro leg�timo com design elegante.', 100.00, 'bolsa.jpg', 'Acess�rios', 2),
    ('prod-123456783', 'Escultura em Bronze', 'Escultura de bronze feita � m�o.', 250.00, 'escultura.jpg', 'Decora��o', 3),
    ('prod-123456782', 'Rel�gio de Madeira', 'Rel�gio de parede feito de madeira reciclada.', 70.00, 'relogio.jpg', 'Decora��o', 3),
    ('prod-123456781', 'Vestido de Linho', 'Vestido elegante feito de linho.', 120.00, 'vestido.jpg', 'Moda', 2),
    ('prod-123456780', 'Chap�u Panam�', 'Chap�u cl�ssico de palha.', 40.00, 'chapeu.jpg', 'Acess�rios', 1),
    ('prod-123456779', 'Cachecol de Cashmere', 'Cachecol macio e quente de cashmere.', 60.00, 'cachecol.jpg', 'Acess�rios', 3),
    ('prod-123456778', 'Tapete Oriental', 'Tapete feito � m�o com padr�es orientais.', 180.00, 'tapete.jpg', 'Decora��o', 1);

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
