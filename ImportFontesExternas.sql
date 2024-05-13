-- Criar uma tabela permanente para Pesquisas de Preços
CREATE TABLE PesquisasPreco (
    product_id VARCHAR(255),
    product_name VARCHAR(255),
    average_price FLOAT,
    minimum_price FLOAT,
    maximum_price FLOAT,
    survey_date DATE
);

-- Carregar dados das Pesquisas de Preços do CSV
BULK INSERT PesquisasPreco
FROM 'C:\Artesanato\preco.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
	CODEPAGE = '65001',
    FIRSTROW = 2 -- Ignora a primeira linha de cabeçalho
);


-- Criar uma tabela permanente para Análise de Sentimentos
CREATE TABLE AnaliseSentimentos (
    event_id VARCHAR(255),
    timestamp DATETIME,
    text TEXT,
    sentiment_score FLOAT,
    sentiment_label VARCHAR(255),
    product_id VARCHAR(255),
    product_name VARCHAR(255),
    user_id VARCHAR(255),
    username VARCHAR(255),
    source VARCHAR(255)
);


-- Carregar dados da Análise de Sentimentos do JSON
INSERT INTO AnaliseSentimentos (event_id, [timestamp], [text], sentiment_score, sentiment_label, product_id, product_name, user_id, username, [source])
	SELECT book.*
FROM OPENROWSET(BULK 'C:\Artesanato\sentimento.json',SINGLE_CLOB, CODEPAGE = 'UTF-16') AS j
CROSS APPLY OPENJSON(BulkColumn) WITH (
    event_id VARCHAR(255) '$.id',
    timestamp DATETIME,
    text varCHAR(255),
    sentiment_score FLOAT '$.sentiment.score',
    sentiment_label VARCHAR(255) '$.sentiment.label',
    product_id VARCHAR(255) '$.product.id',
    product_name NVARCHAR(255) '$.product.name',
    user_id VARCHAR(255) '$.user.id',
    username VARCHAR(255) '$.user.username',
    source VARCHAR(255)
) AS book;

