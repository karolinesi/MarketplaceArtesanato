CREATE DATABASE MarketplaceArtesanato;
GO

USE MarketplaceArtesanato;
GO

-- Tabela Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Endereço VARCHAR(255),
    Tipo VARCHAR(20)
);
GO

-- Tabela Vendedores
CREATE TABLE Vendedores (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Endereço VARCHAR(255)
);
GO

-- Tabela Produtos
CREATE TABLE Produtos (
    ID VARCHAR(100) PRIMARY KEY,
    Nome VARCHAR(100),
    Descrição TEXT,
    Preço DECIMAL(10, 2),
    Imagem VARCHAR(255),
    Categoria VARCHAR(50),
    Vendedor_ID INT,
    FOREIGN KEY (Vendedor_ID) REFERENCES Vendedores(ID)
);
GO


-- Tabela Lojas
CREATE TABLE Lojas (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Descrição TEXT,
    Localização VARCHAR(255),
    Vendedor_ID INT,
    FOREIGN KEY (Vendedor_ID) REFERENCES Vendedores(ID)
);
GO

-- Tabela Estoque
CREATE TABLE Estoque (
    Produto_ID VARCHAR(100) PRIMARY KEY,
    Quantidade INT,
    FOREIGN KEY (Produto_ID) REFERENCES Produtos(ID)
);
GO

-- Tabela Vendas
CREATE TABLE Vendas (
    ID INT PRIMARY KEY,
    Produto_ID VARCHAR(100),
    Cliente_ID INT,
    Loja_ID INT,
    Data DATE,
    Quantidade INT,
    Valor_Total DECIMAL(10, 2),
    FOREIGN KEY (Produto_ID) REFERENCES Produtos(ID),
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(ID),
    FOREIGN KEY (Loja_ID) REFERENCES Lojas(ID)
);
GO


